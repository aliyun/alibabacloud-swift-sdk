import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AttachInstancesRequest : Tea.TeaModel {
    public var instanceId: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scalingGroupId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! [String]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! String
        }
    }
}

public class AttachInstancesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var scalingActivityId: String?

    public override init() {
        super.init()
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
        if self.scalingActivityId != nil {
            map["ScalingActivityId"] = self.scalingActivityId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScalingActivityId") {
            self.scalingActivityId = dict["ScalingActivityId"] as! String
        }
    }
}

public class AttachInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachInstancesResponseBody?

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
            var model = AttachInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateScalingConfigurationRequest : Tea.TeaModel {
    public class DataDisk : Tea.TeaModel {
        public var category: String?

        public var deleteWithInstance: String?

        public var device: String?

        public var size: Int32?

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
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.deleteWithInstance != nil {
                map["DeleteWithInstance"] = self.deleteWithInstance!
            }
            if self.device != nil {
                map["Device"] = self.device!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.snapshotId != nil {
                map["SnapshotId"] = self.snapshotId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("DeleteWithInstance") {
                self.deleteWithInstance = dict["DeleteWithInstance"] as! String
            }
            if dict.keys.contains("Device") {
                self.device = dict["Device"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int32
            }
            if dict.keys.contains("SnapshotId") {
                self.snapshotId = dict["SnapshotId"] as! String
            }
        }
    }
    public class SystemDisk : Tea.TeaModel {
        public var category: String?

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
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int32
            }
        }
    }
    public var dataDisk: [CreateScalingConfigurationRequest.DataDisk]?

    public var systemDisk: CreateScalingConfigurationRequest.SystemDisk?

    public var imageId: String?

    public var instanceType: String?

    public var internetChargeType: String?

    public var internetMaxBandwidthIn: Int32?

    public var internetMaxBandwidthOut: Int32?

    public var ioOptimized: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scalingConfigurationName: String?

    public var scalingGroupId: String?

    public var securityGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.systemDisk?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataDisk != nil {
            var tmp : [Any] = []
            for k in self.dataDisk! {
                tmp.append(k.toMap())
            }
            map["DataDisk"] = tmp
        }
        if self.systemDisk != nil {
            map["SystemDisk"] = self.systemDisk?.toMap()
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.internetMaxBandwidthIn != nil {
            map["InternetMaxBandwidthIn"] = self.internetMaxBandwidthIn!
        }
        if self.internetMaxBandwidthOut != nil {
            map["InternetMaxBandwidthOut"] = self.internetMaxBandwidthOut!
        }
        if self.ioOptimized != nil {
            map["IoOptimized"] = self.ioOptimized!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scalingConfigurationName != nil {
            map["ScalingConfigurationName"] = self.scalingConfigurationName!
        }
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataDisk") {
            var tmp : [CreateScalingConfigurationRequest.DataDisk] = []
            for v in dict["DataDisk"] as! [Any] {
                var model = CreateScalingConfigurationRequest.DataDisk()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataDisk = tmp
        }
        if dict.keys.contains("SystemDisk") {
            var model = CreateScalingConfigurationRequest.SystemDisk()
            model.fromMap(dict["SystemDisk"] as! [String: Any])
            self.systemDisk = model
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("InternetChargeType") {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("InternetMaxBandwidthIn") {
            self.internetMaxBandwidthIn = dict["InternetMaxBandwidthIn"] as! Int32
        }
        if dict.keys.contains("InternetMaxBandwidthOut") {
            self.internetMaxBandwidthOut = dict["InternetMaxBandwidthOut"] as! Int32
        }
        if dict.keys.contains("IoOptimized") {
            self.ioOptimized = dict["IoOptimized"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScalingConfigurationName") {
            self.scalingConfigurationName = dict["ScalingConfigurationName"] as! String
        }
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
    }
}

public class CreateScalingConfigurationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var scalingConfigurationId: String?

    public override init() {
        super.init()
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
        if self.scalingConfigurationId != nil {
            map["ScalingConfigurationId"] = self.scalingConfigurationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScalingConfigurationId") {
            self.scalingConfigurationId = dict["ScalingConfigurationId"] as! String
        }
    }
}

public class CreateScalingConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScalingConfigurationResponseBody?

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
            var model = CreateScalingConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateScalingGroupRequest : Tea.TeaModel {
    public var removalPolicy: [String]?

    public var DBInstanceIds: String?

    public var defaultCooldown: Int32?

    public var loadBalancerIds: String?

    public var maxSize: Int32?

    public var minSize: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var scalingGroupName: String?

    public var vSwitchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.removalPolicy != nil {
            map["RemovalPolicy"] = self.removalPolicy!
        }
        if self.DBInstanceIds != nil {
            map["DBInstanceIds"] = self.DBInstanceIds!
        }
        if self.defaultCooldown != nil {
            map["DefaultCooldown"] = self.defaultCooldown!
        }
        if self.loadBalancerIds != nil {
            map["LoadBalancerIds"] = self.loadBalancerIds!
        }
        if self.maxSize != nil {
            map["MaxSize"] = self.maxSize!
        }
        if self.minSize != nil {
            map["MinSize"] = self.minSize!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.scalingGroupName != nil {
            map["ScalingGroupName"] = self.scalingGroupName!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RemovalPolicy") {
            self.removalPolicy = dict["RemovalPolicy"] as! [String]
        }
        if dict.keys.contains("DBInstanceIds") {
            self.DBInstanceIds = dict["DBInstanceIds"] as! String
        }
        if dict.keys.contains("DefaultCooldown") {
            self.defaultCooldown = dict["DefaultCooldown"] as! Int32
        }
        if dict.keys.contains("LoadBalancerIds") {
            self.loadBalancerIds = dict["LoadBalancerIds"] as! String
        }
        if dict.keys.contains("MaxSize") {
            self.maxSize = dict["MaxSize"] as! Int32
        }
        if dict.keys.contains("MinSize") {
            self.minSize = dict["MinSize"] as! Int32
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ScalingGroupName") {
            self.scalingGroupName = dict["ScalingGroupName"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
    }
}

public class CreateScalingGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var scalingGroupId: String?

    public override init() {
        super.init()
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
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! String
        }
    }
}

public class CreateScalingGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScalingGroupResponseBody?

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
            var model = CreateScalingGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateScalingRuleRequest : Tea.TeaModel {
    public var adjustmentType: String?

    public var adjustmentValue: Int32?

    public var cooldown: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scalingGroupId: String?

    public var scalingRuleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adjustmentType != nil {
            map["AdjustmentType"] = self.adjustmentType!
        }
        if self.adjustmentValue != nil {
            map["AdjustmentValue"] = self.adjustmentValue!
        }
        if self.cooldown != nil {
            map["Cooldown"] = self.cooldown!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
        }
        if self.scalingRuleName != nil {
            map["ScalingRuleName"] = self.scalingRuleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdjustmentType") {
            self.adjustmentType = dict["AdjustmentType"] as! String
        }
        if dict.keys.contains("AdjustmentValue") {
            self.adjustmentValue = dict["AdjustmentValue"] as! Int32
        }
        if dict.keys.contains("Cooldown") {
            self.cooldown = dict["Cooldown"] as! Int32
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! String
        }
        if dict.keys.contains("ScalingRuleName") {
            self.scalingRuleName = dict["ScalingRuleName"] as! String
        }
    }
}

public class CreateScalingRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var scalingRuleAri: String?

    public var scalingRuleId: String?

    public override init() {
        super.init()
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
        if self.scalingRuleAri != nil {
            map["ScalingRuleAri"] = self.scalingRuleAri!
        }
        if self.scalingRuleId != nil {
            map["ScalingRuleId"] = self.scalingRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScalingRuleAri") {
            self.scalingRuleAri = dict["ScalingRuleAri"] as! String
        }
        if dict.keys.contains("ScalingRuleId") {
            self.scalingRuleId = dict["ScalingRuleId"] as! String
        }
    }
}

public class CreateScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScalingRuleResponseBody?

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
            var model = CreateScalingRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateScheduledTaskRequest : Tea.TeaModel {
    public var description_: String?

    public var launchExpirationTime: Int32?

    public var launchTime: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var recurrenceEndTime: String?

    public var recurrenceType: String?

    public var recurrenceValue: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scheduledAction: String?

    public var scheduledTaskName: String?

    public var taskEnabled: Bool?

    public override init() {
        super.init()
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
        if self.launchExpirationTime != nil {
            map["LaunchExpirationTime"] = self.launchExpirationTime!
        }
        if self.launchTime != nil {
            map["LaunchTime"] = self.launchTime!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.recurrenceEndTime != nil {
            map["RecurrenceEndTime"] = self.recurrenceEndTime!
        }
        if self.recurrenceType != nil {
            map["RecurrenceType"] = self.recurrenceType!
        }
        if self.recurrenceValue != nil {
            map["RecurrenceValue"] = self.recurrenceValue!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scheduledAction != nil {
            map["ScheduledAction"] = self.scheduledAction!
        }
        if self.scheduledTaskName != nil {
            map["ScheduledTaskName"] = self.scheduledTaskName!
        }
        if self.taskEnabled != nil {
            map["TaskEnabled"] = self.taskEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("LaunchExpirationTime") {
            self.launchExpirationTime = dict["LaunchExpirationTime"] as! Int32
        }
        if dict.keys.contains("LaunchTime") {
            self.launchTime = dict["LaunchTime"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RecurrenceEndTime") {
            self.recurrenceEndTime = dict["RecurrenceEndTime"] as! String
        }
        if dict.keys.contains("RecurrenceType") {
            self.recurrenceType = dict["RecurrenceType"] as! String
        }
        if dict.keys.contains("RecurrenceValue") {
            self.recurrenceValue = dict["RecurrenceValue"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScheduledAction") {
            self.scheduledAction = dict["ScheduledAction"] as! String
        }
        if dict.keys.contains("ScheduledTaskName") {
            self.scheduledTaskName = dict["ScheduledTaskName"] as! String
        }
        if dict.keys.contains("TaskEnabled") {
            self.taskEnabled = dict["TaskEnabled"] as! Bool
        }
    }
}

public class CreateScheduledTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var scheduledTaskId: String?

    public override init() {
        super.init()
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
        if self.scheduledTaskId != nil {
            map["ScheduledTaskId"] = self.scheduledTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScheduledTaskId") {
            self.scheduledTaskId = dict["ScheduledTaskId"] as! String
        }
    }
}

public class CreateScheduledTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScheduledTaskResponseBody?

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
            var model = CreateScheduledTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteScalingConfigurationRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scalingConfigurationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scalingConfigurationId != nil {
            map["ScalingConfigurationId"] = self.scalingConfigurationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScalingConfigurationId") {
            self.scalingConfigurationId = dict["ScalingConfigurationId"] as! String
        }
    }
}

public class DeleteScalingConfigurationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteScalingConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScalingConfigurationResponseBody?

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
            var model = DeleteScalingConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteScalingGroupRequest : Tea.TeaModel {
    public var forceDelete: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var scalingGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.forceDelete != nil {
            map["ForceDelete"] = self.forceDelete!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ForceDelete") {
            self.forceDelete = dict["ForceDelete"] as! Bool
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! String
        }
    }
}

public class DeleteScalingGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteScalingGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScalingGroupResponseBody?

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
            var model = DeleteScalingGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteScalingRuleRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scalingRuleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scalingRuleId != nil {
            map["ScalingRuleId"] = self.scalingRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScalingRuleId") {
            self.scalingRuleId = dict["ScalingRuleId"] as! String
        }
    }
}

