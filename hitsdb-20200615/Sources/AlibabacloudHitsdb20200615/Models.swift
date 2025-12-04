import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ChangeResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResourceGroupResponseBody?

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
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckLdpsColumnarIndexStatusRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class CheckLdpsColumnarIndexStatusResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var opened: Bool?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.opened != nil {
            map["Opened"] = self.opened!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Opened"] as? Bool {
            self.opened = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckLdpsColumnarIndexStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckLdpsColumnarIndexStatusResponseBody?

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
            var model = CheckLdpsColumnarIndexStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAutoScalingConfigRequest : Tea.TeaModel {
    public class ScaleRuleList : Tea.TeaModel {
        public var configId: String?

        public var enabled: Bool?

        public var endTime: String?

        public var instanceId: String?

        public var observationWindow: Int32?

        public var operationType: String?

        public var ruleId: String?

        public var ruleName: String?

        public var ruleType: String?

        public var scaleInStep: Int32?

        public var scaleOutStep: Int32?

        public var silenceTime: Int32?

        public var startTime: String?

        public var targetMetric: String?

        public var targetNodes: Int32?

        public var thresholdLower: Int32?

        public var thresholdUpper: Int32?

        public var triggerCronExpr: String?

        public override init() {
            super.init()
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
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.observationWindow != nil {
                map["ObservationWindow"] = self.observationWindow!
            }
            if self.operationType != nil {
                map["OperationType"] = self.operationType!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
            }
            if self.scaleInStep != nil {
                map["ScaleInStep"] = self.scaleInStep!
            }
            if self.scaleOutStep != nil {
                map["ScaleOutStep"] = self.scaleOutStep!
            }
            if self.silenceTime != nil {
                map["SilenceTime"] = self.silenceTime!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.targetMetric != nil {
                map["TargetMetric"] = self.targetMetric!
            }
            if self.targetNodes != nil {
                map["TargetNodes"] = self.targetNodes!
            }
            if self.thresholdLower != nil {
                map["ThresholdLower"] = self.thresholdLower!
            }
            if self.thresholdUpper != nil {
                map["ThresholdUpper"] = self.thresholdUpper!
            }
            if self.triggerCronExpr != nil {
                map["TriggerCronExpr"] = self.triggerCronExpr!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigId"] as? String {
                self.configId = value
            }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ObservationWindow"] as? Int32 {
                self.observationWindow = value
            }
            if let value = dict["OperationType"] as? String {
                self.operationType = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["RuleType"] as? String {
                self.ruleType = value
            }
            if let value = dict["ScaleInStep"] as? Int32 {
                self.scaleInStep = value
            }
            if let value = dict["ScaleOutStep"] as? Int32 {
                self.scaleOutStep = value
            }
            if let value = dict["SilenceTime"] as? Int32 {
                self.silenceTime = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["TargetMetric"] as? String {
                self.targetMetric = value
            }
            if let value = dict["TargetNodes"] as? Int32 {
                self.targetNodes = value
            }
            if let value = dict["ThresholdLower"] as? Int32 {
                self.thresholdLower = value
            }
            if let value = dict["ThresholdUpper"] as? Int32 {
                self.thresholdUpper = value
            }
            if let value = dict["TriggerCronExpr"] as? String {
                self.triggerCronExpr = value
            }
        }
    }
    public var configName: String?

    public var effectiveTimeEnd: String?

    public var effectiveTimeStart: String?

    public var enabled: Bool?

    public var engine: String?

    public var instanceId: String?

    public var nodesMax: Int32?

    public var nodesMin: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scaleRuleList: [CreateAutoScalingConfigRequest.ScaleRuleList]?

    public var scaleType: String?

    public var securityToken: String?

    public var specId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configName != nil {
            map["ConfigName"] = self.configName!
        }
        if self.effectiveTimeEnd != nil {
            map["EffectiveTimeEnd"] = self.effectiveTimeEnd!
        }
        if self.effectiveTimeStart != nil {
            map["EffectiveTimeStart"] = self.effectiveTimeStart!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodesMax != nil {
            map["NodesMax"] = self.nodesMax!
        }
        if self.nodesMin != nil {
            map["NodesMin"] = self.nodesMin!
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
        if self.scaleRuleList != nil {
            var tmp : [Any] = []
            for k in self.scaleRuleList! {
                tmp.append(k.toMap())
            }
            map["ScaleRuleList"] = tmp
        }
        if self.scaleType != nil {
            map["ScaleType"] = self.scaleType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.specId != nil {
            map["SpecId"] = self.specId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigName"] as? String {
            self.configName = value
        }
        if let value = dict["EffectiveTimeEnd"] as? String {
            self.effectiveTimeEnd = value
        }
        if let value = dict["EffectiveTimeStart"] as? String {
            self.effectiveTimeStart = value
        }
        if let value = dict["Enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodesMax"] as? Int32 {
            self.nodesMax = value
        }
        if let value = dict["NodesMin"] as? Int32 {
            self.nodesMin = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ScaleRuleList"] as? [Any?] {
            var tmp : [CreateAutoScalingConfigRequest.ScaleRuleList] = []
            for v in value {
                if v != nil {
                    var model = CreateAutoScalingConfigRequest.ScaleRuleList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scaleRuleList = tmp
        }
        if let value = dict["ScaleType"] as? String {
            self.scaleType = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["SpecId"] as? String {
            self.specId = value
        }
    }
}

public class CreateAutoScalingConfigShrinkRequest : Tea.TeaModel {
    public var configName: String?

    public var effectiveTimeEnd: String?

    public var effectiveTimeStart: String?

    public var enabled: Bool?

    public var engine: String?

    public var instanceId: String?

    public var nodesMax: Int32?

    public var nodesMin: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scaleRuleListShrink: String?

    public var scaleType: String?

    public var securityToken: String?

    public var specId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configName != nil {
            map["ConfigName"] = self.configName!
        }
        if self.effectiveTimeEnd != nil {
            map["EffectiveTimeEnd"] = self.effectiveTimeEnd!
        }
        if self.effectiveTimeStart != nil {
            map["EffectiveTimeStart"] = self.effectiveTimeStart!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodesMax != nil {
            map["NodesMax"] = self.nodesMax!
        }
        if self.nodesMin != nil {
            map["NodesMin"] = self.nodesMin!
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
        if self.scaleRuleListShrink != nil {
            map["ScaleRuleList"] = self.scaleRuleListShrink!
        }
        if self.scaleType != nil {
            map["ScaleType"] = self.scaleType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.specId != nil {
            map["SpecId"] = self.specId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigName"] as? String {
            self.configName = value
        }
        if let value = dict["EffectiveTimeEnd"] as? String {
            self.effectiveTimeEnd = value
        }
        if let value = dict["EffectiveTimeStart"] as? String {
            self.effectiveTimeStart = value
        }
        if let value = dict["Enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodesMax"] as? Int32 {
            self.nodesMax = value
        }
        if let value = dict["NodesMin"] as? Int32 {
            self.nodesMin = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ScaleRuleList"] as? String {
            self.scaleRuleListShrink = value
        }
        if let value = dict["ScaleType"] as? String {
            self.scaleType = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["SpecId"] as? String {
            self.specId = value
        }
    }
}

public class CreateAutoScalingConfigResponseBody : Tea.TeaModel {
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

public class CreateAutoScalingConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAutoScalingConfigResponseBody?

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
            var model = CreateAutoScalingConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAutoScalingRuleRequest : Tea.TeaModel {
    public var configId: String?

    public var enabled: Bool?

    public var endTime: String?

    public var instanceId: String?

    public var observationWindow: Int32?

    public var operationType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var ruleName: String?

    public var ruleType: String?

    public var scaleInStep: Int32?

    public var scaleOutStep: Int32?

    public var securityToken: String?

    public var silenceTime: Int32?

    public var startTime: String?

    public var targetMetric: String?

    public var targetNodes: Int32?

    public var thresholdLower: Int32?

    public var thresholdUpper: Int32?

    public var triggerCronExpr: String?

    public override init() {
        super.init()
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
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.observationWindow != nil {
            map["ObservationWindow"] = self.observationWindow!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
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
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.scaleInStep != nil {
            map["ScaleInStep"] = self.scaleInStep!
        }
        if self.scaleOutStep != nil {
            map["ScaleOutStep"] = self.scaleOutStep!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.silenceTime != nil {
            map["SilenceTime"] = self.silenceTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.targetMetric != nil {
            map["TargetMetric"] = self.targetMetric!
        }
        if self.targetNodes != nil {
            map["TargetNodes"] = self.targetNodes!
        }
        if self.thresholdLower != nil {
            map["ThresholdLower"] = self.thresholdLower!
        }
        if self.thresholdUpper != nil {
            map["ThresholdUpper"] = self.thresholdUpper!
        }
        if self.triggerCronExpr != nil {
            map["TriggerCronExpr"] = self.triggerCronExpr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigId"] as? String {
            self.configId = value
        }
        if let value = dict["Enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ObservationWindow"] as? Int32 {
            self.observationWindow = value
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["RuleType"] as? String {
            self.ruleType = value
        }
        if let value = dict["ScaleInStep"] as? Int32 {
            self.scaleInStep = value
        }
        if let value = dict["ScaleOutStep"] as? Int32 {
            self.scaleOutStep = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["SilenceTime"] as? Int32 {
            self.silenceTime = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TargetMetric"] as? String {
            self.targetMetric = value
        }
        if let value = dict["TargetNodes"] as? Int32 {
            self.targetNodes = value
        }
        if let value = dict["ThresholdLower"] as? Int32 {
            self.thresholdLower = value
        }
        if let value = dict["ThresholdUpper"] as? Int32 {
            self.thresholdUpper = value
        }
        if let value = dict["TriggerCronExpr"] as? String {
            self.triggerCronExpr = value
        }
    }
}

public class CreateAutoScalingRuleResponseBody : Tea.TeaModel {
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

public class CreateAutoScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAutoScalingRuleResponseBody?

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
            var model = CreateAutoScalingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLdpsComputeGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var properties: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.properties != nil {
            map["Properties"] = self.properties!
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Properties"] as? String {
            self.properties = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class CreateLdpsComputeGroupResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateLdpsComputeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLdpsComputeGroupResponseBody?

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
            var model = CreateLdpsComputeGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLindormInstanceRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var arbiterVSwitchId: String?

    public var arbiterZoneId: String?

    public var archVersion: String?

    public var autoRenewDuration: String?

    public var autoRenewal: Bool?

    public var coldStorage: Int32?

    public var coreSingleStorage: Int32?

    public var coreSpec: String?

    public var diskCategory: String?

    public var duration: String?

    public var filestoreNum: Int32?

    public var filestoreSpec: String?

    public var instanceAlias: String?

    public var instanceStorage: String?

    public var lindormNum: Int32?

    public var lindormSpec: String?

    public var logDiskCategory: String?

    public var logNum: Int32?

    public var logSingleStorage: Int32?

    public var logSpec: String?

    public var ltsNum: String?

    public var ltsSpec: String?

    public var multiZoneCombination: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var payType: String?

    public var pricingCycle: String?

    public var primaryVSwitchId: String?

    public var primaryZoneId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

    public var solrNum: Int32?

    public var solrSpec: String?

    public var standbyVSwitchId: String?

    public var standbyZoneId: String?

    public var streamNum: Int32?

    public var streamSpec: String?

    public var tag: [CreateLindormInstanceRequest.Tag]?

    public var tsdbNum: Int32?

    public var tsdbSpec: String?

    public var VPCId: String?

    public var vSwitchId: String?

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
        if self.arbiterVSwitchId != nil {
            map["ArbiterVSwitchId"] = self.arbiterVSwitchId!
        }
        if self.arbiterZoneId != nil {
            map["ArbiterZoneId"] = self.arbiterZoneId!
        }
        if self.archVersion != nil {
            map["ArchVersion"] = self.archVersion!
        }
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.autoRenewal != nil {
            map["AutoRenewal"] = self.autoRenewal!
        }
        if self.coldStorage != nil {
            map["ColdStorage"] = self.coldStorage!
        }
        if self.coreSingleStorage != nil {
            map["CoreSingleStorage"] = self.coreSingleStorage!
        }
        if self.coreSpec != nil {
            map["CoreSpec"] = self.coreSpec!
        }
        if self.diskCategory != nil {
            map["DiskCategory"] = self.diskCategory!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.filestoreNum != nil {
            map["FilestoreNum"] = self.filestoreNum!
        }
        if self.filestoreSpec != nil {
            map["FilestoreSpec"] = self.filestoreSpec!
        }
        if self.instanceAlias != nil {
            map["InstanceAlias"] = self.instanceAlias!
        }
        if self.instanceStorage != nil {
            map["InstanceStorage"] = self.instanceStorage!
        }
        if self.lindormNum != nil {
            map["LindormNum"] = self.lindormNum!
        }
        if self.lindormSpec != nil {
            map["LindormSpec"] = self.lindormSpec!
        }
        if self.logDiskCategory != nil {
            map["LogDiskCategory"] = self.logDiskCategory!
        }
        if self.logNum != nil {
            map["LogNum"] = self.logNum!
        }
        if self.logSingleStorage != nil {
            map["LogSingleStorage"] = self.logSingleStorage!
        }
        if self.logSpec != nil {
            map["LogSpec"] = self.logSpec!
        }
        if self.ltsNum != nil {
            map["LtsNum"] = self.ltsNum!
        }
        if self.ltsSpec != nil {
            map["LtsSpec"] = self.ltsSpec!
        }
        if self.multiZoneCombination != nil {
            map["MultiZoneCombination"] = self.multiZoneCombination!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.primaryVSwitchId != nil {
            map["PrimaryVSwitchId"] = self.primaryVSwitchId!
        }
        if self.primaryZoneId != nil {
            map["PrimaryZoneId"] = self.primaryZoneId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.solrNum != nil {
            map["SolrNum"] = self.solrNum!
        }
        if self.solrSpec != nil {
            map["SolrSpec"] = self.solrSpec!
        }
        if self.standbyVSwitchId != nil {
            map["StandbyVSwitchId"] = self.standbyVSwitchId!
        }
        if self.standbyZoneId != nil {
            map["StandbyZoneId"] = self.standbyZoneId!
        }
        if self.streamNum != nil {
            map["StreamNum"] = self.streamNum!
        }
        if self.streamSpec != nil {
            map["StreamSpec"] = self.streamSpec!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.tsdbNum != nil {
            map["TsdbNum"] = self.tsdbNum!
        }
        if self.tsdbSpec != nil {
            map["TsdbSpec"] = self.tsdbSpec!
        }
        if self.VPCId != nil {
            map["VPCId"] = self.VPCId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArbiterVSwitchId"] as? String {
            self.arbiterVSwitchId = value
        }
        if let value = dict["ArbiterZoneId"] as? String {
            self.arbiterZoneId = value
        }
        if let value = dict["ArchVersion"] as? String {
            self.archVersion = value
        }
        if let value = dict["AutoRenewDuration"] as? String {
            self.autoRenewDuration = value
        }
        if let value = dict["AutoRenewal"] as? Bool {
            self.autoRenewal = value
        }
        if let value = dict["ColdStorage"] as? Int32 {
            self.coldStorage = value
        }
        if let value = dict["CoreSingleStorage"] as? Int32 {
            self.coreSingleStorage = value
        }
        if let value = dict["CoreSpec"] as? String {
            self.coreSpec = value
        }
        if let value = dict["DiskCategory"] as? String {
            self.diskCategory = value
        }
        if let value = dict["Duration"] as? String {
            self.duration = value
        }
        if let value = dict["FilestoreNum"] as? Int32 {
            self.filestoreNum = value
        }
        if let value = dict["FilestoreSpec"] as? String {
            self.filestoreSpec = value
        }
        if let value = dict["InstanceAlias"] as? String {
            self.instanceAlias = value
        }
        if let value = dict["InstanceStorage"] as? String {
            self.instanceStorage = value
        }
        if let value = dict["LindormNum"] as? Int32 {
            self.lindormNum = value
        }
        if let value = dict["LindormSpec"] as? String {
            self.lindormSpec = value
        }
        if let value = dict["LogDiskCategory"] as? String {
            self.logDiskCategory = value
        }
        if let value = dict["LogNum"] as? Int32 {
            self.logNum = value
        }
        if let value = dict["LogSingleStorage"] as? Int32 {
            self.logSingleStorage = value
        }
        if let value = dict["LogSpec"] as? String {
            self.logSpec = value
        }
        if let value = dict["LtsNum"] as? String {
            self.ltsNum = value
        }
        if let value = dict["LtsSpec"] as? String {
            self.ltsSpec = value
        }
        if let value = dict["MultiZoneCombination"] as? String {
            self.multiZoneCombination = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["PrimaryVSwitchId"] as? String {
            self.primaryVSwitchId = value
        }
        if let value = dict["PrimaryZoneId"] as? String {
            self.primaryZoneId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["SolrNum"] as? Int32 {
            self.solrNum = value
        }
        if let value = dict["SolrSpec"] as? String {
            self.solrSpec = value
        }
        if let value = dict["StandbyVSwitchId"] as? String {
            self.standbyVSwitchId = value
        }
        if let value = dict["StandbyZoneId"] as? String {
            self.standbyZoneId = value
        }
        if let value = dict["StreamNum"] as? Int32 {
            self.streamNum = value
        }
        if let value = dict["StreamSpec"] as? String {
            self.streamSpec = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateLindormInstanceRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateLindormInstanceRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TsdbNum"] as? Int32 {
            self.tsdbNum = value
        }
        if let value = dict["TsdbSpec"] as? String {
            self.tsdbSpec = value
        }
        if let value = dict["VPCId"] as? String {
            self.VPCId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateLindormInstanceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var instanceId: String?

    public var orderId: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateLindormInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLindormInstanceResponseBody?

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
            var model = CreateLindormInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLindormV2InstanceRequest : Tea.TeaModel {
    public class EngineList : Tea.TeaModel {
        public class NodeGroupList : Tea.TeaModel {
            public var nodeCount: Int32?

            public var nodeDiskSize: Int32?

            public var nodeDiskType: String?

            public var nodeSpec: String?

            public var resourceGroupName: String?

            public override init() {
                super.init()
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
                if self.nodeDiskSize != nil {
                    map["NodeDiskSize"] = self.nodeDiskSize!
                }
                if self.nodeDiskType != nil {
                    map["NodeDiskType"] = self.nodeDiskType!
                }
                if self.nodeSpec != nil {
                    map["NodeSpec"] = self.nodeSpec!
                }
                if self.resourceGroupName != nil {
                    map["ResourceGroupName"] = self.resourceGroupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NodeCount"] as? Int32 {
                    self.nodeCount = value
                }
                if let value = dict["NodeDiskSize"] as? Int32 {
                    self.nodeDiskSize = value
                }
                if let value = dict["NodeDiskType"] as? String {
                    self.nodeDiskType = value
                }
                if let value = dict["NodeSpec"] as? String {
                    self.nodeSpec = value
                }
                if let value = dict["ResourceGroupName"] as? String {
                    self.resourceGroupName = value
                }
            }
        }
        public var engineType: String?

        public var nodeGroupList: [CreateLindormV2InstanceRequest.EngineList.NodeGroupList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.nodeGroupList != nil {
                var tmp : [Any] = []
                for k in self.nodeGroupList! {
                    tmp.append(k.toMap())
                }
                map["NodeGroupList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["NodeGroupList"] as? [Any?] {
                var tmp : [CreateLindormV2InstanceRequest.EngineList.NodeGroupList] = []
                for v in value {
                    if v != nil {
                        var model = CreateLindormV2InstanceRequest.EngineList.NodeGroupList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodeGroupList = tmp
            }
        }
    }
    public var arbiterVSwitchId: String?

    public var arbiterZoneId: String?

    public var archVersion: String?

    public var autoRenewDuration: String?

    public var autoRenewal: Bool?

    public var capacityStorageSize: Int32?

    public var cloudStorageSize: Int32?

    public var cloudStorageType: String?

    public var clusterMode: String?

    public var clusterPattern: String?

    public var duration: Int32?

    public var enableCapacityStorage: Bool?

    public var engineList: [CreateLindormV2InstanceRequest.EngineList]?

    public var instanceAlias: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var payType: String?

    public var pricingCycle: String?

    public var primaryVSwitchId: String?

    public var primaryZoneId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

    public var standbyVSwitchId: String?

    public var standbyZoneId: String?

    public var VPCId: String?

    public var vSwitchId: String?

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
        if self.arbiterVSwitchId != nil {
            map["ArbiterVSwitchId"] = self.arbiterVSwitchId!
        }
        if self.arbiterZoneId != nil {
            map["ArbiterZoneId"] = self.arbiterZoneId!
        }
        if self.archVersion != nil {
            map["ArchVersion"] = self.archVersion!
        }
        if self.autoRenewDuration != nil {
            map["AutoRenewDuration"] = self.autoRenewDuration!
        }
        if self.autoRenewal != nil {
            map["AutoRenewal"] = self.autoRenewal!
        }
        if self.capacityStorageSize != nil {
            map["CapacityStorageSize"] = self.capacityStorageSize!
        }
        if self.cloudStorageSize != nil {
            map["CloudStorageSize"] = self.cloudStorageSize!
        }
        if self.cloudStorageType != nil {
            map["CloudStorageType"] = self.cloudStorageType!
        }
        if self.clusterMode != nil {
            map["ClusterMode"] = self.clusterMode!
        }
        if self.clusterPattern != nil {
            map["ClusterPattern"] = self.clusterPattern!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.enableCapacityStorage != nil {
            map["EnableCapacityStorage"] = self.enableCapacityStorage!
        }
        if self.engineList != nil {
            var tmp : [Any] = []
            for k in self.engineList! {
                tmp.append(k.toMap())
            }
            map["EngineList"] = tmp
        }
        if self.instanceAlias != nil {
            map["InstanceAlias"] = self.instanceAlias!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.primaryVSwitchId != nil {
            map["PrimaryVSwitchId"] = self.primaryVSwitchId!
        }
        if self.primaryZoneId != nil {
            map["PrimaryZoneId"] = self.primaryZoneId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.standbyVSwitchId != nil {
            map["StandbyVSwitchId"] = self.standbyVSwitchId!
        }
        if self.standbyZoneId != nil {
            map["StandbyZoneId"] = self.standbyZoneId!
        }
        if self.VPCId != nil {
            map["VPCId"] = self.VPCId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArbiterVSwitchId"] as? String {
            self.arbiterVSwitchId = value
        }
        if let value = dict["ArbiterZoneId"] as? String {
            self.arbiterZoneId = value
        }
        if let value = dict["ArchVersion"] as? String {
            self.archVersion = value
        }
        if let value = dict["AutoRenewDuration"] as? String {
            self.autoRenewDuration = value
        }
        if let value = dict["AutoRenewal"] as? Bool {
            self.autoRenewal = value
        }
        if let value = dict["CapacityStorageSize"] as? Int32 {
            self.capacityStorageSize = value
        }
        if let value = dict["CloudStorageSize"] as? Int32 {
            self.cloudStorageSize = value
        }
        if let value = dict["CloudStorageType"] as? String {
            self.cloudStorageType = value
        }
        if let value = dict["ClusterMode"] as? String {
            self.clusterMode = value
        }
        if let value = dict["ClusterPattern"] as? String {
            self.clusterPattern = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["EnableCapacityStorage"] as? Bool {
            self.enableCapacityStorage = value
        }
        if let value = dict["EngineList"] as? [Any?] {
            var tmp : [CreateLindormV2InstanceRequest.EngineList] = []
            for v in value {
                if v != nil {
                    var model = CreateLindormV2InstanceRequest.EngineList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.engineList = tmp
        }
        if let value = dict["InstanceAlias"] as? String {
            self.instanceAlias = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["PrimaryVSwitchId"] as? String {
            self.primaryVSwitchId = value
        }
        if let value = dict["PrimaryZoneId"] as? String {
            self.primaryZoneId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["StandbyVSwitchId"] as? String {
            self.standbyVSwitchId = value
        }
        if let value = dict["StandbyZoneId"] as? String {
            self.standbyZoneId = value
        }
        if let value = dict["VPCId"] as? String {
            self.VPCId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateLindormV2InstanceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var instanceId: String?

    public var orderId: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateLindormV2InstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLindormV2InstanceResponseBody?

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
            var model = CreateLindormV2InstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAutoScalingConfigRequest : Tea.TeaModel {
    public var configId: String?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.configId != nil {
            map["ConfigId"] = self.configId!
        }
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigId"] as? String {
            self.configId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class DeleteAutoScalingConfigResponseBody : Tea.TeaModel {
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

public class DeleteAutoScalingConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAutoScalingConfigResponseBody?

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
            var model = DeleteAutoScalingConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAutoScalingRuleRequest : Tea.TeaModel {
    public var configId: String?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var ruleId: String?

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
        if self.configId != nil {
            map["ConfigId"] = self.configId!
        }
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigId"] as? String {
            self.configId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class DeleteAutoScalingRuleResponseBody : Tea.TeaModel {
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

public class DeleteAutoScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAutoScalingRuleResponseBody?

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
            var model = DeleteAutoScalingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCustomResourceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var name: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class DeleteCustomResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteCustomResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomResourceResponseBody?

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
            var model = DeleteCustomResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteLdpsComputeGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class DeleteLdpsComputeGroupResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteLdpsComputeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLdpsComputeGroupResponseBody?

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
            var model = DeleteLdpsComputeGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeployLdpsSemiManagedComponentRequest : Tea.TeaModel {
    public var componentName: String?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.componentName != nil {
            map["ComponentName"] = self.componentName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComponentName"] as? String {
            self.componentName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class DeployLdpsSemiManagedComponentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeployLdpsSemiManagedComponentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployLdpsSemiManagedComponentResponseBody?

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
            var model = DeployLdpsSemiManagedComponentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

        public var regionEndpoint: String?

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
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.regionEndpoint != nil {
                map["RegionEndpoint"] = self.regionEndpoint!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["RegionEndpoint"] as? String {
                self.regionEndpoint = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var regions: [DescribeRegionsResponseBody.Regions]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.Regions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAutoScalingConfigRequest : Tea.TeaModel {
    public var configId: String?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.configId != nil {
            map["ConfigId"] = self.configId!
        }
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigId"] as? String {
            self.configId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetAutoScalingConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ScaleRuleList : Tea.TeaModel {
            public var configId: String?

            public var enabled: Bool?

            public var endTime: String?

            public var instanceId: String?

            public var observationWindow: Int32?

            public var operationType: String?

            public var ruleId: String?

            public var ruleName: String?

            public var ruleType: String?

            public var scaleInStep: Int32?

            public var scaleOutStep: Int32?

            public var silenceTime: Int32?

            public var startTime: String?

            public var targetMetric: String?

            public var targetNodes: Int32?

            public var thresholdLower: Int32?

            public var thresholdUpper: Int32?

            public var triggerCronExpr: String?

            public override init() {
                super.init()
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
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.observationWindow != nil {
                    map["ObservationWindow"] = self.observationWindow!
                }
                if self.operationType != nil {
                    map["OperationType"] = self.operationType!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.ruleType != nil {
                    map["RuleType"] = self.ruleType!
                }
                if self.scaleInStep != nil {
                    map["ScaleInStep"] = self.scaleInStep!
                }
                if self.scaleOutStep != nil {
                    map["ScaleOutStep"] = self.scaleOutStep!
                }
                if self.silenceTime != nil {
                    map["SilenceTime"] = self.silenceTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.targetMetric != nil {
                    map["TargetMetric"] = self.targetMetric!
                }
                if self.targetNodes != nil {
                    map["TargetNodes"] = self.targetNodes!
                }
                if self.thresholdLower != nil {
                    map["ThresholdLower"] = self.thresholdLower!
                }
                if self.thresholdUpper != nil {
                    map["ThresholdUpper"] = self.thresholdUpper!
                }
                if self.triggerCronExpr != nil {
                    map["TriggerCronExpr"] = self.triggerCronExpr!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfigId"] as? String {
                    self.configId = value
                }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["ObservationWindow"] as? Int32 {
                    self.observationWindow = value
                }
                if let value = dict["OperationType"] as? String {
                    self.operationType = value
                }
                if let value = dict["RuleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
                }
                if let value = dict["RuleType"] as? String {
                    self.ruleType = value
                }
                if let value = dict["ScaleInStep"] as? Int32 {
                    self.scaleInStep = value
                }
                if let value = dict["ScaleOutStep"] as? Int32 {
                    self.scaleOutStep = value
                }
                if let value = dict["SilenceTime"] as? Int32 {
                    self.silenceTime = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["TargetMetric"] as? String {
                    self.targetMetric = value
                }
                if let value = dict["TargetNodes"] as? Int32 {
                    self.targetNodes = value
                }
                if let value = dict["ThresholdLower"] as? Int32 {
                    self.thresholdLower = value
                }
                if let value = dict["ThresholdUpper"] as? Int32 {
                    self.thresholdUpper = value
                }
                if let value = dict["TriggerCronExpr"] as? String {
                    self.triggerCronExpr = value
                }
            }
        }
        public var configId: String?

        public var configName: String?

        public var effectiveTimeEnd: String?

        public var effectiveTimeStart: String?

        public var enabled: Bool?

        public var engine: String?

        public var instanceId: String?

        public var nodesMax: Int32?

        public var nodesMin: Int32?

        public var scaleRuleList: [GetAutoScalingConfigResponseBody.Data.ScaleRuleList]?

        public var scaleType: String?

        public var specId: String?

        public override init() {
            super.init()
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
            if self.configName != nil {
                map["ConfigName"] = self.configName!
            }
            if self.effectiveTimeEnd != nil {
                map["EffectiveTimeEnd"] = self.effectiveTimeEnd!
            }
            if self.effectiveTimeStart != nil {
                map["EffectiveTimeStart"] = self.effectiveTimeStart!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.nodesMax != nil {
                map["NodesMax"] = self.nodesMax!
            }
            if self.nodesMin != nil {
                map["NodesMin"] = self.nodesMin!
            }
            if self.scaleRuleList != nil {
                var tmp : [Any] = []
                for k in self.scaleRuleList! {
                    tmp.append(k.toMap())
                }
                map["ScaleRuleList"] = tmp
            }
            if self.scaleType != nil {
                map["ScaleType"] = self.scaleType!
            }
            if self.specId != nil {
                map["SpecId"] = self.specId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigId"] as? String {
                self.configId = value
            }
            if let value = dict["ConfigName"] as? String {
                self.configName = value
            }
            if let value = dict["EffectiveTimeEnd"] as? String {
                self.effectiveTimeEnd = value
            }
            if let value = dict["EffectiveTimeStart"] as? String {
                self.effectiveTimeStart = value
            }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["NodesMax"] as? Int32 {
                self.nodesMax = value
            }
            if let value = dict["NodesMin"] as? Int32 {
                self.nodesMin = value
            }
            if let value = dict["ScaleRuleList"] as? [Any?] {
                var tmp : [GetAutoScalingConfigResponseBody.Data.ScaleRuleList] = []
                for v in value {
                    if v != nil {
                        var model = GetAutoScalingConfigResponseBody.Data.ScaleRuleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.scaleRuleList = tmp
            }
            if let value = dict["ScaleType"] as? String {
                self.scaleType = value
            }
            if let value = dict["SpecId"] as? String {
                self.specId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetAutoScalingConfigResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetAutoScalingConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
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

public class GetAutoScalingConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAutoScalingConfigResponseBody?

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
            var model = GetAutoScalingConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAutoScalingRuleRequest : Tea.TeaModel {
    public var configId: String?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var ruleId: String?

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
        if self.configId != nil {
            map["ConfigId"] = self.configId!
        }
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigId"] as? String {
            self.configId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetAutoScalingRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var configId: String?

        public var enabled: Bool?

        public var endTime: String?

        public var instanceId: String?

        public var observationWindow: Int32?

        public var operationType: String?

        public var ruleId: String?

        public var ruleName: String?

        public var ruleType: String?

        public var scaleInStep: Int32?

        public var scaleOutStep: Int32?

        public var silenceTime: Int32?

        public var startTime: String?

        public var targetMetric: String?

        public var targetNodes: Int32?

        public var thresholdLower: Int32?

        public var thresholdUpper: Int32?

        public var triggerCronExpr: String?

        public override init() {
            super.init()
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
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.observationWindow != nil {
                map["ObservationWindow"] = self.observationWindow!
            }
            if self.operationType != nil {
                map["OperationType"] = self.operationType!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
            }
            if self.scaleInStep != nil {
                map["ScaleInStep"] = self.scaleInStep!
            }
            if self.scaleOutStep != nil {
                map["ScaleOutStep"] = self.scaleOutStep!
            }
            if self.silenceTime != nil {
                map["SilenceTime"] = self.silenceTime!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.targetMetric != nil {
                map["TargetMetric"] = self.targetMetric!
            }
            if self.targetNodes != nil {
                map["TargetNodes"] = self.targetNodes!
            }
            if self.thresholdLower != nil {
                map["ThresholdLower"] = self.thresholdLower!
            }
            if self.thresholdUpper != nil {
                map["ThresholdUpper"] = self.thresholdUpper!
            }
            if self.triggerCronExpr != nil {
                map["TriggerCronExpr"] = self.triggerCronExpr!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigId"] as? String {
                self.configId = value
            }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ObservationWindow"] as? Int32 {
                self.observationWindow = value
            }
            if let value = dict["OperationType"] as? String {
                self.operationType = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["RuleType"] as? String {
                self.ruleType = value
            }
            if let value = dict["ScaleInStep"] as? Int32 {
                self.scaleInStep = value
            }
            if let value = dict["ScaleOutStep"] as? Int32 {
                self.scaleOutStep = value
            }
            if let value = dict["SilenceTime"] as? Int32 {
                self.silenceTime = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["TargetMetric"] as? String {
                self.targetMetric = value
            }
            if let value = dict["TargetNodes"] as? Int32 {
                self.targetNodes = value
            }
            if let value = dict["ThresholdLower"] as? Int32 {
                self.thresholdLower = value
            }
            if let value = dict["ThresholdUpper"] as? Int32 {
                self.thresholdUpper = value
            }
            if let value = dict["TriggerCronExpr"] as? String {
                self.triggerCronExpr = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetAutoScalingRuleResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetAutoScalingRuleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
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

public class GetAutoScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAutoScalingRuleResponseBody?

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
            var model = GetAutoScalingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetClientSourceIpRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetClientSourceIpResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var clientIp: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetClientSourceIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClientSourceIpResponseBody?

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
            var model = GetClientSourceIpResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEngineDefaultAuthRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetEngineDefaultAuthResponseBody : Tea.TeaModel {
    public class AuthInfos : Tea.TeaModel {
        public var engine: String?

        public var password: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["Username"] as? String {
                self.username = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var authInfos: [GetEngineDefaultAuthResponseBody.AuthInfos]?

    public var instanceId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.authInfos != nil {
            var tmp : [Any] = []
            for k in self.authInfos! {
                tmp.append(k.toMap())
            }
            map["AuthInfos"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AuthInfos"] as? [Any?] {
            var tmp : [GetEngineDefaultAuthResponseBody.AuthInfos] = []
            for v in value {
                if v != nil {
                    var model = GetEngineDefaultAuthResponseBody.AuthInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.authInfos = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetEngineDefaultAuthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEngineDefaultAuthResponseBody?

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
            var model = GetEngineDefaultAuthResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceIpWhiteListRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetInstanceIpWhiteListResponseBody : Tea.TeaModel {
    public class GroupList : Tea.TeaModel {
        public var groupName: String?

        public var securityIpList: String?

        public override init() {
            super.init()
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
            if self.securityIpList != nil {
                map["SecurityIpList"] = self.securityIpList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["SecurityIpList"] as? String {
                self.securityIpList = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var groupList: [GetInstanceIpWhiteListResponseBody.GroupList]?

    public var instanceId: String?

    public var ipList: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.groupList != nil {
            var tmp : [Any] = []
            for k in self.groupList! {
                tmp.append(k.toMap())
            }
            map["GroupList"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ipList != nil {
            map["IpList"] = self.ipList!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["GroupList"] as? [Any?] {
            var tmp : [GetInstanceIpWhiteListResponseBody.GroupList] = []
            for v in value {
                if v != nil {
                    var model = GetInstanceIpWhiteListResponseBody.GroupList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.groupList = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IpList"] as? [String] {
            self.ipList = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetInstanceIpWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceIpWhiteListResponseBody?

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
            var model = GetInstanceIpWhiteListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceSecurityGroupsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetInstanceSecurityGroupsResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var instanceId: String?

    public var requestId: String?

    public var securityGroups: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityGroups != nil {
            map["SecurityGroups"] = self.securityGroups!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityGroups"] as? [String] {
            self.securityGroups = value
        }
    }
}

public class GetInstanceSecurityGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceSecurityGroupsResponseBody?

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
            var model = GetInstanceSecurityGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLdpsComputeGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetLdpsComputeGroupResponseBody : Tea.TeaModel {
    public var groupName: String?

    public var properties: [String: Any]?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.properties != nil {
            map["Properties"] = self.properties!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["Properties"] as? [String: Any] {
            self.properties = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetLdpsComputeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLdpsComputeGroupResponseBody?

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
            var model = GetLdpsComputeGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLdpsNamespacedQuotaRequest : Tea.TeaModel {
    public var instanceId: String?

    public var namespace: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetLdpsNamespacedQuotaResponseBody : Tea.TeaModel {
    public class NamespacedQuotas : Tea.TeaModel {
        public var cpuAmount: String?

        public var memoryAmount: String?

        public var name: String?

        public var usedCpu: String?

        public var usedMemory: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpuAmount != nil {
                map["CpuAmount"] = self.cpuAmount!
            }
            if self.memoryAmount != nil {
                map["MemoryAmount"] = self.memoryAmount!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.usedCpu != nil {
                map["UsedCpu"] = self.usedCpu!
            }
            if self.usedMemory != nil {
                map["UsedMemory"] = self.usedMemory!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CpuAmount"] as? String {
                self.cpuAmount = value
            }
            if let value = dict["MemoryAmount"] as? String {
                self.memoryAmount = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["UsedCpu"] as? String {
                self.usedCpu = value
            }
            if let value = dict["UsedMemory"] as? String {
                self.usedMemory = value
            }
        }
    }
    public var namespacedQuotas: [GetLdpsNamespacedQuotaResponseBody.NamespacedQuotas]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespacedQuotas != nil {
            var tmp : [Any] = []
            for k in self.namespacedQuotas! {
                tmp.append(k.toMap())
            }
            map["NamespacedQuotas"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespacedQuotas"] as? [Any?] {
            var tmp : [GetLdpsNamespacedQuotaResponseBody.NamespacedQuotas] = []
            for v in value {
                if v != nil {
                    var model = GetLdpsNamespacedQuotaResponseBody.NamespacedQuotas()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.namespacedQuotas = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetLdpsNamespacedQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLdpsNamespacedQuotaResponseBody?

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
            var model = GetLdpsNamespacedQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLdpsResourceCostRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var instanceId: String?

    public var jobId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class GetLdpsResourceCostResponseBody : Tea.TeaModel {
    public var endTime: Int64?

    public var instanceId: String?

    public var jobId: String?

    public var requestId: String?

    public var startTime: Int64?

    public var totalResource: Int64?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.totalResource != nil {
            map["TotalResource"] = self.totalResource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["TotalResource"] as? Int64 {
            self.totalResource = value
        }
    }
}

public class GetLdpsResourceCostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLdpsResourceCostResponseBody?

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
            var model = GetLdpsResourceCostResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLindormEngineConfigRequest : Tea.TeaModel {
    public var engineType: String?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetLindormEngineConfigResponseBody : Tea.TeaModel {
    public class EngineConfigs : Tea.TeaModel {
        public class ConfigFiles : Tea.TeaModel {
            public class ConfigItems : Tea.TeaModel {
                public var configItemKey: String?

                public var configItemValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.configItemKey != nil {
                        map["ConfigItemKey"] = self.configItemKey!
                    }
                    if self.configItemValue != nil {
                        map["ConfigItemValue"] = self.configItemValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConfigItemKey"] as? String {
                        self.configItemKey = value
                    }
                    if let value = dict["ConfigItemValue"] as? String {
                        self.configItemValue = value
                    }
                }
            }
            public var configItems: [GetLindormEngineConfigResponseBody.EngineConfigs.ConfigFiles.ConfigItems]?

            public var fileName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configItems != nil {
                    var tmp : [Any] = []
                    for k in self.configItems! {
                        tmp.append(k.toMap())
                    }
                    map["ConfigItems"] = tmp
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfigItems"] as? [Any?] {
                    var tmp : [GetLindormEngineConfigResponseBody.EngineConfigs.ConfigFiles.ConfigItems] = []
                    for v in value {
                        if v != nil {
                            var model = GetLindormEngineConfigResponseBody.EngineConfigs.ConfigFiles.ConfigItems()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.configItems = tmp
                }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
            }
        }
        public var configFiles: [GetLindormEngineConfigResponseBody.EngineConfigs.ConfigFiles]?

        public var engine: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configFiles != nil {
                var tmp : [Any] = []
                for k in self.configFiles! {
                    tmp.append(k.toMap())
                }
                map["ConfigFiles"] = tmp
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigFiles"] as? [Any?] {
                var tmp : [GetLindormEngineConfigResponseBody.EngineConfigs.ConfigFiles] = []
                for v in value {
                    if v != nil {
                        var model = GetLindormEngineConfigResponseBody.EngineConfigs.ConfigFiles()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.configFiles = tmp
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var engineConfigs: [GetLindormEngineConfigResponseBody.EngineConfigs]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.engineConfigs != nil {
            var tmp : [Any] = []
            for k in self.engineConfigs! {
                tmp.append(k.toMap())
            }
            map["EngineConfigs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["EngineConfigs"] as? [Any?] {
            var tmp : [GetLindormEngineConfigResponseBody.EngineConfigs] = []
            for v in value {
                if v != nil {
                    var model = GetLindormEngineConfigResponseBody.EngineConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.engineConfigs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetLindormEngineConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLindormEngineConfigResponseBody?

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
            var model = GetLindormEngineConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLindormFsUsedDetailRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetLindormFsUsedDetailResponseBody : Tea.TeaModel {
    public class LStorageUsageList : Tea.TeaModel {
        public var capacity: String?

        public var diskType: String?

        public var used: String?

        public var usedLindormColumn3: String?

        public var usedLindormMessage3: String?

        public var usedLindormSearch: String?

        public var usedLindormSpark: String?

        public var usedLindormTable: String?

        public var usedLindormTsdb: String?

        public var usedLindormVector3: String?

        public var usedOther: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capacity != nil {
                map["Capacity"] = self.capacity!
            }
            if self.diskType != nil {
                map["DiskType"] = self.diskType!
            }
            if self.used != nil {
                map["Used"] = self.used!
            }
            if self.usedLindormColumn3 != nil {
                map["UsedLindormColumn3"] = self.usedLindormColumn3!
            }
            if self.usedLindormMessage3 != nil {
                map["UsedLindormMessage3"] = self.usedLindormMessage3!
            }
            if self.usedLindormSearch != nil {
                map["UsedLindormSearch"] = self.usedLindormSearch!
            }
            if self.usedLindormSpark != nil {
                map["UsedLindormSpark"] = self.usedLindormSpark!
            }
            if self.usedLindormTable != nil {
                map["UsedLindormTable"] = self.usedLindormTable!
            }
            if self.usedLindormTsdb != nil {
                map["UsedLindormTsdb"] = self.usedLindormTsdb!
            }
            if self.usedLindormVector3 != nil {
                map["UsedLindormVector3"] = self.usedLindormVector3!
            }
            if self.usedOther != nil {
                map["UsedOther"] = self.usedOther!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Capacity"] as? String {
                self.capacity = value
            }
            if let value = dict["DiskType"] as? String {
                self.diskType = value
            }
            if let value = dict["Used"] as? String {
                self.used = value
            }
            if let value = dict["UsedLindormColumn3"] as? String {
                self.usedLindormColumn3 = value
            }
            if let value = dict["UsedLindormMessage3"] as? String {
                self.usedLindormMessage3 = value
            }
            if let value = dict["UsedLindormSearch"] as? String {
                self.usedLindormSearch = value
            }
            if let value = dict["UsedLindormSpark"] as? String {
                self.usedLindormSpark = value
            }
            if let value = dict["UsedLindormTable"] as? String {
                self.usedLindormTable = value
            }
            if let value = dict["UsedLindormTsdb"] as? String {
                self.usedLindormTsdb = value
            }
            if let value = dict["UsedLindormVector3"] as? String {
                self.usedLindormVector3 = value
            }
            if let value = dict["UsedOther"] as? String {
                self.usedOther = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var fsCapacity: String?

    public var fsCapacityCold: String?

    public var fsCapacityHot: String?

    public var fsUsedCold: String?

    public var fsUsedColdOnLindormSearch: String?

    public var fsUsedColdOnLindormTSDB: String?

    public var fsUsedColdOnLindormTable: String?

    public var fsUsedHot: String?

    public var fsUsedHotOnLindormSearch: String?

    public var fsUsedHotOnLindormTSDB: String?

    public var fsUsedHotOnLindormTable: String?

    public var fsUsedOnLindormSearch: String?

    public var fsUsedOnLindormTSDB: String?

    public var fsUsedOnLindormTable: String?

    public var fsUsedOnLindormTableData: String?

    public var fsUsedOnLindormTableWAL: String?

    public var LStorageUsageList: [GetLindormFsUsedDetailResponseBody.LStorageUsageList]?

    public var requestId: String?

    public var valid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.fsCapacity != nil {
            map["FsCapacity"] = self.fsCapacity!
        }
        if self.fsCapacityCold != nil {
            map["FsCapacityCold"] = self.fsCapacityCold!
        }
        if self.fsCapacityHot != nil {
            map["FsCapacityHot"] = self.fsCapacityHot!
        }
        if self.fsUsedCold != nil {
            map["FsUsedCold"] = self.fsUsedCold!
        }
        if self.fsUsedColdOnLindormSearch != nil {
            map["FsUsedColdOnLindormSearch"] = self.fsUsedColdOnLindormSearch!
        }
        if self.fsUsedColdOnLindormTSDB != nil {
            map["FsUsedColdOnLindormTSDB"] = self.fsUsedColdOnLindormTSDB!
        }
        if self.fsUsedColdOnLindormTable != nil {
            map["FsUsedColdOnLindormTable"] = self.fsUsedColdOnLindormTable!
        }
        if self.fsUsedHot != nil {
            map["FsUsedHot"] = self.fsUsedHot!
        }
        if self.fsUsedHotOnLindormSearch != nil {
            map["FsUsedHotOnLindormSearch"] = self.fsUsedHotOnLindormSearch!
        }
        if self.fsUsedHotOnLindormTSDB != nil {
            map["FsUsedHotOnLindormTSDB"] = self.fsUsedHotOnLindormTSDB!
        }
        if self.fsUsedHotOnLindormTable != nil {
            map["FsUsedHotOnLindormTable"] = self.fsUsedHotOnLindormTable!
        }
        if self.fsUsedOnLindormSearch != nil {
            map["FsUsedOnLindormSearch"] = self.fsUsedOnLindormSearch!
        }
        if self.fsUsedOnLindormTSDB != nil {
            map["FsUsedOnLindormTSDB"] = self.fsUsedOnLindormTSDB!
        }
        if self.fsUsedOnLindormTable != nil {
            map["FsUsedOnLindormTable"] = self.fsUsedOnLindormTable!
        }
        if self.fsUsedOnLindormTableData != nil {
            map["FsUsedOnLindormTableData"] = self.fsUsedOnLindormTableData!
        }
        if self.fsUsedOnLindormTableWAL != nil {
            map["FsUsedOnLindormTableWAL"] = self.fsUsedOnLindormTableWAL!
        }
        if self.LStorageUsageList != nil {
            var tmp : [Any] = []
            for k in self.LStorageUsageList! {
                tmp.append(k.toMap())
            }
            map["LStorageUsageList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.valid != nil {
            map["Valid"] = self.valid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["FsCapacity"] as? String {
            self.fsCapacity = value
        }
        if let value = dict["FsCapacityCold"] as? String {
            self.fsCapacityCold = value
        }
        if let value = dict["FsCapacityHot"] as? String {
            self.fsCapacityHot = value
        }
        if let value = dict["FsUsedCold"] as? String {
            self.fsUsedCold = value
        }
        if let value = dict["FsUsedColdOnLindormSearch"] as? String {
            self.fsUsedColdOnLindormSearch = value
        }
        if let value = dict["FsUsedColdOnLindormTSDB"] as? String {
            self.fsUsedColdOnLindormTSDB = value
        }
        if let value = dict["FsUsedColdOnLindormTable"] as? String {
            self.fsUsedColdOnLindormTable = value
        }
        if let value = dict["FsUsedHot"] as? String {
            self.fsUsedHot = value
        }
        if let value = dict["FsUsedHotOnLindormSearch"] as? String {
            self.fsUsedHotOnLindormSearch = value
        }
        if let value = dict["FsUsedHotOnLindormTSDB"] as? String {
            self.fsUsedHotOnLindormTSDB = value
        }
        if let value = dict["FsUsedHotOnLindormTable"] as? String {
            self.fsUsedHotOnLindormTable = value
        }
        if let value = dict["FsUsedOnLindormSearch"] as? String {
            self.fsUsedOnLindormSearch = value
        }
        if let value = dict["FsUsedOnLindormTSDB"] as? String {
            self.fsUsedOnLindormTSDB = value
        }
        if let value = dict["FsUsedOnLindormTable"] as? String {
            self.fsUsedOnLindormTable = value
        }
        if let value = dict["FsUsedOnLindormTableData"] as? String {
            self.fsUsedOnLindormTableData = value
        }
        if let value = dict["FsUsedOnLindormTableWAL"] as? String {
            self.fsUsedOnLindormTableWAL = value
        }
        if let value = dict["LStorageUsageList"] as? [Any?] {
            var tmp : [GetLindormFsUsedDetailResponseBody.LStorageUsageList] = []
            for v in value {
                if v != nil {
                    var model = GetLindormFsUsedDetailResponseBody.LStorageUsageList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.LStorageUsageList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Valid"] as? String {
            self.valid = value
        }
    }
}

public class GetLindormFsUsedDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLindormFsUsedDetailResponseBody?

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
            var model = GetLindormFsUsedDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLindormInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetLindormInstanceResponseBody : Tea.TeaModel {
    public class EngineList : Tea.TeaModel {
        public var arbiterCoreCount: String?

        public var coreCount: String?

        public var cpuCount: String?

        public var engine: String?

        public var isLastVersion: Bool?

        public var latestVersion: String?

        public var memorySize: String?

        public var primaryCoreCount: String?

        public var specification: String?

        public var standbyCoreCount: String?

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
            if self.arbiterCoreCount != nil {
                map["ArbiterCoreCount"] = self.arbiterCoreCount!
            }
            if self.coreCount != nil {
                map["CoreCount"] = self.coreCount!
            }
            if self.cpuCount != nil {
                map["CpuCount"] = self.cpuCount!
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.isLastVersion != nil {
                map["IsLastVersion"] = self.isLastVersion!
            }
            if self.latestVersion != nil {
                map["LatestVersion"] = self.latestVersion!
            }
            if self.memorySize != nil {
                map["MemorySize"] = self.memorySize!
            }
            if self.primaryCoreCount != nil {
                map["PrimaryCoreCount"] = self.primaryCoreCount!
            }
            if self.specification != nil {
                map["Specification"] = self.specification!
            }
            if self.standbyCoreCount != nil {
                map["StandbyCoreCount"] = self.standbyCoreCount!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArbiterCoreCount"] as? String {
                self.arbiterCoreCount = value
            }
            if let value = dict["CoreCount"] as? String {
                self.coreCount = value
            }
            if let value = dict["CpuCount"] as? String {
                self.cpuCount = value
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["IsLastVersion"] as? Bool {
                self.isLastVersion = value
            }
            if let value = dict["LatestVersion"] as? String {
                self.latestVersion = value
            }
            if let value = dict["MemorySize"] as? String {
                self.memorySize = value
            }
            if let value = dict["PrimaryCoreCount"] as? String {
                self.primaryCoreCount = value
            }
            if let value = dict["Specification"] as? String {
                self.specification = value
            }
            if let value = dict["StandbyCoreCount"] as? String {
                self.standbyCoreCount = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var aliUid: Int64?

    public var arbiterVSwitchId: String?

    public var arbiterZoneId: String?

    public var archVersion: String?

    public var archiveStorage: Int32?

    public var autoRenew: Bool?

    public var coldStorage: Int32?

    public var coreDiskCategory: String?

    public var coreNum: Int32?

    public var coreSingleStorage: Int32?

    public var coreSpec: String?

    public var createMilliseconds: Int64?

    public var createTime: String?

    public var deletionProtection: String?

    public var diskCategory: String?

    public var diskThreshold: String?

    public var diskUsage: String?

    public var enableBlob: Bool?

    public var enableCdc: Bool?

    public var enableCompute: Bool?

    public var enableKms: Bool?

    public var enableLProxy: Bool?

    public var enableLTS: Bool?

    public var enableLsqlVersionV3: Bool?

    public var enableMLCtrl: Bool?

    public var enableSSL: Bool?

    public var enableShs: Bool?

    public var enableStoreTDE: Bool?

    public var enableStream: Bool?

    public var engineList: [GetLindormInstanceResponseBody.EngineList]?

    public var engineType: Int32?

    public var expireTime: String?

    public var expiredMilliseconds: Int64?

    public var instanceAlias: String?

    public var instanceId: String?

    public var instanceStatus: String?

    public var instanceStorage: String?

    public var logDiskCategory: String?

    public var logNum: Int32?

    public var logSingleStorage: Int32?

    public var logSpec: String?

    public var maintainEndTime: String?

    public var maintainStartTime: String?

    public var multiZoneCombination: String?

    public var networkType: String?

    public var payType: String?

    public var primaryVSwitchId: String?

    public var primaryZoneId: String?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var serviceType: String?

    public var standbyVSwitchId: String?

    public var standbyZoneId: String?

    public var vpcId: String?

    public var vswitchId: String?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.arbiterVSwitchId != nil {
            map["ArbiterVSwitchId"] = self.arbiterVSwitchId!
        }
        if self.arbiterZoneId != nil {
            map["ArbiterZoneId"] = self.arbiterZoneId!
        }
        if self.archVersion != nil {
            map["ArchVersion"] = self.archVersion!
        }
        if self.archiveStorage != nil {
            map["ArchiveStorage"] = self.archiveStorage!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.coldStorage != nil {
            map["ColdStorage"] = self.coldStorage!
        }
        if self.coreDiskCategory != nil {
            map["CoreDiskCategory"] = self.coreDiskCategory!
        }
        if self.coreNum != nil {
            map["CoreNum"] = self.coreNum!
        }
        if self.coreSingleStorage != nil {
            map["CoreSingleStorage"] = self.coreSingleStorage!
        }
        if self.coreSpec != nil {
            map["CoreSpec"] = self.coreSpec!
        }
        if self.createMilliseconds != nil {
            map["CreateMilliseconds"] = self.createMilliseconds!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.deletionProtection != nil {
            map["DeletionProtection"] = self.deletionProtection!
        }
        if self.diskCategory != nil {
            map["DiskCategory"] = self.diskCategory!
        }
        if self.diskThreshold != nil {
            map["DiskThreshold"] = self.diskThreshold!
        }
        if self.diskUsage != nil {
            map["DiskUsage"] = self.diskUsage!
        }
        if self.enableBlob != nil {
            map["EnableBlob"] = self.enableBlob!
        }
        if self.enableCdc != nil {
            map["EnableCdc"] = self.enableCdc!
        }
        if self.enableCompute != nil {
            map["EnableCompute"] = self.enableCompute!
        }
        if self.enableKms != nil {
            map["EnableKms"] = self.enableKms!
        }
        if self.enableLProxy != nil {
            map["EnableLProxy"] = self.enableLProxy!
        }
        if self.enableLTS != nil {
            map["EnableLTS"] = self.enableLTS!
        }
        if self.enableLsqlVersionV3 != nil {
            map["EnableLsqlVersionV3"] = self.enableLsqlVersionV3!
        }
        if self.enableMLCtrl != nil {
            map["EnableMLCtrl"] = self.enableMLCtrl!
        }
        if self.enableSSL != nil {
            map["EnableSSL"] = self.enableSSL!
        }
        if self.enableShs != nil {
            map["EnableShs"] = self.enableShs!
        }
        if self.enableStoreTDE != nil {
            map["EnableStoreTDE"] = self.enableStoreTDE!
        }
        if self.enableStream != nil {
            map["EnableStream"] = self.enableStream!
        }
        if self.engineList != nil {
            var tmp : [Any] = []
            for k in self.engineList! {
                tmp.append(k.toMap())
            }
            map["EngineList"] = tmp
        }
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.expiredMilliseconds != nil {
            map["ExpiredMilliseconds"] = self.expiredMilliseconds!
        }
        if self.instanceAlias != nil {
            map["InstanceAlias"] = self.instanceAlias!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
        }
        if self.instanceStorage != nil {
            map["InstanceStorage"] = self.instanceStorage!
        }
        if self.logDiskCategory != nil {
            map["LogDiskCategory"] = self.logDiskCategory!
        }
        if self.logNum != nil {
            map["LogNum"] = self.logNum!
        }
        if self.logSingleStorage != nil {
            map["LogSingleStorage"] = self.logSingleStorage!
        }
        if self.logSpec != nil {
            map["LogSpec"] = self.logSpec!
        }
        if self.maintainEndTime != nil {
            map["MaintainEndTime"] = self.maintainEndTime!
        }
        if self.maintainStartTime != nil {
            map["MaintainStartTime"] = self.maintainStartTime!
        }
        if self.multiZoneCombination != nil {
            map["MultiZoneCombination"] = self.multiZoneCombination!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.primaryVSwitchId != nil {
            map["PrimaryVSwitchId"] = self.primaryVSwitchId!
        }
        if self.primaryZoneId != nil {
            map["PrimaryZoneId"] = self.primaryZoneId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.standbyVSwitchId != nil {
            map["StandbyVSwitchId"] = self.standbyVSwitchId!
        }
        if self.standbyZoneId != nil {
            map["StandbyZoneId"] = self.standbyZoneId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vswitchId != nil {
            map["VswitchId"] = self.vswitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliUid"] as? Int64 {
            self.aliUid = value
        }
        if let value = dict["ArbiterVSwitchId"] as? String {
            self.arbiterVSwitchId = value
        }
        if let value = dict["ArbiterZoneId"] as? String {
            self.arbiterZoneId = value
        }
        if let value = dict["ArchVersion"] as? String {
            self.archVersion = value
        }
        if let value = dict["ArchiveStorage"] as? Int32 {
            self.archiveStorage = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["ColdStorage"] as? Int32 {
            self.coldStorage = value
        }
        if let value = dict["CoreDiskCategory"] as? String {
            self.coreDiskCategory = value
        }
        if let value = dict["CoreNum"] as? Int32 {
            self.coreNum = value
        }
        if let value = dict["CoreSingleStorage"] as? Int32 {
            self.coreSingleStorage = value
        }
        if let value = dict["CoreSpec"] as? String {
            self.coreSpec = value
        }
        if let value = dict["CreateMilliseconds"] as? Int64 {
            self.createMilliseconds = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DeletionProtection"] as? String {
            self.deletionProtection = value
        }
        if let value = dict["DiskCategory"] as? String {
            self.diskCategory = value
        }
        if let value = dict["DiskThreshold"] as? String {
            self.diskThreshold = value
        }
        if let value = dict["DiskUsage"] as? String {
            self.diskUsage = value
        }
        if let value = dict["EnableBlob"] as? Bool {
            self.enableBlob = value
        }
        if let value = dict["EnableCdc"] as? Bool {
            self.enableCdc = value
        }
        if let value = dict["EnableCompute"] as? Bool {
            self.enableCompute = value
        }
        if let value = dict["EnableKms"] as? Bool {
            self.enableKms = value
        }
        if let value = dict["EnableLProxy"] as? Bool {
            self.enableLProxy = value
        }
        if let value = dict["EnableLTS"] as? Bool {
            self.enableLTS = value
        }
        if let value = dict["EnableLsqlVersionV3"] as? Bool {
            self.enableLsqlVersionV3 = value
        }
        if let value = dict["EnableMLCtrl"] as? Bool {
            self.enableMLCtrl = value
        }
        if let value = dict["EnableSSL"] as? Bool {
            self.enableSSL = value
        }
        if let value = dict["EnableShs"] as? Bool {
            self.enableShs = value
        }
        if let value = dict["EnableStoreTDE"] as? Bool {
            self.enableStoreTDE = value
        }
        if let value = dict["EnableStream"] as? Bool {
            self.enableStream = value
        }
        if let value = dict["EngineList"] as? [Any?] {
            var tmp : [GetLindormInstanceResponseBody.EngineList] = []
            for v in value {
                if v != nil {
                    var model = GetLindormInstanceResponseBody.EngineList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.engineList = tmp
        }
        if let value = dict["EngineType"] as? Int32 {
            self.engineType = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["ExpiredMilliseconds"] as? Int64 {
            self.expiredMilliseconds = value
        }
        if let value = dict["InstanceAlias"] as? String {
            self.instanceAlias = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceStatus"] as? String {
            self.instanceStatus = value
        }
        if let value = dict["InstanceStorage"] as? String {
            self.instanceStorage = value
        }
        if let value = dict["LogDiskCategory"] as? String {
            self.logDiskCategory = value
        }
        if let value = dict["LogNum"] as? Int32 {
            self.logNum = value
        }
        if let value = dict["LogSingleStorage"] as? Int32 {
            self.logSingleStorage = value
        }
        if let value = dict["LogSpec"] as? String {
            self.logSpec = value
        }
        if let value = dict["MaintainEndTime"] as? String {
            self.maintainEndTime = value
        }
        if let value = dict["MaintainStartTime"] as? String {
            self.maintainStartTime = value
        }
        if let value = dict["MultiZoneCombination"] as? String {
            self.multiZoneCombination = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PrimaryVSwitchId"] as? String {
            self.primaryVSwitchId = value
        }
        if let value = dict["PrimaryZoneId"] as? String {
            self.primaryZoneId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["StandbyVSwitchId"] as? String {
            self.standbyVSwitchId = value
        }
        if let value = dict["StandbyZoneId"] as? String {
            self.standbyZoneId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VswitchId"] as? String {
            self.vswitchId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class GetLindormInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLindormInstanceResponseBody?

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
            var model = GetLindormInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLindormInstanceEngineListRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetLindormInstanceEngineListResponseBody : Tea.TeaModel {
    public class EngineList : Tea.TeaModel {
        public class NetInfoList : Tea.TeaModel {
            public var accessType: Int32?

            public var connectionString: String?

            public var netType: String?

            public var port: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessType != nil {
                    map["AccessType"] = self.accessType!
                }
                if self.connectionString != nil {
                    map["ConnectionString"] = self.connectionString!
                }
                if self.netType != nil {
                    map["NetType"] = self.netType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessType"] as? Int32 {
                    self.accessType = value
                }
                if let value = dict["ConnectionString"] as? String {
                    self.connectionString = value
                }
                if let value = dict["NetType"] as? String {
                    self.netType = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
            }
        }
        public var engineType: String?

        public var netInfoList: [GetLindormInstanceEngineListResponseBody.EngineList.NetInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.netInfoList != nil {
                var tmp : [Any] = []
                for k in self.netInfoList! {
                    tmp.append(k.toMap())
                }
                map["NetInfoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["NetInfoList"] as? [Any?] {
                var tmp : [GetLindormInstanceEngineListResponseBody.EngineList.NetInfoList] = []
                for v in value {
                    if v != nil {
                        var model = GetLindormInstanceEngineListResponseBody.EngineList.NetInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.netInfoList = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var engineList: [GetLindormInstanceEngineListResponseBody.EngineList]?

    public var instanceId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.engineList != nil {
            var tmp : [Any] = []
            for k in self.engineList! {
                tmp.append(k.toMap())
            }
            map["EngineList"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["EngineList"] as? [Any?] {
            var tmp : [GetLindormInstanceEngineListResponseBody.EngineList] = []
            for v in value {
                if v != nil {
                    var model = GetLindormInstanceEngineListResponseBody.EngineList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.engineList = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetLindormInstanceEngineListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLindormInstanceEngineListResponseBody?

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
            var model = GetLindormInstanceEngineListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLindormInstanceListRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryStr: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

    public var serviceType: String?

    public var supportEngine: Int32?

    public var tag: [GetLindormInstanceListRequest.Tag]?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryStr != nil {
            map["QueryStr"] = self.queryStr!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.supportEngine != nil {
            map["SupportEngine"] = self.supportEngine!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryStr"] as? String {
            self.queryStr = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["SupportEngine"] as? Int32 {
            self.supportEngine = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [GetLindormInstanceListRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = GetLindormInstanceListRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class GetLindormInstanceListResponseBody : Tea.TeaModel {
    public class InstanceList : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var aliUid: Int64?

        public var createErrorCode: String?

        public var createMilliseconds: Int64?

        public var createTime: String?

        public var enableColumn: Bool?

        public var enableCompute: Bool?

        public var enableLts: Bool?

        public var enableMessage: Bool?

        public var enableRow: Bool?

        public var enableStream: Bool?

        public var enableVector: Bool?

        public var engineType: String?

        public var expireTime: String?

        public var expiredMilliseconds: Int64?

        public var instanceAlias: String?

        public var instanceId: String?

        public var instanceStatus: String?

        public var instanceStorage: String?

        public var networkType: String?

        public var payType: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var serviceType: String?

        public var tags: [GetLindormInstanceListResponseBody.InstanceList.Tags]?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.createErrorCode != nil {
                map["CreateErrorCode"] = self.createErrorCode!
            }
            if self.createMilliseconds != nil {
                map["CreateMilliseconds"] = self.createMilliseconds!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.enableColumn != nil {
                map["EnableColumn"] = self.enableColumn!
            }
            if self.enableCompute != nil {
                map["EnableCompute"] = self.enableCompute!
            }
            if self.enableLts != nil {
                map["EnableLts"] = self.enableLts!
            }
            if self.enableMessage != nil {
                map["EnableMessage"] = self.enableMessage!
            }
            if self.enableRow != nil {
                map["EnableRow"] = self.enableRow!
            }
            if self.enableStream != nil {
                map["EnableStream"] = self.enableStream!
            }
            if self.enableVector != nil {
                map["EnableVector"] = self.enableVector!
            }
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.expiredMilliseconds != nil {
                map["ExpiredMilliseconds"] = self.expiredMilliseconds!
            }
            if self.instanceAlias != nil {
                map["InstanceAlias"] = self.instanceAlias!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.instanceStorage != nil {
                map["InstanceStorage"] = self.instanceStorage!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["CreateErrorCode"] as? String {
                self.createErrorCode = value
            }
            if let value = dict["CreateMilliseconds"] as? Int64 {
                self.createMilliseconds = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EnableColumn"] as? Bool {
                self.enableColumn = value
            }
            if let value = dict["EnableCompute"] as? Bool {
                self.enableCompute = value
            }
            if let value = dict["EnableLts"] as? Bool {
                self.enableLts = value
            }
            if let value = dict["EnableMessage"] as? Bool {
                self.enableMessage = value
            }
            if let value = dict["EnableRow"] as? Bool {
                self.enableRow = value
            }
            if let value = dict["EnableStream"] as? Bool {
                self.enableStream = value
            }
            if let value = dict["EnableVector"] as? Bool {
                self.enableVector = value
            }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["ExpiredMilliseconds"] as? Int64 {
                self.expiredMilliseconds = value
            }
            if let value = dict["InstanceAlias"] as? String {
                self.instanceAlias = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceStatus"] as? String {
                self.instanceStatus = value
            }
            if let value = dict["InstanceStorage"] as? String {
                self.instanceStorage = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["PayType"] as? String {
                self.payType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ServiceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetLindormInstanceListResponseBody.InstanceList.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetLindormInstanceListResponseBody.InstanceList.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var instanceList: [GetLindormInstanceListResponseBody.InstanceList]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.instanceList != nil {
            var tmp : [Any] = []
            for k in self.instanceList! {
                tmp.append(k.toMap())
            }
            map["InstanceList"] = tmp
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceList"] as? [Any?] {
            var tmp : [GetLindormInstanceListResponseBody.InstanceList] = []
            for v in value {
                if v != nil {
                    var model = GetLindormInstanceListResponseBody.InstanceList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceList = tmp
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
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class GetLindormInstanceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLindormInstanceListResponseBody?

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
            var model = GetLindormInstanceListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLindormV2InstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetLindormV2InstanceResponseBody : Tea.TeaModel {
    public class EngineList : Tea.TeaModel {
        public class ConnectAddressList : Tea.TeaModel {
            public var address: String?

            public var port: String?

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
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["Port"] as? String {
                    self.port = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class NodeGroup : Tea.TeaModel {
            public var category: String?

            public var cpuCoreCount: Int32?

            public var enableAttachLocalDisk: Bool?

            public var localDiskCapacity: Int64?

            public var localDiskCategory: String?

            public var memorySizeGiB: Int32?

            public var nodeSpec: String?

            public var quantity: Int32?

            public var resourceGroupName: String?

            public var specId: String?

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
                if self.cpuCoreCount != nil {
                    map["CpuCoreCount"] = self.cpuCoreCount!
                }
                if self.enableAttachLocalDisk != nil {
                    map["EnableAttachLocalDisk"] = self.enableAttachLocalDisk!
                }
                if self.localDiskCapacity != nil {
                    map["LocalDiskCapacity"] = self.localDiskCapacity!
                }
                if self.localDiskCategory != nil {
                    map["LocalDiskCategory"] = self.localDiskCategory!
                }
                if self.memorySizeGiB != nil {
                    map["MemorySizeGiB"] = self.memorySizeGiB!
                }
                if self.nodeSpec != nil {
                    map["NodeSpec"] = self.nodeSpec!
                }
                if self.quantity != nil {
                    map["Quantity"] = self.quantity!
                }
                if self.resourceGroupName != nil {
                    map["ResourceGroupName"] = self.resourceGroupName!
                }
                if self.specId != nil {
                    map["SpecId"] = self.specId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["CpuCoreCount"] as? Int32 {
                    self.cpuCoreCount = value
                }
                if let value = dict["EnableAttachLocalDisk"] as? Bool {
                    self.enableAttachLocalDisk = value
                }
                if let value = dict["LocalDiskCapacity"] as? Int64 {
                    self.localDiskCapacity = value
                }
                if let value = dict["LocalDiskCategory"] as? String {
                    self.localDiskCategory = value
                }
                if let value = dict["MemorySizeGiB"] as? Int32 {
                    self.memorySizeGiB = value
                }
                if let value = dict["NodeSpec"] as? String {
                    self.nodeSpec = value
                }
                if let value = dict["Quantity"] as? Int32 {
                    self.quantity = value
                }
                if let value = dict["ResourceGroupName"] as? String {
                    self.resourceGroupName = value
                }
                if let value = dict["SpecId"] as? String {
                    self.specId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var connectAddressList: [GetLindormV2InstanceResponseBody.EngineList.ConnectAddressList]?

        public var enableBackup: String?

        public var enableCDC: String?

        public var engine: String?

        public var isLastVersion: Bool?

        public var latestVersion: String?

        public var nodeGroup: [GetLindormV2InstanceResponseBody.EngineList.NodeGroup]?

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
            if self.connectAddressList != nil {
                var tmp : [Any] = []
                for k in self.connectAddressList! {
                    tmp.append(k.toMap())
                }
                map["ConnectAddressList"] = tmp
            }
            if self.enableBackup != nil {
                map["EnableBackup"] = self.enableBackup!
            }
            if self.enableCDC != nil {
                map["EnableCDC"] = self.enableCDC!
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.isLastVersion != nil {
                map["IsLastVersion"] = self.isLastVersion!
            }
            if self.latestVersion != nil {
                map["LatestVersion"] = self.latestVersion!
            }
            if self.nodeGroup != nil {
                var tmp : [Any] = []
                for k in self.nodeGroup! {
                    tmp.append(k.toMap())
                }
                map["NodeGroup"] = tmp
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectAddressList"] as? [Any?] {
                var tmp : [GetLindormV2InstanceResponseBody.EngineList.ConnectAddressList] = []
                for v in value {
                    if v != nil {
                        var model = GetLindormV2InstanceResponseBody.EngineList.ConnectAddressList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.connectAddressList = tmp
            }
            if let value = dict["EnableBackup"] as? String {
                self.enableBackup = value
            }
            if let value = dict["EnableCDC"] as? String {
                self.enableCDC = value
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["IsLastVersion"] as? Bool {
                self.isLastVersion = value
            }
            if let value = dict["LatestVersion"] as? String {
                self.latestVersion = value
            }
            if let value = dict["NodeGroup"] as? [Any?] {
                var tmp : [GetLindormV2InstanceResponseBody.EngineList.NodeGroup] = []
                for v in value {
                    if v != nil {
                        var model = GetLindormV2InstanceResponseBody.EngineList.NodeGroup()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodeGroup = tmp
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public class StorageUsage : Tea.TeaModel {
        public var capacityByDiskCategory: [[String: Any]]?

        public var engineUsage: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capacityByDiskCategory != nil {
                map["CapacityByDiskCategory"] = self.capacityByDiskCategory!
            }
            if self.engineUsage != nil {
                map["EngineUsage"] = self.engineUsage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CapacityByDiskCategory"] as? [[String: Any]] {
                self.capacityByDiskCategory = value
            }
            if let value = dict["EngineUsage"] as? [String: Any] {
                self.engineUsage = value
            }
        }
    }
    public class WhiteIpList : Tea.TeaModel {
        public var groupName: String?

        public var ipList: String?

        public override init() {
            super.init()
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
            if self.ipList != nil {
                map["IpList"] = self.ipList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["IpList"] as? String {
                self.ipList = value
            }
        }
    }
    public var aliUid: Int64?

    public var arbiterVSwitchId: String?

    public var arbiterZoneId: String?

    public var autoRenew: Bool?

    public var cloudStorageSize: Int64?

    public var coldStorage: Int32?

    public var createMilliseconds: Int64?

    public var deletionProtection: String?

    public var diskCategory: String?

    public var diskThreshold: String?

    public var diskUsage: String?

    public var enableCompute: Bool?

    public var engineList: [GetLindormV2InstanceResponseBody.EngineList]?

    public var expiredMilliseconds: Int64?

    public var initialRootPassword: String?

    public var instanceAlias: String?

    public var instanceId: String?

    public var instanceStatus: String?

    public var instanceType: String?

    public var maintainEndTime: String?

    public var maintainStartTime: String?

    public var networkType: String?

    public var payType: String?

    public var primaryVSwitchId: String?

    public var primaryZoneId: String?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var serviceType: String?

    public var standbyVSwitchId: String?

    public var standbyZoneId: String?

    public var storageUsage: GetLindormV2InstanceResponseBody.StorageUsage?

    public var vpcId: String?

    public var vswitchId: String?

    public var whiteIpList: [GetLindormV2InstanceResponseBody.WhiteIpList]?

    public var zoneEngineInfoMap: [String: Any]?

    public var zoneId: String?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.arbiterVSwitchId != nil {
            map["ArbiterVSwitchId"] = self.arbiterVSwitchId!
        }
        if self.arbiterZoneId != nil {
            map["ArbiterZoneId"] = self.arbiterZoneId!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.cloudStorageSize != nil {
            map["CloudStorageSize"] = self.cloudStorageSize!
        }
        if self.coldStorage != nil {
            map["ColdStorage"] = self.coldStorage!
        }
        if self.createMilliseconds != nil {
            map["CreateMilliseconds"] = self.createMilliseconds!
        }
        if self.deletionProtection != nil {
            map["DeletionProtection"] = self.deletionProtection!
        }
        if self.diskCategory != nil {
            map["DiskCategory"] = self.diskCategory!
        }
        if self.diskThreshold != nil {
            map["DiskThreshold"] = self.diskThreshold!
        }
        if self.diskUsage != nil {
            map["DiskUsage"] = self.diskUsage!
        }
        if self.enableCompute != nil {
            map["EnableCompute"] = self.enableCompute!
        }
        if self.engineList != nil {
            var tmp : [Any] = []
            for k in self.engineList! {
                tmp.append(k.toMap())
            }
            map["EngineList"] = tmp
        }
        if self.expiredMilliseconds != nil {
            map["ExpiredMilliseconds"] = self.expiredMilliseconds!
        }
        if self.initialRootPassword != nil {
            map["InitialRootPassword"] = self.initialRootPassword!
        }
        if self.instanceAlias != nil {
            map["InstanceAlias"] = self.instanceAlias!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.maintainEndTime != nil {
            map["MaintainEndTime"] = self.maintainEndTime!
        }
        if self.maintainStartTime != nil {
            map["MaintainStartTime"] = self.maintainStartTime!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.primaryVSwitchId != nil {
            map["PrimaryVSwitchId"] = self.primaryVSwitchId!
        }
        if self.primaryZoneId != nil {
            map["PrimaryZoneId"] = self.primaryZoneId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.standbyVSwitchId != nil {
            map["StandbyVSwitchId"] = self.standbyVSwitchId!
        }
        if self.standbyZoneId != nil {
            map["StandbyZoneId"] = self.standbyZoneId!
        }
        if self.storageUsage != nil {
            map["StorageUsage"] = self.storageUsage?.toMap()
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vswitchId != nil {
            map["VswitchId"] = self.vswitchId!
        }
        if self.whiteIpList != nil {
            var tmp : [Any] = []
            for k in self.whiteIpList! {
                tmp.append(k.toMap())
            }
            map["WhiteIpList"] = tmp
        }
        if self.zoneEngineInfoMap != nil {
            map["ZoneEngineInfoMap"] = self.zoneEngineInfoMap!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliUid"] as? Int64 {
            self.aliUid = value
        }
        if let value = dict["ArbiterVSwitchId"] as? String {
            self.arbiterVSwitchId = value
        }
        if let value = dict["ArbiterZoneId"] as? String {
            self.arbiterZoneId = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["CloudStorageSize"] as? Int64 {
            self.cloudStorageSize = value
        }
        if let value = dict["ColdStorage"] as? Int32 {
            self.coldStorage = value
        }
        if let value = dict["CreateMilliseconds"] as? Int64 {
            self.createMilliseconds = value
        }
        if let value = dict["DeletionProtection"] as? String {
            self.deletionProtection = value
        }
        if let value = dict["DiskCategory"] as? String {
            self.diskCategory = value
        }
        if let value = dict["DiskThreshold"] as? String {
            self.diskThreshold = value
        }
        if let value = dict["DiskUsage"] as? String {
            self.diskUsage = value
        }
        if let value = dict["EnableCompute"] as? Bool {
            self.enableCompute = value
        }
        if let value = dict["EngineList"] as? [Any?] {
            var tmp : [GetLindormV2InstanceResponseBody.EngineList] = []
            for v in value {
                if v != nil {
                    var model = GetLindormV2InstanceResponseBody.EngineList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.engineList = tmp
        }
        if let value = dict["ExpiredMilliseconds"] as? Int64 {
            self.expiredMilliseconds = value
        }
        if let value = dict["InitialRootPassword"] as? String {
            self.initialRootPassword = value
        }
        if let value = dict["InstanceAlias"] as? String {
            self.instanceAlias = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceStatus"] as? String {
            self.instanceStatus = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["MaintainEndTime"] as? String {
            self.maintainEndTime = value
        }
        if let value = dict["MaintainStartTime"] as? String {
            self.maintainStartTime = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PrimaryVSwitchId"] as? String {
            self.primaryVSwitchId = value
        }
        if let value = dict["PrimaryZoneId"] as? String {
            self.primaryZoneId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["StandbyVSwitchId"] as? String {
            self.standbyVSwitchId = value
        }
        if let value = dict["StandbyZoneId"] as? String {
            self.standbyZoneId = value
        }
        if let value = dict["StorageUsage"] as? [String: Any?] {
            var model = GetLindormV2InstanceResponseBody.StorageUsage()
            model.fromMap(value)
            self.storageUsage = model
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VswitchId"] as? String {
            self.vswitchId = value
        }
        if let value = dict["WhiteIpList"] as? [Any?] {
            var tmp : [GetLindormV2InstanceResponseBody.WhiteIpList] = []
            for v in value {
                if v != nil {
                    var model = GetLindormV2InstanceResponseBody.WhiteIpList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.whiteIpList = tmp
        }
        if let value = dict["ZoneEngineInfoMap"] as? [String: Any] {
            self.zoneEngineInfoMap = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class GetLindormV2InstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLindormV2InstanceResponseBody?

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
            var model = GetLindormV2InstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLindormV2InstanceDetailsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetLindormV2InstanceDetailsResponseBody : Tea.TeaModel {
    public class EngineList : Tea.TeaModel {
        public class ConnectAddressList : Tea.TeaModel {
            public var address: String?

            public var port: String?

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
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["Port"] as? String {
                    self.port = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class NodeGroup : Tea.TeaModel {
            public var category: String?

            public var cpuCoreCount: Int32?

            public var enableAttachLocalDisk: Bool?

            public var localDiskCapacity: Int64?

            public var localDiskCategory: String?

            public var memorySizeGiB: Int32?

            public var nodeSpec: String?

            public var quantity: Int32?

            public var resourceGroupName: String?

            public var specId: String?

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
                if self.cpuCoreCount != nil {
                    map["CpuCoreCount"] = self.cpuCoreCount!
                }
                if self.enableAttachLocalDisk != nil {
                    map["EnableAttachLocalDisk"] = self.enableAttachLocalDisk!
                }
                if self.localDiskCapacity != nil {
                    map["LocalDiskCapacity"] = self.localDiskCapacity!
                }
                if self.localDiskCategory != nil {
                    map["LocalDiskCategory"] = self.localDiskCategory!
                }
                if self.memorySizeGiB != nil {
                    map["MemorySizeGiB"] = self.memorySizeGiB!
                }
                if self.nodeSpec != nil {
                    map["NodeSpec"] = self.nodeSpec!
                }
                if self.quantity != nil {
                    map["Quantity"] = self.quantity!
                }
                if self.resourceGroupName != nil {
                    map["ResourceGroupName"] = self.resourceGroupName!
                }
                if self.specId != nil {
                    map["SpecId"] = self.specId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["CpuCoreCount"] as? Int32 {
                    self.cpuCoreCount = value
                }
                if let value = dict["EnableAttachLocalDisk"] as? Bool {
                    self.enableAttachLocalDisk = value
                }
                if let value = dict["LocalDiskCapacity"] as? Int64 {
                    self.localDiskCapacity = value
                }
                if let value = dict["LocalDiskCategory"] as? String {
                    self.localDiskCategory = value
                }
                if let value = dict["MemorySizeGiB"] as? Int32 {
                    self.memorySizeGiB = value
                }
                if let value = dict["NodeSpec"] as? String {
                    self.nodeSpec = value
                }
                if let value = dict["Quantity"] as? Int32 {
                    self.quantity = value
                }
                if let value = dict["ResourceGroupName"] as? String {
                    self.resourceGroupName = value
                }
                if let value = dict["SpecId"] as? String {
                    self.specId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var connectAddressList: [GetLindormV2InstanceDetailsResponseBody.EngineList.ConnectAddressList]?

        public var engine: String?

        public var isLastVersion: Bool?

        public var latestVersion: String?

        public var nodeGroup: [GetLindormV2InstanceDetailsResponseBody.EngineList.NodeGroup]?

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
            if self.connectAddressList != nil {
                var tmp : [Any] = []
                for k in self.connectAddressList! {
                    tmp.append(k.toMap())
                }
                map["ConnectAddressList"] = tmp
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.isLastVersion != nil {
                map["IsLastVersion"] = self.isLastVersion!
            }
            if self.latestVersion != nil {
                map["LatestVersion"] = self.latestVersion!
            }
            if self.nodeGroup != nil {
                var tmp : [Any] = []
                for k in self.nodeGroup! {
                    tmp.append(k.toMap())
                }
                map["NodeGroup"] = tmp
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectAddressList"] as? [Any?] {
                var tmp : [GetLindormV2InstanceDetailsResponseBody.EngineList.ConnectAddressList] = []
                for v in value {
                    if v != nil {
                        var model = GetLindormV2InstanceDetailsResponseBody.EngineList.ConnectAddressList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.connectAddressList = tmp
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["IsLastVersion"] as? Bool {
                self.isLastVersion = value
            }
            if let value = dict["LatestVersion"] as? String {
                self.latestVersion = value
            }
            if let value = dict["NodeGroup"] as? [Any?] {
                var tmp : [GetLindormV2InstanceDetailsResponseBody.EngineList.NodeGroup] = []
                for v in value {
                    if v != nil {
                        var model = GetLindormV2InstanceDetailsResponseBody.EngineList.NodeGroup()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodeGroup = tmp
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public class StorageUsage : Tea.TeaModel {
        public var capacityByDiskCategory: [[String: Any]]?

        public var engineUsage: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capacityByDiskCategory != nil {
                map["CapacityByDiskCategory"] = self.capacityByDiskCategory!
            }
            if self.engineUsage != nil {
                map["EngineUsage"] = self.engineUsage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CapacityByDiskCategory"] as? [[String: Any]] {
                self.capacityByDiskCategory = value
            }
            if let value = dict["EngineUsage"] as? [String: Any] {
                self.engineUsage = value
            }
        }
    }
    public class WhiteIpList : Tea.TeaModel {
        public var groupName: String?

        public var ipList: String?

        public override init() {
            super.init()
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
            if self.ipList != nil {
                map["IpList"] = self.ipList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["IpList"] as? String {
                self.ipList = value
            }
        }
    }
    public var aliUid: Int64?

    public var arbiterVSwitchId: String?

    public var arbiterZoneId: String?

    public var autoRenew: Bool?

    public var cloudStorageSize: Int64?

    public var coldStorage: Int32?

    public var createMilliseconds: Int64?

    public var deletionProtection: String?

    public var diskCategory: String?

    public var diskThreshold: String?

    public var diskUsage: String?

    public var enableCompute: Bool?

    public var engineList: [GetLindormV2InstanceDetailsResponseBody.EngineList]?

    public var expiredMilliseconds: Int64?

    public var initialRootPassword: String?

    public var instanceAlias: String?

    public var instanceId: String?

    public var instanceStatus: String?

    public var instanceType: String?

    public var maintainEndTime: String?

    public var maintainStartTime: String?

    public var networkType: String?

    public var payType: String?

    public var primaryVSwitchId: String?

    public var primaryZoneId: String?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var serviceType: String?

    public var standbyVSwitchId: String?

    public var standbyZoneId: String?

    public var storageUsage: GetLindormV2InstanceDetailsResponseBody.StorageUsage?

    public var vpcId: String?

    public var vswitchId: String?

    public var whiteIpList: [GetLindormV2InstanceDetailsResponseBody.WhiteIpList]?

    public var zoneEngineInfoMap: [String: Any]?

    public var zoneId: String?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.arbiterVSwitchId != nil {
            map["ArbiterVSwitchId"] = self.arbiterVSwitchId!
        }
        if self.arbiterZoneId != nil {
            map["ArbiterZoneId"] = self.arbiterZoneId!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.cloudStorageSize != nil {
            map["CloudStorageSize"] = self.cloudStorageSize!
        }
        if self.coldStorage != nil {
            map["ColdStorage"] = self.coldStorage!
        }
        if self.createMilliseconds != nil {
            map["CreateMilliseconds"] = self.createMilliseconds!
        }
        if self.deletionProtection != nil {
            map["DeletionProtection"] = self.deletionProtection!
        }
        if self.diskCategory != nil {
            map["DiskCategory"] = self.diskCategory!
        }
        if self.diskThreshold != nil {
            map["DiskThreshold"] = self.diskThreshold!
        }
        if self.diskUsage != nil {
            map["DiskUsage"] = self.diskUsage!
        }
        if self.enableCompute != nil {
            map["EnableCompute"] = self.enableCompute!
        }
        if self.engineList != nil {
            var tmp : [Any] = []
            for k in self.engineList! {
                tmp.append(k.toMap())
            }
            map["EngineList"] = tmp
        }
        if self.expiredMilliseconds != nil {
            map["ExpiredMilliseconds"] = self.expiredMilliseconds!
        }
        if self.initialRootPassword != nil {
            map["InitialRootPassword"] = self.initialRootPassword!
        }
        if self.instanceAlias != nil {
            map["InstanceAlias"] = self.instanceAlias!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.maintainEndTime != nil {
            map["MaintainEndTime"] = self.maintainEndTime!
        }
        if self.maintainStartTime != nil {
            map["MaintainStartTime"] = self.maintainStartTime!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.primaryVSwitchId != nil {
            map["PrimaryVSwitchId"] = self.primaryVSwitchId!
        }
        if self.primaryZoneId != nil {
            map["PrimaryZoneId"] = self.primaryZoneId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.standbyVSwitchId != nil {
            map["StandbyVSwitchId"] = self.standbyVSwitchId!
        }
        if self.standbyZoneId != nil {
            map["StandbyZoneId"] = self.standbyZoneId!
        }
        if self.storageUsage != nil {
            map["StorageUsage"] = self.storageUsage?.toMap()
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vswitchId != nil {
            map["VswitchId"] = self.vswitchId!
        }
        if self.whiteIpList != nil {
            var tmp : [Any] = []
            for k in self.whiteIpList! {
                tmp.append(k.toMap())
            }
            map["WhiteIpList"] = tmp
        }
        if self.zoneEngineInfoMap != nil {
            map["ZoneEngineInfoMap"] = self.zoneEngineInfoMap!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliUid"] as? Int64 {
            self.aliUid = value
        }
        if let value = dict["ArbiterVSwitchId"] as? String {
            self.arbiterVSwitchId = value
        }
        if let value = dict["ArbiterZoneId"] as? String {
            self.arbiterZoneId = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["CloudStorageSize"] as? Int64 {
            self.cloudStorageSize = value
        }
        if let value = dict["ColdStorage"] as? Int32 {
            self.coldStorage = value
        }
        if let value = dict["CreateMilliseconds"] as? Int64 {
            self.createMilliseconds = value
        }
        if let value = dict["DeletionProtection"] as? String {
            self.deletionProtection = value
        }
        if let value = dict["DiskCategory"] as? String {
            self.diskCategory = value
        }
        if let value = dict["DiskThreshold"] as? String {
            self.diskThreshold = value
        }
        if let value = dict["DiskUsage"] as? String {
            self.diskUsage = value
        }
        if let value = dict["EnableCompute"] as? Bool {
            self.enableCompute = value
        }
        if let value = dict["EngineList"] as? [Any?] {
            var tmp : [GetLindormV2InstanceDetailsResponseBody.EngineList] = []
            for v in value {
                if v != nil {
                    var model = GetLindormV2InstanceDetailsResponseBody.EngineList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.engineList = tmp
        }
        if let value = dict["ExpiredMilliseconds"] as? Int64 {
            self.expiredMilliseconds = value
        }
        if let value = dict["InitialRootPassword"] as? String {
            self.initialRootPassword = value
        }
        if let value = dict["InstanceAlias"] as? String {
            self.instanceAlias = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceStatus"] as? String {
            self.instanceStatus = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["MaintainEndTime"] as? String {
            self.maintainEndTime = value
        }
        if let value = dict["MaintainStartTime"] as? String {
            self.maintainStartTime = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PrimaryVSwitchId"] as? String {
            self.primaryVSwitchId = value
        }
        if let value = dict["PrimaryZoneId"] as? String {
            self.primaryZoneId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["StandbyVSwitchId"] as? String {
            self.standbyVSwitchId = value
        }
        if let value = dict["StandbyZoneId"] as? String {
            self.standbyZoneId = value
        }
        if let value = dict["StorageUsage"] as? [String: Any?] {
            var model = GetLindormV2InstanceDetailsResponseBody.StorageUsage()
            model.fromMap(value)
            self.storageUsage = model
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VswitchId"] as? String {
            self.vswitchId = value
        }
        if let value = dict["WhiteIpList"] as? [Any?] {
            var tmp : [GetLindormV2InstanceDetailsResponseBody.WhiteIpList] = []
            for v in value {
                if v != nil {
                    var model = GetLindormV2InstanceDetailsResponseBody.WhiteIpList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.whiteIpList = tmp
        }
        if let value = dict["ZoneEngineInfoMap"] as? [String: Any] {
            self.zoneEngineInfoMap = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class GetLindormV2InstanceDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLindormV2InstanceDetailsResponseBody?

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
            var model = GetLindormV2InstanceDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLindormV2InstanceEngineListRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetLindormV2InstanceEngineListResponseBody : Tea.TeaModel {
    public class EngineList : Tea.TeaModel {
        public class NetInfoList : Tea.TeaModel {
            public var accessType: Int32?

            public var connectionString: String?

            public var netType: String?

            public var port: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessType != nil {
                    map["AccessType"] = self.accessType!
                }
                if self.connectionString != nil {
                    map["ConnectionString"] = self.connectionString!
                }
                if self.netType != nil {
                    map["NetType"] = self.netType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessType"] as? Int32 {
                    self.accessType = value
                }
                if let value = dict["ConnectionString"] as? String {
                    self.connectionString = value
                }
                if let value = dict["NetType"] as? String {
                    self.netType = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
            }
        }
        public var engineType: String?

        public var netInfoList: [GetLindormV2InstanceEngineListResponseBody.EngineList.NetInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.netInfoList != nil {
                var tmp : [Any] = []
                for k in self.netInfoList! {
                    tmp.append(k.toMap())
                }
                map["NetInfoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["NetInfoList"] as? [Any?] {
                var tmp : [GetLindormV2InstanceEngineListResponseBody.EngineList.NetInfoList] = []
                for v in value {
                    if v != nil {
                        var model = GetLindormV2InstanceEngineListResponseBody.EngineList.NetInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.netInfoList = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var engineList: [GetLindormV2InstanceEngineListResponseBody.EngineList]?

    public var instanceId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.engineList != nil {
            var tmp : [Any] = []
            for k in self.engineList! {
                tmp.append(k.toMap())
            }
            map["EngineList"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["EngineList"] as? [Any?] {
            var tmp : [GetLindormV2InstanceEngineListResponseBody.EngineList] = []
            for v in value {
                if v != nil {
                    var model = GetLindormV2InstanceEngineListResponseBody.EngineList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.engineList = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetLindormV2InstanceEngineListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLindormV2InstanceEngineListResponseBody?

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
            var model = GetLindormV2InstanceEngineListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLindormV2InstanceForTerraformRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetLindormV2InstanceForTerraformResponseBody : Tea.TeaModel {
    public class EngineList : Tea.TeaModel {
        public class ConnectAddressList : Tea.TeaModel {
            public var address: String?

            public var port: String?

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
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["Port"] as? String {
                    self.port = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class NodeGroup : Tea.TeaModel {
            public var category: String?

            public var cpuCoreCount: Int32?

            public var enableAttachLocalDisk: Bool?

            public var localDiskCapacity: Int64?

            public var localDiskCategory: String?

            public var memorySizeGiB: Int32?

            public var nodeSpec: String?

            public var quantity: Int32?

            public var resourceGroupName: String?

            public var specId: String?

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
                if self.cpuCoreCount != nil {
                    map["CpuCoreCount"] = self.cpuCoreCount!
                }
                if self.enableAttachLocalDisk != nil {
                    map["EnableAttachLocalDisk"] = self.enableAttachLocalDisk!
                }
                if self.localDiskCapacity != nil {
                    map["LocalDiskCapacity"] = self.localDiskCapacity!
                }
                if self.localDiskCategory != nil {
                    map["LocalDiskCategory"] = self.localDiskCategory!
                }
                if self.memorySizeGiB != nil {
                    map["MemorySizeGiB"] = self.memorySizeGiB!
                }
                if self.nodeSpec != nil {
                    map["NodeSpec"] = self.nodeSpec!
                }
                if self.quantity != nil {
                    map["Quantity"] = self.quantity!
                }
                if self.resourceGroupName != nil {
                    map["ResourceGroupName"] = self.resourceGroupName!
                }
                if self.specId != nil {
                    map["SpecId"] = self.specId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["CpuCoreCount"] as? Int32 {
                    self.cpuCoreCount = value
                }
                if let value = dict["EnableAttachLocalDisk"] as? Bool {
                    self.enableAttachLocalDisk = value
                }
                if let value = dict["LocalDiskCapacity"] as? Int64 {
                    self.localDiskCapacity = value
                }
                if let value = dict["LocalDiskCategory"] as? String {
                    self.localDiskCategory = value
                }
                if let value = dict["MemorySizeGiB"] as? Int32 {
                    self.memorySizeGiB = value
                }
                if let value = dict["NodeSpec"] as? String {
                    self.nodeSpec = value
                }
                if let value = dict["Quantity"] as? Int32 {
                    self.quantity = value
                }
                if let value = dict["ResourceGroupName"] as? String {
                    self.resourceGroupName = value
                }
                if let value = dict["SpecId"] as? String {
                    self.specId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var connectAddressList: [GetLindormV2InstanceForTerraformResponseBody.EngineList.ConnectAddressList]?

        public var engine: String?

        public var isLastVersion: Bool?

        public var latestVersion: String?

        public var nodeGroup: [GetLindormV2InstanceForTerraformResponseBody.EngineList.NodeGroup]?

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
            if self.connectAddressList != nil {
                var tmp : [Any] = []
                for k in self.connectAddressList! {
                    tmp.append(k.toMap())
                }
                map["ConnectAddressList"] = tmp
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.isLastVersion != nil {
                map["IsLastVersion"] = self.isLastVersion!
            }
            if self.latestVersion != nil {
                map["LatestVersion"] = self.latestVersion!
            }
            if self.nodeGroup != nil {
                var tmp : [Any] = []
                for k in self.nodeGroup! {
                    tmp.append(k.toMap())
                }
                map["NodeGroup"] = tmp
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectAddressList"] as? [Any?] {
                var tmp : [GetLindormV2InstanceForTerraformResponseBody.EngineList.ConnectAddressList] = []
                for v in value {
                    if v != nil {
                        var model = GetLindormV2InstanceForTerraformResponseBody.EngineList.ConnectAddressList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.connectAddressList = tmp
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["IsLastVersion"] as? Bool {
                self.isLastVersion = value
            }
            if let value = dict["LatestVersion"] as? String {
                self.latestVersion = value
            }
            if let value = dict["NodeGroup"] as? [Any?] {
                var tmp : [GetLindormV2InstanceForTerraformResponseBody.EngineList.NodeGroup] = []
                for v in value {
                    if v != nil {
                        var model = GetLindormV2InstanceForTerraformResponseBody.EngineList.NodeGroup()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodeGroup = tmp
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public class StorageUsage : Tea.TeaModel {
        public var capacityByDiskCategory: [[String: Any]]?

        public var engineUsage: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capacityByDiskCategory != nil {
                map["CapacityByDiskCategory"] = self.capacityByDiskCategory!
            }
            if self.engineUsage != nil {
                map["EngineUsage"] = self.engineUsage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CapacityByDiskCategory"] as? [[String: Any]] {
                self.capacityByDiskCategory = value
            }
            if let value = dict["EngineUsage"] as? [String: Any] {
                self.engineUsage = value
            }
        }
    }
    public class WhiteIpList : Tea.TeaModel {
        public var groupName: String?

        public var ipList: String?

        public override init() {
            super.init()
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
            if self.ipList != nil {
                map["IpList"] = self.ipList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["IpList"] as? String {
                self.ipList = value
            }
        }
    }
    public var aliUid: Int64?

    public var arbiterVSwitchId: String?

    public var arbiterZoneId: String?

    public var autoRenew: Bool?

    public var cloudStorageSize: Int64?

    public var coldStorage: Int32?

    public var createMilliseconds: Int64?

    public var deletionProtection: String?

    public var diskCategory: String?

    public var diskThreshold: String?

    public var diskUsage: String?

    public var enableCompute: Bool?

    public var engineList: [GetLindormV2InstanceForTerraformResponseBody.EngineList]?

    public var expiredMilliseconds: Int64?

    public var initialRootPassword: String?

    public var instanceAlias: String?

    public var instanceId: String?

    public var instanceStatus: String?

    public var instanceType: String?

    public var maintainEndTime: String?

    public var maintainStartTime: String?

    public var networkType: String?

    public var payType: String?

    public var primaryVSwitchId: String?

    public var primaryZoneId: String?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var serviceType: String?

    public var standbyVSwitchId: String?

    public var standbyZoneId: String?

    public var storageUsage: GetLindormV2InstanceForTerraformResponseBody.StorageUsage?

    public var vpcId: String?

    public var vswitchId: String?

    public var whiteIpList: [GetLindormV2InstanceForTerraformResponseBody.WhiteIpList]?

    public var zoneEngineInfoMap: [String: Any]?

    public var zoneId: String?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.arbiterVSwitchId != nil {
            map["ArbiterVSwitchId"] = self.arbiterVSwitchId!
        }
        if self.arbiterZoneId != nil {
            map["ArbiterZoneId"] = self.arbiterZoneId!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.cloudStorageSize != nil {
            map["CloudStorageSize"] = self.cloudStorageSize!
        }
        if self.coldStorage != nil {
            map["ColdStorage"] = self.coldStorage!
        }
        if self.createMilliseconds != nil {
            map["CreateMilliseconds"] = self.createMilliseconds!
        }
        if self.deletionProtection != nil {
            map["DeletionProtection"] = self.deletionProtection!
        }
        if self.diskCategory != nil {
            map["DiskCategory"] = self.diskCategory!
        }
        if self.diskThreshold != nil {
            map["DiskThreshold"] = self.diskThreshold!
        }
        if self.diskUsage != nil {
            map["DiskUsage"] = self.diskUsage!
        }
        if self.enableCompute != nil {
            map["EnableCompute"] = self.enableCompute!
        }
        if self.engineList != nil {
            var tmp : [Any] = []
            for k in self.engineList! {
                tmp.append(k.toMap())
            }
            map["EngineList"] = tmp
        }
        if self.expiredMilliseconds != nil {
            map["ExpiredMilliseconds"] = self.expiredMilliseconds!
        }
        if self.initialRootPassword != nil {
            map["InitialRootPassword"] = self.initialRootPassword!
        }
        if self.instanceAlias != nil {
            map["InstanceAlias"] = self.instanceAlias!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.maintainEndTime != nil {
            map["MaintainEndTime"] = self.maintainEndTime!
        }
        if self.maintainStartTime != nil {
            map["MaintainStartTime"] = self.maintainStartTime!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.primaryVSwitchId != nil {
            map["PrimaryVSwitchId"] = self.primaryVSwitchId!
        }
        if self.primaryZoneId != nil {
            map["PrimaryZoneId"] = self.primaryZoneId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.standbyVSwitchId != nil {
            map["StandbyVSwitchId"] = self.standbyVSwitchId!
        }
        if self.standbyZoneId != nil {
            map["StandbyZoneId"] = self.standbyZoneId!
        }
        if self.storageUsage != nil {
            map["StorageUsage"] = self.storageUsage?.toMap()
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vswitchId != nil {
            map["VswitchId"] = self.vswitchId!
        }
        if self.whiteIpList != nil {
            var tmp : [Any] = []
            for k in self.whiteIpList! {
                tmp.append(k.toMap())
            }
            map["WhiteIpList"] = tmp
        }
        if self.zoneEngineInfoMap != nil {
            map["ZoneEngineInfoMap"] = self.zoneEngineInfoMap!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliUid"] as? Int64 {
            self.aliUid = value
        }
        if let value = dict["ArbiterVSwitchId"] as? String {
            self.arbiterVSwitchId = value
        }
        if let value = dict["ArbiterZoneId"] as? String {
            self.arbiterZoneId = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["CloudStorageSize"] as? Int64 {
            self.cloudStorageSize = value
        }
        if let value = dict["ColdStorage"] as? Int32 {
            self.coldStorage = value
        }
        if let value = dict["CreateMilliseconds"] as? Int64 {
            self.createMilliseconds = value
        }
        if let value = dict["DeletionProtection"] as? String {
            self.deletionProtection = value
        }
        if let value = dict["DiskCategory"] as? String {
            self.diskCategory = value
        }
        if let value = dict["DiskThreshold"] as? String {
            self.diskThreshold = value
        }
        if let value = dict["DiskUsage"] as? String {
            self.diskUsage = value
        }
        if let value = dict["EnableCompute"] as? Bool {
            self.enableCompute = value
        }
        if let value = dict["EngineList"] as? [Any?] {
            var tmp : [GetLindormV2InstanceForTerraformResponseBody.EngineList] = []
            for v in value {
                if v != nil {
                    var model = GetLindormV2InstanceForTerraformResponseBody.EngineList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.engineList = tmp
        }
        if let value = dict["ExpiredMilliseconds"] as? Int64 {
            self.expiredMilliseconds = value
        }
        if let value = dict["InitialRootPassword"] as? String {
            self.initialRootPassword = value
        }
        if let value = dict["InstanceAlias"] as? String {
            self.instanceAlias = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceStatus"] as? String {
            self.instanceStatus = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["MaintainEndTime"] as? String {
            self.maintainEndTime = value
        }
        if let value = dict["MaintainStartTime"] as? String {
            self.maintainStartTime = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PrimaryVSwitchId"] as? String {
            self.primaryVSwitchId = value
        }
        if let value = dict["PrimaryZoneId"] as? String {
            self.primaryZoneId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["StandbyVSwitchId"] as? String {
            self.standbyVSwitchId = value
        }
        if let value = dict["StandbyZoneId"] as? String {
            self.standbyZoneId = value
        }
        if let value = dict["StorageUsage"] as? [String: Any?] {
            var model = GetLindormV2InstanceForTerraformResponseBody.StorageUsage()
            model.fromMap(value)
            self.storageUsage = model
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VswitchId"] as? String {
            self.vswitchId = value
        }
        if let value = dict["WhiteIpList"] as? [Any?] {
            var tmp : [GetLindormV2InstanceForTerraformResponseBody.WhiteIpList] = []
            for v in value {
                if v != nil {
                    var model = GetLindormV2InstanceForTerraformResponseBody.WhiteIpList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.whiteIpList = tmp
        }
        if let value = dict["ZoneEngineInfoMap"] as? [String: Any] {
            self.zoneEngineInfoMap = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class GetLindormV2InstanceForTerraformResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLindormV2InstanceForTerraformResponseBody?

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
            var model = GetLindormV2InstanceForTerraformResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLindormV2InstanceSecurityGroupsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetLindormV2InstanceSecurityGroupsResponseBody : Tea.TeaModel {
    public class SgList : Tea.TeaModel {
        public var gmtModified: String?

        public var ipList: String?

        public var isAvailable: Bool?

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
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.ipList != nil {
                map["IpList"] = self.ipList!
            }
            if self.isAvailable != nil {
                map["IsAvailable"] = self.isAvailable!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["IpList"] as? String {
                self.ipList = value
            }
            if let value = dict["IsAvailable"] as? Bool {
                self.isAvailable = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var instanceId: String?

    public var requestId: String?

    public var sgList: [GetLindormV2InstanceSecurityGroupsResponseBody.SgList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sgList != nil {
            var tmp : [Any] = []
            for k in self.sgList! {
                tmp.append(k.toMap())
            }
            map["SgList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SgList"] as? [Any?] {
            var tmp : [GetLindormV2InstanceSecurityGroupsResponseBody.SgList] = []
            for v in value {
                if v != nil {
                    var model = GetLindormV2InstanceSecurityGroupsResponseBody.SgList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sgList = tmp
        }
    }
}

public class GetLindormV2InstanceSecurityGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLindormV2InstanceSecurityGroupsResponseBody?

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
            var model = GetLindormV2InstanceSecurityGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLindormV2StorageUsageRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetLindormV2StorageUsageResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var capacityByDiskCategory: [[String: Any]]?

    public var instanceStorageZoneMap: [String: Any]?

    public var requestId: String?

    public var usageByDiskCategory: [[String: Any]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.capacityByDiskCategory != nil {
            map["CapacityByDiskCategory"] = self.capacityByDiskCategory!
        }
        if self.instanceStorageZoneMap != nil {
            map["InstanceStorageZoneMap"] = self.instanceStorageZoneMap!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.usageByDiskCategory != nil {
            map["UsageByDiskCategory"] = self.usageByDiskCategory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["CapacityByDiskCategory"] as? [[String: Any]] {
            self.capacityByDiskCategory = value
        }
        if let value = dict["InstanceStorageZoneMap"] as? [String: Any] {
            self.instanceStorageZoneMap = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UsageByDiskCategory"] as? [[String: Any]] {
            self.usageByDiskCategory = value
        }
    }
}

public class GetLindormV2StorageUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLindormV2StorageUsageResponseBody?

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
            var model = GetLindormV2StorageUsageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLindormV2StreamEngineInfoRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetLindormV2StreamEngineInfoResponseBody : Tea.TeaModel {
    public class ResourceGroupList : Tea.TeaModel {
        public var jmIpList: [String]?

        public var quantity: Int32?

        public var resourceGroupName: String?

        public var sgIpList: [String]?

        public var spec: String?

        public var specId: String?

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
            if self.jmIpList != nil {
                map["JmIpList"] = self.jmIpList!
            }
            if self.quantity != nil {
                map["Quantity"] = self.quantity!
            }
            if self.resourceGroupName != nil {
                map["ResourceGroupName"] = self.resourceGroupName!
            }
            if self.sgIpList != nil {
                map["SgIpList"] = self.sgIpList!
            }
            if self.spec != nil {
                map["Spec"] = self.spec!
            }
            if self.specId != nil {
                map["SpecId"] = self.specId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JmIpList"] as? [String] {
                self.jmIpList = value
            }
            if let value = dict["Quantity"] as? Int32 {
                self.quantity = value
            }
            if let value = dict["ResourceGroupName"] as? String {
                self.resourceGroupName = value
            }
            if let value = dict["SgIpList"] as? [String] {
                self.sgIpList = value
            }
            if let value = dict["Spec"] as? String {
                self.spec = value
            }
            if let value = dict["SpecId"] as? String {
                self.specId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var instanceId: String?

    public var requestId: String?

    public var resourceGroupList: [GetLindormV2StreamEngineInfoResponseBody.ResourceGroupList]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupList != nil {
            var tmp : [Any] = []
            for k in self.resourceGroupList! {
                tmp.append(k.toMap())
            }
            map["ResourceGroupList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupList"] as? [Any?] {
            var tmp : [GetLindormV2StreamEngineInfoResponseBody.ResourceGroupList] = []
            for v in value {
                if v != nil {
                    var model = GetLindormV2StreamEngineInfoResponseBody.ResourceGroupList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceGroupList = tmp
        }
    }
}

public class GetLindormV2StreamEngineInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLindormV2StreamEngineInfoResponseBody?

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
            var model = GetLindormV2StreamEngineInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAutoScalingConfigsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class ListAutoScalingConfigsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ScaleConfigs : Tea.TeaModel {
            public class ScaleRuleList : Tea.TeaModel {
                public var configId: String?

                public var enabled: Bool?

                public var endTime: String?

                public var instanceId: String?

                public var observationWindow: Int32?

                public var operationType: String?

                public var ruleId: String?

                public var ruleName: String?

                public var ruleType: String?

                public var scaleInStep: Int32?

                public var scaleOutStep: Int32?

                public var silenceTime: Int32?

                public var startTime: String?

                public var targetMetric: String?

                public var targetNodes: Int32?

                public var thresholdLower: Int32?

                public var thresholdUpper: Int32?

                public var triggerCronExpr: String?

                public override init() {
                    super.init()
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
                    if self.enabled != nil {
                        map["Enabled"] = self.enabled!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.instanceId != nil {
                        map["InstanceId"] = self.instanceId!
                    }
                    if self.observationWindow != nil {
                        map["ObservationWindow"] = self.observationWindow!
                    }
                    if self.operationType != nil {
                        map["OperationType"] = self.operationType!
                    }
                    if self.ruleId != nil {
                        map["RuleId"] = self.ruleId!
                    }
                    if self.ruleName != nil {
                        map["RuleName"] = self.ruleName!
                    }
                    if self.ruleType != nil {
                        map["RuleType"] = self.ruleType!
                    }
                    if self.scaleInStep != nil {
                        map["ScaleInStep"] = self.scaleInStep!
                    }
                    if self.scaleOutStep != nil {
                        map["ScaleOutStep"] = self.scaleOutStep!
                    }
                    if self.silenceTime != nil {
                        map["SilenceTime"] = self.silenceTime!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.targetMetric != nil {
                        map["TargetMetric"] = self.targetMetric!
                    }
                    if self.targetNodes != nil {
                        map["TargetNodes"] = self.targetNodes!
                    }
                    if self.thresholdLower != nil {
                        map["ThresholdLower"] = self.thresholdLower!
                    }
                    if self.thresholdUpper != nil {
                        map["ThresholdUpper"] = self.thresholdUpper!
                    }
                    if self.triggerCronExpr != nil {
                        map["TriggerCronExpr"] = self.triggerCronExpr!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConfigId"] as? String {
                        self.configId = value
                    }
                    if let value = dict["Enabled"] as? Bool {
                        self.enabled = value
                    }
                    if let value = dict["EndTime"] as? String {
                        self.endTime = value
                    }
                    if let value = dict["InstanceId"] as? String {
                        self.instanceId = value
                    }
                    if let value = dict["ObservationWindow"] as? Int32 {
                        self.observationWindow = value
                    }
                    if let value = dict["OperationType"] as? String {
                        self.operationType = value
                    }
                    if let value = dict["RuleId"] as? String {
                        self.ruleId = value
                    }
                    if let value = dict["RuleName"] as? String {
                        self.ruleName = value
                    }
                    if let value = dict["RuleType"] as? String {
                        self.ruleType = value
                    }
                    if let value = dict["ScaleInStep"] as? Int32 {
                        self.scaleInStep = value
                    }
                    if let value = dict["ScaleOutStep"] as? Int32 {
                        self.scaleOutStep = value
                    }
                    if let value = dict["SilenceTime"] as? Int32 {
                        self.silenceTime = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["TargetMetric"] as? String {
                        self.targetMetric = value
                    }
                    if let value = dict["TargetNodes"] as? Int32 {
                        self.targetNodes = value
                    }
                    if let value = dict["ThresholdLower"] as? Int32 {
                        self.thresholdLower = value
                    }
                    if let value = dict["ThresholdUpper"] as? Int32 {
                        self.thresholdUpper = value
                    }
                    if let value = dict["TriggerCronExpr"] as? String {
                        self.triggerCronExpr = value
                    }
                }
            }
            public var configId: String?

            public var configName: String?

            public var effectiveTimeEnd: String?

            public var effectiveTimeStart: String?

            public var enabled: Bool?

            public var engine: String?

            public var instanceId: String?

            public var nodesMax: Int32?

            public var nodesMin: Int32?

            public var scaleRuleList: [ListAutoScalingConfigsResponseBody.Data.ScaleConfigs.ScaleRuleList]?

            public var scaleType: String?

            public var specId: String?

            public override init() {
                super.init()
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
                if self.configName != nil {
                    map["ConfigName"] = self.configName!
                }
                if self.effectiveTimeEnd != nil {
                    map["EffectiveTimeEnd"] = self.effectiveTimeEnd!
                }
                if self.effectiveTimeStart != nil {
                    map["EffectiveTimeStart"] = self.effectiveTimeStart!
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.nodesMax != nil {
                    map["NodesMax"] = self.nodesMax!
                }
                if self.nodesMin != nil {
                    map["NodesMin"] = self.nodesMin!
                }
                if self.scaleRuleList != nil {
                    var tmp : [Any] = []
                    for k in self.scaleRuleList! {
                        tmp.append(k.toMap())
                    }
                    map["ScaleRuleList"] = tmp
                }
                if self.scaleType != nil {
                    map["ScaleType"] = self.scaleType!
                }
                if self.specId != nil {
                    map["SpecId"] = self.specId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfigId"] as? String {
                    self.configId = value
                }
                if let value = dict["ConfigName"] as? String {
                    self.configName = value
                }
                if let value = dict["EffectiveTimeEnd"] as? String {
                    self.effectiveTimeEnd = value
                }
                if let value = dict["EffectiveTimeStart"] as? String {
                    self.effectiveTimeStart = value
                }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["Engine"] as? String {
                    self.engine = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["NodesMax"] as? Int32 {
                    self.nodesMax = value
                }
                if let value = dict["NodesMin"] as? Int32 {
                    self.nodesMin = value
                }
                if let value = dict["ScaleRuleList"] as? [Any?] {
                    var tmp : [ListAutoScalingConfigsResponseBody.Data.ScaleConfigs.ScaleRuleList] = []
                    for v in value {
                        if v != nil {
                            var model = ListAutoScalingConfigsResponseBody.Data.ScaleConfigs.ScaleRuleList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.scaleRuleList = tmp
                }
                if let value = dict["ScaleType"] as? String {
                    self.scaleType = value
                }
                if let value = dict["SpecId"] as? String {
                    self.specId = value
                }
            }
        }
        public var scaleConfigs: [ListAutoScalingConfigsResponseBody.Data.ScaleConfigs]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scaleConfigs != nil {
                var tmp : [Any] = []
                for k in self.scaleConfigs! {
                    tmp.append(k.toMap())
                }
                map["ScaleConfigs"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ScaleConfigs"] as? [Any?] {
                var tmp : [ListAutoScalingConfigsResponseBody.Data.ScaleConfigs] = []
                for v in value {
                    if v != nil {
                        var model = ListAutoScalingConfigsResponseBody.Data.ScaleConfigs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.scaleConfigs = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ListAutoScalingConfigsResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListAutoScalingConfigsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
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

public class ListAutoScalingConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAutoScalingConfigsResponseBody?

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
            var model = ListAutoScalingConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAutoScalingRecordsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
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
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class ListAutoScalingRecordsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ScaleRecords : Tea.TeaModel {
            public var detail: String?

            public var endTime: String?

            public var id: String?

            public var instanceId: String?

            public var oldValue: String?

            public var resourceType: String?

            public var specGroupId: String?

            public var startTime: String?

            public var status: String?

            public var strategy: String?

            public var targetValue: String?

            public override init() {
                super.init()
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
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.oldValue != nil {
                    map["OldValue"] = self.oldValue!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.specGroupId != nil {
                    map["SpecGroupId"] = self.specGroupId!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.strategy != nil {
                    map["Strategy"] = self.strategy!
                }
                if self.targetValue != nil {
                    map["TargetValue"] = self.targetValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Detail"] as? String {
                    self.detail = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["OldValue"] as? String {
                    self.oldValue = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["SpecGroupId"] as? String {
                    self.specGroupId = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Strategy"] as? String {
                    self.strategy = value
                }
                if let value = dict["TargetValue"] as? String {
                    self.targetValue = value
                }
            }
        }
        public var pageNum: Int32?

        public var pageSize: Int32?

        public var scaleRecords: [ListAutoScalingRecordsResponseBody.Data.ScaleRecords]?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.scaleRecords != nil {
                var tmp : [Any] = []
                for k in self.scaleRecords! {
                    tmp.append(k.toMap())
                }
                map["ScaleRecords"] = tmp
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            if self.totalPage != nil {
                map["TotalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["ScaleRecords"] as? [Any?] {
                var tmp : [ListAutoScalingRecordsResponseBody.Data.ScaleRecords] = []
                for v in value {
                    if v != nil {
                        var model = ListAutoScalingRecordsResponseBody.Data.ScaleRecords()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.scaleRecords = tmp
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
            }
            if let value = dict["TotalPage"] as? Int32 {
                self.totalPage = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ListAutoScalingRecordsResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListAutoScalingRecordsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
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

public class ListAutoScalingRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAutoScalingRecordsResponseBody?

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
            var model = ListAutoScalingRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAutoScalingRulesRequest : Tea.TeaModel {
    public var configId: String?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.configId != nil {
            map["ConfigId"] = self.configId!
        }
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigId"] as? String {
            self.configId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class ListAutoScalingRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ScaleRules : Tea.TeaModel {
            public var configId: String?

            public var enabled: Bool?

            public var endTime: String?

            public var instanceId: String?

            public var observationWindow: Int32?

            public var operationType: String?

            public var ruleId: String?

            public var ruleName: String?

            public var ruleType: String?

            public var scaleInStep: Int32?

            public var scaleOutStep: Int32?

            public var silenceTime: Int32?

            public var startTime: String?

            public var targetMetric: String?

            public var targetNodes: Int32?

            public var thresholdLower: Int32?

            public var thresholdUpper: Int32?

            public var triggerCronExpr: String?

            public override init() {
                super.init()
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
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.observationWindow != nil {
                    map["ObservationWindow"] = self.observationWindow!
                }
                if self.operationType != nil {
                    map["OperationType"] = self.operationType!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.ruleType != nil {
                    map["RuleType"] = self.ruleType!
                }
                if self.scaleInStep != nil {
                    map["ScaleInStep"] = self.scaleInStep!
                }
                if self.scaleOutStep != nil {
                    map["ScaleOutStep"] = self.scaleOutStep!
                }
                if self.silenceTime != nil {
                    map["SilenceTime"] = self.silenceTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.targetMetric != nil {
                    map["TargetMetric"] = self.targetMetric!
                }
                if self.targetNodes != nil {
                    map["TargetNodes"] = self.targetNodes!
                }
                if self.thresholdLower != nil {
                    map["ThresholdLower"] = self.thresholdLower!
                }
                if self.thresholdUpper != nil {
                    map["ThresholdUpper"] = self.thresholdUpper!
                }
                if self.triggerCronExpr != nil {
                    map["TriggerCronExpr"] = self.triggerCronExpr!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfigId"] as? String {
                    self.configId = value
                }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["ObservationWindow"] as? Int32 {
                    self.observationWindow = value
                }
                if let value = dict["OperationType"] as? String {
                    self.operationType = value
                }
                if let value = dict["RuleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
                }
                if let value = dict["RuleType"] as? String {
                    self.ruleType = value
                }
                if let value = dict["ScaleInStep"] as? Int32 {
                    self.scaleInStep = value
                }
                if let value = dict["ScaleOutStep"] as? Int32 {
                    self.scaleOutStep = value
                }
                if let value = dict["SilenceTime"] as? Int32 {
                    self.silenceTime = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["TargetMetric"] as? String {
                    self.targetMetric = value
                }
                if let value = dict["TargetNodes"] as? Int32 {
                    self.targetNodes = value
                }
                if let value = dict["ThresholdLower"] as? Int32 {
                    self.thresholdLower = value
                }
                if let value = dict["ThresholdUpper"] as? Int32 {
                    self.thresholdUpper = value
                }
                if let value = dict["TriggerCronExpr"] as? String {
                    self.triggerCronExpr = value
                }
            }
        }
        public var scaleRules: [ListAutoScalingRulesResponseBody.Data.ScaleRules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scaleRules != nil {
                var tmp : [Any] = []
                for k in self.scaleRules! {
                    tmp.append(k.toMap())
                }
                map["ScaleRules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ScaleRules"] as? [Any?] {
                var tmp : [ListAutoScalingRulesResponseBody.Data.ScaleRules] = []
                for v in value {
                    if v != nil {
                        var model = ListAutoScalingRulesResponseBody.Data.ScaleRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.scaleRules = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ListAutoScalingRulesResponseBody.Data?

    public var dynamicCode: String?

    public var dynamicMessage: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListAutoScalingRulesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
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

public class ListAutoScalingRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAutoScalingRulesResponseBody?

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
            var model = ListAutoScalingRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLdpsComputeGroupsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class ListLdpsComputeGroupsResponseBody : Tea.TeaModel {
    public class GroupList : Tea.TeaModel {
        public var exceptionInfo: String?

        public var groupName: String?

        public var isDefault: Bool?

        public var properties: [String: Any]?

        public var state: String?

        public var webUI: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.exceptionInfo != nil {
                map["ExceptionInfo"] = self.exceptionInfo!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.webUI != nil {
                map["WebUI"] = self.webUI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExceptionInfo"] as? String {
                self.exceptionInfo = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["Properties"] as? [String: Any] {
                self.properties = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["WebUI"] as? String {
                self.webUI = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var groupList: [ListLdpsComputeGroupsResponseBody.GroupList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.groupList != nil {
            var tmp : [Any] = []
            for k in self.groupList! {
                tmp.append(k.toMap())
            }
            map["GroupList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["GroupList"] as? [Any?] {
            var tmp : [ListLdpsComputeGroupsResponseBody.GroupList] = []
            for v in value {
                if v != nil {
                    var model = ListLdpsComputeGroupsResponseBody.GroupList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.groupList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListLdpsComputeGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLdpsComputeGroupsResponseBody?

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
            var model = ListLdpsComputeGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public var securityToken: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [Any?] {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesResponseBody.TagResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagResources = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MigrateSingleZoneToMultiZoneRequest : Tea.TeaModel {
    public var arbitraryVSwitchId: String?

    public var arbitraryZoneId: String?

    public var dryRun: Bool?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

    public var standbyVSwitchId: String?

    public var standbyZoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arbitraryVSwitchId != nil {
            map["ArbitraryVSwitchId"] = self.arbitraryVSwitchId!
        }
        if self.arbitraryZoneId != nil {
            map["ArbitraryZoneId"] = self.arbitraryZoneId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.standbyVSwitchId != nil {
            map["StandbyVSwitchId"] = self.standbyVSwitchId!
        }
        if self.standbyZoneId != nil {
            map["StandbyZoneId"] = self.standbyZoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArbitraryVSwitchId"] as? String {
            self.arbitraryVSwitchId = value
        }
        if let value = dict["ArbitraryZoneId"] as? String {
            self.arbitraryZoneId = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["StandbyVSwitchId"] as? String {
            self.standbyVSwitchId = value
        }
        if let value = dict["StandbyZoneId"] as? String {
            self.standbyZoneId = value
        }
    }
}

public class MigrateSingleZoneToMultiZoneResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class MigrateSingleZoneToMultiZoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MigrateSingleZoneToMultiZoneResponseBody?

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
            var model = MigrateSingleZoneToMultiZoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAutoScalingConfigRequest : Tea.TeaModel {
    public var configId: String?

    public var configName: String?

    public var effectiveTimeEnd: String?

    public var effectiveTimeStart: String?

    public var enabled: Bool?

    public var engine: String?

    public var instanceId: String?

    public var nodesMax: Int32?

    public var nodesMin: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scaleType: String?

    public var securityToken: String?

    public var specId: String?

    public override init() {
        super.init()
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
        if self.configName != nil {
            map["ConfigName"] = self.configName!
        }
        if self.effectiveTimeEnd != nil {
            map["EffectiveTimeEnd"] = self.effectiveTimeEnd!
        }
        if self.effectiveTimeStart != nil {
            map["EffectiveTimeStart"] = self.effectiveTimeStart!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodesMax != nil {
            map["NodesMax"] = self.nodesMax!
        }
        if self.nodesMin != nil {
            map["NodesMin"] = self.nodesMin!
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
        if self.scaleType != nil {
            map["ScaleType"] = self.scaleType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.specId != nil {
            map["SpecId"] = self.specId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigId"] as? String {
            self.configId = value
        }
        if let value = dict["ConfigName"] as? String {
            self.configName = value
        }
        if let value = dict["EffectiveTimeEnd"] as? String {
            self.effectiveTimeEnd = value
        }
        if let value = dict["EffectiveTimeStart"] as? String {
            self.effectiveTimeStart = value
        }
        if let value = dict["Enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodesMax"] as? Int32 {
            self.nodesMax = value
        }
        if let value = dict["NodesMin"] as? Int32 {
            self.nodesMin = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ScaleType"] as? String {
            self.scaleType = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["SpecId"] as? String {
            self.specId = value
        }
    }
}

public class ModifyAutoScalingConfigResponseBody : Tea.TeaModel {
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

public class ModifyAutoScalingConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAutoScalingConfigResponseBody?

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
            var model = ModifyAutoScalingConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAutoScalingRuleRequest : Tea.TeaModel {
    public var configId: String?

    public var enabled: Bool?

    public var endTime: String?

    public var instanceId: String?

    public var observationWindow: Int32?

    public var operationType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var ruleId: String?

    public var ruleName: String?

    public var ruleType: String?

    public var scaleInStep: Int32?

    public var scaleOutStep: Int32?

    public var securityToken: String?

    public var silenceTime: Int32?

    public var startTime: String?

    public var targetMetric: String?

    public var targetNodes: Int32?

    public var thresholdLower: Int32?

    public var thresholdUpper: Int32?

    public var triggerCronExpr: String?

    public override init() {
        super.init()
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
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.observationWindow != nil {
            map["ObservationWindow"] = self.observationWindow!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.scaleInStep != nil {
            map["ScaleInStep"] = self.scaleInStep!
        }
        if self.scaleOutStep != nil {
            map["ScaleOutStep"] = self.scaleOutStep!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.silenceTime != nil {
            map["SilenceTime"] = self.silenceTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.targetMetric != nil {
            map["TargetMetric"] = self.targetMetric!
        }
        if self.targetNodes != nil {
            map["TargetNodes"] = self.targetNodes!
        }
        if self.thresholdLower != nil {
            map["ThresholdLower"] = self.thresholdLower!
        }
        if self.thresholdUpper != nil {
            map["ThresholdUpper"] = self.thresholdUpper!
        }
        if self.triggerCronExpr != nil {
            map["TriggerCronExpr"] = self.triggerCronExpr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigId"] as? String {
            self.configId = value
        }
        if let value = dict["Enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ObservationWindow"] as? Int32 {
            self.observationWindow = value
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["RuleType"] as? String {
            self.ruleType = value
        }
        if let value = dict["ScaleInStep"] as? Int32 {
            self.scaleInStep = value
        }
        if let value = dict["ScaleOutStep"] as? Int32 {
            self.scaleOutStep = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["SilenceTime"] as? Int32 {
            self.silenceTime = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TargetMetric"] as? String {
            self.targetMetric = value
        }
        if let value = dict["TargetNodes"] as? Int32 {
            self.targetNodes = value
        }
        if let value = dict["ThresholdLower"] as? Int32 {
            self.thresholdLower = value
        }
        if let value = dict["ThresholdUpper"] as? Int32 {
            self.thresholdUpper = value
        }
        if let value = dict["TriggerCronExpr"] as? String {
            self.triggerCronExpr = value
        }
    }
}

public class ModifyAutoScalingRuleResponseBody : Tea.TeaModel {
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

public class ModifyAutoScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAutoScalingRuleResponseBody?

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
            var model = ModifyAutoScalingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstancePayTypeRequest : Tea.TeaModel {
    public var duration: Int32?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var payType: String?

    public var pricingCycle: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class ModifyInstancePayTypeResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var instanceId: String?

    public var orderId: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyInstancePayTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstancePayTypeResponseBody?

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
            var model = ModifyInstancePayTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyLindormV2InstanceRequest : Tea.TeaModel {
    public class NodeGroupList : Tea.TeaModel {
        public var groupId: String?

        public var nodeCount: String?

        public var nodeDiskSize: Int64?

        public var nodeDiskType: String?

        public var nodeSpec: String?

        public var resourceGroupName: String?

        public override init() {
            super.init()
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
            if self.nodeCount != nil {
                map["NodeCount"] = self.nodeCount!
            }
            if self.nodeDiskSize != nil {
                map["NodeDiskSize"] = self.nodeDiskSize!
            }
            if self.nodeDiskType != nil {
                map["NodeDiskType"] = self.nodeDiskType!
            }
            if self.nodeSpec != nil {
                map["NodeSpec"] = self.nodeSpec!
            }
            if self.resourceGroupName != nil {
                map["ResourceGroupName"] = self.resourceGroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["NodeCount"] as? String {
                self.nodeCount = value
            }
            if let value = dict["NodeDiskSize"] as? Int64 {
                self.nodeDiskSize = value
            }
            if let value = dict["NodeDiskType"] as? String {
                self.nodeDiskType = value
            }
            if let value = dict["NodeSpec"] as? String {
                self.nodeSpec = value
            }
            if let value = dict["ResourceGroupName"] as? String {
                self.resourceGroupName = value
            }
        }
    }
    public var cloudStorageSize: Int64?

    public var cloudStorageType: String?

    public var engineType: String?

    public var instanceId: String?

    public var nodeGroupList: [ModifyLindormV2InstanceRequest.NodeGroupList]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

    public var upgradeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cloudStorageSize != nil {
            map["CloudStorageSize"] = self.cloudStorageSize!
        }
        if self.cloudStorageType != nil {
            map["CloudStorageType"] = self.cloudStorageType!
        }
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nodeGroupList != nil {
            var tmp : [Any] = []
            for k in self.nodeGroupList! {
                tmp.append(k.toMap())
            }
            map["NodeGroupList"] = tmp
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.upgradeType != nil {
            map["UpgradeType"] = self.upgradeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloudStorageSize"] as? Int64 {
            self.cloudStorageSize = value
        }
        if let value = dict["CloudStorageType"] as? String {
            self.cloudStorageType = value
        }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NodeGroupList"] as? [Any?] {
            var tmp : [ModifyLindormV2InstanceRequest.NodeGroupList] = []
            for v in value {
                if v != nil {
                    var model = ModifyLindormV2InstanceRequest.NodeGroupList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodeGroupList = tmp
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["UpgradeType"] as? String {
            self.upgradeType = value
        }
    }
}

public class ModifyLindormV2InstanceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var instanceId: String?

    public var orderId: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyLindormV2InstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyLindormV2InstanceResponseBody?

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
            var model = ModifyLindormV2InstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyLindormV2InstanceSecurityGroupsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityGroups: String?

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
        if self.securityGroups != nil {
            map["SecurityGroups"] = self.securityGroups!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityGroups"] as? String {
            self.securityGroups = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class ModifyLindormV2InstanceSecurityGroupsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyLindormV2InstanceSecurityGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyLindormV2InstanceSecurityGroupsResponseBody?

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
            var model = ModifyLindormV2InstanceSecurityGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyLindormV2WhiteIpListRequest : Tea.TeaModel {
    public var deleteGroup: Bool?

    public var groupName: String?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

    public var whiteIpList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleteGroup != nil {
            map["DeleteGroup"] = self.deleteGroup!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.whiteIpList != nil {
            map["WhiteIpList"] = self.whiteIpList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeleteGroup"] as? Bool {
            self.deleteGroup = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["WhiteIpList"] as? String {
            self.whiteIpList = value
        }
    }
}

public class ModifyLindormV2WhiteIpListResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyLindormV2WhiteIpListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyLindormV2WhiteIpListResponseBody?

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
            var model = ModifyLindormV2WhiteIpListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OpenComputeEngineRequest : Tea.TeaModel {
    public var cpuLimit: String?

    public var instanceId: String?

    public var memoryLimit: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.cpuLimit != nil {
            map["CpuLimit"] = self.cpuLimit!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.memoryLimit != nil {
            map["MemoryLimit"] = self.memoryLimit!
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CpuLimit"] as? String {
            self.cpuLimit = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MemoryLimit"] as? String {
            self.memoryLimit = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class OpenComputeEngineResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class OpenComputeEngineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenComputeEngineResponseBody?

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
            var model = OpenComputeEngineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OpenComputePreCheckRequest : Tea.TeaModel {
    public var cpuLimit: String?

    public var instanceId: String?

    public var memoryLimit: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.cpuLimit != nil {
            map["CpuLimit"] = self.cpuLimit!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.memoryLimit != nil {
            map["MemoryLimit"] = self.memoryLimit!
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CpuLimit"] as? String {
            self.cpuLimit = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MemoryLimit"] as? String {
            self.memoryLimit = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class OpenComputePreCheckResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class OpenComputePreCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenComputePreCheckResponseBody?

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
            var model = OpenComputePreCheckResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OpenLdpsColumnarIndexRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class OpenLdpsColumnarIndexResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class OpenLdpsColumnarIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenLdpsColumnarIndexResponseBody?

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
            var model = OpenLdpsColumnarIndexResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseLindormInstanceRequest : Tea.TeaModel {
    public var immediately: Bool?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.immediately != nil {
            map["Immediately"] = self.immediately!
        }
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Immediately"] as? Bool {
            self.immediately = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class ReleaseLindormInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ReleaseLindormInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseLindormInstanceResponseBody?

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
            var model = ReleaseLindormInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseLindormV2InstanceRequest : Tea.TeaModel {
    public var immediately: Bool?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.immediately != nil {
            map["Immediately"] = self.immediately!
        }
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Immediately"] as? Bool {
            self.immediately = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class ReleaseLindormV2InstanceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ReleaseLindormV2InstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseLindormV2InstanceResponseBody?

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
            var model = ReleaseLindormV2InstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenewLindormInstanceRequest : Tea.TeaModel {
    public var duration: Int32?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pricingCycle: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class RenewLindormInstanceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var instanceId: String?

    public var orderId: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RenewLindormInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewLindormInstanceResponseBody?

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
            var model = RenewLindormInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartLdpsComputeGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class RestartLdpsComputeGroupResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RestartLdpsComputeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartLdpsComputeGroupResponseBody?

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
            var model = RestartLdpsComputeGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetDefaultOlapComputeGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var instanceId: String?

    public var isDefault: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isDefault != nil {
            map["IsDefault"] = self.isDefault!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsDefault"] as? Bool {
            self.isDefault = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class SetDefaultOlapComputeGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SetDefaultOlapComputeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDefaultOlapComputeGroupResponseBody?

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
            var model = SetDefaultOlapComputeGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SwitchLSQLV3MySQLServiceRequest : Tea.TeaModel {
    public var actionType: Int32?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionType"] as? Int32 {
            self.actionType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class SwitchLSQLV3MySQLServiceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SwitchLSQLV3MySQLServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchLSQLV3MySQLServiceResponseBody?

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
            var model = SwitchLSQLV3MySQLServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public var securityToken: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public var securityToken: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UntagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceIpWhiteListRequest : Tea.TeaModel {
    public var delete: Bool?

    public var groupName: String?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityIpList: String?

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
        if self.delete != nil {
            map["Delete"] = self.delete!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
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
        if self.securityIpList != nil {
            map["SecurityIpList"] = self.securityIpList!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Delete"] as? Bool {
            self.delete = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityIpList"] as? String {
            self.securityIpList = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class UpdateInstanceIpWhiteListResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateInstanceIpWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceIpWhiteListResponseBody?

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
            var model = UpdateInstanceIpWhiteListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceSecurityGroupsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityGroups: String?

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
        if self.securityGroups != nil {
            map["SecurityGroups"] = self.securityGroups!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityGroups"] as? String {
            self.securityGroups = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class UpdateInstanceSecurityGroupsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateInstanceSecurityGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceSecurityGroupsResponseBody?

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
            var model = UpdateInstanceSecurityGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateLdpsComputeGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var properties: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.properties != nil {
            map["Properties"] = self.properties!
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Properties"] as? String {
            self.properties = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class UpdateLdpsComputeGroupResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateLdpsComputeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLdpsComputeGroupResponseBody?

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
            var model = UpdateLdpsComputeGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateLindormInstanceAttributeRequest : Tea.TeaModel {
    public var deletionProtection: Bool?

    public var instanceAlias: String?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.deletionProtection != nil {
            map["DeletionProtection"] = self.deletionProtection!
        }
        if self.instanceAlias != nil {
            map["InstanceAlias"] = self.instanceAlias!
        }
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeletionProtection"] as? Bool {
            self.deletionProtection = value
        }
        if let value = dict["InstanceAlias"] as? String {
            self.instanceAlias = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class UpdateLindormInstanceAttributeResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateLindormInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLindormInstanceAttributeResponseBody?

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
            var model = UpdateLindormInstanceAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateLindormV2InstanceRequest : Tea.TeaModel {
    public class EngineList : Tea.TeaModel {
        public class NodeGroupList : Tea.TeaModel {
            public var groupId: String?

            public var nodeCount: Int32?

            public var nodeDiskSize: Int32?

            public var nodeDiskType: String?

            public var nodeSpec: String?

            public var resourceGroupName: String?

            public override init() {
                super.init()
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
                if self.nodeCount != nil {
                    map["NodeCount"] = self.nodeCount!
                }
                if self.nodeDiskSize != nil {
                    map["NodeDiskSize"] = self.nodeDiskSize!
                }
                if self.nodeDiskType != nil {
                    map["NodeDiskType"] = self.nodeDiskType!
                }
                if self.nodeSpec != nil {
                    map["NodeSpec"] = self.nodeSpec!
                }
                if self.resourceGroupName != nil {
                    map["ResourceGroupName"] = self.resourceGroupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GroupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["NodeCount"] as? Int32 {
                    self.nodeCount = value
                }
                if let value = dict["NodeDiskSize"] as? Int32 {
                    self.nodeDiskSize = value
                }
                if let value = dict["NodeDiskType"] as? String {
                    self.nodeDiskType = value
                }
                if let value = dict["NodeSpec"] as? String {
                    self.nodeSpec = value
                }
                if let value = dict["ResourceGroupName"] as? String {
                    self.resourceGroupName = value
                }
            }
        }
        public var engineType: String?

        public var nodeGroupList: [UpdateLindormV2InstanceRequest.EngineList.NodeGroupList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.nodeGroupList != nil {
                var tmp : [Any] = []
                for k in self.nodeGroupList! {
                    tmp.append(k.toMap())
                }
                map["NodeGroupList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["NodeGroupList"] as? [Any?] {
                var tmp : [UpdateLindormV2InstanceRequest.EngineList.NodeGroupList] = []
                for v in value {
                    if v != nil {
                        var model = UpdateLindormV2InstanceRequest.EngineList.NodeGroupList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodeGroupList = tmp
            }
        }
    }
    public var capacityStorageSize: Int32?

    public var cloudStorageSize: Int32?

    public var cloudStorageType: String?

    public var enableCapacityStorage: Bool?

    public var engineList: [UpdateLindormV2InstanceRequest.EngineList]?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.capacityStorageSize != nil {
            map["CapacityStorageSize"] = self.capacityStorageSize!
        }
        if self.cloudStorageSize != nil {
            map["CloudStorageSize"] = self.cloudStorageSize!
        }
        if self.cloudStorageType != nil {
            map["CloudStorageType"] = self.cloudStorageType!
        }
        if self.enableCapacityStorage != nil {
            map["EnableCapacityStorage"] = self.enableCapacityStorage!
        }
        if self.engineList != nil {
            var tmp : [Any] = []
            for k in self.engineList! {
                tmp.append(k.toMap())
            }
            map["EngineList"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CapacityStorageSize"] as? Int32 {
            self.capacityStorageSize = value
        }
        if let value = dict["CloudStorageSize"] as? Int32 {
            self.cloudStorageSize = value
        }
        if let value = dict["CloudStorageType"] as? String {
            self.cloudStorageType = value
        }
        if let value = dict["EnableCapacityStorage"] as? Bool {
            self.enableCapacityStorage = value
        }
        if let value = dict["EngineList"] as? [Any?] {
            var tmp : [UpdateLindormV2InstanceRequest.EngineList] = []
            for v in value {
                if v != nil {
                    var model = UpdateLindormV2InstanceRequest.EngineList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.engineList = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class UpdateLindormV2InstanceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var instanceId: String?

    public var orderId: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateLindormV2InstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLindormV2InstanceResponseBody?

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
            var model = UpdateLindormV2InstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateLindormV2InstanceParameterRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var parameterKey: String?

    public var parameterValue: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

    public var updateType: String?

    public override init() {
        super.init()
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
        if self.parameterKey != nil {
            map["ParameterKey"] = self.parameterKey!
        }
        if self.parameterValue != nil {
            map["ParameterValue"] = self.parameterValue!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.updateType != nil {
            map["UpdateType"] = self.updateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ParameterKey"] as? String {
            self.parameterKey = value
        }
        if let value = dict["ParameterValue"] as? String {
            self.parameterValue = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["UpdateType"] as? String {
            self.updateType = value
        }
    }
}

public class UpdateLindormV2InstanceParameterResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateLindormV2InstanceParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLindormV2InstanceParameterResponseBody?

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
            var model = UpdateLindormV2InstanceParameterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeLindormInstanceRequest : Tea.TeaModel {
    public var clusterStorage: Int32?

    public var coldStorage: Int32?

    public var coreSingleStorage: Int32?

    public var filestoreNum: Int32?

    public var filestoreSpec: String?

    public var instanceId: String?

    public var lindormNum: Int32?

    public var lindormSpec: String?

    public var logNum: Int32?

    public var logSingleStorage: Int32?

    public var logSpec: String?

    public var ltsCoreNum: Int32?

    public var ltsCoreSpec: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

    public var solrNum: Int32?

    public var solrSpec: String?

    public var streamNum: Int32?

    public var streamSpec: String?

    public var tsdbNum: Int32?

    public var tsdbSpec: String?

    public var upgradeType: String?

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
        if self.clusterStorage != nil {
            map["ClusterStorage"] = self.clusterStorage!
        }
        if self.coldStorage != nil {
            map["ColdStorage"] = self.coldStorage!
        }
        if self.coreSingleStorage != nil {
            map["CoreSingleStorage"] = self.coreSingleStorage!
        }
        if self.filestoreNum != nil {
            map["FilestoreNum"] = self.filestoreNum!
        }
        if self.filestoreSpec != nil {
            map["FilestoreSpec"] = self.filestoreSpec!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lindormNum != nil {
            map["LindormNum"] = self.lindormNum!
        }
        if self.lindormSpec != nil {
            map["LindormSpec"] = self.lindormSpec!
        }
        if self.logNum != nil {
            map["LogNum"] = self.logNum!
        }
        if self.logSingleStorage != nil {
            map["LogSingleStorage"] = self.logSingleStorage!
        }
        if self.logSpec != nil {
            map["LogSpec"] = self.logSpec!
        }
        if self.ltsCoreNum != nil {
            map["LtsCoreNum"] = self.ltsCoreNum!
        }
        if self.ltsCoreSpec != nil {
            map["LtsCoreSpec"] = self.ltsCoreSpec!
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.solrNum != nil {
            map["SolrNum"] = self.solrNum!
        }
        if self.solrSpec != nil {
            map["SolrSpec"] = self.solrSpec!
        }
        if self.streamNum != nil {
            map["StreamNum"] = self.streamNum!
        }
        if self.streamSpec != nil {
            map["StreamSpec"] = self.streamSpec!
        }
        if self.tsdbNum != nil {
            map["TsdbNum"] = self.tsdbNum!
        }
        if self.tsdbSpec != nil {
            map["TsdbSpec"] = self.tsdbSpec!
        }
        if self.upgradeType != nil {
            map["UpgradeType"] = self.upgradeType!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterStorage"] as? Int32 {
            self.clusterStorage = value
        }
        if let value = dict["ColdStorage"] as? Int32 {
            self.coldStorage = value
        }
        if let value = dict["CoreSingleStorage"] as? Int32 {
            self.coreSingleStorage = value
        }
        if let value = dict["FilestoreNum"] as? Int32 {
            self.filestoreNum = value
        }
        if let value = dict["FilestoreSpec"] as? String {
            self.filestoreSpec = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LindormNum"] as? Int32 {
            self.lindormNum = value
        }
        if let value = dict["LindormSpec"] as? String {
            self.lindormSpec = value
        }
        if let value = dict["LogNum"] as? Int32 {
            self.logNum = value
        }
        if let value = dict["LogSingleStorage"] as? Int32 {
            self.logSingleStorage = value
        }
        if let value = dict["LogSpec"] as? String {
            self.logSpec = value
        }
        if let value = dict["LtsCoreNum"] as? Int32 {
            self.ltsCoreNum = value
        }
        if let value = dict["LtsCoreSpec"] as? String {
            self.ltsCoreSpec = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["SolrNum"] as? Int32 {
            self.solrNum = value
        }
        if let value = dict["SolrSpec"] as? String {
            self.solrSpec = value
        }
        if let value = dict["StreamNum"] as? Int32 {
            self.streamNum = value
        }
        if let value = dict["StreamSpec"] as? String {
            self.streamSpec = value
        }
        if let value = dict["TsdbNum"] as? Int32 {
            self.tsdbNum = value
        }
        if let value = dict["TsdbSpec"] as? String {
            self.tsdbSpec = value
        }
        if let value = dict["UpgradeType"] as? String {
            self.upgradeType = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class UpgradeLindormInstanceResponseBody : Tea.TeaModel {
    public var orderId: Int64?

    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpgradeLindormInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeLindormInstanceResponseBody?

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
            var model = UpgradeLindormInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeLindormV2StreamEngineRequest : Tea.TeaModel {
    public var customConfig: String?

    public var instanceId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var quantity: Int32?

    public var resourceGroupName: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

    public var spec: String?

    public var specId: String?

    public var upgradeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customConfig != nil {
            map["CustomConfig"] = self.customConfig!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.quantity != nil {
            map["Quantity"] = self.quantity!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.spec != nil {
            map["Spec"] = self.spec!
        }
        if self.specId != nil {
            map["SpecId"] = self.specId!
        }
        if self.upgradeType != nil {
            map["UpgradeType"] = self.upgradeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomConfig"] as? String {
            self.customConfig = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Quantity"] as? Int32 {
            self.quantity = value
        }
        if let value = dict["ResourceGroupName"] as? String {
            self.resourceGroupName = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["Spec"] as? String {
            self.spec = value
        }
        if let value = dict["SpecId"] as? String {
            self.specId = value
        }
        if let value = dict["UpgradeType"] as? String {
            self.upgradeType = value
        }
    }
}

public class UpgradeLindormV2StreamEngineResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpgradeLindormV2StreamEngineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeLindormV2StreamEngineResponseBody?

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
            var model = UpgradeLindormV2StreamEngineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
