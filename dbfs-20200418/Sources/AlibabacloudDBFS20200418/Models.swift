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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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

public class ApplyAutoSnapshotPolicyRequest : Tea.TeaModel {
    public var dbfsIds: [String]?

    public var policyId: String?

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
        if self.dbfsIds != nil {
            map["DbfsIds"] = self.dbfsIds!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbfsIds") {
            self.dbfsIds = dict["DbfsIds"] as! [String]
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ApplyAutoSnapshotPolicyShrinkRequest : Tea.TeaModel {
    public var dbfsIdsShrink: String?

    public var policyId: String?

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
        if self.dbfsIdsShrink != nil {
            map["DbfsIds"] = self.dbfsIdsShrink!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbfsIds") {
            self.dbfsIdsShrink = dict["DbfsIds"] as! String
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ApplyAutoSnapshotPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ApplyAutoSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyAutoSnapshotPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ApplyAutoSnapshotPolicyResponseBody()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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

public class CancelAutoSnapshotPolicyRequest : Tea.TeaModel {
    public var dbfsIds: [String]?

    public var policyId: String?

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
        if self.dbfsIds != nil {
            map["DbfsIds"] = self.dbfsIds!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbfsIds") {
            self.dbfsIds = dict["DbfsIds"] as! [String]
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CancelAutoSnapshotPolicyShrinkRequest : Tea.TeaModel {
    public var dbfsIdsShrink: String?

    public var policyId: String?

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
        if self.dbfsIdsShrink != nil {
            map["DbfsIds"] = self.dbfsIdsShrink!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbfsIds") {
            self.dbfsIdsShrink = dict["DbfsIds"] as! String
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CancelAutoSnapshotPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CancelAutoSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelAutoSnapshotPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelAutoSnapshotPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAutoSnapshotPolicyRequest : Tea.TeaModel {
    public var policyName: String?

    public var regionId: String?

    public var repeatWeekdays: [String]?

    public var retentionDays: Int32?

    public var timePoints: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.repeatWeekdays != nil {
            map["RepeatWeekdays"] = self.repeatWeekdays!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
        }
        if self.timePoints != nil {
            map["TimePoints"] = self.timePoints!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RepeatWeekdays") {
            self.repeatWeekdays = dict["RepeatWeekdays"] as! [String]
        }
        if dict.keys.contains("RetentionDays") {
            self.retentionDays = dict["RetentionDays"] as! Int32
        }
        if dict.keys.contains("TimePoints") {
            self.timePoints = dict["TimePoints"] as! [String]
        }
    }
}

public class CreateAutoSnapshotPolicyShrinkRequest : Tea.TeaModel {
    public var policyName: String?

    public var regionId: String?

    public var repeatWeekdaysShrink: String?

    public var retentionDays: Int32?

    public var timePointsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.repeatWeekdaysShrink != nil {
            map["RepeatWeekdays"] = self.repeatWeekdaysShrink!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
        }
        if self.timePointsShrink != nil {
            map["TimePoints"] = self.timePointsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RepeatWeekdays") {
            self.repeatWeekdaysShrink = dict["RepeatWeekdays"] as! String
        }
        if dict.keys.contains("RetentionDays") {
            self.retentionDays = dict["RetentionDays"] as! Int32
        }
        if dict.keys.contains("TimePoints") {
            self.timePointsShrink = dict["TimePoints"] as! String
        }
    }
}

public class CreateAutoSnapshotPolicyResponseBody : Tea.TeaModel {
    public var policyId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAutoSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAutoSnapshotPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAutoSnapshotPolicyResponseBody()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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

public class DeleteAutoSnapshotPolicyRequest : Tea.TeaModel {
    public var policyId: String?

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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteAutoSnapshotPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteAutoSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAutoSnapshotPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAutoSnapshotPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDbfsRequest : Tea.TeaModel {
    public var force: Bool?

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
        if self.force != nil {
            map["Force"] = self.force!
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
        if dict.keys.contains("Force") {
            self.force = dict["Force"] as! Bool
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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
            var tmp : [DescribeInstanceTypesResponseBody.InstanceTypes] = []
            for v in dict["InstanceTypes"] as! [Any] {
                var model = DescribeInstanceTypesResponseBody.InstanceTypes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceTypes = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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

public class GetAutoSnapshotPolicyRequest : Tea.TeaModel {
    public var policyId: String?

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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetAutoSnapshotPolicyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountId: String?

        public var appliedDbfsNumber: Int32?

        public var createdTime: String?

        public var lastModified: String?

        public var policyId: String?

        public var policyName: String?

        public var regionId: String?

        public var repeatWeekdays: [String]?

        public var retentionDays: Int32?

        public var status: String?

        public var statusDetail: String?

        public var timePoints: [String]?

        public override init() {
            super.init()
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
            if self.appliedDbfsNumber != nil {
                map["AppliedDbfsNumber"] = self.appliedDbfsNumber!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.lastModified != nil {
                map["LastModified"] = self.lastModified!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.repeatWeekdays != nil {
                map["RepeatWeekdays"] = self.repeatWeekdays!
            }
            if self.retentionDays != nil {
                map["RetentionDays"] = self.retentionDays!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusDetail != nil {
                map["StatusDetail"] = self.statusDetail!
            }
            if self.timePoints != nil {
                map["TimePoints"] = self.timePoints!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AppliedDbfsNumber") {
                self.appliedDbfsNumber = dict["AppliedDbfsNumber"] as! Int32
            }
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("LastModified") {
                self.lastModified = dict["LastModified"] as! String
            }
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("PolicyName") {
                self.policyName = dict["PolicyName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RepeatWeekdays") {
                self.repeatWeekdays = dict["RepeatWeekdays"] as! [String]
            }
            if dict.keys.contains("RetentionDays") {
                self.retentionDays = dict["RetentionDays"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusDetail") {
                self.statusDetail = dict["StatusDetail"] as! String
            }
            if dict.keys.contains("TimePoints") {
                self.timePoints = dict["TimePoints"] as! [String]
            }
        }
    }
    public var data: GetAutoSnapshotPolicyResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetAutoSnapshotPolicyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAutoSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAutoSnapshotPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAutoSnapshotPolicyResponseBody()
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
        public class SnapshotInfo : Tea.TeaModel {
            public var linkId: String?

            public var policyId: String?

            public var snapshotCount: Int32?

            public var totalSize: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.linkId != nil {
                    map["LinkId"] = self.linkId!
                }
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
                }
                if self.snapshotCount != nil {
                    map["SnapshotCount"] = self.snapshotCount!
                }
                if self.totalSize != nil {
                    map["TotalSize"] = self.totalSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LinkId") {
                    self.linkId = dict["LinkId"] as! String
                }
                if dict.keys.contains("PolicyId") {
                    self.policyId = dict["PolicyId"] as! String
                }
                if dict.keys.contains("SnapshotCount") {
                    self.snapshotCount = dict["SnapshotCount"] as! Int32
                }
                if dict.keys.contains("TotalSize") {
                    self.totalSize = dict["TotalSize"] as! Int64
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
        public var advancedFeatures: String?

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

        public var snapshotId: String?

        public var snapshotInfo: GetDbfsResponseBody.DBFSInfo.SnapshotInfo?

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
            try self.snapshotInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.advancedFeatures != nil {
                map["AdvancedFeatures"] = self.advancedFeatures!
            }
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
            if self.snapshotId != nil {
                map["SnapshotId"] = self.snapshotId!
            }
            if self.snapshotInfo != nil {
                map["SnapshotInfo"] = self.snapshotInfo?.toMap()
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
            if dict.keys.contains("AdvancedFeatures") {
                self.advancedFeatures = dict["AdvancedFeatures"] as! String
            }
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
                var tmp : [GetDbfsResponseBody.DBFSInfo.EbsList] = []
                for v in dict["EbsList"] as! [Any] {
                    var model = GetDbfsResponseBody.DBFSInfo.EbsList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ebsList = tmp
            }
            if dict.keys.contains("EcsList") {
                var tmp : [GetDbfsResponseBody.DBFSInfo.EcsList] = []
                for v in dict["EcsList"] as! [Any] {
                    var model = GetDbfsResponseBody.DBFSInfo.EcsList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ecsList = tmp
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
            if dict.keys.contains("SnapshotId") {
                self.snapshotId = dict["SnapshotId"] as! String
            }
            if dict.keys.contains("SnapshotInfo") {
                var model = GetDbfsResponseBody.DBFSInfo.SnapshotInfo()
                model.fromMap(dict["SnapshotInfo"] as! [String: Any])
                self.snapshotInfo = model
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [GetDbfsResponseBody.DBFSInfo.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = GetDbfsResponseBody.DBFSInfo.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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

public class GetSnapshotLinkRequest : Tea.TeaModel {
    public var linkId: String?

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
        if self.linkId != nil {
            map["LinkId"] = self.linkId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LinkId") {
            self.linkId = dict["LinkId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetSnapshotLinkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
        public var category: String?

        public var ecsList: [GetSnapshotLinkResponseBody.Data.EcsList]?

        public var fsId: String?

        public var fsName: String?

        public var linkId: String?

        public var snapshotCount: Int32?

        public var sourceSize: Int32?

        public var status: String?

        public var totalSize: Int64?

        public override init() {
            super.init()
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
            if self.ecsList != nil {
                var tmp : [Any] = []
                for k in self.ecsList! {
                    tmp.append(k.toMap())
                }
                map["EcsList"] = tmp
            }
            if self.fsId != nil {
                map["FsId"] = self.fsId!
            }
            if self.fsName != nil {
                map["FsName"] = self.fsName!
            }
            if self.linkId != nil {
                map["LinkId"] = self.linkId!
            }
            if self.snapshotCount != nil {
                map["SnapshotCount"] = self.snapshotCount!
            }
            if self.sourceSize != nil {
                map["SourceSize"] = self.sourceSize!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("EcsList") {
                var tmp : [GetSnapshotLinkResponseBody.Data.EcsList] = []
                for v in dict["EcsList"] as! [Any] {
                    var model = GetSnapshotLinkResponseBody.Data.EcsList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ecsList = tmp
            }
            if dict.keys.contains("FsId") {
                self.fsId = dict["FsId"] as! String
            }
            if dict.keys.contains("FsName") {
                self.fsName = dict["FsName"] as! String
            }
            if dict.keys.contains("LinkId") {
                self.linkId = dict["LinkId"] as! String
            }
            if dict.keys.contains("SnapshotCount") {
                self.snapshotCount = dict["SnapshotCount"] as! Int32
            }
            if dict.keys.contains("SourceSize") {
                self.sourceSize = dict["SourceSize"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int64
            }
        }
    }
    public var data: GetSnapshotLinkResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetSnapshotLinkResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSnapshotLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSnapshotLinkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSnapshotLinkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAutoSnapshotPoliciesRequest : Tea.TeaModel {
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

public class ListAutoSnapshotPoliciesResponseBody : Tea.TeaModel {
    public class SnapshotPolicies : Tea.TeaModel {
        public var accountId: String?

        public var appliedDbfsNumber: Int32?

        public var createdTime: String?

        public var lastModified: String?

        public var policyId: String?

        public var policyName: String?

        public var regionId: String?

        public var repeatWeekdays: [String]?

        public var retentionDays: Int32?

        public var status: String?

        public var statusDetail: String?

        public var timePoints: [String]?

        public override init() {
            super.init()
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
            if self.appliedDbfsNumber != nil {
                map["AppliedDbfsNumber"] = self.appliedDbfsNumber!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.lastModified != nil {
                map["LastModified"] = self.lastModified!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.repeatWeekdays != nil {
                map["RepeatWeekdays"] = self.repeatWeekdays!
            }
            if self.retentionDays != nil {
                map["RetentionDays"] = self.retentionDays!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusDetail != nil {
                map["StatusDetail"] = self.statusDetail!
            }
            if self.timePoints != nil {
                map["TimePoints"] = self.timePoints!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AppliedDbfsNumber") {
                self.appliedDbfsNumber = dict["AppliedDbfsNumber"] as! Int32
            }
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("LastModified") {
                self.lastModified = dict["LastModified"] as! String
            }
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("PolicyName") {
                self.policyName = dict["PolicyName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RepeatWeekdays") {
                self.repeatWeekdays = dict["RepeatWeekdays"] as! [String]
            }
            if dict.keys.contains("RetentionDays") {
                self.retentionDays = dict["RetentionDays"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusDetail") {
                self.statusDetail = dict["StatusDetail"] as! String
            }
            if dict.keys.contains("TimePoints") {
                self.timePoints = dict["TimePoints"] as! [String]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var snapshotPolicies: [ListAutoSnapshotPoliciesResponseBody.SnapshotPolicies]?

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
        if self.snapshotPolicies != nil {
            var tmp : [Any] = []
            for k in self.snapshotPolicies! {
                tmp.append(k.toMap())
            }
            map["SnapshotPolicies"] = tmp
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
        if dict.keys.contains("SnapshotPolicies") {
            var tmp : [ListAutoSnapshotPoliciesResponseBody.SnapshotPolicies] = []
            for v in dict["SnapshotPolicies"] as! [Any] {
                var model = ListAutoSnapshotPoliciesResponseBody.SnapshotPolicies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.snapshotPolicies = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListAutoSnapshotPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAutoSnapshotPoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAutoSnapshotPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAutoSnapshotPolicyAppliedDbfsRequest : Tea.TeaModel {
    public var filterKey: String?

    public var filterValue: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var policyId: String?

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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
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
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListAutoSnapshotPolicyAppliedDbfsResponseBody : Tea.TeaModel {
    public class DbfsList : Tea.TeaModel {
        public var fsId: String?

        public var fsName: String?

        public var regionId: String?

        public var sizeG: Int64?

        public var snapshotCount: Int32?

        public var status: String?

        public var totalSize: Int64?

        public override init() {
            super.init()
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
            if self.sizeG != nil {
                map["SizeG"] = self.sizeG!
            }
            if self.snapshotCount != nil {
                map["SnapshotCount"] = self.snapshotCount!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
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
            if dict.keys.contains("SizeG") {
                self.sizeG = dict["SizeG"] as! Int64
            }
            if dict.keys.contains("SnapshotCount") {
                self.snapshotCount = dict["SnapshotCount"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int64
            }
        }
    }
    public var dbfsList: [ListAutoSnapshotPolicyAppliedDbfsResponseBody.DbfsList]?

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
        if self.dbfsList != nil {
            var tmp : [Any] = []
            for k in self.dbfsList! {
                tmp.append(k.toMap())
            }
            map["DbfsList"] = tmp
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
        if dict.keys.contains("DbfsList") {
            var tmp : [ListAutoSnapshotPolicyAppliedDbfsResponseBody.DbfsList] = []
            for v in dict["DbfsList"] as! [Any] {
                var model = ListAutoSnapshotPolicyAppliedDbfsResponseBody.DbfsList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dbfsList = tmp
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

public class ListAutoSnapshotPolicyAppliedDbfsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAutoSnapshotPolicyAppliedDbfsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAutoSnapshotPolicyAppliedDbfsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAutoSnapshotPolicyUnappliedDbfsRequest : Tea.TeaModel {
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

public class ListAutoSnapshotPolicyUnappliedDbfsResponseBody : Tea.TeaModel {
    public class DbfsList : Tea.TeaModel {
        public var fsId: String?

        public var fsName: String?

        public var regionId: String?

        public var sizeG: Int64?

        public var snapshotCount: Int32?

        public var status: String?

        public var totalSize: Int64?

        public override init() {
            super.init()
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
            if self.sizeG != nil {
                map["SizeG"] = self.sizeG!
            }
            if self.snapshotCount != nil {
                map["SnapshotCount"] = self.snapshotCount!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
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
            if dict.keys.contains("SizeG") {
                self.sizeG = dict["SizeG"] as! Int64
            }
            if dict.keys.contains("SnapshotCount") {
                self.snapshotCount = dict["SnapshotCount"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int64
            }
        }
    }
    public var dbfsList: [ListAutoSnapshotPolicyUnappliedDbfsResponseBody.DbfsList]?

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
        if self.dbfsList != nil {
            var tmp : [Any] = []
            for k in self.dbfsList! {
                tmp.append(k.toMap())
            }
            map["DbfsList"] = tmp
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
        if dict.keys.contains("DbfsList") {
            var tmp : [ListAutoSnapshotPolicyUnappliedDbfsResponseBody.DbfsList] = []
            for v in dict["DbfsList"] as! [Any] {
                var model = ListAutoSnapshotPolicyUnappliedDbfsResponseBody.DbfsList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dbfsList = tmp
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

public class ListAutoSnapshotPolicyUnappliedDbfsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAutoSnapshotPolicyUnappliedDbfsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAutoSnapshotPolicyUnappliedDbfsResponseBody()
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
        public class SnapshotInfo : Tea.TeaModel {
            public var linkId: String?

            public var policyId: String?

            public var snapshotCount: Int32?

            public var totalSize: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.linkId != nil {
                    map["LinkId"] = self.linkId!
                }
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
                }
                if self.snapshotCount != nil {
                    map["SnapshotCount"] = self.snapshotCount!
                }
                if self.totalSize != nil {
                    map["TotalSize"] = self.totalSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LinkId") {
                    self.linkId = dict["LinkId"] as! String
                }
                if dict.keys.contains("PolicyId") {
                    self.policyId = dict["PolicyId"] as! String
                }
                if dict.keys.contains("SnapshotCount") {
                    self.snapshotCount = dict["SnapshotCount"] as! Int32
                }
                if dict.keys.contains("TotalSize") {
                    self.totalSize = dict["TotalSize"] as! Int64
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

        public var snapshotInfo: ListDbfsResponseBody.DBFSInfo.SnapshotInfo?

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
            try self.snapshotInfo?.validate()
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
            if self.snapshotInfo != nil {
                map["SnapshotInfo"] = self.snapshotInfo?.toMap()
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
                var tmp : [ListDbfsResponseBody.DBFSInfo.EbsList] = []
                for v in dict["EbsList"] as! [Any] {
                    var model = ListDbfsResponseBody.DBFSInfo.EbsList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ebsList = tmp
            }
            if dict.keys.contains("EcsList") {
                var tmp : [ListDbfsResponseBody.DBFSInfo.EcsList] = []
                for v in dict["EcsList"] as! [Any] {
                    var model = ListDbfsResponseBody.DBFSInfo.EcsList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ecsList = tmp
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
            if dict.keys.contains("SnapshotInfo") {
                var model = ListDbfsResponseBody.DBFSInfo.SnapshotInfo()
                model.fromMap(dict["SnapshotInfo"] as! [String: Any])
                self.snapshotInfo = model
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListDbfsResponseBody.DBFSInfo.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListDbfsResponseBody.DBFSInfo.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
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
            var tmp : [ListDbfsResponseBody.DBFSInfo] = []
            for v in dict["DBFSInfo"] as! [Any] {
                var model = ListDbfsResponseBody.DBFSInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.DBFSInfo = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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
        public var imageId: String?

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
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
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
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
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
            var tmp : [ListDbfsAttachableEcsInstancesResponseBody.EcsLabelInfo] = []
            for v in dict["EcsLabelInfo"] as! [Any] {
                var model = ListDbfsAttachableEcsInstancesResponseBody.EcsLabelInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ecsLabelInfo = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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
            var tmp : [ListDbfsAttachedEcsInstancesResponseBody.EcsLabelInfo] = []
            for v in dict["EcsLabelInfo"] as! [Any] {
                var model = ListDbfsAttachedEcsInstancesResponseBody.EcsLabelInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ecsLabelInfo = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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
            var tmp : [ListSnapshotResponseBody.Snapshots] = []
            for v in dict["Snapshots"] as! [Any] {
                var model = ListSnapshotResponseBody.Snapshots()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.snapshots = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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

public class ListSnapshotLinksRequest : Tea.TeaModel {
    public var filterKey: String?

    public var filterValue: String?

    public var fsIds: String?

    public var linkIds: String?

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
        if self.fsIds != nil {
            map["FsIds"] = self.fsIds!
        }
        if self.linkIds != nil {
            map["LinkIds"] = self.linkIds!
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
        if dict.keys.contains("FsIds") {
            self.fsIds = dict["FsIds"] as! String
        }
        if dict.keys.contains("LinkIds") {
            self.linkIds = dict["LinkIds"] as! String
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

public class ListSnapshotLinksResponseBody : Tea.TeaModel {
    public class SnapshotLinks : Tea.TeaModel {
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
        public var ecsList: [ListSnapshotLinksResponseBody.SnapshotLinks.EcsList]?

        public var fsId: String?

        public var fsName: String?

        public var linkId: String?

        public var snapshotCount: Int32?

        public var sourceSize: Int32?

        public var status: String?

        public var totalSize: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ecsList != nil {
                var tmp : [Any] = []
                for k in self.ecsList! {
                    tmp.append(k.toMap())
                }
                map["EcsList"] = tmp
            }
            if self.fsId != nil {
                map["FsId"] = self.fsId!
            }
            if self.fsName != nil {
                map["FsName"] = self.fsName!
            }
            if self.linkId != nil {
                map["LinkId"] = self.linkId!
            }
            if self.snapshotCount != nil {
                map["SnapshotCount"] = self.snapshotCount!
            }
            if self.sourceSize != nil {
                map["SourceSize"] = self.sourceSize!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EcsList") {
                var tmp : [ListSnapshotLinksResponseBody.SnapshotLinks.EcsList] = []
                for v in dict["EcsList"] as! [Any] {
                    var model = ListSnapshotLinksResponseBody.SnapshotLinks.EcsList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ecsList = tmp
            }
            if dict.keys.contains("FsId") {
                self.fsId = dict["FsId"] as! String
            }
            if dict.keys.contains("FsName") {
                self.fsName = dict["FsName"] as! String
            }
            if dict.keys.contains("LinkId") {
                self.linkId = dict["LinkId"] as! String
            }
            if dict.keys.contains("SnapshotCount") {
                self.snapshotCount = dict["SnapshotCount"] as! Int32
            }
            if dict.keys.contains("SourceSize") {
                self.sourceSize = dict["SourceSize"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int64
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var snapshotLinks: [ListSnapshotLinksResponseBody.SnapshotLinks]?

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
        if self.snapshotLinks != nil {
            var tmp : [Any] = []
            for k in self.snapshotLinks! {
                tmp.append(k.toMap())
            }
            map["SnapshotLinks"] = tmp
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
        if dict.keys.contains("SnapshotLinks") {
            var tmp : [ListSnapshotLinksResponseBody.SnapshotLinks] = []
            for v in dict["SnapshotLinks"] as! [Any] {
                var model = ListSnapshotLinksResponseBody.SnapshotLinks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.snapshotLinks = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListSnapshotLinksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSnapshotLinksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSnapshotLinksResponseBody()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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

public class ModifyAutoSnapshotPolicyRequest : Tea.TeaModel {
    public var policyId: String?

    public var policyName: String?

    public var regionId: String?

    public var repeatWeekdays: [String]?

    public var retentionDays: Int32?

    public var timePoints: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.repeatWeekdays != nil {
            map["RepeatWeekdays"] = self.repeatWeekdays!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
        }
        if self.timePoints != nil {
            map["TimePoints"] = self.timePoints!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RepeatWeekdays") {
            self.repeatWeekdays = dict["RepeatWeekdays"] as! [String]
        }
        if dict.keys.contains("RetentionDays") {
            self.retentionDays = dict["RetentionDays"] as! Int32
        }
        if dict.keys.contains("TimePoints") {
            self.timePoints = dict["TimePoints"] as! [String]
        }
    }
}

public class ModifyAutoSnapshotPolicyShrinkRequest : Tea.TeaModel {
    public var policyId: String?

    public var policyName: String?

    public var regionId: String?

    public var repeatWeekdaysShrink: String?

    public var retentionDays: Int32?

    public var timePointsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.repeatWeekdaysShrink != nil {
            map["RepeatWeekdays"] = self.repeatWeekdaysShrink!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
        }
        if self.timePointsShrink != nil {
            map["TimePoints"] = self.timePointsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RepeatWeekdays") {
            self.repeatWeekdaysShrink = dict["RepeatWeekdays"] as! String
        }
        if dict.keys.contains("RetentionDays") {
            self.retentionDays = dict["RetentionDays"] as! Int32
        }
        if dict.keys.contains("TimePoints") {
            self.timePointsShrink = dict["TimePoints"] as! String
        }
    }
}

public class ModifyAutoSnapshotPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyAutoSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAutoSnapshotPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyAutoSnapshotPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySnapshotAttributeRequest : Tea.TeaModel {
    public var description_: String?

    public var regionId: String?

    public var snapshotId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        if self.snapshotName != nil {
            map["SnapshotName"] = self.snapshotName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SnapshotId") {
            self.snapshotId = dict["SnapshotId"] as! String
        }
        if dict.keys.contains("SnapshotName") {
            self.snapshotName = dict["SnapshotName"] as! String
        }
    }
}

public class ModifySnapshotAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifySnapshotAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySnapshotAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifySnapshotAttributeResponseBody()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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