public class DeleteScalingRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScalingRuleResponseBody?

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
            var model = DeleteScalingRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteScheduledTaskRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scheduledTaskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scheduledTaskId != nil {
            map["ScheduledTaskId"] = self.scheduledTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScheduledTaskId") {
            self.scheduledTaskId = dict["ScheduledTaskId"] as! String
        }
    }
}

public class DeleteScheduledTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteScheduledTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScheduledTaskResponseBody?

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
            var model = DeleteScheduledTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccountAttributesRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeAccountAttributesResponseBody : Tea.TeaModel {
    public var maxNumberOfDBInstances: Int32?

    public var maxNumberOfLoadBalancers: Int32?

    public var maxNumberOfMaxSize: Int32?

    public var maxNumberOfMinSize: Int32?

    public var maxNumberOfScalingConfigurations: Int32?

    public var maxNumberOfScalingGroups: Int32?

    public var maxNumberOfScalingInstances: Int32?

    public var maxNumberOfScalingRules: Int32?

    public var maxNumberOfScheduledTasks: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxNumberOfDBInstances != nil {
            map["MaxNumberOfDBInstances"] = self.maxNumberOfDBInstances!
        }
        if self.maxNumberOfLoadBalancers != nil {
            map["MaxNumberOfLoadBalancers"] = self.maxNumberOfLoadBalancers!
        }
        if self.maxNumberOfMaxSize != nil {
            map["MaxNumberOfMaxSize"] = self.maxNumberOfMaxSize!
        }
        if self.maxNumberOfMinSize != nil {
            map["MaxNumberOfMinSize"] = self.maxNumberOfMinSize!
        }
        if self.maxNumberOfScalingConfigurations != nil {
            map["MaxNumberOfScalingConfigurations"] = self.maxNumberOfScalingConfigurations!
        }
        if self.maxNumberOfScalingGroups != nil {
            map["MaxNumberOfScalingGroups"] = self.maxNumberOfScalingGroups!
        }
        if self.maxNumberOfScalingInstances != nil {
            map["MaxNumberOfScalingInstances"] = self.maxNumberOfScalingInstances!
        }
        if self.maxNumberOfScalingRules != nil {
            map["MaxNumberOfScalingRules"] = self.maxNumberOfScalingRules!
        }
        if self.maxNumberOfScheduledTasks != nil {
            map["MaxNumberOfScheduledTasks"] = self.maxNumberOfScheduledTasks!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxNumberOfDBInstances") {
            self.maxNumberOfDBInstances = dict["MaxNumberOfDBInstances"] as! Int32
        }
        if dict.keys.contains("MaxNumberOfLoadBalancers") {
            self.maxNumberOfLoadBalancers = dict["MaxNumberOfLoadBalancers"] as! Int32
        }
        if dict.keys.contains("MaxNumberOfMaxSize") {
            self.maxNumberOfMaxSize = dict["MaxNumberOfMaxSize"] as! Int32
        }
        if dict.keys.contains("MaxNumberOfMinSize") {
            self.maxNumberOfMinSize = dict["MaxNumberOfMinSize"] as! Int32
        }
        if dict.keys.contains("MaxNumberOfScalingConfigurations") {
            self.maxNumberOfScalingConfigurations = dict["MaxNumberOfScalingConfigurations"] as! Int32
        }
        if dict.keys.contains("MaxNumberOfScalingGroups") {
            self.maxNumberOfScalingGroups = dict["MaxNumberOfScalingGroups"] as! Int32
        }
        if dict.keys.contains("MaxNumberOfScalingInstances") {
            self.maxNumberOfScalingInstances = dict["MaxNumberOfScalingInstances"] as! Int32
        }
        if dict.keys.contains("MaxNumberOfScalingRules") {
            self.maxNumberOfScalingRules = dict["MaxNumberOfScalingRules"] as! Int32
        }
        if dict.keys.contains("MaxNumberOfScheduledTasks") {
            self.maxNumberOfScheduledTasks = dict["MaxNumberOfScheduledTasks"] as! Int32
        }
    }
}

