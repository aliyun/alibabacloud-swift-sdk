import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AckNode : Tea.TeaModel {
    public var nodeId: String?

    public var nodeSelector: AckNodeSelector?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nodeSelector?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.nodeSelector != nil {
            map["NodeSelector"] = self.nodeSelector?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeId") {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("NodeSelector") {
            var model = AckNodeSelector()
            model.fromMap(dict["NodeSelector"] as! [String: Any])
            self.nodeSelector = model
        }
    }
}

public class AckNodePool : Tea.TeaModel {
    public var nodePoolId: String?

    public var nodeSelector: AckNodeSelector?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nodeSelector?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodePoolId != nil {
            map["NodePoolId"] = self.nodePoolId!
        }
        if self.nodeSelector != nil {
            map["NodeSelector"] = self.nodeSelector?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodePoolId") {
            self.nodePoolId = dict["NodePoolId"] as! String
        }
        if dict.keys.contains("NodeSelector") {
            var model = AckNodeSelector()
            model.fromMap(dict["NodeSelector"] as! [String: Any])
            self.nodeSelector = model
        }
    }
}

public class AckNodeSelector : Tea.TeaModel {
    public class Labels : Tea.TeaModel {
        public var key: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class Taints : Tea.TeaModel {
        public var effect: String?

        public var key: String?

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
            if self.effect != nil {
                map["Effect"] = self.effect!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Effect") {
                self.effect = dict["Effect"] as! String
            }
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var labels: [AckNodeSelector.Labels]?

    public var taints: [AckNodeSelector.Taints]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.taints != nil {
            var tmp : [Any] = []
            for k in self.taints! {
                tmp.append(k.toMap())
            }
            map["Taints"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! [AckNodeSelector.Labels]
        }
        if dict.keys.contains("Taints") {
            self.taints = dict["Taints"] as! [AckNodeSelector.Taints]
        }
    }
}

public class Application : Tea.TeaModel {
    public var applicationName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
    }
}

public class ApplicationConfig : Tea.TeaModel {
    public var applicationName: String?

    public var configFileName: String?

    public var configItemKey: String?

    public var configItemValue: String?

    public var configScope: String?

    public var nodeGroupId: String?