public class DescribeAccountAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountAttributesResponseBody?

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
            var model = DescribeAccountAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCapacityHistoryRequest : Tea.TeaModel {
    public var endTime: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scalingGroupId: String?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
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
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeCapacityHistoryResponseBody : Tea.TeaModel {
    public class CapacityHistoryItems : Tea.TeaModel {
        public class CapacityHistoryModel : Tea.TeaModel {
            public var attachedCapacity: Int32?

            public var autoCreatedCapacity: Int32?

            public var scalingGroupId: String?

            public var timestamp: String?

            public var totalCapacity: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attachedCapacity != nil {
                    map["AttachedCapacity"] = self.attachedCapacity!
                }
                if self.autoCreatedCapacity != nil {
                    map["AutoCreatedCapacity"] = self.autoCreatedCapacity!
                }
                if self.scalingGroupId != nil {
                    map["ScalingGroupId"] = self.scalingGroupId!
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                if self.totalCapacity != nil {
                    map["TotalCapacity"] = self.totalCapacity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttachedCapacity") {
                    self.attachedCapacity = dict["AttachedCapacity"] as! Int32
                }
                if dict.keys.contains("AutoCreatedCapacity") {
                    self.autoCreatedCapacity = dict["AutoCreatedCapacity"] as! Int32
                }
                if dict.keys.contains("ScalingGroupId") {
                    self.scalingGroupId = dict["ScalingGroupId"] as! String
                }
                if dict.keys.contains("Timestamp") {
                    self.timestamp = dict["Timestamp"] as! String
                }
                if dict.keys.contains("TotalCapacity") {
                    self.totalCapacity = dict["TotalCapacity"] as! Int32
                }
            }
        }
        public var capacityHistoryModel: [DescribeCapacityHistoryResponseBody.CapacityHistoryItems.CapacityHistoryModel]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capacityHistoryModel != nil {
                var tmp : [Any] = []
                for k in self.capacityHistoryModel! {
                    tmp.append(k.toMap())
                }
                map["CapacityHistoryModel"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CapacityHistoryModel") {
                var tmp : [DescribeCapacityHistoryResponseBody.CapacityHistoryItems.CapacityHistoryModel] = []
                for v in dict["CapacityHistoryModel"] as! [Any] {
                    var model = DescribeCapacityHistoryResponseBody.CapacityHistoryItems.CapacityHistoryModel()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.capacityHistoryModel = tmp
            }
        }
    }
    public var capacityHistoryItems: DescribeCapacityHistoryResponseBody.CapacityHistoryItems?

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
        try self.capacityHistoryItems?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.capacityHistoryItems != nil {
            map["CapacityHistoryItems"] = self.capacityHistoryItems?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CapacityHistoryItems") {
            var model = DescribeCapacityHistoryResponseBody.CapacityHistoryItems()
            model.fromMap(dict["CapacityHistoryItems"] as! [String: Any])
            self.capacityHistoryItems = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCapacityHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCapacityHistoryResponseBody?

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
            var model = DescribeCapacityHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLimitationRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeLimitationResponseBody : Tea.TeaModel {
    public var maxNumberOfDBInstances: Int32?

    public var maxNumberOfLoadBalancers: Int32?

    public var maxNumberOfMaxSize: Int32?

    public var maxNumberOfMinSize: Int32?

    public var maxNumberOfScalingConfigurations: Int32?

    public var maxNumberOfScalingGroups: Int32?

    public var maxNumberOfScalingInstances: Int32?

    public var maxNumberOfScalingRules: Int32?

    public var maxNumberOfScheduledTasks: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxNumberOfDBInstances != nil {
            map["MaxNumberOfDBInstances"] = self.maxNumberOfDBInstances!
        }
        if self.maxNumberOfLoadBalancers != nil {
            map["MaxNumberOfLoadBalancers"] = self.maxNumberOfLoadBalancers!
        }
        if self.maxNumberOfMaxSize != nil {
            map["MaxNumberOfMaxSize"] = self.maxNumberOfMaxSize!
        }
        if self.maxNumberOfMinSize != nil {
            map["MaxNumberOfMinSize"] = self.maxNumberOfMinSize!
        }
        if self.maxNumberOfScalingConfigurations != nil {
            map["MaxNumberOfScalingConfigurations"] = self.maxNumberOfScalingConfigurations!
        }
        if self.maxNumberOfScalingGroups != nil {
            map["MaxNumberOfScalingGroups"] = self.maxNumberOfScalingGroups!
        }
        if self.maxNumberOfScalingInstances != nil {
            map["MaxNumberOfScalingInstances"] = self.maxNumberOfScalingInstances!
        }
        if self.maxNumberOfScalingRules != nil {
            map["MaxNumberOfScalingRules"] = self.maxNumberOfScalingRules!
        }
        if self.maxNumberOfScheduledTasks != nil {
            map["MaxNumberOfScheduledTasks"] = self.maxNumberOfScheduledTasks!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxNumberOfDBInstances") {
            self.maxNumberOfDBInstances = dict["MaxNumberOfDBInstances"] as! Int32
        }
        if dict.keys.contains("MaxNumberOfLoadBalancers") {
            self.maxNumberOfLoadBalancers = dict["MaxNumberOfLoadBalancers"] as! Int32
        }
        if dict.keys.contains("MaxNumberOfMaxSize") {
            self.maxNumberOfMaxSize = dict["MaxNumberOfMaxSize"] as! Int32
        }
        if dict.keys.contains("MaxNumberOfMinSize") {
            self.maxNumberOfMinSize = dict["MaxNumberOfMinSize"] as! Int32
        }
        if dict.keys.contains("MaxNumberOfScalingConfigurations") {
            self.maxNumberOfScalingConfigurations = dict["MaxNumberOfScalingConfigurations"] as! Int32
        }
        if dict.keys.contains("MaxNumberOfScalingGroups") {
            self.maxNumberOfScalingGroups = dict["MaxNumberOfScalingGroups"] as! Int32
        }
        if dict.keys.contains("MaxNumberOfScalingInstances") {
            self.maxNumberOfScalingInstances = dict["MaxNumberOfScalingInstances"] as! Int32
        }
        if dict.keys.contains("MaxNumberOfScalingRules") {
            self.maxNumberOfScalingRules = dict["MaxNumberOfScalingRules"] as! Int32
        }
        if dict.keys.contains("MaxNumberOfScheduledTasks") {
            self.maxNumberOfScheduledTasks = dict["MaxNumberOfScheduledTasks"] as! Int32
        }
    }
}

public class DescribeLimitationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLimitationResponseBody?

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
            var model = DescribeLimitationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
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
        public var region: [DescribeRegionsResponseBody.Regions.Region]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["Region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in dict["Region"] as! [Any] {
                    var model = DescribeRegionsResponseBody.Regions.Region()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.region = tmp
            }
        }
    }
    public var regions: DescribeRegionsResponseBody.Regions?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

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
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScalingActivitiesRequest : Tea.TeaModel {
    public var scalingActivityId: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scalingGroupId: String?

    public var statusCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scalingActivityId != nil {
            map["ScalingActivityId"] = self.scalingActivityId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
        }
        if self.statusCode != nil {
            map["StatusCode"] = self.statusCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ScalingActivityId") {
            self.scalingActivityId = dict["ScalingActivityId"] as! [String]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! String
        }
        if dict.keys.contains("StatusCode") {
            self.statusCode = dict["StatusCode"] as! String
        }
    }
}

public class DescribeScalingActivitiesResponseBody : Tea.TeaModel {
    public class ScalingActivities : Tea.TeaModel {
        public class ScalingActivity : Tea.TeaModel {
            public var attachedCapacity: String?

            public var autoCreatedCapacity: String?

            public var cause: String?

            public var description_: String?

            public var endTime: String?

            public var progress: Int32?

            public var scalingActivityId: String?

            public var scalingGroupId: String?

            public var startTime: String?

            public var statusCode: String?

            public var statusMessage: String?