    public var nodeGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.configFileName != nil {
            map["ConfigFileName"] = self.configFileName!
        }
        if self.configItemKey != nil {
            map["ConfigItemKey"] = self.configItemKey!
        }
        if self.configItemValue != nil {
            map["ConfigItemValue"] = self.configItemValue!
        }
        if self.configScope != nil {
            map["ConfigScope"] = self.configScope!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.nodeGroupName != nil {
            map["NodeGroupName"] = self.nodeGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("ConfigFileName") {
            self.configFileName = dict["ConfigFileName"] as! String
        }
        if dict.keys.contains("ConfigItemKey") {
            self.configItemKey = dict["ConfigItemKey"] as! String
        }
        if dict.keys.contains("ConfigItemValue") {
            self.configItemValue = dict["ConfigItemValue"] as! String
        }
        if dict.keys.contains("ConfigScope") {
            self.configScope = dict["ConfigScope"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("NodeGroupName") {
            self.nodeGroupName = dict["NodeGroupName"] as! String
        }
    }
}

public class ApplicationConfigParam : Tea.TeaModel {
    public var configAction: String?

    public var configFileName: String?

    public var configItemDescription: String?

    public var configItemKey: String?

    public var configItemValue: String?

    public var configScope: String?

    public var effectiveActions: String?

    public var effectiveType: String?

    public var nodeGroupId: String?

    public var nodeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configAction != nil {
            map["ConfigAction"] = self.configAction!
        }
        if self.configFileName != nil {
            map["ConfigFileName"] = self.configFileName!
        }
        if self.configItemDescription != nil {
            map["ConfigItemDescription"] = self.configItemDescription!
        }
        if self.configItemKey != nil {
            map["ConfigItemKey"] = self.configItemKey!
        }
        if self.configItemValue != nil {
            map["ConfigItemValue"] = self.configItemValue!
        }
        if self.configScope != nil {
            map["ConfigScope"] = self.configScope!
        }
        if self.effectiveActions != nil {
            map["EffectiveActions"] = self.effectiveActions!
        }
        if self.effectiveType != nil {
            map["EffectiveType"] = self.effectiveType!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigAction") {
            self.configAction = dict["ConfigAction"] as! String
        }
        if dict.keys.contains("ConfigFileName") {
            self.configFileName = dict["ConfigFileName"] as! String
        }
        if dict.keys.contains("ConfigItemDescription") {
            self.configItemDescription = dict["ConfigItemDescription"] as! String
        }
        if dict.keys.contains("ConfigItemKey") {
            self.configItemKey = dict["ConfigItemKey"] as! String
        }
        if dict.keys.contains("ConfigItemValue") {
            self.configItemValue = dict["ConfigItemValue"] as! String
        }
        if dict.keys.contains("ConfigScope") {
            self.configScope = dict["ConfigScope"] as! String
        }
        if dict.keys.contains("EffectiveActions") {
            self.effectiveActions = dict["EffectiveActions"] as! String
        }
        if dict.keys.contains("EffectiveType") {
            self.effectiveType = dict["EffectiveType"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("NodeId") {
            self.nodeId = dict["NodeId"] as! String
        }
    }
}

public class AutoRenewInstance : Tea.TeaModel {
    public var autoRenew: Bool?

    public var autoRenewDuration: Int32?

    public var autoRenewDurationUnit: String?

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
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.autoRenewDurationUnit != nil {
            map["AutoRenewDurationUnit"] = self.autoRenewDurationUnit!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewDuration") {
            self.autoRenewDuration = dict["AutoRenewDuration"] as! Int32
        }
        if dict.keys.contains("AutoRenewDurationUnit") {
            self.autoRenewDurationUnit = dict["AutoRenewDurationUnit"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class AutoRenewInstanceParam : Tea.TeaModel {
    public var autoRenew: String?

    public var autoRenewDuration: String?

    public var autoRenewDurationUnit: String?

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
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.autoRenewDurationUnit != nil {
            map["AutoRenewDurationUnit"] = self.autoRenewDurationUnit!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! String
        }
        if dict.keys.contains("AutoRenewDuration") {
            self.autoRenewDuration = dict["AutoRenewDuration"] as! String
        }
        if dict.keys.contains("AutoRenewDurationUnit") {
            self.autoRenewDurationUnit = dict["AutoRenewDurationUnit"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class ByLoadScalingRule : Tea.TeaModel {
    public var comparisonOperator: String?

    public var coolDownInterval: Int32?

    public var evaluationCount: Int32?

    public var metricName: String?

    public var statistics: String?

    public var threshold: Double?

    public var timeWindow: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comparisonOperator != nil {
            map["ComparisonOperator"] = self.comparisonOperator!
        }
        if self.coolDownInterval != nil {
            map["CoolDownInterval"] = self.coolDownInterval!
        }
        if self.evaluationCount != nil {
            map["EvaluationCount"] = self.evaluationCount!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.statistics != nil {
            map["Statistics"] = self.statistics!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        if self.timeWindow != nil {
            map["TimeWindow"] = self.timeWindow!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComparisonOperator") {
            self.comparisonOperator = dict["ComparisonOperator"] as! String
        }
        if dict.keys.contains("CoolDownInterval") {
            self.coolDownInterval = dict["CoolDownInterval"] as! Int32
        }
        if dict.keys.contains("EvaluationCount") {
            self.evaluationCount = dict["EvaluationCount"] as! Int32
        }
        if dict.keys.contains("MetricName") {
            self.metricName = dict["MetricName"] as! String
        }
        if dict.keys.contains("Statistics") {
            self.statistics = dict["Statistics"] as! String
        }
        if dict.keys.contains("Threshold") {
            self.threshold = dict["Threshold"] as! Double
        }
        if dict.keys.contains("TimeWindow") {
            self.timeWindow = dict["TimeWindow"] as! Int32
        }
    }
}

public class ByLoadScalingRuleSpec : Tea.TeaModel {
    public var comparisonOperator: String?

    public var evaluationCount: Int32?

    public var metricName: String?

    public var statistics: String?

    public var threshold: Double?

    public var timeWindow: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comparisonOperator != nil {
            map["ComparisonOperator"] = self.comparisonOperator!
        }
        if self.evaluationCount != nil {
            map["EvaluationCount"] = self.evaluationCount!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.statistics != nil {
            map["Statistics"] = self.statistics!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        if self.timeWindow != nil {
            map["TimeWindow"] = self.timeWindow!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComparisonOperator") {
            self.comparisonOperator = dict["ComparisonOperator"] as! String
        }
        if dict.keys.contains("EvaluationCount") {
            self.evaluationCount = dict["EvaluationCount"] as! Int32
        }
        if dict.keys.contains("MetricName") {
            self.metricName = dict["MetricName"] as! String
        }
        if dict.keys.contains("Statistics") {
            self.statistics = dict["Statistics"] as! String
        }
        if dict.keys.contains("Threshold") {
            self.threshold = dict["Threshold"] as! Double
        }
        if dict.keys.contains("TimeWindow") {
            self.timeWindow = dict["TimeWindow"] as! Int32
        }
    }
}

public class ByTimeScalingRule : Tea.TeaModel {
    public var endTime: Int64?

    public var launchExpirationTime: Int32?

    public var launchTime: Int64?

    public var recurrenceType: String?

    public var recurrenceValue: String?

    public override init() {
        super.init()
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
        if self.launchExpirationTime != nil {
            map["LaunchExpirationTime"] = self.launchExpirationTime!
        }
        if self.launchTime != nil {
            map["LaunchTime"] = self.launchTime!
        }
        if self.recurrenceType != nil {
            map["RecurrenceType"] = self.recurrenceType!
        }
        if self.recurrenceValue != nil {
            map["RecurrenceValue"] = self.recurrenceValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("LaunchExpirationTime") {
            self.launchExpirationTime = dict["LaunchExpirationTime"] as! Int32
        }
        if dict.keys.contains("LaunchTime") {
            self.launchTime = dict["LaunchTime"] as! Int64
        }
        if dict.keys.contains("RecurrenceType") {
            self.recurrenceType = dict["RecurrenceType"] as! String
        }
        if dict.keys.contains("RecurrenceValue") {
            self.recurrenceValue = dict["RecurrenceValue"] as! String
        }
    }
}

public class ByTimeScalingRuleSpec : Tea.TeaModel {
    public var endTime: Int64?

    public var launchTime: Int64?

    public var recurrenceType: String?

    public var recurrenceValue: String?

    public override init() {
        super.init()
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
        if self.launchTime != nil {
            map["LaunchTime"] = self.launchTime!
        }
        if self.recurrenceType != nil {
            map["RecurrenceType"] = self.recurrenceType!
        }
        if self.recurrenceValue != nil {
            map["RecurrenceValue"] = self.recurrenceValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("LaunchTime") {
            self.launchTime = dict["LaunchTime"] as! Int64
        }
        if dict.keys.contains("RecurrenceType") {
            self.recurrenceType = dict["RecurrenceType"] as! String
        }
        if dict.keys.contains("RecurrenceValue") {
            self.recurrenceValue = dict["RecurrenceValue"] as! String
        }
    }
}

public class ClickhouseConf : Tea.TeaModel {
    public var initialReplica: Int32?

    public var initialShard: Int32?

    public var newNodeCount: Int32?

    public var resizeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.initialReplica != nil {
            map["InitialReplica"] = self.initialReplica!
        }
        if self.initialShard != nil {
            map["InitialShard"] = self.initialShard!
        }
        if self.newNodeCount != nil {
            map["NewNodeCount"] = self.newNodeCount!
        }
        if self.resizeType != nil {
            map["ResizeType"] = self.resizeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InitialReplica") {
            self.initialReplica = dict["InitialReplica"] as! Int32
        }
        if dict.keys.contains("InitialShard") {
            self.initialShard = dict["InitialShard"] as! Int32
        }
        if dict.keys.contains("NewNodeCount") {
            self.newNodeCount = dict["NewNodeCount"] as! Int32
        }
        if dict.keys.contains("ResizeType") {
            self.resizeType = dict["ResizeType"] as! String
        }
    }
}

public class Cluster : Tea.TeaModel {
    public var clusterId: String?

    public var clusterName: String?

    public var clusterState: String?

    public var clusterType: String?

    public var createTime: Int64?

    public var deployMode: String?

    public var emrDefaultRole: String?

    public var endTime: Int64?

    public var expireTime: Int64?

    public var nodeAttributes: NodeAttributes?

    public var paymentType: String?

    public var readyTime: Int64?

    public var regionId: String?

    public var releaseVersion: String?

    public var resourceGroupId: String?

    public var securityMode: String?

    public var stateChangeReason: ClusterStateChangeReason?

    public var subscriptionConfig: SubscriptionConfig?

    public var tags: [Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nodeAttributes?.validate()
        try self.stateChangeReason?.validate()
        try self.subscriptionConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.clusterState != nil {
            map["ClusterState"] = self.clusterState!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.deployMode != nil {
            map["DeployMode"] = self.deployMode!
        }
        if self.emrDefaultRole != nil {
            map["EmrDefaultRole"] = self.emrDefaultRole!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.nodeAttributes != nil {
            map["NodeAttributes"] = self.nodeAttributes?.toMap()
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.readyTime != nil {
            map["ReadyTime"] = self.readyTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.releaseVersion != nil {
            map["ReleaseVersion"] = self.releaseVersion!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityMode != nil {
            map["SecurityMode"] = self.securityMode!
        }
        if self.stateChangeReason != nil {
            map["StateChangeReason"] = self.stateChangeReason?.toMap()
        }
        if self.subscriptionConfig != nil {
            map["SubscriptionConfig"] = self.subscriptionConfig?.toMap()
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ClusterState") {
            self.clusterState = dict["ClusterState"] as! String
        }
        if dict.keys.contains("ClusterType") {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("DeployMode") {
            self.deployMode = dict["DeployMode"] as! String
        }
        if dict.keys.contains("EmrDefaultRole") {
            self.emrDefaultRole = dict["EmrDefaultRole"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! Int64
        }
        if dict.keys.contains("NodeAttributes") {
            var model = NodeAttributes()
            model.fromMap(dict["NodeAttributes"] as! [String: Any])
            self.nodeAttributes = model
        }
        if dict.keys.contains("PaymentType") {
            self.paymentType = dict["PaymentType"] as! String
        }
        if dict.keys.contains("ReadyTime") {
            self.readyTime = dict["ReadyTime"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReleaseVersion") {
            self.releaseVersion = dict["ReleaseVersion"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityMode") {
            self.securityMode = dict["SecurityMode"] as! String
        }
        if dict.keys.contains("StateChangeReason") {
            var model = ClusterStateChangeReason()
            model.fromMap(dict["StateChangeReason"] as! [String: Any])
            self.stateChangeReason = model
        }
        if dict.keys.contains("SubscriptionConfig") {
            var model = SubscriptionConfig()
            model.fromMap(dict["SubscriptionConfig"] as! [String: Any])
            self.subscriptionConfig = model
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [Tag]
        }
    }
}

public class ClusterScript : Tea.TeaModel {
    public var executionFailStrategy: String?

    public var executionMoment: String?

    public var nodeSelect: NodeSelector?

    public var priority: Int32?

    public var scriptArgs: String?

    public var scriptName: String?

    public var scriptPath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nodeSelect?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionFailStrategy != nil {
            map["ExecutionFailStrategy"] = self.executionFailStrategy!
        }
        if self.executionMoment != nil {
            map["ExecutionMoment"] = self.executionMoment!
        }
        if self.nodeSelect != nil {
            map["NodeSelect"] = self.nodeSelect?.toMap()
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.scriptArgs != nil {
            map["ScriptArgs"] = self.scriptArgs!
        }
        if self.scriptName != nil {
            map["ScriptName"] = self.scriptName!
        }
        if self.scriptPath != nil {
            map["ScriptPath"] = self.scriptPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExecutionFailStrategy") {
            self.executionFailStrategy = dict["ExecutionFailStrategy"] as! String
        }
        if dict.keys.contains("ExecutionMoment") {
            self.executionMoment = dict["ExecutionMoment"] as! String
        }
        if dict.keys.contains("NodeSelect") {
            var model = NodeSelector()
            model.fromMap(dict["NodeSelect"] as! [String: Any])
            self.nodeSelect = model
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ScriptArgs") {
            self.scriptArgs = dict["ScriptArgs"] as! String
        }
        if dict.keys.contains("ScriptName") {
            self.scriptName = dict["ScriptName"] as! String
        }
        if dict.keys.contains("ScriptPath") {
            self.scriptPath = dict["ScriptPath"] as! String
        }
    }
}

public class ClusterStateChangeReason : Tea.TeaModel {
    public var code: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
    }
}

public class ClusterSummary : Tea.TeaModel {
    public var clusterId: String?

    public var clusterName: String?

    public var clusterState: String?

    public var clusterType: String?

    public var createTime: Int64?

    public var emrDefaultRole: String?

    public var endTime: Int64?

    public var expireTime: Int64?

    public var paymentType: String?

    public var readyTime: Int64?

    public var releaseVersion: String?

    public var resourceGroupId: String?

    public var stateChangeReason: ClusterStateChangeReason?

    public var tags: [Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stateChangeReason?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.clusterState != nil {
            map["ClusterState"] = self.clusterState!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.emrDefaultRole != nil {
            map["EmrDefaultRole"] = self.emrDefaultRole!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.readyTime != nil {
            map["ReadyTime"] = self.readyTime!
        }
        if self.releaseVersion != nil {
            map["ReleaseVersion"] = self.releaseVersion!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.stateChangeReason != nil {
            map["StateChangeReason"] = self.stateChangeReason?.toMap()
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ClusterState") {
            self.clusterState = dict["ClusterState"] as! String
        }
        if dict.keys.contains("ClusterType") {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("EmrDefaultRole") {
            self.emrDefaultRole = dict["EmrDefaultRole"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! Int64
        }
        if dict.keys.contains("PaymentType") {
            self.paymentType = dict["PaymentType"] as! String
        }
        if dict.keys.contains("ReadyTime") {
            self.readyTime = dict["ReadyTime"] as! Int64
        }
        if dict.keys.contains("ReleaseVersion") {
            self.releaseVersion = dict["ReleaseVersion"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StateChangeReason") {
            var model = ClusterStateChangeReason()
            model.fromMap(dict["StateChangeReason"] as! [String: Any])
            self.stateChangeReason = model
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [Tag]
        }
    }
}

public class ComponentInstanceSelector : Tea.TeaModel {
    public class ComponentInstances : Tea.TeaModel {
        public var applicationName: String?

        public var componentName: String?

        public var nodeId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationName != nil {
                map["ApplicationName"] = self.applicationName!
            }
            if self.componentName != nil {
                map["ComponentName"] = self.componentName!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationName") {
                self.applicationName = dict["ApplicationName"] as! String
            }
            if dict.keys.contains("ComponentName") {
                self.componentName = dict["ComponentName"] as! String
            }
            if dict.keys.contains("NodeId") {
                self.nodeId = dict["NodeId"] as! String
            }
        }
    }
    public class Components : Tea.TeaModel {
        public var applicationName: String?

        public var componentName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationName != nil {
                map["ApplicationName"] = self.applicationName!
            }
            if self.componentName != nil {
                map["ComponentName"] = self.componentName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationName") {
                self.applicationName = dict["ApplicationName"] as! String
            }
            if dict.keys.contains("ComponentName") {
                self.componentName = dict["ComponentName"] as! String
            }
        }
    }
    public var actionScope: String?

    public var applicationNames: [String]?

    public var componentInstances: [ComponentInstanceSelector.ComponentInstances]?

    public var components: [ComponentInstanceSelector.Components]?

    public var nodeGroupIds: [String]?

    public var nodeIds: [String]?

    public var runActionScope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionScope != nil {
            map["ActionScope"] = self.actionScope!
        }
        if self.applicationNames != nil {
            map["ApplicationNames"] = self.applicationNames!
        }
        if self.componentInstances != nil {
            var tmp : [Any] = []
            for k in self.componentInstances! {
                tmp.append(k.toMap())
            }
            map["ComponentInstances"] = tmp
        }
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["Components"] = tmp
        }
        if self.nodeGroupIds != nil {
            map["NodeGroupIds"] = self.nodeGroupIds!
        }
        if self.nodeIds != nil {
            map["NodeIds"] = self.nodeIds!
        }
        if self.runActionScope != nil {
            map["RunActionScope"] = self.runActionScope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionScope") {
            self.actionScope = dict["ActionScope"] as! String
        }
        if dict.keys.contains("ApplicationNames") {
            self.applicationNames = dict["ApplicationNames"] as! [String]
        }
        if dict.keys.contains("ComponentInstances") {
            self.componentInstances = dict["ComponentInstances"] as! [ComponentInstanceSelector.ComponentInstances]
        }
        if dict.keys.contains("Components") {
            self.components = dict["Components"] as! [ComponentInstanceSelector.Components]
        }
        if dict.keys.contains("NodeGroupIds") {
            self.nodeGroupIds = dict["NodeGroupIds"] as! [String]
        }
        if dict.keys.contains("NodeIds") {
            self.nodeIds = dict["NodeIds"] as! [String]
        }
        if dict.keys.contains("RunActionScope") {
            self.runActionScope = dict["RunActionScope"] as! String
        }
    }
}

public class ComponentLayout : Tea.TeaModel {
    public class NodeSelector : Tea.TeaModel {
        public var nodeEndIndex: Int32?

        public var nodeGroupId: String?

        public var nodeGroupIndex: Int32?

        public var nodeGroupName: String?

        public var nodeGroupTypes: [String]?

        public var nodeNames: [String]?

        public var nodeSelectType: String?

        public var nodeStartIndex: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeEndIndex != nil {
                map["NodeEndIndex"] = self.nodeEndIndex!
            }
            if self.nodeGroupId != nil {
                map["NodeGroupId"] = self.nodeGroupId!
            }
            if self.nodeGroupIndex != nil {
                map["NodeGroupIndex"] = self.nodeGroupIndex!
            }
            if self.nodeGroupName != nil {
                map["NodeGroupName"] = self.nodeGroupName!
            }
            if self.nodeGroupTypes != nil {
                map["NodeGroupTypes"] = self.nodeGroupTypes!
            }
            if self.nodeNames != nil {
                map["NodeNames"] = self.nodeNames!
            }
            if self.nodeSelectType != nil {
                map["NodeSelectType"] = self.nodeSelectType!
            }
            if self.nodeStartIndex != nil {
                map["NodeStartIndex"] = self.nodeStartIndex!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeEndIndex") {
                self.nodeEndIndex = dict["NodeEndIndex"] as! Int32
            }
            if dict.keys.contains("NodeGroupId") {
                self.nodeGroupId = dict["NodeGroupId"] as! String
            }
            if dict.keys.contains("NodeGroupIndex") {
                self.nodeGroupIndex = dict["NodeGroupIndex"] as! Int32
            }
            if dict.keys.contains("NodeGroupName") {
                self.nodeGroupName = dict["NodeGroupName"] as! String
            }
            if dict.keys.contains("NodeGroupTypes") {
                self.nodeGroupTypes = dict["NodeGroupTypes"] as! [String]
            }
            if dict.keys.contains("NodeNames") {
                self.nodeNames = dict["NodeNames"] as! [String]
            }
            if dict.keys.contains("NodeSelectType") {
                self.nodeSelectType = dict["NodeSelectType"] as! String
            }
            if dict.keys.contains("NodeStartIndex") {
                self.nodeStartIndex = dict["NodeStartIndex"] as! Int32
            }
        }
    }
    public var applicationName: String?

    public var componentName: String?

    public var nodeSelector: ComponentLayout.NodeSelector?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nodeSelector?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.componentName != nil {
            map["ComponentName"] = self.componentName!
        }
        if self.nodeSelector != nil {
            map["NodeSelector"] = self.nodeSelector?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("ComponentName") {
            self.componentName = dict["ComponentName"] as! String
        }
        if dict.keys.contains("NodeSelector") {
            var model = ComponentLayout.NodeSelector()
            model.fromMap(dict["NodeSelector"] as! [String: Any])
            self.nodeSelector = model
        }
    }
}

public class ConvertNodeGroup : Tea.TeaModel {
    public var nodeGroupId: String?

    public var paymentDuration: Int32?

    public var paymentDurationUnit: String?

    public var paymentType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.paymentDuration != nil {
            map["PaymentDuration"] = self.paymentDuration!
        }
        if self.paymentDurationUnit != nil {
            map["PaymentDurationUnit"] = self.paymentDurationUnit!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("PaymentDuration") {
            self.paymentDuration = dict["PaymentDuration"] as! Int32
        }
        if dict.keys.contains("PaymentDurationUnit") {
            self.paymentDurationUnit = dict["PaymentDurationUnit"] as! String
        }
        if dict.keys.contains("PaymentType") {
            self.paymentType = dict["PaymentType"] as! String
        }
    }
}

public class ConvertNodeGroupParam : Tea.TeaModel {
    public var nodeGroupId: String?

    public var paymentDuration: Int64?

    public var paymentDurationUnit: String?

    public var paymentType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.paymentDuration != nil {
            map["PaymentDuration"] = self.paymentDuration!
        }
        if self.paymentDurationUnit != nil {
            map["PaymentDurationUnit"] = self.paymentDurationUnit!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("PaymentDuration") {
            self.paymentDuration = dict["PaymentDuration"] as! Int64
        }
        if dict.keys.contains("PaymentDurationUnit") {
            self.paymentDurationUnit = dict["PaymentDurationUnit"] as! String
        }
        if dict.keys.contains("PaymentType") {
            self.paymentType = dict["PaymentType"] as! String
        }
    }
}

public class CostOptimizedConfig : Tea.TeaModel {
    public var onDemandBaseCapacity: Int32?

    public var onDemandPercentageAboveBaseCapacity: Int32?

    public var spotInstancePools: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.onDemandBaseCapacity != nil {
            map["OnDemandBaseCapacity"] = self.onDemandBaseCapacity!
        }
        if self.onDemandPercentageAboveBaseCapacity != nil {
            map["OnDemandPercentageAboveBaseCapacity"] = self.onDemandPercentageAboveBaseCapacity!
        }
        if self.spotInstancePools != nil {
            map["SpotInstancePools"] = self.spotInstancePools!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OnDemandBaseCapacity") {
            self.onDemandBaseCapacity = dict["OnDemandBaseCapacity"] as! Int32
        }
        if dict.keys.contains("OnDemandPercentageAboveBaseCapacity") {
            self.onDemandPercentageAboveBaseCapacity = dict["OnDemandPercentageAboveBaseCapacity"] as! Int32
        }
        if dict.keys.contains("SpotInstancePools") {
            self.spotInstancePools = dict["SpotInstancePools"] as! Int32
        }
    }
}

public class CreateNodeGroupParam : Tea.TeaModel {
    public var autoRenew: Bool?

    public var autoRenewDuration: Int32?

    public var autoRenewDurationUnit: String?

    public var dataDisks: [DiskInfo]?

    public var instanceTypes: [String]?

    public var nodeCount: Int32?

    public var nodeGroupName: String?

    public var nodeGroupType: String?

    public var nodeKeyPairName: String?

    public var nodeRamRole: String?

    public var nodeRootPassword: String?

    public var paymentDuration: Int32?

    public var paymentDurationUnit: String?

    public var paymentType: String?

    public var securityGroupId: String?

    public var spotStrategy: String?

    public var systemDisk: SystemDiskParam?

    public var vSwitchIds: [String]?

    public var withPublicIp: Bool?

    public var zoneId: String?

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
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.autoRenewDurationUnit != nil {
            map["AutoRenewDurationUnit"] = self.autoRenewDurationUnit!
        }
        if self.dataDisks != nil {
            var tmp : [Any] = []
            for k in self.dataDisks! {
                tmp.append(k.toMap())
            }
            map["DataDisks"] = tmp
        }
        if self.instanceTypes != nil {
            map["InstanceTypes"] = self.instanceTypes!
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        if self.nodeGroupName != nil {
            map["NodeGroupName"] = self.nodeGroupName!
        }
        if self.nodeGroupType != nil {
            map["NodeGroupType"] = self.nodeGroupType!
        }
        if self.nodeKeyPairName != nil {
            map["NodeKeyPairName"] = self.nodeKeyPairName!
        }
        if self.nodeRamRole != nil {
            map["NodeRamRole"] = self.nodeRamRole!
        }
        if self.nodeRootPassword != nil {
            map["NodeRootPassword"] = self.nodeRootPassword!
        }
        if self.paymentDuration != nil {
            map["PaymentDuration"] = self.paymentDuration!
        }
        if self.paymentDurationUnit != nil {
            map["PaymentDurationUnit"] = self.paymentDurationUnit!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        if self.systemDisk != nil {
            map["SystemDisk"] = self.systemDisk?.toMap()
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
        }
        if self.withPublicIp != nil {
            map["WithPublicIp"] = self.withPublicIp!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewDuration") {
            self.autoRenewDuration = dict["AutoRenewDuration"] as! Int32
        }
        if dict.keys.contains("AutoRenewDurationUnit") {
            self.autoRenewDurationUnit = dict["AutoRenewDurationUnit"] as! String
        }
        if dict.keys.contains("DataDisks") {
            self.dataDisks = dict["DataDisks"] as! [DiskInfo]
        }
        if dict.keys.contains("InstanceTypes") {
            self.instanceTypes = dict["InstanceTypes"] as! [String]
        }
        if dict.keys.contains("NodeCount") {
            self.nodeCount = dict["NodeCount"] as! Int32
        }
        if dict.keys.contains("NodeGroupName") {
            self.nodeGroupName = dict["NodeGroupName"] as! String
        }
        if dict.keys.contains("NodeGroupType") {
            self.nodeGroupType = dict["NodeGroupType"] as! String
        }
        if dict.keys.contains("NodeKeyPairName") {
            self.nodeKeyPairName = dict["NodeKeyPairName"] as! String
        }
        if dict.keys.contains("NodeRamRole") {
            self.nodeRamRole = dict["NodeRamRole"] as! String
        }
        if dict.keys.contains("NodeRootPassword") {
            self.nodeRootPassword = dict["NodeRootPassword"] as! String
        }
        if dict.keys.contains("PaymentDuration") {
            self.paymentDuration = dict["PaymentDuration"] as! Int32
        }
        if dict.keys.contains("PaymentDurationUnit") {
            self.paymentDurationUnit = dict["PaymentDurationUnit"] as! String
        }
        if dict.keys.contains("PaymentType") {
            self.paymentType = dict["PaymentType"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("SpotStrategy") {
            self.spotStrategy = dict["SpotStrategy"] as! String
        }
        if dict.keys.contains("SystemDisk") {
            var model = SystemDiskParam()
            model.fromMap(dict["SystemDisk"] as! [String: Any])
            self.systemDisk = model
        }
        if dict.keys.contains("VSwitchIds") {
            self.vSwitchIds = dict["VSwitchIds"] as! [String]
        }
        if dict.keys.contains("WithPublicIp") {
            self.withPublicIp = dict["WithPublicIp"] as! Bool
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DataDisk : Tea.TeaModel {
    public var category: String?

    public var count: Int32?

    public var performanceLevel: String?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.performanceLevel != nil {
            map["PerformanceLevel"] = self.performanceLevel!
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
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("PerformanceLevel") {
            self.performanceLevel = dict["PerformanceLevel"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class DecreaseNodeGroupParam : Tea.TeaModel {
    public var nodeGroupId: String?

    public var releaseInstanceIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.releaseInstanceIds != nil {
            map["ReleaseInstanceIds"] = self.releaseInstanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("ReleaseInstanceIds") {
            self.releaseInstanceIds = dict["ReleaseInstanceIds"] as! [String]
        }
    }
}

public class DeploymentLayout : Tea.TeaModel {
    public var applicationName: String?

    public var componentName: String?

    public var nodeSelector: NodeSelector?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nodeSelector?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.componentName != nil {
            map["ComponentName"] = self.componentName!
        }
        if self.nodeSelector != nil {
            map["NodeSelector"] = self.nodeSelector?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("ComponentName") {
            self.componentName = dict["ComponentName"] as! String
        }
        if dict.keys.contains("NodeSelector") {
            var model = NodeSelector()
            model.fromMap(dict["NodeSelector"] as! [String: Any])
            self.nodeSelector = model
        }
    }
}

public class Disk : Tea.TeaModel {
    public var category: String?

    public var count: Int32?

    public var performanceLevel: String?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.performanceLevel != nil {
            map["PerformanceLevel"] = self.performanceLevel!
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
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("PerformanceLevel") {
            self.performanceLevel = dict["PerformanceLevel"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class DiskInfo : Tea.TeaModel {
    public var category: String?

    public var count: Int32?

    public var performanceLevel: String?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.performanceLevel != nil {
            map["PerformanceLevel"] = self.performanceLevel!
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
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("PerformanceLevel") {
            self.performanceLevel = dict["PerformanceLevel"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class DiskSize : Tea.TeaModel {
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

public class FailedReason : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var errorMsg: String?

    public var requestId: String?

    public var service: String?

    public override init() {
        super.init()
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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.service != nil {
            map["Service"] = self.service!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Service") {
            self.service = dict["Service"] as! String
        }
    }
}

public class HealthSummary : Tea.TeaModel {
    public var badCount: Int64?

    public var goodCount: Int64?

    public var noneCount: Int64?

    public var stoppedCount: Int64?

    public var totalCount: Int64?

    public var unknownCount: Int64?

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
        if self.badCount != nil {
            map["BadCount"] = self.badCount!
        }
        if self.goodCount != nil {
            map["GoodCount"] = self.goodCount!
        }
        if self.noneCount != nil {
            map["NoneCount"] = self.noneCount!
        }
        if self.stoppedCount != nil {
            map["StoppedCount"] = self.stoppedCount!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.unknownCount != nil {
            map["UnknownCount"] = self.unknownCount!
        }
        if self.warningCount != nil {
            map["WarningCount"] = self.warningCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BadCount") {
            self.badCount = dict["BadCount"] as! Int64
        }
        if dict.keys.contains("GoodCount") {
            self.goodCount = dict["GoodCount"] as! Int64
        }
        if dict.keys.contains("NoneCount") {
            self.noneCount = dict["NoneCount"] as! Int64
        }
        if dict.keys.contains("StoppedCount") {
            self.stoppedCount = dict["StoppedCount"] as! Int64
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("UnknownCount") {
            self.unknownCount = dict["UnknownCount"] as! Int64
        }
        if dict.keys.contains("WarningCount") {
            self.warningCount = dict["WarningCount"] as! Int64
        }
    }
}

public class IncreaseNodeGroup : Tea.TeaModel {
    public var description_: String?

    public var nodeCount: Int32?

    public var nodeGroupId: String?

    public var paymentDuration: Int32?

    public var paymentDurationUnit: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.paymentDuration != nil {
            map["PaymentDuration"] = self.paymentDuration!
        }
        if self.paymentDurationUnit != nil {
            map["PaymentDurationUnit"] = self.paymentDurationUnit!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("NodeCount") {
            self.nodeCount = dict["NodeCount"] as! Int32
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("PaymentDuration") {
            self.paymentDuration = dict["PaymentDuration"] as! Int32
        }
        if dict.keys.contains("PaymentDurationUnit") {
            self.paymentDurationUnit = dict["PaymentDurationUnit"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
    }
}

public class IncreaseNodeGroupParam : Tea.TeaModel {
    public var nodeCount: Int64?

    public var nodeGroupId: String?

    public var paymentDuration: Int32?

    public var paymentDurationUnit: String?

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
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.paymentDuration != nil {
            map["PaymentDuration"] = self.paymentDuration!
        }
        if self.paymentDurationUnit != nil {
            map["PaymentDurationUnit"] = self.paymentDurationUnit!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeCount") {
            self.nodeCount = dict["NodeCount"] as! Int64
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("PaymentDuration") {
            self.paymentDuration = dict["PaymentDuration"] as! Int32
        }
        if dict.keys.contains("PaymentDurationUnit") {
            self.paymentDurationUnit = dict["PaymentDurationUnit"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
    }
}

public class KeyValue : Tea.TeaModel {
    public var key: String?

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
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class MetaStoreConf : Tea.TeaModel {
    public var dbPassword: String?

    public var dbUrl: String?

    public var dbUserName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbPassword != nil {
            map["DbPassword"] = self.dbPassword!
        }
        if self.dbUrl != nil {
            map["DbUrl"] = self.dbUrl!
        }
        if self.dbUserName != nil {
            map["DbUserName"] = self.dbUserName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbPassword") {
            self.dbPassword = dict["DbPassword"] as! String
        }
        if dict.keys.contains("DbUrl") {
            self.dbUrl = dict["DbUrl"] as! String
        }
        if dict.keys.contains("DbUserName") {
            self.dbUserName = dict["DbUserName"] as! String
        }
    }
}

public class MetricsTrigger : Tea.TeaModel {
    public var comparisonOperator: String?

    public var coolDownInterval: Int32?

    public var evaluationCount: Int32?

    public var metricName: String?

    public var statistics: String?

    public var tags: [Tag]?

    public var threshold: Double?

    public var timeWindow: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comparisonOperator != nil {
            map["ComparisonOperator"] = self.comparisonOperator!
        }
        if self.coolDownInterval != nil {
            map["CoolDownInterval"] = self.coolDownInterval!
        }
        if self.evaluationCount != nil {
            map["EvaluationCount"] = self.evaluationCount!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.statistics != nil {
            map["Statistics"] = self.statistics!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        if self.timeWindow != nil {
            map["TimeWindow"] = self.timeWindow!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComparisonOperator") {
            self.comparisonOperator = dict["ComparisonOperator"] as! String
        }
        if dict.keys.contains("CoolDownInterval") {
            self.coolDownInterval = dict["CoolDownInterval"] as! Int32
        }
        if dict.keys.contains("EvaluationCount") {
            self.evaluationCount = dict["EvaluationCount"] as! Int32
        }
        if dict.keys.contains("MetricName") {
            self.metricName = dict["MetricName"] as! String
        }
        if dict.keys.contains("Statistics") {
            self.statistics = dict["Statistics"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [Tag]
        }
        if dict.keys.contains("Threshold") {
            self.threshold = dict["Threshold"] as! Double
        }
        if dict.keys.contains("TimeWindow") {
            self.timeWindow = dict["TimeWindow"] as! Int32
        }
    }
}

public class Node : Tea.TeaModel {
    public var autoRenew: Bool?

    public var autoRenewDuration: Int32?

    public var autoRenewDurationUnit: String?

    public var expireTime: Int64?

    public var instanceType: String?

    public var maintenanceStatus: String?

    public var nodeGroupId: String?

    public var nodeGroupType: String?

    public var nodeId: String?

    public var nodeName: String?

    public var nodeState: String?

    public var privateIp: String?

    public var publicIp: String?

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
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.autoRenewDurationUnit != nil {
            map["AutoRenewDurationUnit"] = self.autoRenewDurationUnit!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.maintenanceStatus != nil {
            map["MaintenanceStatus"] = self.maintenanceStatus!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.nodeGroupType != nil {
            map["NodeGroupType"] = self.nodeGroupType!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.nodeState != nil {
            map["NodeState"] = self.nodeState!
        }
        if self.privateIp != nil {
            map["PrivateIp"] = self.privateIp!
        }
        if self.publicIp != nil {
            map["PublicIp"] = self.publicIp!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewDuration") {
            self.autoRenewDuration = dict["AutoRenewDuration"] as! Int32
        }
        if dict.keys.contains("AutoRenewDurationUnit") {
            self.autoRenewDurationUnit = dict["AutoRenewDurationUnit"] as! String
        }
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! Int64
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("MaintenanceStatus") {
            self.maintenanceStatus = dict["MaintenanceStatus"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("NodeGroupType") {
            self.nodeGroupType = dict["NodeGroupType"] as! String
        }
        if dict.keys.contains("NodeId") {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("NodeName") {
            self.nodeName = dict["NodeName"] as! String
        }
        if dict.keys.contains("NodeState") {
            self.nodeState = dict["NodeState"] as! String
        }
        if dict.keys.contains("PrivateIp") {
            self.privateIp = dict["PrivateIp"] as! String
        }
        if dict.keys.contains("PublicIp") {
            self.publicIp = dict["PublicIp"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class NodeAttributes : Tea.TeaModel {
    public var keyPairName: String?

    public var ramRole: String?

    public var securityGroupId: String?

    public var vpcId: String?

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
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.ramRole != nil {
            map["RamRole"] = self.ramRole!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyPairName") {
            self.keyPairName = dict["KeyPairName"] as! String
        }
        if dict.keys.contains("RamRole") {
            self.ramRole = dict["RamRole"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class NodeCountConstraint : Tea.TeaModel {
    public var max: Int32?

    public var min: Int32?

    public var type: String?

    public var values: [Int32]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.max != nil {
            map["Max"] = self.max!
        }
        if self.min != nil {
            map["Min"] = self.min!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.values != nil {
            map["Values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Max") {
            self.max = dict["Max"] as! Int32
        }
        if dict.keys.contains("Min") {
            self.min = dict["Min"] as! Int32
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Values") {
            self.values = dict["Values"] as! [Int32]
        }
    }
}

public class NodeGroup : Tea.TeaModel {
    public var additionalSecurityGroupIds: [String]?

    public var costOptimizedConfig: CostOptimizedConfig?

    public var dataDisks: [DataDisk]?

    public var deploymentSetStrategy: String?

    public var gracefulShutdown: Bool?

    public var instanceTypes: [String]?

    public var nodeGroupId: String?

    public var nodeGroupName: String?

    public var nodeGroupState: String?

    public var nodeGroupType: String?

    public var nodeResizeStrategy: String?

    public var paymentType: String?

    public var runningNodeCount: Int32?

    public var spotBidPrices: [SpotBidPrice]?

    public var spotInstanceRemedy: Bool?

    public var spotStrategy: String?

    public var stateChangeReason: NodeGroupStateChangeReason?

    public var systemDisk: SystemDisk?

    public var vSwitchIds: [String]?

    public var withPublicIp: Bool?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.costOptimizedConfig?.validate()
        try self.stateChangeReason?.validate()
        try self.systemDisk?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalSecurityGroupIds != nil {
            map["AdditionalSecurityGroupIds"] = self.additionalSecurityGroupIds!
        }
        if self.costOptimizedConfig != nil {
            map["CostOptimizedConfig"] = self.costOptimizedConfig?.toMap()
        }
        if self.dataDisks != nil {
            var tmp : [Any] = []
            for k in self.dataDisks! {
                tmp.append(k.toMap())
            }
            map["DataDisks"] = tmp
        }
        if self.deploymentSetStrategy != nil {
            map["DeploymentSetStrategy"] = self.deploymentSetStrategy!
        }
        if self.gracefulShutdown != nil {
            map["GracefulShutdown"] = self.gracefulShutdown!
        }
        if self.instanceTypes != nil {
            map["InstanceTypes"] = self.instanceTypes!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.nodeGroupName != nil {
            map["NodeGroupName"] = self.nodeGroupName!
        }
        if self.nodeGroupState != nil {
            map["NodeGroupState"] = self.nodeGroupState!
        }
        if self.nodeGroupType != nil {
            map["NodeGroupType"] = self.nodeGroupType!
        }
        if self.nodeResizeStrategy != nil {
            map["NodeResizeStrategy"] = self.nodeResizeStrategy!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.runningNodeCount != nil {
            map["RunningNodeCount"] = self.runningNodeCount!
        }
        if self.spotBidPrices != nil {
            var tmp : [Any] = []
            for k in self.spotBidPrices! {
                tmp.append(k.toMap())
            }
            map["SpotBidPrices"] = tmp
        }
        if self.spotInstanceRemedy != nil {
            map["SpotInstanceRemedy"] = self.spotInstanceRemedy!
        }
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        if self.stateChangeReason != nil {
            map["StateChangeReason"] = self.stateChangeReason?.toMap()
        }
        if self.systemDisk != nil {
            map["SystemDisk"] = self.systemDisk?.toMap()
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
        }
        if self.withPublicIp != nil {
            map["WithPublicIp"] = self.withPublicIp!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalSecurityGroupIds") {
            self.additionalSecurityGroupIds = dict["AdditionalSecurityGroupIds"] as! [String]
        }
        if dict.keys.contains("CostOptimizedConfig") {
            var model = CostOptimizedConfig()
            model.fromMap(dict["CostOptimizedConfig"] as! [String: Any])
            self.costOptimizedConfig = model
        }
        if dict.keys.contains("DataDisks") {
            self.dataDisks = dict["DataDisks"] as! [DataDisk]
        }
        if dict.keys.contains("DeploymentSetStrategy") {
            self.deploymentSetStrategy = dict["DeploymentSetStrategy"] as! String
        }
        if dict.keys.contains("GracefulShutdown") {
            self.gracefulShutdown = dict["GracefulShutdown"] as! Bool
        }
        if dict.keys.contains("InstanceTypes") {
            self.instanceTypes = dict["InstanceTypes"] as! [String]
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("NodeGroupName") {
            self.nodeGroupName = dict["NodeGroupName"] as! String
        }
        if dict.keys.contains("NodeGroupState") {
            self.nodeGroupState = dict["NodeGroupState"] as! String
        }
        if dict.keys.contains("NodeGroupType") {
            self.nodeGroupType = dict["NodeGroupType"] as! String
        }
        if dict.keys.contains("NodeResizeStrategy") {
            self.nodeResizeStrategy = dict["NodeResizeStrategy"] as! String
        }
        if dict.keys.contains("PaymentType") {
            self.paymentType = dict["PaymentType"] as! String
        }
        if dict.keys.contains("RunningNodeCount") {
            self.runningNodeCount = dict["RunningNodeCount"] as! Int32
        }
        if dict.keys.contains("SpotBidPrices") {
            self.spotBidPrices = dict["SpotBidPrices"] as! [SpotBidPrice]
        }
        if dict.keys.contains("SpotInstanceRemedy") {
            self.spotInstanceRemedy = dict["SpotInstanceRemedy"] as! Bool
        }
        if dict.keys.contains("SpotStrategy") {
            self.spotStrategy = dict["SpotStrategy"] as! String
        }
        if dict.keys.contains("StateChangeReason") {
            var model = NodeGroupStateChangeReason()
            model.fromMap(dict["StateChangeReason"] as! [String: Any])
            self.stateChangeReason = model
        }
        if dict.keys.contains("SystemDisk") {
            var model = SystemDisk()
            model.fromMap(dict["SystemDisk"] as! [String: Any])
            self.systemDisk = model
        }
        if dict.keys.contains("VSwitchIds") {
            self.vSwitchIds = dict["VSwitchIds"] as! [String]
        }
        if dict.keys.contains("WithPublicIp") {
            self.withPublicIp = dict["WithPublicIp"] as! Bool
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class NodeGroupConfig : Tea.TeaModel {
    public var additionalSecurityGroupIds: [String]?

    public var costOptimizedConfig: CostOptimizedConfig?

    public var dataDisks: [DataDisk]?

    public var deploymentSetStrategy: String?

    public var gracefulShutdown: Bool?

    public var instanceTypes: [String]?

    public var nodeCount: Int32?

    public var nodeGroupName: String?

    public var nodeGroupType: String?

    public var nodeResizeStrategy: String?

    public var paymentType: String?

    public var spotBidPrices: [SpotBidPrice]?

    public var spotInstanceRemedy: Bool?

    public var spotStrategy: String?

    public var subscriptionConfig: SubscriptionConfig?

    public var systemDisk: SystemDisk?

    public var vSwitchIds: [String]?

    public var withPublicIp: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.costOptimizedConfig?.validate()
        try self.subscriptionConfig?.validate()
        try self.systemDisk?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalSecurityGroupIds != nil {
            map["AdditionalSecurityGroupIds"] = self.additionalSecurityGroupIds!
        }
        if self.costOptimizedConfig != nil {
            map["CostOptimizedConfig"] = self.costOptimizedConfig?.toMap()
        }
        if self.dataDisks != nil {
            var tmp : [Any] = []
            for k in self.dataDisks! {
                tmp.append(k.toMap())
            }
            map["DataDisks"] = tmp
        }
        if self.deploymentSetStrategy != nil {
            map["DeploymentSetStrategy"] = self.deploymentSetStrategy!
        }
        if self.gracefulShutdown != nil {
            map["GracefulShutdown"] = self.gracefulShutdown!
        }
        if self.instanceTypes != nil {
            map["InstanceTypes"] = self.instanceTypes!
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        if self.nodeGroupName != nil {
            map["NodeGroupName"] = self.nodeGroupName!
        }
        if self.nodeGroupType != nil {
            map["NodeGroupType"] = self.nodeGroupType!
        }
        if self.nodeResizeStrategy != nil {
            map["NodeResizeStrategy"] = self.nodeResizeStrategy!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.spotBidPrices != nil {
            var tmp : [Any] = []
            for k in self.spotBidPrices! {
                tmp.append(k.toMap())
            }
            map["SpotBidPrices"] = tmp
        }
        if self.spotInstanceRemedy != nil {
            map["SpotInstanceRemedy"] = self.spotInstanceRemedy!
        }
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        if self.subscriptionConfig != nil {
            map["SubscriptionConfig"] = self.subscriptionConfig?.toMap()
        }
        if self.systemDisk != nil {
            map["SystemDisk"] = self.systemDisk?.toMap()
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
        }
        if self.withPublicIp != nil {
            map["WithPublicIp"] = self.withPublicIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalSecurityGroupIds") {
            self.additionalSecurityGroupIds = dict["AdditionalSecurityGroupIds"] as! [String]
        }
        if dict.keys.contains("CostOptimizedConfig") {
            var model = CostOptimizedConfig()
            model.fromMap(dict["CostOptimizedConfig"] as! [String: Any])
            self.costOptimizedConfig = model
        }
        if dict.keys.contains("DataDisks") {
            self.dataDisks = dict["DataDisks"] as! [DataDisk]
        }
        if dict.keys.contains("DeploymentSetStrategy") {
            self.deploymentSetStrategy = dict["DeploymentSetStrategy"] as! String
        }
        if dict.keys.contains("GracefulShutdown") {
            self.gracefulShutdown = dict["GracefulShutdown"] as! Bool
        }
        if dict.keys.contains("InstanceTypes") {
            self.instanceTypes = dict["InstanceTypes"] as! [String]
        }
        if dict.keys.contains("NodeCount") {
            self.nodeCount = dict["NodeCount"] as! Int32
        }
        if dict.keys.contains("NodeGroupName") {
            self.nodeGroupName = dict["NodeGroupName"] as! String
        }
        if dict.keys.contains("NodeGroupType") {
            self.nodeGroupType = dict["NodeGroupType"] as! String
        }
        if dict.keys.contains("NodeResizeStrategy") {
            self.nodeResizeStrategy = dict["NodeResizeStrategy"] as! String
        }
        if dict.keys.contains("PaymentType") {
            self.paymentType = dict["PaymentType"] as! String
        }
        if dict.keys.contains("SpotBidPrices") {
            self.spotBidPrices = dict["SpotBidPrices"] as! [SpotBidPrice]
        }
        if dict.keys.contains("SpotInstanceRemedy") {
            self.spotInstanceRemedy = dict["SpotInstanceRemedy"] as! Bool
        }
        if dict.keys.contains("SpotStrategy") {
            self.spotStrategy = dict["SpotStrategy"] as! String
        }
        if dict.keys.contains("SubscriptionConfig") {
            var model = SubscriptionConfig()
            model.fromMap(dict["SubscriptionConfig"] as! [String: Any])
            self.subscriptionConfig = model
        }
        if dict.keys.contains("SystemDisk") {
            var model = SystemDisk()
            model.fromMap(dict["SystemDisk"] as! [String: Any])
            self.systemDisk = model
        }
        if dict.keys.contains("VSwitchIds") {
            self.vSwitchIds = dict["VSwitchIds"] as! [String]
        }
        if dict.keys.contains("WithPublicIp") {
            self.withPublicIp = dict["WithPublicIp"] as! Bool
        }
    }
}

public class NodeGroupParam : Tea.TeaModel {
    public var autoPayOrder: Bool?

    public var autoRenew: Bool?

    public var autoRenewDuration: Int32?

    public var autoRenewDurationUnit: String?

    public var dataDisks: [DiskInfo]?

    public var description_: String?

    public var instanceTypes: [String]?

    public var nodeCount: Int32?

    public var nodeGroupIndex: Int32?

    public var nodeGroupName: String?

    public var nodeGroupType: String?

    public var paymentDuration: Int32?

    public var paymentDurationUnit: String?

    public var paymentType: String?

    public var systemDisk: SystemDiskParam?

    public var vSwitchIds: [String]?

    public var zoneId: String?

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
        if self.autoPayOrder != nil {
            map["AutoPayOrder"] = self.autoPayOrder!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.autoRenewDurationUnit != nil {
            map["AutoRenewDurationUnit"] = self.autoRenewDurationUnit!
        }
        if self.dataDisks != nil {
            var tmp : [Any] = []
            for k in self.dataDisks! {
                tmp.append(k.toMap())
            }
            map["DataDisks"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceTypes != nil {
            map["InstanceTypes"] = self.instanceTypes!
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        if self.nodeGroupIndex != nil {
            map["NodeGroupIndex"] = self.nodeGroupIndex!
        }
        if self.nodeGroupName != nil {
            map["NodeGroupName"] = self.nodeGroupName!
        }
        if self.nodeGroupType != nil {
            map["NodeGroupType"] = self.nodeGroupType!
        }
        if self.paymentDuration != nil {
            map["PaymentDuration"] = self.paymentDuration!
        }
        if self.paymentDurationUnit != nil {
            map["PaymentDurationUnit"] = self.paymentDurationUnit!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.systemDisk != nil {
            map["SystemDisk"] = self.systemDisk?.toMap()
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPayOrder") {
            self.autoPayOrder = dict["AutoPayOrder"] as! Bool
        }
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewDuration") {
            self.autoRenewDuration = dict["AutoRenewDuration"] as! Int32
        }
        if dict.keys.contains("AutoRenewDurationUnit") {
            self.autoRenewDurationUnit = dict["AutoRenewDurationUnit"] as! String
        }
        if dict.keys.contains("DataDisks") {
            self.dataDisks = dict["DataDisks"] as! [DiskInfo]
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceTypes") {
            self.instanceTypes = dict["InstanceTypes"] as! [String]
        }
        if dict.keys.contains("NodeCount") {
            self.nodeCount = dict["NodeCount"] as! Int32
        }
        if dict.keys.contains("NodeGroupIndex") {
            self.nodeGroupIndex = dict["NodeGroupIndex"] as! Int32
        }
        if dict.keys.contains("NodeGroupName") {
            self.nodeGroupName = dict["NodeGroupName"] as! String
        }
        if dict.keys.contains("NodeGroupType") {
            self.nodeGroupType = dict["NodeGroupType"] as! String
        }
        if dict.keys.contains("PaymentDuration") {
            self.paymentDuration = dict["PaymentDuration"] as! Int32
        }
        if dict.keys.contains("PaymentDurationUnit") {
            self.paymentDurationUnit = dict["PaymentDurationUnit"] as! String
        }
        if dict.keys.contains("PaymentType") {
            self.paymentType = dict["PaymentType"] as! String
        }
        if dict.keys.contains("SystemDisk") {
            var model = SystemDiskParam()
            model.fromMap(dict["SystemDisk"] as! [String: Any])
            self.systemDisk = model
        }
        if dict.keys.contains("VSwitchIds") {
            self.vSwitchIds = dict["VSwitchIds"] as! [String]
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class NodeGroupStateChangeReason : Tea.TeaModel {
    public var code: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
    }
}

public class NodeSelector : Tea.TeaModel {
    public var nodeGroupId: String?

    public var nodeGroupName: String?

    public var nodeGroupTypes: [String]?

    public var nodeNames: [String]?

    public var nodeSelectType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.nodeGroupName != nil {
            map["NodeGroupName"] = self.nodeGroupName!
        }
        if self.nodeGroupTypes != nil {
            map["NodeGroupTypes"] = self.nodeGroupTypes!
        }
        if self.nodeNames != nil {
            map["NodeNames"] = self.nodeNames!
        }
        if self.nodeSelectType != nil {
            map["NodeSelectType"] = self.nodeSelectType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("NodeGroupName") {
            self.nodeGroupName = dict["NodeGroupName"] as! String
        }
        if dict.keys.contains("NodeGroupTypes") {
            self.nodeGroupTypes = dict["NodeGroupTypes"] as! [String]
        }
        if dict.keys.contains("NodeNames") {
            self.nodeNames = dict["NodeNames"] as! [String]
        }
        if dict.keys.contains("NodeSelectType") {
            self.nodeSelectType = dict["NodeSelectType"] as! String
        }
    }
}

public class OSUser : Tea.TeaModel {
    public var group: String?

    public var password: String?

    public var user: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.group != nil {
            map["Group"] = self.group!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Group") {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
    }
}

public class OnKubeClusterResource : Tea.TeaModel {
    public var cpu: String?

    public var memory: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cpu") {
            self.cpu = dict["Cpu"] as! String
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! String
        }
    }
}

public class Operation : Tea.TeaModel {
    public var clusterId: String?

    public var createTime: Int64?

    public var description_: String?

    public var endTime: Int64?

    public var operationId: String?

    public var operationState: String?

    public var operationType: String?

    public var startTime: Int64?

    public var stateChangeReason: OperationStateChangeReason?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stateChangeReason?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        if self.operationState != nil {
            map["OperationState"] = self.operationState!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.stateChangeReason != nil {
            map["StateChangeReason"] = self.stateChangeReason?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("OperationId") {
            self.operationId = dict["OperationId"] as! String
        }
        if dict.keys.contains("OperationState") {
            self.operationState = dict["OperationState"] as! String
        }
        if dict.keys.contains("OperationType") {
            self.operationType = dict["OperationType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("StateChangeReason") {
            var model = OperationStateChangeReason()
            model.fromMap(dict["StateChangeReason"] as! [String: Any])
            self.stateChangeReason = model
        }
    }
}

public class OperationStateChangeReason : Tea.TeaModel {
    public var code: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
    }
}

public class Order : Tea.TeaModel {
    public var createTime: String?

    public var orderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
    }
}

public class Page : Tea.TeaModel {
    public var items: [String]?

    public var maxResults: Int64?

    public var nextToken: String?

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
        if self.items != nil {
            map["Items"] = self.items!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            self.items = dict["Items"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class Pod : Tea.TeaModel {
    public var message: String?

    public var podName: String?

    public var podStatus: String?

    public var reason: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.podName != nil {
            map["PodName"] = self.podName!
        }
        if self.podStatus != nil {
            map["PodStatus"] = self.podStatus!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PodName") {
            self.podName = dict["PodName"] as! String
        }
        if dict.keys.contains("PodStatus") {
            self.podStatus = dict["PodStatus"] as! String
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
        }
    }
}

public class PriceInfo : Tea.TeaModel {
    public var currency: String?

    public var discountPrice: String?

    public var originalPrice: String?

    public var payType: String?

    public var promotionResults: [PromotionInfo]?

    public var resourceType: String?

    public var spotInstanceTypeOriginalPrice: String?

    public var spotInstanceTypePrice: String?

    public var spotOriginalPrice: String?

    public var spotPrice: String?

    public var taxPrice: String?

    public var tradePrice: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.discountPrice != nil {
            map["DiscountPrice"] = self.discountPrice!
        }
        if self.originalPrice != nil {
            map["OriginalPrice"] = self.originalPrice!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.promotionResults != nil {
            var tmp : [Any] = []
            for k in self.promotionResults! {
                tmp.append(k.toMap())
            }
            map["PromotionResults"] = tmp
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.spotInstanceTypeOriginalPrice != nil {
            map["SpotInstanceTypeOriginalPrice"] = self.spotInstanceTypeOriginalPrice!
        }
        if self.spotInstanceTypePrice != nil {
            map["SpotInstanceTypePrice"] = self.spotInstanceTypePrice!
        }
        if self.spotOriginalPrice != nil {
            map["SpotOriginalPrice"] = self.spotOriginalPrice!
        }
        if self.spotPrice != nil {
            map["SpotPrice"] = self.spotPrice!
        }
        if self.taxPrice != nil {
            map["TaxPrice"] = self.taxPrice!
        }
        if self.tradePrice != nil {
            map["TradePrice"] = self.tradePrice!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("DiscountPrice") {
            self.discountPrice = dict["DiscountPrice"] as! String
        }
        if dict.keys.contains("OriginalPrice") {
            self.originalPrice = dict["OriginalPrice"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("PromotionResults") {
            self.promotionResults = dict["PromotionResults"] as! [PromotionInfo]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SpotInstanceTypeOriginalPrice") {
            self.spotInstanceTypeOriginalPrice = dict["SpotInstanceTypeOriginalPrice"] as! String
        }
        if dict.keys.contains("SpotInstanceTypePrice") {
            self.spotInstanceTypePrice = dict["SpotInstanceTypePrice"] as! String
        }
        if dict.keys.contains("SpotOriginalPrice") {
            self.spotOriginalPrice = dict["SpotOriginalPrice"] as! String
        }
        if dict.keys.contains("SpotPrice") {
            self.spotPrice = dict["SpotPrice"] as! String
        }
        if dict.keys.contains("TaxPrice") {
            self.taxPrice = dict["TaxPrice"] as! String
        }
        if dict.keys.contains("TradePrice") {
            self.tradePrice = dict["TradePrice"] as! String
        }
    }
}

public class Promotion : Tea.TeaModel {
    public var productCode: String?

    public var promotionOptionCode: String?

    public var promotionOptionNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.promotionOptionCode != nil {
            map["PromotionOptionCode"] = self.promotionOptionCode!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("PromotionOptionCode") {
            self.promotionOptionCode = dict["PromotionOptionCode"] as! String
        }
        if dict.keys.contains("PromotionOptionNo") {
            self.promotionOptionNo = dict["PromotionOptionNo"] as! String
        }
    }
}

public class PromotionInfo : Tea.TeaModel {
    public var canPromFee: String?

    public var isSelected: String?

    public var promotionDesc: String?

    public var promotionName: String?

    public var promotionOptionCode: String?

    public var promotionOptionNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.canPromFee != nil {
            map["CanPromFee"] = self.canPromFee!
        }
        if self.isSelected != nil {
            map["IsSelected"] = self.isSelected!
        }
        if self.promotionDesc != nil {
            map["PromotionDesc"] = self.promotionDesc!
        }
        if self.promotionName != nil {
            map["PromotionName"] = self.promotionName!
        }
        if self.promotionOptionCode != nil {
            map["PromotionOptionCode"] = self.promotionOptionCode!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CanPromFee") {
            self.canPromFee = dict["CanPromFee"] as! String
        }
        if dict.keys.contains("IsSelected") {
            self.isSelected = dict["IsSelected"] as! String
        }
        if dict.keys.contains("PromotionDesc") {
            self.promotionDesc = dict["PromotionDesc"] as! String
        }
        if dict.keys.contains("PromotionName") {
            self.promotionName = dict["PromotionName"] as! String
        }
        if dict.keys.contains("PromotionOptionCode") {
            self.promotionOptionCode = dict["PromotionOptionCode"] as! String
        }
        if dict.keys.contains("PromotionOptionNo") {
            self.promotionOptionNo = dict["PromotionOptionNo"] as! String
        }
    }
}

public class PromotionParam : Tea.TeaModel {
    public var productCode: String?

    public var promotionOptionCode: String?

    public var promotionOptionNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.promotionOptionCode != nil {
            map["PromotionOptionCode"] = self.promotionOptionCode!
        }
        if self.promotionOptionNo != nil {
            map["PromotionOptionNo"] = self.promotionOptionNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("PromotionOptionCode") {
            self.promotionOptionCode = dict["PromotionOptionCode"] as! String
        }
        if dict.keys.contains("PromotionOptionNo") {
            self.promotionOptionNo = dict["PromotionOptionNo"] as! String
        }
    }
}

public class RenewInstance : Tea.TeaModel {
    public var instanceId: String?

    public var renewDuration: Int32?

    public var renewDurationUnit: String?

    public override init() {
        super.init()
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
        if self.renewDuration != nil {
            map["RenewDuration"] = self.renewDuration!
        }
        if self.renewDurationUnit != nil {
            map["RenewDurationUnit"] = self.renewDurationUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RenewDuration") {
            self.renewDuration = dict["RenewDuration"] as! Int32
        }
        if dict.keys.contains("RenewDurationUnit") {
            self.renewDurationUnit = dict["RenewDurationUnit"] as! String
        }
    }
}

public class RenewInstanceParam : Tea.TeaModel {
    public var instanceId: String?

    public var renewDuration: Int64?

    public var renewDurationUnit: String?

    public override init() {
        super.init()
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
        if self.renewDuration != nil {
            map["RenewDuration"] = self.renewDuration!
        }
        if self.renewDurationUnit != nil {
            map["RenewDurationUnit"] = self.renewDurationUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RenewDuration") {
            self.renewDuration = dict["RenewDuration"] as! Int64
        }
        if dict.keys.contains("RenewDurationUnit") {
            self.renewDurationUnit = dict["RenewDurationUnit"] as! String
        }
    }
}

public class RequestTag : Tea.TeaModel {
    public var key: String?

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
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class ResizeDiskNodeGroupParam : Tea.TeaModel {
    public var dataDiskCapacity: Int64?

    public var nodeGroupId: String?

    public var rollingRestart: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataDiskCapacity != nil {
            map["DataDiskCapacity"] = self.dataDiskCapacity!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.rollingRestart != nil {
            map["RollingRestart"] = self.rollingRestart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataDiskCapacity") {
            self.dataDiskCapacity = dict["DataDiskCapacity"] as! Int64
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("RollingRestart") {
            self.rollingRestart = dict["RollingRestart"] as! Bool
        }
    }
}

public class ScalingActivity : Tea.TeaModel {
    public var cause: String?

    public var description_: String?

    public var endTime: Int64?

    public var essScalingRuleId: String?

    public var expectNum: Int32?

    public var hostGroupName: String?

    public var id: String?

    public var instanceIds: String?

    public var scalingGroupId: String?

    public var scalingRuleName: String?

    public var startTime: Int64?

    public var status: String?

    public var totalCapacity: Int32?

    public var transition: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cause != nil {
            map["Cause"] = self.cause!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.essScalingRuleId != nil {
            map["EssScalingRuleId"] = self.essScalingRuleId!
        }
        if self.expectNum != nil {
            map["ExpectNum"] = self.expectNum!
        }
        if self.hostGroupName != nil {
            map["HostGroupName"] = self.hostGroupName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.scalingGroupId != nil {
            map["ScalingGroupId"] = self.scalingGroupId!
        }
        if self.scalingRuleName != nil {
            map["ScalingRuleName"] = self.scalingRuleName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.totalCapacity != nil {
            map["TotalCapacity"] = self.totalCapacity!
        }
        if self.transition != nil {
            map["Transition"] = self.transition!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cause") {
            self.cause = dict["Cause"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("EssScalingRuleId") {
            self.essScalingRuleId = dict["EssScalingRuleId"] as! String
        }
        if dict.keys.contains("ExpectNum") {
            self.expectNum = dict["ExpectNum"] as! Int32
        }
        if dict.keys.contains("HostGroupName") {
            self.hostGroupName = dict["HostGroupName"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("ScalingGroupId") {
            self.scalingGroupId = dict["ScalingGroupId"] as! String
        }
        if dict.keys.contains("ScalingRuleName") {
            self.scalingRuleName = dict["ScalingRuleName"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TotalCapacity") {
            self.totalCapacity = dict["TotalCapacity"] as! Int32
        }
        if dict.keys.contains("Transition") {
            self.transition = dict["Transition"] as! String
        }
    }
}

public class ScalingConstraints : Tea.TeaModel {
    public var maxCapacity: Int32?

    public var minCapacity: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxCapacity != nil {
            map["MaxCapacity"] = self.maxCapacity!
        }
        if self.minCapacity != nil {
            map["MinCapacity"] = self.minCapacity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxCapacity") {
            self.maxCapacity = dict["MaxCapacity"] as! Int32
        }
        if dict.keys.contains("MinCapacity") {
            self.minCapacity = dict["MinCapacity"] as! Int32
        }
    }
}

public class ScalingGroupConfig : Tea.TeaModel {
    public class InstanceTypeList : Tea.TeaModel {
        public var instanceType: String?

        public var spotPriceLimit: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.spotPriceLimit != nil {
                map["SpotPriceLimit"] = self.spotPriceLimit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("SpotPriceLimit") {
                self.spotPriceLimit = dict["SpotPriceLimit"] as! Double
            }
        }
    }
    public class MultiAvailablePolicy : Tea.TeaModel {
        public class PolicyParam : Tea.TeaModel {
            public var onDemandBaseCapacity: Int32?

            public var onDemandPercentageAboveBaseCapacity: Int32?

            public var spotInstancePools: Int32?

            public var spotInstanceRemedy: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.onDemandBaseCapacity != nil {
                    map["OnDemandBaseCapacity"] = self.onDemandBaseCapacity!
                }
                if self.onDemandPercentageAboveBaseCapacity != nil {
                    map["OnDemandPercentageAboveBaseCapacity"] = self.onDemandPercentageAboveBaseCapacity!
                }
                if self.spotInstancePools != nil {
                    map["SpotInstancePools"] = self.spotInstancePools!
                }
                if self.spotInstanceRemedy != nil {
                    map["SpotInstanceRemedy"] = self.spotInstanceRemedy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OnDemandBaseCapacity") {
                    self.onDemandBaseCapacity = dict["OnDemandBaseCapacity"] as! Int32
                }
                if dict.keys.contains("OnDemandPercentageAboveBaseCapacity") {
                    self.onDemandPercentageAboveBaseCapacity = dict["OnDemandPercentageAboveBaseCapacity"] as! Int32
                }
                if dict.keys.contains("SpotInstancePools") {
                    self.spotInstancePools = dict["SpotInstancePools"] as! Int32
                }
                if dict.keys.contains("SpotInstanceRemedy") {
                    self.spotInstanceRemedy = dict["SpotInstanceRemedy"] as! Bool
                }
            }
        }
        public var policyParam: ScalingGroupConfig.MultiAvailablePolicy.PolicyParam?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.policyParam?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policyParam != nil {
                map["PolicyParam"] = self.policyParam?.toMap()
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PolicyParam") {
                var model = ScalingGroupConfig.MultiAvailablePolicy.PolicyParam()
                model.fromMap(dict["PolicyParam"] as! [String: Any])
                self.policyParam = model
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class NodeOfflinePolicy : Tea.TeaModel {
        public var mode: String?

        public var timeoutMs: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.timeoutMs != nil {
                map["TimeoutMs"] = self.timeoutMs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Mode") {
                self.mode = dict["Mode"] as! String
            }
            if dict.keys.contains("TimeoutMs") {
                self.timeoutMs = dict["TimeoutMs"] as! Int64
            }
        }
    }
    public class PrivatePoolOptions : Tea.TeaModel {
        public var id: String?

        public var matchCriteria: String?

        public override init() {
            super.init()
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
            if self.matchCriteria != nil {
                map["MatchCriteria"] = self.matchCriteria!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("MatchCriteria") {
                self.matchCriteria = dict["MatchCriteria"] as! String
            }
        }
    }
    public var dataDiskCategory: String?

    public var dataDiskCount: Int32?

    public var dataDiskSize: Int64?

    public var defaultCoolDownTime: Int64?

    public var instanceTypeList: [ScalingGroupConfig.InstanceTypeList]?

    public var multiAvailablePolicy: ScalingGroupConfig.MultiAvailablePolicy?

    public var nodeOfflinePolicy: ScalingGroupConfig.NodeOfflinePolicy?

    public var privatePoolOptions: ScalingGroupConfig.PrivatePoolOptions?

    public var scalingMaxSize: Int32?

    public var scalingMinSize: Int32?

    public var spotStrategy: String?

    public var sysDiskCategory: String?

    public var sysDiskSize: Int64?

    public var triggerMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.multiAvailablePolicy?.validate()
        try self.nodeOfflinePolicy?.validate()
        try self.privatePoolOptions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataDiskCategory != nil {
            map["DataDiskCategory"] = self.dataDiskCategory!
        }
        if self.dataDiskCount != nil {
            map["DataDiskCount"] = self.dataDiskCount!
        }
        if self.dataDiskSize != nil {
            map["DataDiskSize"] = self.dataDiskSize!
        }
        if self.defaultCoolDownTime != nil {
            map["DefaultCoolDownTime"] = self.defaultCoolDownTime!
        }
        if self.instanceTypeList != nil {
            var tmp : [Any] = []
            for k in self.instanceTypeList! {
                tmp.append(k.toMap())
            }
            map["InstanceTypeList"] = tmp
        }
        if self.multiAvailablePolicy != nil {
            map["MultiAvailablePolicy"] = self.multiAvailablePolicy?.toMap()
        }
        if self.nodeOfflinePolicy != nil {
            map["NodeOfflinePolicy"] = self.nodeOfflinePolicy?.toMap()
        }
        if self.privatePoolOptions != nil {
            map["PrivatePoolOptions"] = self.privatePoolOptions?.toMap()
        }
        if self.scalingMaxSize != nil {
            map["ScalingMaxSize"] = self.scalingMaxSize!
        }
        if self.scalingMinSize != nil {
            map["ScalingMinSize"] = self.scalingMinSize!
        }
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        if self.sysDiskCategory != nil {
            map["SysDiskCategory"] = self.sysDiskCategory!
        }
        if self.sysDiskSize != nil {
            map["SysDiskSize"] = self.sysDiskSize!
        }
        if self.triggerMode != nil {
            map["TriggerMode"] = self.triggerMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataDiskCategory") {
            self.dataDiskCategory = dict["DataDiskCategory"] as! String
        }
        if dict.keys.contains("DataDiskCount") {
            self.dataDiskCount = dict["DataDiskCount"] as! Int32
        }
        if dict.keys.contains("DataDiskSize") {
            self.dataDiskSize = dict["DataDiskSize"] as! Int64
        }
        if dict.keys.contains("DefaultCoolDownTime") {
            self.defaultCoolDownTime = dict["DefaultCoolDownTime"] as! Int64
        }
        if dict.keys.contains("InstanceTypeList") {
            self.instanceTypeList = dict["InstanceTypeList"] as! [ScalingGroupConfig.InstanceTypeList]
        }
        if dict.keys.contains("MultiAvailablePolicy") {
            var model = ScalingGroupConfig.MultiAvailablePolicy()
            model.fromMap(dict["MultiAvailablePolicy"] as! [String: Any])
            self.multiAvailablePolicy = model
        }
        if dict.keys.contains("NodeOfflinePolicy") {
            var model = ScalingGroupConfig.NodeOfflinePolicy()
            model.fromMap(dict["NodeOfflinePolicy"] as! [String: Any])
            self.nodeOfflinePolicy = model
        }
        if dict.keys.contains("PrivatePoolOptions") {
            var model = ScalingGroupConfig.PrivatePoolOptions()
            model.fromMap(dict["PrivatePoolOptions"] as! [String: Any])
            self.privatePoolOptions = model
        }
        if dict.keys.contains("ScalingMaxSize") {
            self.scalingMaxSize = dict["ScalingMaxSize"] as! Int32
        }
        if dict.keys.contains("ScalingMinSize") {
            self.scalingMinSize = dict["ScalingMinSize"] as! Int32
        }
        if dict.keys.contains("SpotStrategy") {
            self.spotStrategy = dict["SpotStrategy"] as! String
        }
        if dict.keys.contains("SysDiskCategory") {
            self.sysDiskCategory = dict["SysDiskCategory"] as! String
        }
        if dict.keys.contains("SysDiskSize") {
            self.sysDiskSize = dict["SysDiskSize"] as! Int64
        }
        if dict.keys.contains("TriggerMode") {
            self.triggerMode = dict["TriggerMode"] as! String
        }
    }
}

public class ScalingRule : Tea.TeaModel {
    public var activityType: String?

    public var adjustmentType: String?

    public var adjustmentValue: Int32?

    public var metricsTrigger: MetricsTrigger?

    public var ruleName: String?

    public var timeTrigger: TimeTrigger?

    public var triggerType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metricsTrigger?.validate()
        try self.timeTrigger?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityType != nil {
            map["ActivityType"] = self.activityType!
        }
        if self.adjustmentType != nil {
            map["AdjustmentType"] = self.adjustmentType!
        }
        if self.adjustmentValue != nil {
            map["AdjustmentValue"] = self.adjustmentValue!
        }
        if self.metricsTrigger != nil {
            map["MetricsTrigger"] = self.metricsTrigger?.toMap()
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.timeTrigger != nil {
            map["TimeTrigger"] = self.timeTrigger?.toMap()
        }
        if self.triggerType != nil {
            map["TriggerType"] = self.triggerType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityType") {
            self.activityType = dict["ActivityType"] as! String
        }
        if dict.keys.contains("AdjustmentType") {
            self.adjustmentType = dict["AdjustmentType"] as! String
        }
        if dict.keys.contains("AdjustmentValue") {
            self.adjustmentValue = dict["AdjustmentValue"] as! Int32
        }
        if dict.keys.contains("MetricsTrigger") {
            var model = MetricsTrigger()
            model.fromMap(dict["MetricsTrigger"] as! [String: Any])
            self.metricsTrigger = model
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("TimeTrigger") {
            var model = TimeTrigger()
            model.fromMap(dict["TimeTrigger"] as! [String: Any])
            self.timeTrigger = model
        }
        if dict.keys.contains("TriggerType") {
            self.triggerType = dict["TriggerType"] as! String
        }
    }
}

public class ScalingRuleSpec : Tea.TeaModel {
    public class ByLoadScalingRuleSpec : Tea.TeaModel {
        public var comparisonOperator: String?

        public var evaluationCount: Int32?

        public var metricName: String?

        public var statistics: String?

        public var threshold: Double?

        public var timeWindow: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comparisonOperator != nil {
                map["ComparisonOperator"] = self.comparisonOperator!
            }
            if self.evaluationCount != nil {
                map["EvaluationCount"] = self.evaluationCount!
            }
            if self.metricName != nil {
                map["MetricName"] = self.metricName!
            }
            if self.statistics != nil {
                map["Statistics"] = self.statistics!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            if self.timeWindow != nil {
                map["TimeWindow"] = self.timeWindow!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComparisonOperator") {
                self.comparisonOperator = dict["ComparisonOperator"] as! String
            }
            if dict.keys.contains("EvaluationCount") {
                self.evaluationCount = dict["EvaluationCount"] as! Int32
            }
            if dict.keys.contains("MetricName") {
                self.metricName = dict["MetricName"] as! String
            }
            if dict.keys.contains("Statistics") {
                self.statistics = dict["Statistics"] as! String
            }
            if dict.keys.contains("Threshold") {
                self.threshold = dict["Threshold"] as! Double
            }
            if dict.keys.contains("TimeWindow") {
                self.timeWindow = dict["TimeWindow"] as! Int32
            }
        }
    }
    public class ByTimeScalingRuleSpec : Tea.TeaModel {
        public var endTime: Int64?

        public var launchTime: Int64?

        public var recurrenceType: String?

        public var recurrenceValue: String?

        public override init() {
            super.init()
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
            if self.launchTime != nil {
                map["LaunchTime"] = self.launchTime!
            }
            if self.recurrenceType != nil {
                map["RecurrenceType"] = self.recurrenceType!
            }
            if self.recurrenceValue != nil {
                map["RecurrenceValue"] = self.recurrenceValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("LaunchTime") {
                self.launchTime = dict["LaunchTime"] as! Int64
            }
            if dict.keys.contains("RecurrenceType") {
                self.recurrenceType = dict["RecurrenceType"] as! String
            }
            if dict.keys.contains("RecurrenceValue") {
                self.recurrenceValue = dict["RecurrenceValue"] as! String
            }
        }
    }
    public var adjustmentValue: Int32?

    public var byLoadScalingRuleSpec: ScalingRuleSpec.ByLoadScalingRuleSpec?

    public var byTimeScalingRuleSpec: ScalingRuleSpec.ByTimeScalingRuleSpec?

    public var coolDownInterval: Int32?

    public var scalingActivityType: String?

    public var scalingRuleName: String?

    public var scalingRuleType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.byLoadScalingRuleSpec?.validate()
        try self.byTimeScalingRuleSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adjustmentValue != nil {
            map["AdjustmentValue"] = self.adjustmentValue!
        }
        if self.byLoadScalingRuleSpec != nil {
            map["ByLoadScalingRuleSpec"] = self.byLoadScalingRuleSpec?.toMap()
        }
        if self.byTimeScalingRuleSpec != nil {
            map["ByTimeScalingRuleSpec"] = self.byTimeScalingRuleSpec?.toMap()
        }
        if self.coolDownInterval != nil {
            map["CoolDownInterval"] = self.coolDownInterval!
        }
        if self.scalingActivityType != nil {
            map["ScalingActivityType"] = self.scalingActivityType!
        }
        if self.scalingRuleName != nil {
            map["ScalingRuleName"] = self.scalingRuleName!
        }
        if self.scalingRuleType != nil {
            map["ScalingRuleType"] = self.scalingRuleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdjustmentValue") {
            self.adjustmentValue = dict["AdjustmentValue"] as! Int32
        }
        if dict.keys.contains("ByLoadScalingRuleSpec") {
            var model = ScalingRuleSpec.ByLoadScalingRuleSpec()
            model.fromMap(dict["ByLoadScalingRuleSpec"] as! [String: Any])
            self.byLoadScalingRuleSpec = model
        }
        if dict.keys.contains("ByTimeScalingRuleSpec") {
            var model = ScalingRuleSpec.ByTimeScalingRuleSpec()
            model.fromMap(dict["ByTimeScalingRuleSpec"] as! [String: Any])
            self.byTimeScalingRuleSpec = model
        }
        if dict.keys.contains("CoolDownInterval") {
            self.coolDownInterval = dict["CoolDownInterval"] as! Int32
        }
        if dict.keys.contains("ScalingActivityType") {
            self.scalingActivityType = dict["ScalingActivityType"] as! String
        }
        if dict.keys.contains("ScalingRuleName") {
            self.scalingRuleName = dict["ScalingRuleName"] as! String
        }
        if dict.keys.contains("ScalingRuleType") {
            self.scalingRuleType = dict["ScalingRuleType"] as! String
        }
    }
}

public class ScalingRuleV1 : Tea.TeaModel {
    public class RuleParam : Tea.TeaModel {
        public var comparisonOperator: String?

        public var evaluationCount: Int32?

        public var launchExpirationTime: Int32?

        public var launchTime: String?

        public var metricName: String?

        public var period: Int32?

        public var recurrenceEndTime: String?

        public var recurrenceType: String?

        public var recurrenceValue: String?

        public var statistics: String?

        public var threshold: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comparisonOperator != nil {
                map["ComparisonOperator"] = self.comparisonOperator!
            }
            if self.evaluationCount != nil {
                map["EvaluationCount"] = self.evaluationCount!
            }
            if self.launchExpirationTime != nil {
                map["LaunchExpirationTime"] = self.launchExpirationTime!
            }
            if self.launchTime != nil {
                map["LaunchTime"] = self.launchTime!
            }
            if self.metricName != nil {
                map["MetricName"] = self.metricName!
            }
            if self.period != nil {
                map["Period"] = self.period!
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
            if self.statistics != nil {
                map["Statistics"] = self.statistics!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComparisonOperator") {
                self.comparisonOperator = dict["ComparisonOperator"] as! String
            }
            if dict.keys.contains("EvaluationCount") {
                self.evaluationCount = dict["EvaluationCount"] as! Int32
            }
            if dict.keys.contains("LaunchExpirationTime") {
                self.launchExpirationTime = dict["LaunchExpirationTime"] as! Int32
            }
            if dict.keys.contains("LaunchTime") {
                self.launchTime = dict["LaunchTime"] as! String
            }
            if dict.keys.contains("MetricName") {
                self.metricName = dict["MetricName"] as! String
            }
            if dict.keys.contains("Period") {
                self.period = dict["Period"] as! Int32
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
            if dict.keys.contains("Statistics") {
                self.statistics = dict["Statistics"] as! String
            }
            if dict.keys.contains("Threshold") {
                self.threshold = dict["Threshold"] as! Int32
            }
        }
    }
    public var adjustmentType: String?

    public var adjustmentValue: Int32?

    public var coolDownTime: Int32?

    public var ruleName: String?

    public var ruleParam: ScalingRuleV1.RuleParam?

    public var ruleType: String?

    public var scalingConfigBizId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ruleParam?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adjustmentType != nil {
            map["AdjustmentType"] = self.adjustmentType!
        }
        if self.adjustmentValue != nil {
            map["AdjustmentValue"] = self.adjustmentValue!
        }
        if self.coolDownTime != nil {
            map["CoolDownTime"] = self.coolDownTime!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleParam != nil {
            map["RuleParam"] = self.ruleParam?.toMap()
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.scalingConfigBizId != nil {
            map["ScalingConfigBizId"] = self.scalingConfigBizId!
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
        if dict.keys.contains("CoolDownTime") {
            self.coolDownTime = dict["CoolDownTime"] as! Int32
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("RuleParam") {
            var model = ScalingRuleV1.RuleParam()
            model.fromMap(dict["RuleParam"] as! [String: Any])
            self.ruleParam = model
        }
        if dict.keys.contains("RuleType") {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("ScalingConfigBizId") {
            self.scalingConfigBizId = dict["ScalingConfigBizId"] as! String
        }
    }
}

public class Script : Tea.TeaModel {
    public var executionFailStrategy: String?

    public var executionMoment: String?

    public var nodeSelector: NodeSelector?

    public var priority: Int32?

    public var scriptArgs: String?

    public var scriptName: String?

    public var scriptPath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nodeSelector?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionFailStrategy != nil {
            map["ExecutionFailStrategy"] = self.executionFailStrategy!
        }
        if self.executionMoment != nil {
            map["ExecutionMoment"] = self.executionMoment!
        }
        if self.nodeSelector != nil {
            map["NodeSelector"] = self.nodeSelector?.toMap()
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.scriptArgs != nil {
            map["ScriptArgs"] = self.scriptArgs!
        }
        if self.scriptName != nil {
            map["ScriptName"] = self.scriptName!
        }
        if self.scriptPath != nil {
            map["ScriptPath"] = self.scriptPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExecutionFailStrategy") {
            self.executionFailStrategy = dict["ExecutionFailStrategy"] as! String
        }
        if dict.keys.contains("ExecutionMoment") {
            self.executionMoment = dict["ExecutionMoment"] as! String
        }
        if dict.keys.contains("NodeSelector") {
            var model = NodeSelector()
            model.fromMap(dict["NodeSelector"] as! [String: Any])
            self.nodeSelector = model
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ScriptArgs") {
            self.scriptArgs = dict["ScriptArgs"] as! String
        }
        if dict.keys.contains("ScriptName") {
            self.scriptName = dict["ScriptName"] as! String
        }
        if dict.keys.contains("ScriptPath") {
            self.scriptPath = dict["ScriptPath"] as! String
        }
    }
}

public class SpotBidPrice : Tea.TeaModel {
    public var bidPrice: Double?

    public var instanceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bidPrice != nil {
            map["BidPrice"] = self.bidPrice!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BidPrice") {
            self.bidPrice = dict["BidPrice"] as! Double
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
    }
}

public class SpotPriceLimit : Tea.TeaModel {
    public var instanceType: String?

    public var priceLimit: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.priceLimit != nil {
            map["PriceLimit"] = self.priceLimit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("PriceLimit") {
            self.priceLimit = dict["PriceLimit"] as! Double
        }
    }
}

public class StateChangeReason : Tea.TeaModel {
    public var code: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
    }
}

public class SubscriptionConfig : Tea.TeaModel {
    public var autoRenew: Bool?

    public var autoRenewDuration: Int32?

    public var autoRenewDurationUnit: String?

    public var paymentDuration: Int32?

    public var paymentDurationUnit: String?

    public override init() {
        super.init()
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
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.autoRenewDurationUnit != nil {
            map["AutoRenewDurationUnit"] = self.autoRenewDurationUnit!
        }
        if self.paymentDuration != nil {
            map["PaymentDuration"] = self.paymentDuration!
        }
        if self.paymentDurationUnit != nil {
            map["PaymentDurationUnit"] = self.paymentDurationUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewDuration") {
            self.autoRenewDuration = dict["AutoRenewDuration"] as! Int32
        }
        if dict.keys.contains("AutoRenewDurationUnit") {
            self.autoRenewDurationUnit = dict["AutoRenewDurationUnit"] as! String
        }
        if dict.keys.contains("PaymentDuration") {
            self.paymentDuration = dict["PaymentDuration"] as! Int32
        }
        if dict.keys.contains("PaymentDurationUnit") {
            self.paymentDurationUnit = dict["PaymentDurationUnit"] as! String
        }
    }
}

public class SystemDisk : Tea.TeaModel {
    public var category: String?

    public var count: Int32?

    public var performanceLevel: String?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.performanceLevel != nil {
            map["PerformanceLevel"] = self.performanceLevel!
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
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("PerformanceLevel") {
            self.performanceLevel = dict["PerformanceLevel"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class SystemDiskParam : Tea.TeaModel {
    public var category: String?

    public var performanceLevel: String?

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
        if self.performanceLevel != nil {
            map["PerformanceLevel"] = self.performanceLevel!
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
        if dict.keys.contains("PerformanceLevel") {
            self.performanceLevel = dict["PerformanceLevel"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class Tag : Tea.TeaModel {
    public var key: String?

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
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class TagResource : Tea.TeaModel {
    public var resourceId: String?

    public var resourceType: String?

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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! String
        }
        if dict.keys.contains("TagValue") {
            self.tagValue = dict["TagValue"] as! String
        }
    }
}

public class TimeTrigger : Tea.TeaModel {
    public var endTime: Int64?

    public var launchExpirationTime: Int32?

    public var launchTime: Int64?

    public var recurrenceType: String?

    public var recurrenceValue: String?

    public override init() {
        super.init()
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
        if self.launchExpirationTime != nil {
            map["LaunchExpirationTime"] = self.launchExpirationTime!
        }
        if self.launchTime != nil {
            map["LaunchTime"] = self.launchTime!
        }
        if self.recurrenceType != nil {
            map["RecurrenceType"] = self.recurrenceType!
        }
        if self.recurrenceValue != nil {
            map["RecurrenceValue"] = self.recurrenceValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("LaunchExpirationTime") {
            self.launchExpirationTime = dict["LaunchExpirationTime"] as! Int32
        }
        if dict.keys.contains("LaunchTime") {
            self.launchTime = dict["LaunchTime"] as! Int64
        }
        if dict.keys.contains("RecurrenceType") {
            self.recurrenceType = dict["RecurrenceType"] as! String
        }
        if dict.keys.contains("RecurrenceValue") {
            self.recurrenceValue = dict["RecurrenceValue"] as! String
        }
    }
}

public class UpdateApplicationConfig : Tea.TeaModel {
    public var configAction: String?

    public var configDescription: String?

    public var configFileName: String?

    public var configItemKey: String?

    public var configItemValue: String?

    public var configScope: String?

    public var effectiveActions: String?

    public var effectiveType: String?

    public var nodeGroupId: String?

    public var nodeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configAction != nil {
            map["ConfigAction"] = self.configAction!
        }
        if self.configDescription != nil {
            map["ConfigDescription"] = self.configDescription!
        }
        if self.configFileName != nil {
            map["ConfigFileName"] = self.configFileName!
        }
        if self.configItemKey != nil {
            map["ConfigItemKey"] = self.configItemKey!
        }
        if self.configItemValue != nil {
            map["ConfigItemValue"] = self.configItemValue!
        }
        if self.configScope != nil {
            map["ConfigScope"] = self.configScope!
        }
        if self.effectiveActions != nil {
            map["EffectiveActions"] = self.effectiveActions!
        }
        if self.effectiveType != nil {
            map["EffectiveType"] = self.effectiveType!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigAction") {
            self.configAction = dict["ConfigAction"] as! String
        }
        if dict.keys.contains("ConfigDescription") {
            self.configDescription = dict["ConfigDescription"] as! String
        }
        if dict.keys.contains("ConfigFileName") {
            self.configFileName = dict["ConfigFileName"] as! String
        }
        if dict.keys.contains("ConfigItemKey") {
            self.configItemKey = dict["ConfigItemKey"] as! String
        }
        if dict.keys.contains("ConfigItemValue") {
            self.configItemValue = dict["ConfigItemValue"] as! String
        }
        if dict.keys.contains("ConfigScope") {
            self.configScope = dict["ConfigScope"] as! String
        }
        if dict.keys.contains("EffectiveActions") {
            self.effectiveActions = dict["EffectiveActions"] as! String
        }
        if dict.keys.contains("EffectiveType") {
            self.effectiveType = dict["EffectiveType"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("NodeId") {
            self.nodeId = dict["NodeId"] as! String
        }
    }
}

public class UpdateSpecNodeGroup : Tea.TeaModel {
    public var newInstanceType: String?

    public var nodeGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newInstanceType != nil {
            map["NewInstanceType"] = self.newInstanceType!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewInstanceType") {
            self.newInstanceType = dict["NewInstanceType"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
    }
}

public class UpdateSpecNodeGroupParam : Tea.TeaModel {
    public var newInstanceType: String?

    public var nodeGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newInstanceType != nil {
            map["NewInstanceType"] = self.newInstanceType!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewInstanceType") {
            self.newInstanceType = dict["NewInstanceType"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
    }
}

public class User : Tea.TeaModel {
    public var group: String?

    public var password: String?

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
        if self.group != nil {
            map["Group"] = self.group!
        }
        if self.password != nil {
            map["Password"] = self.password!
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
        if dict.keys.contains("Group") {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("UserType") {
            self.userType = dict["UserType"] as! String
        }
    }
}

public class UserParam : Tea.TeaModel {
    public var password: String?

    public var userId: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class CreateClusterRequest : Tea.TeaModel {
    public var applicationConfigs: [ApplicationConfig]?

    public var applications: [Application]?

    public var bootstrapScripts: [Script]?

    public var clientToken: String?

    public var clusterName: String?

    public var clusterType: String?

    public var deployMode: String?

    public var nodeAttributes: NodeAttributes?

    public var nodeGroups: [NodeGroupConfig]?

    public var paymentType: String?

    public var regionId: String?

    public var releaseVersion: String?

    public var resourceGroupId: String?

    public var securityMode: String?

    public var subscriptionConfig: SubscriptionConfig?

    public var tags: [Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nodeAttributes?.validate()
        try self.subscriptionConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationConfigs != nil {
            var tmp : [Any] = []
            for k in self.applicationConfigs! {
                tmp.append(k.toMap())
            }
            map["ApplicationConfigs"] = tmp
        }
        if self.applications != nil {
            var tmp : [Any] = []
            for k in self.applications! {
                tmp.append(k.toMap())
            }
            map["Applications"] = tmp
        }
        if self.bootstrapScripts != nil {
            var tmp : [Any] = []
            for k in self.bootstrapScripts! {
                tmp.append(k.toMap())
            }
            map["BootstrapScripts"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.deployMode != nil {
            map["DeployMode"] = self.deployMode!
        }
        if self.nodeAttributes != nil {
            map["NodeAttributes"] = self.nodeAttributes?.toMap()
        }
        if self.nodeGroups != nil {
            var tmp : [Any] = []
            for k in self.nodeGroups! {
                tmp.append(k.toMap())
            }
            map["NodeGroups"] = tmp
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.releaseVersion != nil {
            map["ReleaseVersion"] = self.releaseVersion!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityMode != nil {
            map["SecurityMode"] = self.securityMode!
        }
        if self.subscriptionConfig != nil {
            map["SubscriptionConfig"] = self.subscriptionConfig?.toMap()
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationConfigs") {
            self.applicationConfigs = dict["ApplicationConfigs"] as! [ApplicationConfig]
        }
        if dict.keys.contains("Applications") {
            self.applications = dict["Applications"] as! [Application]
        }
        if dict.keys.contains("BootstrapScripts") {
            self.bootstrapScripts = dict["BootstrapScripts"] as! [Script]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ClusterType") {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("DeployMode") {
            self.deployMode = dict["DeployMode"] as! String
        }
        if dict.keys.contains("NodeAttributes") {
            var model = NodeAttributes()
            model.fromMap(dict["NodeAttributes"] as! [String: Any])
            self.nodeAttributes = model
        }
        if dict.keys.contains("NodeGroups") {
            self.nodeGroups = dict["NodeGroups"] as! [NodeGroupConfig]
        }
        if dict.keys.contains("PaymentType") {
            self.paymentType = dict["PaymentType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReleaseVersion") {
            self.releaseVersion = dict["ReleaseVersion"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityMode") {
            self.securityMode = dict["SecurityMode"] as! String
        }
        if dict.keys.contains("SubscriptionConfig") {
            var model = SubscriptionConfig()
            model.fromMap(dict["SubscriptionConfig"] as! [String: Any])
            self.subscriptionConfig = model
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [Tag]
        }
    }
}

public class CreateClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var operationId: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
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
        if dict.keys.contains("OperationId") {
            self.operationId = dict["OperationId"] as! String
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

public class DecreaseNodesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var decreaseNodeCount: Int32?

    public var nodeGroupId: String?

    public var nodeIds: [String]?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.decreaseNodeCount != nil {
            map["DecreaseNodeCount"] = self.decreaseNodeCount!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.nodeIds != nil {
            map["NodeIds"] = self.nodeIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DecreaseNodeCount") {
            self.decreaseNodeCount = dict["DecreaseNodeCount"] as! Int32
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("NodeIds") {
            self.nodeIds = dict["NodeIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DecreaseNodesResponseBody : Tea.TeaModel {
    public var operationId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperationId") {
            self.operationId = dict["OperationId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DecreaseNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DecreaseNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DecreaseNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteClusterRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteClusterResponseBody : Tea.TeaModel {
    public var operationId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperationId") {
            self.operationId = dict["OperationId"] as! String
        }
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

public class GetClusterRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetClusterResponseBody : Tea.TeaModel {
    public var cluster: Cluster?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cluster?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cluster != nil {
            map["Cluster"] = self.cluster?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cluster") {
            var model = Cluster()
            model.fromMap(dict["Cluster"] as! [String: Any])
            self.cluster = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNodeGroupRequest : Tea.TeaModel {
    public var clusterId: String?

    public var nodeGroupId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetNodeGroupResponseBody : Tea.TeaModel {
    public var nodeGroup: NodeGroup?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nodeGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeGroup != nil {
            map["NodeGroup"] = self.nodeGroup?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeGroup") {
            var model = NodeGroup()
            model.fromMap(dict["NodeGroup"] as! [String: Any])
            self.nodeGroup = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetNodeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetNodeGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOperationRequest : Tea.TeaModel {
    public var clusterId: String?

    public var operationId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OperationId") {
            self.operationId = dict["OperationId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetOperationResponseBody : Tea.TeaModel {
    public var operation: Operation?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operation != nil {
            map["Operation"] = self.operation?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Operation") {
            var model = Operation()
            model.fromMap(dict["Operation"] as! [String: Any])
            self.operation = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOperationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOperationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IncreaseNodesRequest : Tea.TeaModel {
    public var applicationConfigs: [ApplicationConfig]?

    public var autoPayOrder: Bool?

    public var clusterId: String?

    public var increaseNodeCount: Int32?

    public var nodeGroupId: String?

    public var paymentDuration: Int32?

    public var paymentDurationUnit: String?

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
        if self.applicationConfigs != nil {
            var tmp : [Any] = []
            for k in self.applicationConfigs! {
                tmp.append(k.toMap())
            }
            map["ApplicationConfigs"] = tmp
        }
        if self.autoPayOrder != nil {
            map["AutoPayOrder"] = self.autoPayOrder!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.increaseNodeCount != nil {
            map["IncreaseNodeCount"] = self.increaseNodeCount!
        }
        if self.nodeGroupId != nil {
            map["NodeGroupId"] = self.nodeGroupId!
        }
        if self.paymentDuration != nil {
            map["PaymentDuration"] = self.paymentDuration!
        }
        if self.paymentDurationUnit != nil {
            map["PaymentDurationUnit"] = self.paymentDurationUnit!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationConfigs") {
            self.applicationConfigs = dict["ApplicationConfigs"] as! [ApplicationConfig]
        }
        if dict.keys.contains("AutoPayOrder") {
            self.autoPayOrder = dict["AutoPayOrder"] as! Bool
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("IncreaseNodeCount") {
            self.increaseNodeCount = dict["IncreaseNodeCount"] as! Int32
        }
        if dict.keys.contains("NodeGroupId") {
            self.nodeGroupId = dict["NodeGroupId"] as! String
        }
        if dict.keys.contains("PaymentDuration") {
            self.paymentDuration = dict["PaymentDuration"] as! Int32
        }
        if dict.keys.contains("PaymentDurationUnit") {
            self.paymentDurationUnit = dict["PaymentDurationUnit"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class IncreaseNodesResponseBody : Tea.TeaModel {
    public var operationId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperationId") {
            self.operationId = dict["OperationId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class IncreaseNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IncreaseNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = IncreaseNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class JoinResourceGroupRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceType: String?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class JoinResourceGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class JoinResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: JoinResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = JoinResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClustersRequest : Tea.TeaModel {
    public var clusterIds: [String]?

    public var clusterName: String?

    public var clusterStates: [String]?

    public var clusterTypes: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var paymentTypes: [String]?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: [Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterIds != nil {
            map["ClusterIds"] = self.clusterIds!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.clusterStates != nil {
            map["ClusterStates"] = self.clusterStates!
        }
        if self.clusterTypes != nil {
            map["ClusterTypes"] = self.clusterTypes!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.paymentTypes != nil {
            map["PaymentTypes"] = self.paymentTypes!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterIds") {
            self.clusterIds = dict["ClusterIds"] as! [String]
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ClusterStates") {
            self.clusterStates = dict["ClusterStates"] as! [String]
        }
        if dict.keys.contains("ClusterTypes") {
            self.clusterTypes = dict["ClusterTypes"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PaymentTypes") {
            self.paymentTypes = dict["PaymentTypes"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [Tag]
        }
    }
}

public class ListClustersResponseBody : Tea.TeaModel {
    public var clusters: [ClusterSummary]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.clusters != nil {
            var tmp : [Any] = []
            for k in self.clusters! {
                tmp.append(k.toMap())
            }
            map["Clusters"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if dict.keys.contains("Clusters") {
            self.clusters = dict["Clusters"] as! [ClusterSummary]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClustersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodeGroupsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var nodeGroupIds: [String]?

    public var nodeGroupNames: [String]?

    public var nodeGroupStates: [String]?

    public var nodeGroupTypes: [String]?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.nodeGroupIds != nil {
            map["NodeGroupIds"] = self.nodeGroupIds!
        }
        if self.nodeGroupNames != nil {
            map["NodeGroupNames"] = self.nodeGroupNames!
        }
        if self.nodeGroupStates != nil {
            map["NodeGroupStates"] = self.nodeGroupStates!
        }
        if self.nodeGroupTypes != nil {
            map["NodeGroupTypes"] = self.nodeGroupTypes!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("NodeGroupIds") {
            self.nodeGroupIds = dict["NodeGroupIds"] as! [String]
        }
        if dict.keys.contains("NodeGroupNames") {
            self.nodeGroupNames = dict["NodeGroupNames"] as! [String]
        }
        if dict.keys.contains("NodeGroupStates") {
            self.nodeGroupStates = dict["NodeGroupStates"] as! [String]
        }
        if dict.keys.contains("NodeGroupTypes") {
            self.nodeGroupTypes = dict["NodeGroupTypes"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListNodeGroupsResponseBody : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var nodeGroups: [NodeGroup]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.nodeGroups != nil {
            var tmp : [Any] = []
            for k in self.nodeGroups! {
                tmp.append(k.toMap())
            }
            map["NodeGroups"] = tmp
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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("NodeGroups") {
            self.nodeGroups = dict["NodeGroups"] as! [NodeGroup]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListNodeGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodeGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListNodeGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var nodeGroupIds: [String]?

    public var nodeIds: [String]?

    public var nodeNames: [String]?

    public var nodeStates: [String]?

    public var privateIps: [String]?

    public var publicIps: [String]?

    public var regionId: String?

    public var tags: [Tag]?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.nodeGroupIds != nil {
            map["NodeGroupIds"] = self.nodeGroupIds!
        }
        if self.nodeIds != nil {
            map["NodeIds"] = self.nodeIds!
        }
        if self.nodeNames != nil {
            map["NodeNames"] = self.nodeNames!
        }
        if self.nodeStates != nil {
            map["NodeStates"] = self.nodeStates!
        }
        if self.privateIps != nil {
            map["PrivateIps"] = self.privateIps!
        }
        if self.publicIps != nil {
            map["PublicIps"] = self.publicIps!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("NodeGroupIds") {
            self.nodeGroupIds = dict["NodeGroupIds"] as! [String]
        }
        if dict.keys.contains("NodeIds") {
            self.nodeIds = dict["NodeIds"] as! [String]
        }
        if dict.keys.contains("NodeNames") {
            self.nodeNames = dict["NodeNames"] as! [String]
        }
        if dict.keys.contains("NodeStates") {
            self.nodeStates = dict["NodeStates"] as! [String]
        }
        if dict.keys.contains("PrivateIps") {
            self.privateIps = dict["PrivateIps"] as! [String]
        }
        if dict.keys.contains("PublicIps") {
            self.publicIps = dict["PublicIps"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [Tag]
        }
    }
}

public class ListNodesResponseBody : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var nodes: [Node]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.nodes != nil {
            var tmp : [Any] = []
            for k in self.nodes! {
                tmp.append(k.toMap())
            }
            map["Nodes"] = tmp
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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Nodes") {
            self.nodes = dict["Nodes"] as! [Node]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceIds: [String]?

    public var resourceType: String?

    public var tags: [Tag]?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIds = dict["ResourceIds"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [Tag]
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public var resourceId: String?

        public var resourceType: String?

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
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
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
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("TagKey") {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") {
                self.tagValue = dict["TagValue"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["TagResources"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") {
            self.tagResources = dict["TagResources"] as! [ListTagResourcesResponseBody.TagResources]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceIds: [String]?

    public var resourceType: String?

    public var tags: [Tag]?

    public override init() {
        super.init()
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
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIds = dict["ResourceIds"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [Tag]
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceIds: [String]?

    public var resourceType: String?

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
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKeys != nil {
            map["TagKeys"] = self.tagKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIds = dict["ResourceIds"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKeys") {
            self.tagKeys = dict["TagKeys"] as! [String]
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