            public var totalCapacity: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attachedCapacity != nil {
                    map["AttachedCapacity"] = self.attachedCapacity!
                }
                if self.autoCreatedCapacity != nil {
                    map["AutoCreatedCapacity"] = self.autoCreatedCapacity!
                }
                if self.cause != nil {
                    map["Cause"] = self.cause!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.scalingActivityId != nil {
                    map["ScalingActivityId"] = self.scalingActivityId!
                }
                if self.scalingGroupId != nil {
                    map["ScalingGroupId"] = self.scalingGroupId!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.statusCode != nil {
                    map["StatusCode"] = self.statusCode!
                }
                if self.statusMessage != nil {
                    map["StatusMessage"] = self.statusMessage!
                }
                if self.totalCapacity != nil {
                    map["TotalCapacity"] = self.totalCapacity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttachedCapacity") {
                    self.attachedCapacity = dict["AttachedCapacity"] as! String
                }
                if dict.keys.contains("AutoCreatedCapacity") {
                    self.autoCreatedCapacity = dict["AutoCreatedCapacity"] as! String
                }
                if dict.keys.contains("Cause") {
                    self.cause = dict["Cause"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("Progress") {
                    self.progress = dict["Progress"] as! Int32
                }
                if dict.keys.contains("ScalingActivityId") {
                    self.scalingActivityId = dict["ScalingActivityId"] as! String
                }
                if dict.keys.contains("ScalingGroupId") {
                    self.scalingGroupId = dict["ScalingGroupId"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("StatusCode") {
                    self.statusCode = dict["StatusCode"] as! String
                }
                if dict.keys.contains("StatusMessage") {
                    self.statusMessage = dict["StatusMessage"] as! String
                }
                if dict.keys.contains("TotalCapacity") {
                    self.totalCapacity = dict["TotalCapacity"] as! String
                }
            }
        }
        public var scalingActivity: [DescribeScalingActivitiesResponseBody.ScalingActivities.ScalingActivity]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scalingActivity != nil {
                var tmp : [Any] = []
                for k in self.scalingActivity! {
                    tmp.append(k.toMap())
                }
                map["ScalingActivity"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ScalingActivity") {
                var tmp : [DescribeScalingActivitiesResponseBody.ScalingActivities.ScalingActivity] = []
                for v in dict["ScalingActivity"] as! [Any] {
                    var model = DescribeScalingActivitiesResponseBody.ScalingActivities.ScalingActivity()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.scalingActivity = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var scalingActivities: DescribeScalingActivitiesResponseBody.ScalingActivities?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.scalingActivities?.validate()
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
        if self.scalingActivities != nil {
            map["ScalingActivities"] = self.scalingActivities?.toMap()
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
        if dict.keys.contains("ScalingActivities") {
            var model = DescribeScalingActivitiesResponseBody.ScalingActivities()
            model.fromMap(dict["ScalingActivities"] as! [String: Any])
            self.scalingActivities = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeScalingActivitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScalingActivitiesResponseBody?

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
            var model = DescribeScalingActivitiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScalingActivityDetailRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scalingActivityId: String?

    public override init() {
        super.init()
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
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scalingActivityId != nil {
            map["ScalingActivityId"] = self.scalingActivityId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScalingActivityId") {
            self.scalingActivityId = dict["ScalingActivityId"] as! String
        }
    }
}

public class DescribeScalingActivityDetailResponseBody : Tea.TeaModel {
    public var detail: String?

    public var scalingActivityId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.scalingActivityId != nil {
            map["ScalingActivityId"] = self.scalingActivityId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Detail") {
            self.detail = dict["Detail"] as! String
        }
        if dict.keys.contains("ScalingActivityId") {
            self.scalingActivityId = dict["ScalingActivityId"] as! String
        }
    }
}

public class DescribeScalingActivityDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScalingActivityDetailResponseBody?

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
            var model = DescribeScalingActivityDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScalingConfigurationsRequest : Tea.TeaModel {
    public var scalingConfigurationId: [String]?

    public var scalingConfigurationName: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scalingGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scalingConfigurationId != nil {
            map["ScalingConfigurationId"] = self.scalingConfigurationId!
        }
        if self.scalingConfigurationName != nil {
            map["ScalingConfigurationName"] = self.scalingConfigurationName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ScalingConfigurationId") {
            self.scalingConfigurationId = dict["ScalingConfigurationId"] as! [String]
        }
        if dict.keys.contains("ScalingConfigurationName") {
            self.scalingConfigurationName = dict["ScalingConfigurationName"] as! [String]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! String
        }
    }
}

public class DescribeScalingConfigurationsResponseBody : Tea.TeaModel {
    public class ScalingConfigurations : Tea.TeaModel {
        public class ScalingConfiguration : Tea.TeaModel {
            public class DataDisks : Tea.TeaModel {
                public class DataDisk : Tea.TeaModel {
                    public var category: String?

                    public var device: String?

                    public var size: Int32?

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
                        if self.category != nil {
                            map["Category"] = self.category!
                        }
                        if self.device != nil {
                            map["Device"] = self.device!
                        }
                        if self.size != nil {
                            map["Size"] = self.size!
                        }
                        if self.snapshotId != nil {
                            map["SnapshotId"] = self.snapshotId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Category") {
                            self.category = dict["Category"] as! String
                        }
                        if dict.keys.contains("Device") {
                            self.device = dict["Device"] as! String
                        }
                        if dict.keys.contains("Size") {
                            self.size = dict["Size"] as! Int32
                        }
                        if dict.keys.contains("SnapshotId") {
                            self.snapshotId = dict["SnapshotId"] as! String
                        }
                    }
                }
                public var dataDisk: [DescribeScalingConfigurationsResponseBody.ScalingConfigurations.ScalingConfiguration.DataDisks.DataDisk]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dataDisk != nil {
                        var tmp : [Any] = []
                        for k in self.dataDisk! {
                            tmp.append(k.toMap())
                        }
                        map["DataDisk"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DataDisk") {
                        var tmp : [DescribeScalingConfigurationsResponseBody.ScalingConfigurations.ScalingConfiguration.DataDisks.DataDisk] = []
                        for v in dict["DataDisk"] as! [Any] {
                            var model = DescribeScalingConfigurationsResponseBody.ScalingConfigurations.ScalingConfiguration.DataDisks.DataDisk()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.dataDisk = tmp
                    }
                }
            }
            public var creationTime: String?

            public var dataDisks: DescribeScalingConfigurationsResponseBody.ScalingConfigurations.ScalingConfiguration.DataDisks?

            public var imageId: String?

            public var instanceGeneration: String?

            public var instanceType: String?

            public var internetChargeType: String?

            public var internetMaxBandwidthIn: Int32?

            public var internetMaxBandwidthOut: Int32?

            public var ioOptimized: String?

            public var lifecycleState: String?

            public var scalingConfigurationId: String?

            public var scalingConfigurationName: String?

            public var scalingGroupId: String?

            public var securityGroupId: String?

            public var systemDiskCategory: String?

            public var systemDiskSize: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dataDisks?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.dataDisks != nil {
                    map["DataDisks"] = self.dataDisks?.toMap()
                }
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.instanceGeneration != nil {
                    map["InstanceGeneration"] = self.instanceGeneration!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.internetChargeType != nil {
                    map["InternetChargeType"] = self.internetChargeType!
                }
                if self.internetMaxBandwidthIn != nil {
                    map["InternetMaxBandwidthIn"] = self.internetMaxBandwidthIn!
                }
                if self.internetMaxBandwidthOut != nil {
                    map["InternetMaxBandwidthOut"] = self.internetMaxBandwidthOut!
                }
                if self.ioOptimized != nil {
                    map["IoOptimized"] = self.ioOptimized!
                }
                if self.lifecycleState != nil {
                    map["LifecycleState"] = self.lifecycleState!
                }
                if self.scalingConfigurationId != nil {
                    map["ScalingConfigurationId"] = self.scalingConfigurationId!
                }
                if self.scalingConfigurationName != nil {
                    map["ScalingConfigurationName"] = self.scalingConfigurationName!
                }
                if self.scalingGroupId != nil {
                    map["ScalingGroupId"] = self.scalingGroupId!
                }
                if self.securityGroupId != nil {
                    map["SecurityGroupId"] = self.securityGroupId!
                }
                if self.systemDiskCategory != nil {
                    map["SystemDiskCategory"] = self.systemDiskCategory!
                }
                if self.systemDiskSize != nil {
                    map["SystemDiskSize"] = self.systemDiskSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("DataDisks") {
                    var model = DescribeScalingConfigurationsResponseBody.ScalingConfigurations.ScalingConfiguration.DataDisks()
                    model.fromMap(dict["DataDisks"] as! [String: Any])
                    self.dataDisks = model
                }
                if dict.keys.contains("ImageId") {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("InstanceGeneration") {
                    self.instanceGeneration = dict["InstanceGeneration"] as! String
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("InternetChargeType") {
                    self.internetChargeType = dict["InternetChargeType"] as! String
                }
                if dict.keys.contains("InternetMaxBandwidthIn") {
                    self.internetMaxBandwidthIn = dict["InternetMaxBandwidthIn"] as! Int32
                }
                if dict.keys.contains("InternetMaxBandwidthOut") {
                    self.internetMaxBandwidthOut = dict["InternetMaxBandwidthOut"] as! Int32
                }
                if dict.keys.contains("IoOptimized") {
                    self.ioOptimized = dict["IoOptimized"] as! String
                }
                if dict.keys.contains("LifecycleState") {
                    self.lifecycleState = dict["LifecycleState"] as! String
                }
                if dict.keys.contains("ScalingConfigurationId") {
                    self.scalingConfigurationId = dict["ScalingConfigurationId"] as! String
                }
                if dict.keys.contains("ScalingConfigurationName") {
                    self.scalingConfigurationName = dict["ScalingConfigurationName"] as! String
                }
                if dict.keys.contains("ScalingGroupId") {
                    self.scalingGroupId = dict["ScalingGroupId"] as! String
                }
                if dict.keys.contains("SecurityGroupId") {
                    self.securityGroupId = dict["SecurityGroupId"] as! String
                }
                if dict.keys.contains("SystemDiskCategory") {
                    self.systemDiskCategory = dict["SystemDiskCategory"] as! String
                }
                if dict.keys.contains("SystemDiskSize") {
                    self.systemDiskSize = dict["SystemDiskSize"] as! Int32
                }
            }
        }
        public var scalingConfiguration: [DescribeScalingConfigurationsResponseBody.ScalingConfigurations.ScalingConfiguration]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scalingConfiguration != nil {
                var tmp : [Any] = []
                for k in self.scalingConfiguration! {
                    tmp.append(k.toMap())
                }
                map["ScalingConfiguration"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ScalingConfiguration") {
                var tmp : [DescribeScalingConfigurationsResponseBody.ScalingConfigurations.ScalingConfiguration] = []
                for v in dict["ScalingConfiguration"] as! [Any] {
                    var model = DescribeScalingConfigurationsResponseBody.ScalingConfigurations.ScalingConfiguration()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.scalingConfiguration = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var scalingConfigurations: DescribeScalingConfigurationsResponseBody.ScalingConfigurations?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.scalingConfigurations?.validate()
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
        if self.scalingConfigurations != nil {
            map["ScalingConfigurations"] = self.scalingConfigurations?.toMap()
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
        if dict.keys.contains("ScalingConfigurations") {
            var model = DescribeScalingConfigurationsResponseBody.ScalingConfigurations()
            model.fromMap(dict["ScalingConfigurations"] as! [String: Any])
            self.scalingConfigurations = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeScalingConfigurationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScalingConfigurationsResponseBody?

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
            var model = DescribeScalingConfigurationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScalingGroupsRequest : Tea.TeaModel {
    public var scalingGroupId: [String]?

    public var scalingGroupName: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
        }
        if self.scalingGroupName != nil {
            map["ScalingGroupName"] = self.scalingGroupName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! [String]
        }
        if dict.keys.contains("ScalingGroupName") {
            self.scalingGroupName = dict["ScalingGroupName"] as! [String]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
    }
}

public class DescribeScalingGroupsResponseBody : Tea.TeaModel {
    public class ScalingGroups : Tea.TeaModel {
        public class ScalingGroup : Tea.TeaModel {
            public class DBInstanceIds : Tea.TeaModel {
                public var DBInstanceId: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.DBInstanceId != nil {
                        map["DBInstanceId"] = self.DBInstanceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DBInstanceId") {
                        self.DBInstanceId = dict["DBInstanceId"] as! [String]
                    }
                }
            }
            public class LoadBalancerIds : Tea.TeaModel {
                public var loadBalancerId: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.loadBalancerId != nil {
                        map["LoadBalancerId"] = self.loadBalancerId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LoadBalancerId") {
                        self.loadBalancerId = dict["LoadBalancerId"] as! [String]
                    }
                }
            }
            public class RemovalPolicies : Tea.TeaModel {
                public var removalPolicy: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.removalPolicy != nil {
                        map["RemovalPolicy"] = self.removalPolicy!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RemovalPolicy") {
                        self.removalPolicy = dict["RemovalPolicy"] as! [String]
                    }
                }
            }
            public var activeCapacity: Int32?

            public var activeScalingConfigurationId: String?

            public var creationTime: String?

            public var DBInstanceIds: DescribeScalingGroupsResponseBody.ScalingGroups.ScalingGroup.DBInstanceIds?

            public var defaultCooldown: Int32?

            public var lifecycleState: String?

            public var loadBalancerIds: DescribeScalingGroupsResponseBody.ScalingGroups.ScalingGroup.LoadBalancerIds?

            public var maxSize: Int32?

            public var minSize: Int32?

            public var pendingCapacity: Int32?

            public var regionId: String?

            public var removalPolicies: DescribeScalingGroupsResponseBody.ScalingGroups.ScalingGroup.RemovalPolicies?

            public var removingCapacity: Int32?

            public var scalingGroupId: String?

            public var scalingGroupName: String?

            public var totalCapacity: Int32?

            public var vSwitchId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.DBInstanceIds?.validate()
                try self.loadBalancerIds?.validate()
                try self.removalPolicies?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activeCapacity != nil {
                    map["ActiveCapacity"] = self.activeCapacity!
                }
                if self.activeScalingConfigurationId != nil {
                    map["ActiveScalingConfigurationId"] = self.activeScalingConfigurationId!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.DBInstanceIds != nil {
                    map["DBInstanceIds"] = self.DBInstanceIds?.toMap()
                }
                if self.defaultCooldown != nil {
                    map["DefaultCooldown"] = self.defaultCooldown!
                }
                if self.lifecycleState != nil {
                    map["LifecycleState"] = self.lifecycleState!
                }
                if self.loadBalancerIds != nil {
                    map["LoadBalancerIds"] = self.loadBalancerIds?.toMap()
                }
                if self.maxSize != nil {
                    map["MaxSize"] = self.maxSize!
                }
                if self.minSize != nil {
                    map["MinSize"] = self.minSize!
                }
                if self.pendingCapacity != nil {
                    map["PendingCapacity"] = self.pendingCapacity!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.removalPolicies != nil {
                    map["RemovalPolicies"] = self.removalPolicies?.toMap()
                }
                if self.removingCapacity != nil {
                    map["RemovingCapacity"] = self.removingCapacity!
                }
                if self.scalingGroupId != nil {
                    map["ScalingGroupId"] = self.scalingGroupId!
                }
                if self.scalingGroupName != nil {
                    map["ScalingGroupName"] = self.scalingGroupName!
                }
                if self.totalCapacity != nil {
                    map["TotalCapacity"] = self.totalCapacity!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActiveCapacity") {
                    self.activeCapacity = dict["ActiveCapacity"] as! Int32
                }
                if dict.keys.contains("ActiveScalingConfigurationId") {
                    self.activeScalingConfigurationId = dict["ActiveScalingConfigurationId"] as! String
                }
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("DBInstanceIds") {
                    var model = DescribeScalingGroupsResponseBody.ScalingGroups.ScalingGroup.DBInstanceIds()
                    model.fromMap(dict["DBInstanceIds"] as! [String: Any])
                    self.DBInstanceIds = model
                }
                if dict.keys.contains("DefaultCooldown") {
                    self.defaultCooldown = dict["DefaultCooldown"] as! Int32
                }
                if dict.keys.contains("LifecycleState") {
                    self.lifecycleState = dict["LifecycleState"] as! String
                }
                if dict.keys.contains("LoadBalancerIds") {
                    var model = DescribeScalingGroupsResponseBody.ScalingGroups.ScalingGroup.LoadBalancerIds()
                    model.fromMap(dict["LoadBalancerIds"] as! [String: Any])
                    self.loadBalancerIds = model
                }
                if dict.keys.contains("MaxSize") {
                    self.maxSize = dict["MaxSize"] as! Int32
                }
                if dict.keys.contains("MinSize") {
                    self.minSize = dict["MinSize"] as! Int32
                }
                if dict.keys.contains("PendingCapacity") {
                    self.pendingCapacity = dict["PendingCapacity"] as! Int32
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("RemovalPolicies") {
                    var model = DescribeScalingGroupsResponseBody.ScalingGroups.ScalingGroup.RemovalPolicies()
                    model.fromMap(dict["RemovalPolicies"] as! [String: Any])
                    self.removalPolicies = model
                }
                if dict.keys.contains("RemovingCapacity") {
                    self.removingCapacity = dict["RemovingCapacity"] as! Int32
                }
                if dict.keys.contains("ScalingGroupId") {
                    self.scalingGroupId = dict["ScalingGroupId"] as! String
                }
                if dict.keys.contains("ScalingGroupName") {
                    self.scalingGroupName = dict["ScalingGroupName"] as! String
                }
                if dict.keys.contains("TotalCapacity") {
                    self.totalCapacity = dict["TotalCapacity"] as! Int32
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
            }
        }
        public var scalingGroup: [DescribeScalingGroupsResponseBody.ScalingGroups.ScalingGroup]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scalingGroup != nil {
                var tmp : [Any] = []
                for k in self.scalingGroup! {
                    tmp.append(k.toMap())
                }
                map["ScalingGroup"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ScalingGroup") {
                var tmp : [DescribeScalingGroupsResponseBody.ScalingGroups.ScalingGroup] = []
                for v in dict["ScalingGroup"] as! [Any] {
                    var model = DescribeScalingGroupsResponseBody.ScalingGroups.ScalingGroup()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.scalingGroup = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var scalingGroups: DescribeScalingGroupsResponseBody.ScalingGroups?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.scalingGroups?.validate()
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
        if self.scalingGroups != nil {
            map["ScalingGroups"] = self.scalingGroups?.toMap()
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
        if dict.keys.contains("ScalingGroups") {
            var model = DescribeScalingGroupsResponseBody.ScalingGroups()
            model.fromMap(dict["ScalingGroups"] as! [String: Any])
            self.scalingGroups = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeScalingGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScalingGroupsResponseBody?

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
            var model = DescribeScalingGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScalingInstancesRequest : Tea.TeaModel {
    public var instanceId: [String]?

    public var creationType: String?

    public var healthStatus: String?

    public var lifecycleState: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scalingConfigurationId: String?

    public var scalingGroupId: String?

    public override init() {
        super.init()
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
        if self.creationType != nil {
            map["CreationType"] = self.creationType!
        }
        if self.healthStatus != nil {
            map["HealthStatus"] = self.healthStatus!
        }
        if self.lifecycleState != nil {
            map["LifecycleState"] = self.lifecycleState!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scalingConfigurationId != nil {
            map["ScalingConfigurationId"] = self.scalingConfigurationId!
        }
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! [String]
        }
        if dict.keys.contains("CreationType") {
            self.creationType = dict["CreationType"] as! String
        }
        if dict.keys.contains("HealthStatus") {
            self.healthStatus = dict["HealthStatus"] as! String
        }
        if dict.keys.contains("LifecycleState") {
            self.lifecycleState = dict["LifecycleState"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScalingConfigurationId") {
            self.scalingConfigurationId = dict["ScalingConfigurationId"] as! String
        }
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! String
        }
    }
}

public class DescribeScalingInstancesResponseBody : Tea.TeaModel {
    public class ScalingInstances : Tea.TeaModel {
        public class ScalingInstance : Tea.TeaModel {
            public var creationTime: String?

            public var creationType: String?

            public var healthStatus: String?

            public var instanceId: String?

            public var lifecycleState: String?

            public var scalingConfigurationId: String?

            public var scalingGroupId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.creationType != nil {
                    map["CreationType"] = self.creationType!
                }
                if self.healthStatus != nil {
                    map["HealthStatus"] = self.healthStatus!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.lifecycleState != nil {
                    map["LifecycleState"] = self.lifecycleState!
                }
                if self.scalingConfigurationId != nil {
                    map["ScalingConfigurationId"] = self.scalingConfigurationId!
                }
                if self.scalingGroupId != nil {
                    map["ScalingGroupId"] = self.scalingGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("CreationType") {
                    self.creationType = dict["CreationType"] as! String
                }
                if dict.keys.contains("HealthStatus") {
                    self.healthStatus = dict["HealthStatus"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("LifecycleState") {
                    self.lifecycleState = dict["LifecycleState"] as! String
                }
                if dict.keys.contains("ScalingConfigurationId") {
                    self.scalingConfigurationId = dict["ScalingConfigurationId"] as! String
                }
                if dict.keys.contains("ScalingGroupId") {
                    self.scalingGroupId = dict["ScalingGroupId"] as! String
                }
            }
        }
        public var scalingInstance: [DescribeScalingInstancesResponseBody.ScalingInstances.ScalingInstance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scalingInstance != nil {
                var tmp : [Any] = []
                for k in self.scalingInstance! {
                    tmp.append(k.toMap())
                }
                map["ScalingInstance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ScalingInstance") {
                var tmp : [DescribeScalingInstancesResponseBody.ScalingInstances.ScalingInstance] = []
                for v in dict["ScalingInstance"] as! [Any] {
                    var model = DescribeScalingInstancesResponseBody.ScalingInstances.ScalingInstance()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.scalingInstance = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var scalingInstances: DescribeScalingInstancesResponseBody.ScalingInstances?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.scalingInstances?.validate()
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
        if self.scalingInstances != nil {
            map["ScalingInstances"] = self.scalingInstances?.toMap()
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
        if dict.keys.contains("ScalingInstances") {
            var model = DescribeScalingInstancesResponseBody.ScalingInstances()
            model.fromMap(dict["ScalingInstances"] as! [String: Any])
            self.scalingInstances = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeScalingInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScalingInstancesResponseBody?

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
            var model = DescribeScalingInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScalingRulesRequest : Tea.TeaModel {
    public var scalingRuleAri: [String]?

    public var scalingRuleId: [String]?

    public var scalingRuleName: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scalingGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scalingRuleAri != nil {
            map["ScalingRuleAri"] = self.scalingRuleAri!
        }
        if self.scalingRuleId != nil {
            map["ScalingRuleId"] = self.scalingRuleId!
        }
        if self.scalingRuleName != nil {
            map["ScalingRuleName"] = self.scalingRuleName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ScalingRuleAri") {
            self.scalingRuleAri = dict["ScalingRuleAri"] as! [String]
        }
        if dict.keys.contains("ScalingRuleId") {
            self.scalingRuleId = dict["ScalingRuleId"] as! [String]
        }
        if dict.keys.contains("ScalingRuleName") {
            self.scalingRuleName = dict["ScalingRuleName"] as! [String]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! String
        }
    }
}

public class DescribeScalingRulesResponseBody : Tea.TeaModel {
    public class ScalingRules : Tea.TeaModel {
        public class ScalingRule : Tea.TeaModel {
            public var adjustmentType: String?

            public var adjustmentValue: Int32?

            public var cooldown: Int32?

            public var maxSize: Int32?

            public var minSize: Int32?

            public var scalingGroupId: String?

            public var scalingRuleAri: String?

            public var scalingRuleId: String?

            public var scalingRuleName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.adjustmentType != nil {
                    map["AdjustmentType"] = self.adjustmentType!
                }
                if self.adjustmentValue != nil {
                    map["AdjustmentValue"] = self.adjustmentValue!
                }
                if self.cooldown != nil {
                    map["Cooldown"] = self.cooldown!
                }
                if self.maxSize != nil {
                    map["MaxSize"] = self.maxSize!
                }
                if self.minSize != nil {
                    map["MinSize"] = self.minSize!
                }
                if self.scalingGroupId != nil {
                    map["ScalingGroupId"] = self.scalingGroupId!
                }
                if self.scalingRuleAri != nil {
                    map["ScalingRuleAri"] = self.scalingRuleAri!
                }
                if self.scalingRuleId != nil {
                    map["ScalingRuleId"] = self.scalingRuleId!
                }
                if self.scalingRuleName != nil {
                    map["ScalingRuleName"] = self.scalingRuleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AdjustmentType") {
                    self.adjustmentType = dict["AdjustmentType"] as! String
                }
                if dict.keys.contains("AdjustmentValue") {
                    self.adjustmentValue = dict["AdjustmentValue"] as! Int32
                }
                if dict.keys.contains("Cooldown") {
                    self.cooldown = dict["Cooldown"] as! Int32
                }
                if dict.keys.contains("MaxSize") {
                    self.maxSize = dict["MaxSize"] as! Int32
                }
                if dict.keys.contains("MinSize") {
                    self.minSize = dict["MinSize"] as! Int32
                }
                if dict.keys.contains("ScalingGroupId") {
                    self.scalingGroupId = dict["ScalingGroupId"] as! String
                }
                if dict.keys.contains("ScalingRuleAri") {
                    self.scalingRuleAri = dict["ScalingRuleAri"] as! String
                }
                if dict.keys.contains("ScalingRuleId") {
                    self.scalingRuleId = dict["ScalingRuleId"] as! String
                }
                if dict.keys.contains("ScalingRuleName") {
                    self.scalingRuleName = dict["ScalingRuleName"] as! String
                }
            }
        }
        public var scalingRule: [DescribeScalingRulesResponseBody.ScalingRules.ScalingRule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scalingRule != nil {
                var tmp : [Any] = []
                for k in self.scalingRule! {
                    tmp.append(k.toMap())
                }
                map["ScalingRule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ScalingRule") {
                var tmp : [DescribeScalingRulesResponseBody.ScalingRules.ScalingRule] = []
                for v in dict["ScalingRule"] as! [Any] {
                    var model = DescribeScalingRulesResponseBody.ScalingRules.ScalingRule()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.scalingRule = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var scalingRules: DescribeScalingRulesResponseBody.ScalingRules?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.scalingRules?.validate()
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
        if self.scalingRules != nil {
            map["ScalingRules"] = self.scalingRules?.toMap()
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
        if dict.keys.contains("ScalingRules") {
            var model = DescribeScalingRulesResponseBody.ScalingRules()
            model.fromMap(dict["ScalingRules"] as! [String: Any])
            self.scalingRules = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeScalingRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScalingRulesResponseBody?

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
            var model = DescribeScalingRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScheduledTasksRequest : Tea.TeaModel {
    public var scheduledAction: [String]?

    public var scheduledTaskId: [String]?

    public var scheduledTaskName: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scheduledAction != nil {
            map["ScheduledAction"] = self.scheduledAction!
        }
        if self.scheduledTaskId != nil {
            map["ScheduledTaskId"] = self.scheduledTaskId!
        }
        if self.scheduledTaskName != nil {
            map["ScheduledTaskName"] = self.scheduledTaskName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ScheduledAction") {
            self.scheduledAction = dict["ScheduledAction"] as! [String]
        }
        if dict.keys.contains("ScheduledTaskId") {
            self.scheduledTaskId = dict["ScheduledTaskId"] as! [String]
        }
        if dict.keys.contains("ScheduledTaskName") {
            self.scheduledTaskName = dict["ScheduledTaskName"] as! [String]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeScheduledTasksResponseBody : Tea.TeaModel {
    public class ScheduledTasks : Tea.TeaModel {
        public class ScheduledTask : Tea.TeaModel {
            public var description_: String?

            public var launchExpirationTime: Int32?

            public var launchTime: String?

            public var recurrenceEndTime: String?

            public var recurrenceType: String?

            public var recurrenceValue: String?

            public var scheduledAction: String?

            public var scheduledTaskId: String?

            public var scheduledTaskName: String?

            public var taskEnabled: Bool?

            public override init() {
                super.init()
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
                if self.launchExpirationTime != nil {
                    map["LaunchExpirationTime"] = self.launchExpirationTime!
                }
                if self.launchTime != nil {
                    map["LaunchTime"] = self.launchTime!
                }
                if self.recurrenceEndTime != nil {
                    map["RecurrenceEndTime"] = self.recurrenceEndTime!
                }
                if self.recurrenceType != nil {
                    map["RecurrenceType"] = self.recurrenceType!
                }
                if self.recurrenceValue != nil {
                    map["RecurrenceValue"] = self.recurrenceValue!
                }
                if self.scheduledAction != nil {
                    map["ScheduledAction"] = self.scheduledAction!
                }
                if self.scheduledTaskId != nil {
                    map["ScheduledTaskId"] = self.scheduledTaskId!
                }
                if self.scheduledTaskName != nil {
                    map["ScheduledTaskName"] = self.scheduledTaskName!
                }
                if self.taskEnabled != nil {
                    map["TaskEnabled"] = self.taskEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("LaunchExpirationTime") {
                    self.launchExpirationTime = dict["LaunchExpirationTime"] as! Int32
                }
                if dict.keys.contains("LaunchTime") {
                    self.launchTime = dict["LaunchTime"] as! String
                }
                if dict.keys.contains("RecurrenceEndTime") {
                    self.recurrenceEndTime = dict["RecurrenceEndTime"] as! String
                }
                if dict.keys.contains("RecurrenceType") {
                    self.recurrenceType = dict["RecurrenceType"] as! String
                }
                if dict.keys.contains("RecurrenceValue") {
                    self.recurrenceValue = dict["RecurrenceValue"] as! String
                }
                if dict.keys.contains("ScheduledAction") {
                    self.scheduledAction = dict["ScheduledAction"] as! String
                }
                if dict.keys.contains("ScheduledTaskId") {
                    self.scheduledTaskId = dict["ScheduledTaskId"] as! String
                }
                if dict.keys.contains("ScheduledTaskName") {
                    self.scheduledTaskName = dict["ScheduledTaskName"] as! String
                }
                if dict.keys.contains("TaskEnabled") {
                    self.taskEnabled = dict["TaskEnabled"] as! Bool
                }
            }
        }
        public var scheduledTask: [DescribeScheduledTasksResponseBody.ScheduledTasks.ScheduledTask]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scheduledTask != nil {
                var tmp : [Any] = []
                for k in self.scheduledTask! {
                    tmp.append(k.toMap())
                }
                map["ScheduledTask"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ScheduledTask") {
                var tmp : [DescribeScheduledTasksResponseBody.ScheduledTasks.ScheduledTask] = []
                for v in dict["ScheduledTask"] as! [Any] {
                    var model = DescribeScheduledTasksResponseBody.ScheduledTasks.ScheduledTask()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.scheduledTask = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var scheduledTasks: DescribeScheduledTasksResponseBody.ScheduledTasks?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.scheduledTasks?.validate()
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
        if self.scheduledTasks != nil {
            map["ScheduledTasks"] = self.scheduledTasks?.toMap()
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
        if dict.keys.contains("ScheduledTasks") {
            var model = DescribeScheduledTasksResponseBody.ScheduledTasks()
            model.fromMap(dict["ScheduledTasks"] as! [String: Any])
            self.scheduledTasks = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeScheduledTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScheduledTasksResponseBody?

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
            var model = DescribeScheduledTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachInstancesRequest : Tea.TeaModel {
    public var instanceId: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scalingGroupId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! [String]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! String
        }
    }
}

public class DetachInstancesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var scalingActivityId: String?

    public override init() {
        super.init()
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
        if self.scalingActivityId != nil {
            map["ScalingActivityId"] = self.scalingActivityId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScalingActivityId") {
            self.scalingActivityId = dict["ScalingActivityId"] as! String
        }
    }
}

public class DetachInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachInstancesResponseBody?

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
            var model = DetachInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableScalingGroupRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var scalingGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! String
        }
    }
}

public class DisableScalingGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DisableScalingGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableScalingGroupResponseBody?

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
            var model = DisableScalingGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableScalingGroupRequest : Tea.TeaModel {
    public var instanceId: [String]?

    public var activeScalingConfigurationId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var scalingGroupId: String?

    public override init() {
        super.init()
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
        if self.activeScalingConfigurationId != nil {
            map["ActiveScalingConfigurationId"] = self.activeScalingConfigurationId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! [String]
        }
        if dict.keys.contains("ActiveScalingConfigurationId") {
            self.activeScalingConfigurationId = dict["ActiveScalingConfigurationId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! String
        }
    }
}

public class EnableScalingGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class EnableScalingGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableScalingGroupResponseBody?

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
            var model = EnableScalingGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteScalingRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scalingRuleAri: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scalingRuleAri != nil {
            map["ScalingRuleAri"] = self.scalingRuleAri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScalingRuleAri") {
            self.scalingRuleAri = dict["ScalingRuleAri"] as! String
        }
    }
}

public class ExecuteScalingRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var scalingActivityId: String?

    public override init() {
        super.init()
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
        if self.scalingActivityId != nil {
            map["ScalingActivityId"] = self.scalingActivityId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScalingActivityId") {
            self.scalingActivityId = dict["ScalingActivityId"] as! String
        }
    }
}

public class ExecuteScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteScalingRuleResponseBody?

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
            var model = ExecuteScalingRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyScalingGroupRequest : Tea.TeaModel {
    public var removalPolicy: [String]?

    public var activeScalingConfigurationId: String?

    public var defaultCooldown: Int32?

    public var maxSize: Int32?

    public var minSize: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var scalingGroupId: String?

    public var scalingGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.removalPolicy != nil {
            map["RemovalPolicy"] = self.removalPolicy!
        }
        if self.activeScalingConfigurationId != nil {
            map["ActiveScalingConfigurationId"] = self.activeScalingConfigurationId!
        }
        if self.defaultCooldown != nil {
            map["DefaultCooldown"] = self.defaultCooldown!
        }
        if self.maxSize != nil {
            map["MaxSize"] = self.maxSize!
        }
        if self.minSize != nil {
            map["MinSize"] = self.minSize!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
        }
        if self.scalingGroupName != nil {
            map["ScalingGroupName"] = self.scalingGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RemovalPolicy") {
            self.removalPolicy = dict["RemovalPolicy"] as! [String]
        }
        if dict.keys.contains("ActiveScalingConfigurationId") {
            self.activeScalingConfigurationId = dict["ActiveScalingConfigurationId"] as! String
        }
        if dict.keys.contains("DefaultCooldown") {
            self.defaultCooldown = dict["DefaultCooldown"] as! Int32
        }
        if dict.keys.contains("MaxSize") {
            self.maxSize = dict["MaxSize"] as! Int32
        }
        if dict.keys.contains("MinSize") {
            self.minSize = dict["MinSize"] as! Int32
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! String
        }
        if dict.keys.contains("ScalingGroupName") {
            self.scalingGroupName = dict["ScalingGroupName"] as! String
        }
    }
}

public class ModifyScalingGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyScalingGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyScalingGroupResponseBody?

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
            var model = ModifyScalingGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyScalingRuleRequest : Tea.TeaModel {
    public var adjustmentType: String?

    public var adjustmentValue: Int32?

    public var cooldown: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scalingRuleId: String?

    public var scalingRuleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adjustmentType != nil {
            map["AdjustmentType"] = self.adjustmentType!
        }
        if self.adjustmentValue != nil {
            map["AdjustmentValue"] = self.adjustmentValue!
        }
        if self.cooldown != nil {
            map["Cooldown"] = self.cooldown!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scalingRuleId != nil {
            map["ScalingRuleId"] = self.scalingRuleId!
        }
        if self.scalingRuleName != nil {
            map["ScalingRuleName"] = self.scalingRuleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdjustmentType") {
            self.adjustmentType = dict["AdjustmentType"] as! String
        }
        if dict.keys.contains("AdjustmentValue") {
            self.adjustmentValue = dict["AdjustmentValue"] as! Int32
        }
        if dict.keys.contains("Cooldown") {
            self.cooldown = dict["Cooldown"] as! Int32
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScalingRuleId") {
            self.scalingRuleId = dict["ScalingRuleId"] as! String
        }
        if dict.keys.contains("ScalingRuleName") {
            self.scalingRuleName = dict["ScalingRuleName"] as! String
        }
    }
}

public class ModifyScalingRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyScalingRuleResponseBody?

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
            var model = ModifyScalingRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyScheduledTaskRequest : Tea.TeaModel {
    public var description_: String?

    public var launchExpirationTime: Int32?

    public var launchTime: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var recurrenceEndTime: String?

    public var recurrenceType: String?

    public var recurrenceValue: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scheduledAction: String?

    public var scheduledTaskId: String?

    public var scheduledTaskName: String?

    public var taskEnabled: Bool?

    public override init() {
        super.init()
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
        if self.launchExpirationTime != nil {
            map["LaunchExpirationTime"] = self.launchExpirationTime!
        }
        if self.launchTime != nil {
            map["LaunchTime"] = self.launchTime!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.recurrenceEndTime != nil {
            map["RecurrenceEndTime"] = self.recurrenceEndTime!
        }
        if self.recurrenceType != nil {
            map["RecurrenceType"] = self.recurrenceType!
        }
        if self.recurrenceValue != nil {
            map["RecurrenceValue"] = self.recurrenceValue!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scheduledAction != nil {
            map["ScheduledAction"] = self.scheduledAction!
        }
        if self.scheduledTaskId != nil {
            map["ScheduledTaskId"] = self.scheduledTaskId!
        }
        if self.scheduledTaskName != nil {
            map["ScheduledTaskName"] = self.scheduledTaskName!
        }
        if self.taskEnabled != nil {
            map["TaskEnabled"] = self.taskEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("LaunchExpirationTime") {
            self.launchExpirationTime = dict["LaunchExpirationTime"] as! Int32
        }
        if dict.keys.contains("LaunchTime") {
            self.launchTime = dict["LaunchTime"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RecurrenceEndTime") {
            self.recurrenceEndTime = dict["RecurrenceEndTime"] as! String
        }
        if dict.keys.contains("RecurrenceType") {
            self.recurrenceType = dict["RecurrenceType"] as! String
        }
        if dict.keys.contains("RecurrenceValue") {
            self.recurrenceValue = dict["RecurrenceValue"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScheduledAction") {
            self.scheduledAction = dict["ScheduledAction"] as! String
        }
        if dict.keys.contains("ScheduledTaskId") {
            self.scheduledTaskId = dict["ScheduledTaskId"] as! String
        }
        if dict.keys.contains("ScheduledTaskName") {
            self.scheduledTaskName = dict["ScheduledTaskName"] as! String
        }
        if dict.keys.contains("TaskEnabled") {
            self.taskEnabled = dict["TaskEnabled"] as! Bool
        }
    }
}

public class ModifyScheduledTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyScheduledTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyScheduledTaskResponseBody?

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
            var model = ModifyScheduledTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveInstancesRequest : Tea.TeaModel {
    public var instanceId: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scalingGroupId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! [String]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! String
        }
    }
}

public class RemoveInstancesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var scalingActivityId: String?

    public override init() {
        super.init()
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
        if self.scalingActivityId != nil {
            map["ScalingActivityId"] = self.scalingActivityId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScalingActivityId") {
            self.scalingActivityId = dict["ScalingActivityId"] as! String
        }
    }
}

public class RemoveInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveInstancesResponseBody?

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
            var model = RemoveInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyAuthenticationRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var uid: Int64?

    public override init() {
        super.init()
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
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! Int64
        }
    }
}

public class VerifyAuthenticationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class VerifyAuthenticationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyAuthenticationResponseBody?

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
            var model = VerifyAuthenticationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyUserRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public override init() {
        super.init()
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
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
    }
}

public class VerifyUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
    }
}
