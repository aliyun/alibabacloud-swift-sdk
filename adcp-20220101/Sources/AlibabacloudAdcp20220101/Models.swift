import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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

public class AttachClusterToHubRequest : Tea.TeaModel {
    public var attachToMesh: Bool?

    public var clusterId: String?

    public var clusterIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attachToMesh != nil {
            map["AttachToMesh"] = self.attachToMesh!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterIds != nil {
            map["ClusterIds"] = self.clusterIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttachToMesh") {
            self.attachToMesh = dict["AttachToMesh"] as! Bool
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterIds") {
            self.clusterIds = dict["ClusterIds"] as! String
        }
    }
}

public class AttachClusterToHubResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var managedClusterIds: [String]?

    public var requestId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.managedClusterIds != nil {
            map["ManagedClusterIds"] = self.managedClusterIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ManagedClusterIds") {
            self.managedClusterIds = dict["ManagedClusterIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class AttachClusterToHubResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachClusterToHubResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AttachClusterToHubResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var newResourceGroupId: String?

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
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
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
        if dict.keys.contains("NewResourceGroupId") {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateHubClusterRequest : Tea.TeaModel {
    public var apiServerPublicEip: Bool?

    public var argoServerEnabled: Bool?

    public var auditLogEnabled: Bool?

    public var isEnterpriseSecurityGroup: Bool?

    public var name: String?

    public var priceLimit: String?

    public var profile: String?

    public var regionId: String?

    public var resourceGroupID: String?

    public var tag: [Tag]?

    public var vSwitches: String?

    public var vpcId: String?

    public var workflowScheduleMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiServerPublicEip != nil {
            map["ApiServerPublicEip"] = self.apiServerPublicEip!
        }
        if self.argoServerEnabled != nil {
            map["ArgoServerEnabled"] = self.argoServerEnabled!
        }
        if self.auditLogEnabled != nil {
            map["AuditLogEnabled"] = self.auditLogEnabled!
        }
        if self.isEnterpriseSecurityGroup != nil {
            map["IsEnterpriseSecurityGroup"] = self.isEnterpriseSecurityGroup!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.priceLimit != nil {
            map["PriceLimit"] = self.priceLimit!
        }
        if self.profile != nil {
            map["Profile"] = self.profile!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupID != nil {
            map["ResourceGroupID"] = self.resourceGroupID!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vSwitches != nil {
            map["VSwitches"] = self.vSwitches!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.workflowScheduleMode != nil {
            map["WorkflowScheduleMode"] = self.workflowScheduleMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiServerPublicEip") {
            self.apiServerPublicEip = dict["ApiServerPublicEip"] as! Bool
        }
        if dict.keys.contains("ArgoServerEnabled") {
            self.argoServerEnabled = dict["ArgoServerEnabled"] as! Bool
        }
        if dict.keys.contains("AuditLogEnabled") {
            self.auditLogEnabled = dict["AuditLogEnabled"] as! Bool
        }
        if dict.keys.contains("IsEnterpriseSecurityGroup") {
            self.isEnterpriseSecurityGroup = dict["IsEnterpriseSecurityGroup"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PriceLimit") {
            self.priceLimit = dict["PriceLimit"] as! String
        }
        if dict.keys.contains("Profile") {
            self.profile = dict["Profile"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupID") {
            self.resourceGroupID = dict["ResourceGroupID"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("VSwitches") {
            self.vSwitches = dict["VSwitches"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("WorkflowScheduleMode") {
            self.workflowScheduleMode = dict["WorkflowScheduleMode"] as! String
        }
    }
}

public class CreateHubClusterShrinkRequest : Tea.TeaModel {
    public var apiServerPublicEip: Bool?

    public var argoServerEnabled: Bool?

    public var auditLogEnabled: Bool?

    public var isEnterpriseSecurityGroup: Bool?

    public var name: String?

    public var priceLimit: String?

    public var profile: String?

    public var regionId: String?

    public var resourceGroupID: String?

    public var tagShrink: String?

    public var vSwitches: String?

    public var vpcId: String?

    public var workflowScheduleMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiServerPublicEip != nil {
            map["ApiServerPublicEip"] = self.apiServerPublicEip!
        }
        if self.argoServerEnabled != nil {
            map["ArgoServerEnabled"] = self.argoServerEnabled!
        }
        if self.auditLogEnabled != nil {
            map["AuditLogEnabled"] = self.auditLogEnabled!
        }
        if self.isEnterpriseSecurityGroup != nil {
            map["IsEnterpriseSecurityGroup"] = self.isEnterpriseSecurityGroup!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.priceLimit != nil {
            map["PriceLimit"] = self.priceLimit!
        }
        if self.profile != nil {
            map["Profile"] = self.profile!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupID != nil {
            map["ResourceGroupID"] = self.resourceGroupID!
        }
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        if self.vSwitches != nil {
            map["VSwitches"] = self.vSwitches!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.workflowScheduleMode != nil {
            map["WorkflowScheduleMode"] = self.workflowScheduleMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiServerPublicEip") {
            self.apiServerPublicEip = dict["ApiServerPublicEip"] as! Bool
        }
        if dict.keys.contains("ArgoServerEnabled") {
            self.argoServerEnabled = dict["ArgoServerEnabled"] as! Bool
        }
        if dict.keys.contains("AuditLogEnabled") {
            self.auditLogEnabled = dict["AuditLogEnabled"] as! Bool
        }
        if dict.keys.contains("IsEnterpriseSecurityGroup") {
            self.isEnterpriseSecurityGroup = dict["IsEnterpriseSecurityGroup"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PriceLimit") {
            self.priceLimit = dict["PriceLimit"] as! String
        }
        if dict.keys.contains("Profile") {
            self.profile = dict["Profile"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupID") {
            self.resourceGroupID = dict["ResourceGroupID"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tagShrink = dict["Tag"] as! String
        }
        if dict.keys.contains("VSwitches") {
            self.vSwitches = dict["VSwitches"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("WorkflowScheduleMode") {
            self.workflowScheduleMode = dict["WorkflowScheduleMode"] as! String
        }
    }
}

public class CreateHubClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var requestId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateHubClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHubClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateHubClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteHubClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var force: Bool?

    public var retainResources: [String]?

    public override init() {
        super.init()
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
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.retainResources != nil {
            map["RetainResources"] = self.retainResources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Force") {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("RetainResources") {
            self.retainResources = dict["RetainResources"] as! [String]
        }
    }
}

public class DeleteHubClusterShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var force: Bool?

    public var retainResourcesShrink: String?

    public override init() {
        super.init()
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
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.retainResourcesShrink != nil {
            map["RetainResources"] = self.retainResourcesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Force") {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("RetainResources") {
            self.retainResourcesShrink = dict["RetainResources"] as! String
        }
    }
}

public class DeleteHubClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var requestId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DeleteHubClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHubClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteHubClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePolicyInstanceRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterIds: [String]?

    public var policyName: String?

    public override init() {
        super.init()
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
        if self.clusterIds != nil {
            map["ClusterIds"] = self.clusterIds!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterIds") {
            self.clusterIds = dict["ClusterIds"] as! [String]
        }
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
    }
}

public class DeletePolicyInstanceShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterIdsShrink: String?

    public var policyName: String?

    public override init() {
        super.init()
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
        if self.clusterIdsShrink != nil {
            map["ClusterIds"] = self.clusterIdsShrink!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterIds") {
            self.clusterIdsShrink = dict["ClusterIds"] as! String
        }
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
    }
}

public class DeletePolicyInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeletePolicyInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePolicyInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeletePolicyInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserPermissionRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DeleteUserPermissionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteUserPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserPermissionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteUserPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeployPolicyInstanceRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterIds: [String]?

    public var namespaces: [String]?

    public var policyAction: String?

    public var policyName: String?

    public override init() {
        super.init()
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
        if self.clusterIds != nil {
            map["ClusterIds"] = self.clusterIds!
        }
        if self.namespaces != nil {
            map["Namespaces"] = self.namespaces!
        }
        if self.policyAction != nil {
            map["PolicyAction"] = self.policyAction!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterIds") {
            self.clusterIds = dict["ClusterIds"] as! [String]
        }
        if dict.keys.contains("Namespaces") {
            self.namespaces = dict["Namespaces"] as! [String]
        }
        if dict.keys.contains("PolicyAction") {
            self.policyAction = dict["PolicyAction"] as! String
        }
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
    }
}

public class DeployPolicyInstanceShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterIdsShrink: String?

    public var namespacesShrink: String?

    public var policyAction: String?

    public var policyName: String?

    public override init() {
        super.init()
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
        if self.clusterIdsShrink != nil {
            map["ClusterIds"] = self.clusterIdsShrink!
        }
        if self.namespacesShrink != nil {
            map["Namespaces"] = self.namespacesShrink!
        }
        if self.policyAction != nil {
            map["PolicyAction"] = self.policyAction!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterIds") {
            self.clusterIdsShrink = dict["ClusterIds"] as! String
        }
        if dict.keys.contains("Namespaces") {
            self.namespacesShrink = dict["Namespaces"] as! String
        }
        if dict.keys.contains("PolicyAction") {
            self.policyAction = dict["PolicyAction"] as! String
        }
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
    }
}

public class DeployPolicyInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeployPolicyInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployPolicyInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeployPolicyInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHubClusterDetailsRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class DescribeHubClusterDetailsResponseBody : Tea.TeaModel {
    public class Cluster : Tea.TeaModel {
        public class ApiServer : Tea.TeaModel {
            public var apiServerEipId: String?

            public var enabledPublic: Bool?

            public var loadBalancerId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiServerEipId != nil {
                    map["ApiServerEipId"] = self.apiServerEipId!
                }
                if self.enabledPublic != nil {
                    map["EnabledPublic"] = self.enabledPublic!
                }
                if self.loadBalancerId != nil {
                    map["LoadBalancerId"] = self.loadBalancerId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiServerEipId") {
                    self.apiServerEipId = dict["ApiServerEipId"] as! String
                }
                if dict.keys.contains("EnabledPublic") {
                    self.enabledPublic = dict["EnabledPublic"] as! Bool
                }
                if dict.keys.contains("LoadBalancerId") {
                    self.loadBalancerId = dict["LoadBalancerId"] as! String
                }
            }
        }
        public class ClusterInfo : Tea.TeaModel {
            public class MetaData : Tea.TeaModel {
                public class ACKOne : Tea.TeaModel {
                    public class GitOps : Tea.TeaModel {
                        public var accessControlList: [String]?

                        public var enabled: Bool?

                        public var HAEnabled: Bool?

                        public var publicAccessEnabled: Bool?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.accessControlList != nil {
                                map["AccessControlList"] = self.accessControlList!
                            }
                            if self.enabled != nil {
                                map["Enabled"] = self.enabled!
                            }
                            if self.HAEnabled != nil {
                                map["HAEnabled"] = self.HAEnabled!
                            }
                            if self.publicAccessEnabled != nil {
                                map["PublicAccessEnabled"] = self.publicAccessEnabled!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("AccessControlList") {
                                self.accessControlList = dict["AccessControlList"] as! [String]
                            }
                            if dict.keys.contains("Enabled") {
                                self.enabled = dict["Enabled"] as! Bool
                            }
                            if dict.keys.contains("HAEnabled") {
                                self.HAEnabled = dict["HAEnabled"] as! Bool
                            }
                            if dict.keys.contains("PublicAccessEnabled") {
                                self.publicAccessEnabled = dict["PublicAccessEnabled"] as! Bool
                            }
                        }
                    }
                    public class WorkFlow : Tea.TeaModel {
                        public class ArgoWorkflow : Tea.TeaModel {
                            public var accessControlList: [String]?

                            public var enabled: Bool?

                            public var publicAccessEnabled: Bool?

                            public var serverEnabled: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.accessControlList != nil {
                                    map["AccessControlList"] = self.accessControlList!
                                }
                                if self.enabled != nil {
                                    map["Enabled"] = self.enabled!
                                }
                                if self.publicAccessEnabled != nil {
                                    map["PublicAccessEnabled"] = self.publicAccessEnabled!
                                }
                                if self.serverEnabled != nil {
                                    map["ServerEnabled"] = self.serverEnabled!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("AccessControlList") {
                                    self.accessControlList = dict["AccessControlList"] as! [String]
                                }
                                if dict.keys.contains("Enabled") {
                                    self.enabled = dict["Enabled"] as! Bool
                                }
                                if dict.keys.contains("PublicAccessEnabled") {
                                    self.publicAccessEnabled = dict["PublicAccessEnabled"] as! Bool
                                }
                                if dict.keys.contains("ServerEnabled") {
                                    self.serverEnabled = dict["ServerEnabled"] as! String
                                }
                            }
                        }
                        public var argoWorkflow: DescribeHubClusterDetailsResponseBody.Cluster.ClusterInfo.MetaData.ACKOne.WorkFlow.ArgoWorkflow?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.argoWorkflow?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.argoWorkflow != nil {
                                map["ArgoWorkflow"] = self.argoWorkflow?.toMap()
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ArgoWorkflow") {
                                var model = DescribeHubClusterDetailsResponseBody.Cluster.ClusterInfo.MetaData.ACKOne.WorkFlow.ArgoWorkflow()
                                model.fromMap(dict["ArgoWorkflow"] as! [String: Any])
                                self.argoWorkflow = model
                            }
                        }
                    }
                    public var gitOps: DescribeHubClusterDetailsResponseBody.Cluster.ClusterInfo.MetaData.ACKOne.GitOps?

                    public var workFlow: DescribeHubClusterDetailsResponseBody.Cluster.ClusterInfo.MetaData.ACKOne.WorkFlow?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.gitOps?.validate()
                        try self.workFlow?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.gitOps != nil {
                            map["GitOps"] = self.gitOps?.toMap()
                        }
                        if self.workFlow != nil {
                            map["WorkFlow"] = self.workFlow?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("GitOps") {
                            var model = DescribeHubClusterDetailsResponseBody.Cluster.ClusterInfo.MetaData.ACKOne.GitOps()
                            model.fromMap(dict["GitOps"] as! [String: Any])
                            self.gitOps = model
                        }
                        if dict.keys.contains("WorkFlow") {
                            var model = DescribeHubClusterDetailsResponseBody.Cluster.ClusterInfo.MetaData.ACKOne.WorkFlow()
                            model.fromMap(dict["WorkFlow"] as! [String: Any])
                            self.workFlow = model
                        }
                    }
                }
                public var ACKOne: DescribeHubClusterDetailsResponseBody.Cluster.ClusterInfo.MetaData.ACKOne?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.ACKOne?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ACKOne != nil {
                        map["ACKOne"] = self.ACKOne?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ACKOne") {
                        var model = DescribeHubClusterDetailsResponseBody.Cluster.ClusterInfo.MetaData.ACKOne()
                        model.fromMap(dict["ACKOne"] as! [String: Any])
                        self.ACKOne = model
                    }
                }
            }
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var clusterId: String?

            public var clusterSpec: String?

            public var creationTime: String?

            public var errorMessage: String?

            public var metaData: DescribeHubClusterDetailsResponseBody.Cluster.ClusterInfo.MetaData?

            public var name: String?

            public var profile: String?

            public var regionId: String?

            public var resourceGroupID: String?

            public var state: String?

            public var tags: [DescribeHubClusterDetailsResponseBody.Cluster.ClusterInfo.Tags]?

            public var updateTime: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.metaData?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.clusterSpec != nil {
                    map["ClusterSpec"] = self.clusterSpec!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.metaData != nil {
                    map["MetaData"] = self.metaData?.toMap()
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.profile != nil {
                    map["Profile"] = self.profile!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupID != nil {
                    map["ResourceGroupID"] = self.resourceGroupID!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("ClusterSpec") {
                    self.clusterSpec = dict["ClusterSpec"] as! String
                }
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("MetaData") {
                    var model = DescribeHubClusterDetailsResponseBody.Cluster.ClusterInfo.MetaData()
                    model.fromMap(dict["MetaData"] as! [String: Any])
                    self.metaData = model
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Profile") {
                    self.profile = dict["Profile"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceGroupID") {
                    self.resourceGroupID = dict["ResourceGroupID"] as! String
                }
                if dict.keys.contains("State") {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("Tags") {
                    var tmp : [DescribeHubClusterDetailsResponseBody.Cluster.ClusterInfo.Tags] = []
                    for v in dict["Tags"] as! [Any] {
                        var model = DescribeHubClusterDetailsResponseBody.Cluster.ClusterInfo.Tags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public class Conditions : Tea.TeaModel {
            public var message: String?

            public var reason: String?

            public var status: String?

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
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
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
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Reason") {
                    self.reason = dict["Reason"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public class Endpoints : Tea.TeaModel {
            public var intranetApiServerEndpoint: String?

            public var publicApiServerEndpoint: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.intranetApiServerEndpoint != nil {
                    map["IntranetApiServerEndpoint"] = self.intranetApiServerEndpoint!
                }
                if self.publicApiServerEndpoint != nil {
                    map["PublicApiServerEndpoint"] = self.publicApiServerEndpoint!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IntranetApiServerEndpoint") {
                    self.intranetApiServerEndpoint = dict["IntranetApiServerEndpoint"] as! String
                }
                if dict.keys.contains("PublicApiServerEndpoint") {
                    self.publicApiServerEndpoint = dict["PublicApiServerEndpoint"] as! String
                }
            }
        }
        public class LogConfig : Tea.TeaModel {
            public var enableLog: Bool?

            public var logProject: String?

            public var logStoreTTL: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableLog != nil {
                    map["EnableLog"] = self.enableLog!
                }
                if self.logProject != nil {
                    map["LogProject"] = self.logProject!
                }
                if self.logStoreTTL != nil {
                    map["LogStoreTTL"] = self.logStoreTTL!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableLog") {
                    self.enableLog = dict["EnableLog"] as! Bool
                }
                if dict.keys.contains("LogProject") {
                    self.logProject = dict["LogProject"] as! String
                }
                if dict.keys.contains("LogStoreTTL") {
                    self.logStoreTTL = dict["LogStoreTTL"] as! String
                }
            }
        }
        public class MeshConfig : Tea.TeaModel {
            public var enableMesh: Bool?

            public var meshId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableMesh != nil {
                    map["EnableMesh"] = self.enableMesh!
                }
                if self.meshId != nil {
                    map["MeshId"] = self.meshId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableMesh") {
                    self.enableMesh = dict["EnableMesh"] as! Bool
                }
                if dict.keys.contains("MeshId") {
                    self.meshId = dict["MeshId"] as! String
                }
            }
        }
        public class Network : Tea.TeaModel {
            public var clusterDomain: String?

            public var IPStack: String?

            public var securityGroupIDs: [String]?

            public var vSwitches: [String]?

            public var vpcId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterDomain != nil {
                    map["ClusterDomain"] = self.clusterDomain!
                }
                if self.IPStack != nil {
                    map["IPStack"] = self.IPStack!
                }
                if self.securityGroupIDs != nil {
                    map["SecurityGroupIDs"] = self.securityGroupIDs!
                }
                if self.vSwitches != nil {
                    map["VSwitches"] = self.vSwitches!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterDomain") {
                    self.clusterDomain = dict["ClusterDomain"] as! String
                }
                if dict.keys.contains("IPStack") {
                    self.IPStack = dict["IPStack"] as! String
                }
                if dict.keys.contains("SecurityGroupIDs") {
                    self.securityGroupIDs = dict["SecurityGroupIDs"] as! [String]
                }
                if dict.keys.contains("VSwitches") {
                    self.vSwitches = dict["VSwitches"] as! [String]
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public class WorkflowConfig : Tea.TeaModel {
            public class WorkflowUnits : Tea.TeaModel {
                public class VSwitches : Tea.TeaModel {
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
                        if self.vswitchId != nil {
                            map["VswitchId"] = self.vswitchId!
                        }
                        if self.zoneId != nil {
                            map["ZoneId"] = self.zoneId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("VswitchId") {
                            self.vswitchId = dict["VswitchId"] as! String
                        }
                        if dict.keys.contains("ZoneId") {
                            self.zoneId = dict["ZoneId"] as! String
                        }
                    }
                }
                public var regionId: String?

                public var vSwitches: [DescribeHubClusterDetailsResponseBody.Cluster.WorkflowConfig.WorkflowUnits.VSwitches]?

                public var vpcId: String?

                public override init() {
                    super.init()
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
                    if self.vSwitches != nil {
                        var tmp : [Any] = []
                        for k in self.vSwitches! {
                            tmp.append(k.toMap())
                        }
                        map["VSwitches"] = tmp
                    }
                    if self.vpcId != nil {
                        map["VpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RegionId") {
                        self.regionId = dict["RegionId"] as! String
                    }
                    if dict.keys.contains("VSwitches") {
                        var tmp : [DescribeHubClusterDetailsResponseBody.Cluster.WorkflowConfig.WorkflowUnits.VSwitches] = []
                        for v in dict["VSwitches"] as! [Any] {
                            var model = DescribeHubClusterDetailsResponseBody.Cluster.WorkflowConfig.WorkflowUnits.VSwitches()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.vSwitches = tmp
                    }
                    if dict.keys.contains("VpcId") {
                        self.vpcId = dict["VpcId"] as! String
                    }
                }
            }
            public var argoServerEnabled: Bool?

            public var priceLimit: String?

            public var workflowScheduleMode: String?

            public var workflowUnits: [DescribeHubClusterDetailsResponseBody.Cluster.WorkflowConfig.WorkflowUnits]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.argoServerEnabled != nil {
                    map["ArgoServerEnabled"] = self.argoServerEnabled!
                }
                if self.priceLimit != nil {
                    map["PriceLimit"] = self.priceLimit!
                }
                if self.workflowScheduleMode != nil {
                    map["WorkflowScheduleMode"] = self.workflowScheduleMode!
                }
                if self.workflowUnits != nil {
                    var tmp : [Any] = []
                    for k in self.workflowUnits! {
                        tmp.append(k.toMap())
                    }
                    map["WorkflowUnits"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArgoServerEnabled") {
                    self.argoServerEnabled = dict["ArgoServerEnabled"] as! Bool
                }
                if dict.keys.contains("PriceLimit") {
                    self.priceLimit = dict["PriceLimit"] as! String
                }
                if dict.keys.contains("WorkflowScheduleMode") {
                    self.workflowScheduleMode = dict["WorkflowScheduleMode"] as! String
                }
                if dict.keys.contains("WorkflowUnits") {
                    var tmp : [DescribeHubClusterDetailsResponseBody.Cluster.WorkflowConfig.WorkflowUnits] = []
                    for v in dict["WorkflowUnits"] as! [Any] {
                        var model = DescribeHubClusterDetailsResponseBody.Cluster.WorkflowConfig.WorkflowUnits()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.workflowUnits = tmp
                }
            }
        }
        public var apiServer: DescribeHubClusterDetailsResponseBody.Cluster.ApiServer?

        public var clusterInfo: DescribeHubClusterDetailsResponseBody.Cluster.ClusterInfo?

        public var conditions: [DescribeHubClusterDetailsResponseBody.Cluster.Conditions]?

        public var endpoints: DescribeHubClusterDetailsResponseBody.Cluster.Endpoints?

        public var logConfig: DescribeHubClusterDetailsResponseBody.Cluster.LogConfig?

        public var meshConfig: DescribeHubClusterDetailsResponseBody.Cluster.MeshConfig?

        public var network: DescribeHubClusterDetailsResponseBody.Cluster.Network?

        public var workflowConfig: DescribeHubClusterDetailsResponseBody.Cluster.WorkflowConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.apiServer?.validate()
            try self.clusterInfo?.validate()
            try self.endpoints?.validate()
            try self.logConfig?.validate()
            try self.meshConfig?.validate()
            try self.network?.validate()
            try self.workflowConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiServer != nil {
                map["ApiServer"] = self.apiServer?.toMap()
            }
            if self.clusterInfo != nil {
                map["ClusterInfo"] = self.clusterInfo?.toMap()
            }
            if self.conditions != nil {
                var tmp : [Any] = []
                for k in self.conditions! {
                    tmp.append(k.toMap())
                }
                map["Conditions"] = tmp
            }
            if self.endpoints != nil {
                map["Endpoints"] = self.endpoints?.toMap()
            }
            if self.logConfig != nil {
                map["LogConfig"] = self.logConfig?.toMap()
            }
            if self.meshConfig != nil {
                map["MeshConfig"] = self.meshConfig?.toMap()
            }
            if self.network != nil {
                map["Network"] = self.network?.toMap()
            }
            if self.workflowConfig != nil {
                map["WorkflowConfig"] = self.workflowConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiServer") {
                var model = DescribeHubClusterDetailsResponseBody.Cluster.ApiServer()
                model.fromMap(dict["ApiServer"] as! [String: Any])
                self.apiServer = model
            }
            if dict.keys.contains("ClusterInfo") {
                var model = DescribeHubClusterDetailsResponseBody.Cluster.ClusterInfo()
                model.fromMap(dict["ClusterInfo"] as! [String: Any])
                self.clusterInfo = model
            }
            if dict.keys.contains("Conditions") {
                var tmp : [DescribeHubClusterDetailsResponseBody.Cluster.Conditions] = []
                for v in dict["Conditions"] as! [Any] {
                    var model = DescribeHubClusterDetailsResponseBody.Cluster.Conditions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.conditions = tmp
            }
            if dict.keys.contains("Endpoints") {
                var model = DescribeHubClusterDetailsResponseBody.Cluster.Endpoints()
                model.fromMap(dict["Endpoints"] as! [String: Any])
                self.endpoints = model
            }
            if dict.keys.contains("LogConfig") {
                var model = DescribeHubClusterDetailsResponseBody.Cluster.LogConfig()
                model.fromMap(dict["LogConfig"] as! [String: Any])
                self.logConfig = model
            }
            if dict.keys.contains("MeshConfig") {
                var model = DescribeHubClusterDetailsResponseBody.Cluster.MeshConfig()
                model.fromMap(dict["MeshConfig"] as! [String: Any])
                self.meshConfig = model
            }
            if dict.keys.contains("Network") {
                var model = DescribeHubClusterDetailsResponseBody.Cluster.Network()
                model.fromMap(dict["Network"] as! [String: Any])
                self.network = model
            }
            if dict.keys.contains("WorkflowConfig") {
                var model = DescribeHubClusterDetailsResponseBody.Cluster.WorkflowConfig()
                model.fromMap(dict["WorkflowConfig"] as! [String: Any])
                self.workflowConfig = model
            }
        }
    }
    public var cluster: DescribeHubClusterDetailsResponseBody.Cluster?

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
            var model = DescribeHubClusterDetailsResponseBody.Cluster()
            model.fromMap(dict["Cluster"] as! [String: Any])
            self.cluster = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeHubClusterDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHubClusterDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeHubClusterDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHubClusterKubeconfigRequest : Tea.TeaModel {
    public var clusterId: String?

    public var privateIpAddress: Bool?

    public override init() {
        super.init()
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
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PrivateIpAddress") {
            self.privateIpAddress = dict["PrivateIpAddress"] as! Bool
        }
    }
}

public class DescribeHubClusterKubeconfigResponseBody : Tea.TeaModel {
    public var kubeconfig: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.kubeconfig != nil {
            map["Kubeconfig"] = self.kubeconfig!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Kubeconfig") {
            self.kubeconfig = dict["Kubeconfig"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeHubClusterKubeconfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHubClusterKubeconfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeHubClusterKubeconfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHubClusterLogsRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class DescribeHubClusterLogsResponseBody : Tea.TeaModel {
    public class Logs : Tea.TeaModel {
        public var clusterId: String?

        public var clusterLog: String?

        public var creationTime: String?

        public var logLevel: String?

        public override init() {
            super.init()
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
            if self.clusterLog != nil {
                map["ClusterLog"] = self.clusterLog!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.logLevel != nil {
                map["LogLevel"] = self.logLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ClusterLog") {
                self.clusterLog = dict["ClusterLog"] as! String
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("LogLevel") {
                self.logLevel = dict["LogLevel"] as! String
            }
        }
    }
    public var logs: [DescribeHubClusterLogsResponseBody.Logs]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Logs") {
            var tmp : [DescribeHubClusterLogsResponseBody.Logs] = []
            for v in dict["Logs"] as! [Any] {
                var model = DescribeHubClusterLogsResponseBody.Logs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.logs = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeHubClusterLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHubClusterLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeHubClusterLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHubClustersRequest : Tea.TeaModel {
    public var profile: String?

    public var resourceGroupId: String?

    public var tag: [Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.profile != nil {
            map["Profile"] = self.profile!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Profile") {
            self.profile = dict["Profile"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeHubClustersShrinkRequest : Tea.TeaModel {
    public var profile: String?

    public var resourceGroupId: String?

    public var tagShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.profile != nil {
            map["Profile"] = self.profile!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Profile") {
            self.profile = dict["Profile"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tagShrink = dict["Tag"] as! String
        }
    }
}

public class DescribeHubClustersResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public class ApiServer : Tea.TeaModel {
            public var apiServerEipId: String?

            public var enabledPublic: Bool?

            public var loadBalancerId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiServerEipId != nil {
                    map["ApiServerEipId"] = self.apiServerEipId!
                }
                if self.enabledPublic != nil {
                    map["EnabledPublic"] = self.enabledPublic!
                }
                if self.loadBalancerId != nil {
                    map["LoadBalancerId"] = self.loadBalancerId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiServerEipId") {
                    self.apiServerEipId = dict["ApiServerEipId"] as! String
                }
                if dict.keys.contains("EnabledPublic") {
                    self.enabledPublic = dict["EnabledPublic"] as! Bool
                }
                if dict.keys.contains("LoadBalancerId") {
                    self.loadBalancerId = dict["LoadBalancerId"] as! String
                }
            }
        }
        public class ClusterInfo : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var clusterId: String?

            public var clusterSpec: String?

            public var creationTime: String?

            public var errorMessage: String?

            public var name: String?

            public var profile: String?

            public var regionId: String?

            public var resourceGroupID: String?

            public var state: String?

            public var tags: [DescribeHubClustersResponseBody.Clusters.ClusterInfo.Tags]?

            public var updateTime: String?

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
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.clusterSpec != nil {
                    map["ClusterSpec"] = self.clusterSpec!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.profile != nil {
                    map["Profile"] = self.profile!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupID != nil {
                    map["ResourceGroupID"] = self.resourceGroupID!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("ClusterSpec") {
                    self.clusterSpec = dict["ClusterSpec"] as! String
                }
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Profile") {
                    self.profile = dict["Profile"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceGroupID") {
                    self.resourceGroupID = dict["ResourceGroupID"] as! String
                }
                if dict.keys.contains("State") {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("Tags") {
                    var tmp : [DescribeHubClustersResponseBody.Clusters.ClusterInfo.Tags] = []
                    for v in dict["Tags"] as! [Any] {
                        var model = DescribeHubClustersResponseBody.Clusters.ClusterInfo.Tags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public class Conditions : Tea.TeaModel {
            public var message: String?

            public var reason: String?

            public var status: String?

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
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
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
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Reason") {
                    self.reason = dict["Reason"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public class Endpoints : Tea.TeaModel {
            public var intranetApiServerEndpoint: String?

            public var publicApiServerEndpoint: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.intranetApiServerEndpoint != nil {
                    map["IntranetApiServerEndpoint"] = self.intranetApiServerEndpoint!
                }
                if self.publicApiServerEndpoint != nil {
                    map["PublicApiServerEndpoint"] = self.publicApiServerEndpoint!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IntranetApiServerEndpoint") {
                    self.intranetApiServerEndpoint = dict["IntranetApiServerEndpoint"] as! String
                }
                if dict.keys.contains("PublicApiServerEndpoint") {
                    self.publicApiServerEndpoint = dict["PublicApiServerEndpoint"] as! String
                }
            }
        }
        public class LogConfig : Tea.TeaModel {
            public var enableLog: Bool?

            public var logProject: String?

            public var logStoreTTL: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableLog != nil {
                    map["EnableLog"] = self.enableLog!
                }
                if self.logProject != nil {
                    map["LogProject"] = self.logProject!
                }
                if self.logStoreTTL != nil {
                    map["LogStoreTTL"] = self.logStoreTTL!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableLog") {
                    self.enableLog = dict["EnableLog"] as! Bool
                }
                if dict.keys.contains("LogProject") {
                    self.logProject = dict["LogProject"] as! String
                }
                if dict.keys.contains("LogStoreTTL") {
                    self.logStoreTTL = dict["LogStoreTTL"] as! String
                }
            }
        }
        public class MeshConfig : Tea.TeaModel {
            public var enableMesh: Bool?

            public var meshId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableMesh != nil {
                    map["EnableMesh"] = self.enableMesh!
                }
                if self.meshId != nil {
                    map["MeshId"] = self.meshId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableMesh") {
                    self.enableMesh = dict["EnableMesh"] as! Bool
                }
                if dict.keys.contains("MeshId") {
                    self.meshId = dict["MeshId"] as! String
                }
            }
        }
        public class Network : Tea.TeaModel {
            public var clusterDomain: String?

            public var securityGroupIDs: [String]?

            public var vSwitches: [String]?

            public var vpcId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterDomain != nil {
                    map["ClusterDomain"] = self.clusterDomain!
                }
                if self.securityGroupIDs != nil {
                    map["SecurityGroupIDs"] = self.securityGroupIDs!
                }
                if self.vSwitches != nil {
                    map["VSwitches"] = self.vSwitches!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterDomain") {
                    self.clusterDomain = dict["ClusterDomain"] as! String
                }
                if dict.keys.contains("SecurityGroupIDs") {
                    self.securityGroupIDs = dict["SecurityGroupIDs"] as! [String]
                }
                if dict.keys.contains("VSwitches") {
                    self.vSwitches = dict["VSwitches"] as! [String]
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public var apiServer: DescribeHubClustersResponseBody.Clusters.ApiServer?

        public var clusterInfo: DescribeHubClustersResponseBody.Clusters.ClusterInfo?

        public var conditions: [DescribeHubClustersResponseBody.Clusters.Conditions]?

        public var endpoints: DescribeHubClustersResponseBody.Clusters.Endpoints?

        public var logConfig: DescribeHubClustersResponseBody.Clusters.LogConfig?

        public var meshConfig: DescribeHubClustersResponseBody.Clusters.MeshConfig?

        public var network: DescribeHubClustersResponseBody.Clusters.Network?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.apiServer?.validate()
            try self.clusterInfo?.validate()
            try self.endpoints?.validate()
            try self.logConfig?.validate()
            try self.meshConfig?.validate()
            try self.network?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiServer != nil {
                map["ApiServer"] = self.apiServer?.toMap()
            }
            if self.clusterInfo != nil {
                map["ClusterInfo"] = self.clusterInfo?.toMap()
            }
            if self.conditions != nil {
                var tmp : [Any] = []
                for k in self.conditions! {
                    tmp.append(k.toMap())
                }
                map["Conditions"] = tmp
            }
            if self.endpoints != nil {
                map["Endpoints"] = self.endpoints?.toMap()
            }
            if self.logConfig != nil {
                map["LogConfig"] = self.logConfig?.toMap()
            }
            if self.meshConfig != nil {
                map["MeshConfig"] = self.meshConfig?.toMap()
            }
            if self.network != nil {
                map["Network"] = self.network?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiServer") {
                var model = DescribeHubClustersResponseBody.Clusters.ApiServer()
                model.fromMap(dict["ApiServer"] as! [String: Any])
                self.apiServer = model
            }
            if dict.keys.contains("ClusterInfo") {
                var model = DescribeHubClustersResponseBody.Clusters.ClusterInfo()
                model.fromMap(dict["ClusterInfo"] as! [String: Any])
                self.clusterInfo = model
            }
            if dict.keys.contains("Conditions") {
                var tmp : [DescribeHubClustersResponseBody.Clusters.Conditions] = []
                for v in dict["Conditions"] as! [Any] {
                    var model = DescribeHubClustersResponseBody.Clusters.Conditions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.conditions = tmp
            }
            if dict.keys.contains("Endpoints") {
                var model = DescribeHubClustersResponseBody.Clusters.Endpoints()
                model.fromMap(dict["Endpoints"] as! [String: Any])
                self.endpoints = model
            }
            if dict.keys.contains("LogConfig") {
                var model = DescribeHubClustersResponseBody.Clusters.LogConfig()
                model.fromMap(dict["LogConfig"] as! [String: Any])
                self.logConfig = model
            }
            if dict.keys.contains("MeshConfig") {
                var model = DescribeHubClustersResponseBody.Clusters.MeshConfig()
                model.fromMap(dict["MeshConfig"] as! [String: Any])
                self.meshConfig = model
            }
            if dict.keys.contains("Network") {
                var model = DescribeHubClustersResponseBody.Clusters.Network()
                model.fromMap(dict["Network"] as! [String: Any])
                self.network = model
            }
        }
    }
    public var clusters: [DescribeHubClustersResponseBody.Clusters]?

    public var requestId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Clusters") {
            var tmp : [DescribeHubClustersResponseBody.Clusters] = []
            for v in dict["Clusters"] as! [Any] {
                var model = DescribeHubClustersResponseBody.Clusters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clusters = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeHubClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHubClustersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeHubClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeManagedClustersRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class DescribeManagedClustersResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public class Cluster : Tea.TeaModel {
            public var clusterID: String?

            public var clusterSpec: String?

            public var clusterType: String?

            public var created: String?

            public var currentVersion: String?

            public var initVersion: String?

            public var name: String?

            public var profile: String?

            public var region: String?

            public var resourceGroupId: String?

            public var state: String?

            public var updated: String?

            public var vSwitchID: String?

            public var vpcID: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterID != nil {
                    map["ClusterID"] = self.clusterID!
                }
                if self.clusterSpec != nil {
                    map["ClusterSpec"] = self.clusterSpec!
                }
                if self.clusterType != nil {
                    map["ClusterType"] = self.clusterType!
                }
                if self.created != nil {
                    map["Created"] = self.created!
                }
                if self.currentVersion != nil {
                    map["CurrentVersion"] = self.currentVersion!
                }
                if self.initVersion != nil {
                    map["InitVersion"] = self.initVersion!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.profile != nil {
                    map["Profile"] = self.profile!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.updated != nil {
                    map["Updated"] = self.updated!
                }
                if self.vSwitchID != nil {
                    map["VSwitchID"] = self.vSwitchID!
                }
                if self.vpcID != nil {
                    map["VpcID"] = self.vpcID!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterID") {
                    self.clusterID = dict["ClusterID"] as! String
                }
                if dict.keys.contains("ClusterSpec") {
                    self.clusterSpec = dict["ClusterSpec"] as! String
                }
                if dict.keys.contains("ClusterType") {
                    self.clusterType = dict["ClusterType"] as! String
                }
                if dict.keys.contains("Created") {
                    self.created = dict["Created"] as! String
                }
                if dict.keys.contains("CurrentVersion") {
                    self.currentVersion = dict["CurrentVersion"] as! String
                }
                if dict.keys.contains("InitVersion") {
                    self.initVersion = dict["InitVersion"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Profile") {
                    self.profile = dict["Profile"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("State") {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("Updated") {
                    self.updated = dict["Updated"] as! String
                }
                if dict.keys.contains("VSwitchID") {
                    self.vSwitchID = dict["VSwitchID"] as! String
                }
                if dict.keys.contains("VpcID") {
                    self.vpcID = dict["VpcID"] as! String
                }
            }
        }
        public class MeshStatus : Tea.TeaModel {
            public var inMesh: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inMesh != nil {
                    map["InMesh"] = self.inMesh!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InMesh") {
                    self.inMesh = dict["InMesh"] as! Bool
                }
            }
        }
        public class Status : Tea.TeaModel {
            public var message: String?

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
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("State") {
                    self.state = dict["State"] as! String
                }
            }
        }
        public var cluster: DescribeManagedClustersResponseBody.Clusters.Cluster?

        public var meshStatus: DescribeManagedClustersResponseBody.Clusters.MeshStatus?

        public var status: DescribeManagedClustersResponseBody.Clusters.Status?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cluster?.validate()
            try self.meshStatus?.validate()
            try self.status?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cluster != nil {
                map["Cluster"] = self.cluster?.toMap()
            }
            if self.meshStatus != nil {
                map["MeshStatus"] = self.meshStatus?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cluster") {
                var model = DescribeManagedClustersResponseBody.Clusters.Cluster()
                model.fromMap(dict["Cluster"] as! [String: Any])
                self.cluster = model
            }
            if dict.keys.contains("MeshStatus") {
                var model = DescribeManagedClustersResponseBody.Clusters.MeshStatus()
                model.fromMap(dict["MeshStatus"] as! [String: Any])
                self.meshStatus = model
            }
            if dict.keys.contains("Status") {
                var model = DescribeManagedClustersResponseBody.Clusters.Status()
                model.fromMap(dict["Status"] as! [String: Any])
                self.status = model
            }
        }
    }
    public var clusters: [DescribeManagedClustersResponseBody.Clusters]?

    public var requestId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Clusters") {
            var tmp : [DescribeManagedClustersResponseBody.Clusters] = []
            for v in dict["Clusters"] as! [Any] {
                var model = DescribeManagedClustersResponseBody.Clusters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clusters = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeManagedClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeManagedClustersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeManagedClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePoliciesResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public var category: String?

        public var names: [String]?

        public override init() {
            super.init()
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
            if self.names != nil {
                map["Names"] = self.names!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Names") {
                self.names = dict["Names"] as! [String]
            }
        }
    }
    public var policies: [DescribePoliciesResponseBody.Policies]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policies != nil {
            var tmp : [Any] = []
            for k in self.policies! {
                tmp.append(k.toMap())
            }
            map["Policies"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policies") {
            var tmp : [DescribePoliciesResponseBody.Policies] = []
            for v in dict["Policies"] as! [Any] {
                var model = DescribePoliciesResponseBody.Policies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policies = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribePoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePolicyDetailsRequest : Tea.TeaModel {
    public var policyName: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
    }
}

public class DescribePolicyDetailsResponseBody : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public var action: String?

        public var category: String?

        public var created: String?

        public var description_: String?

        public var name: String?

        public var noConfig: Int32?

        public var severity: String?

        public var template: String?

        public var updated: String?

        public override init() {
            super.init()
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
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.created != nil {
                map["Created"] = self.created!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.noConfig != nil {
                map["NoConfig"] = self.noConfig!
            }
            if self.severity != nil {
                map["Severity"] = self.severity!
            }
            if self.template != nil {
                map["Template"] = self.template!
            }
            if self.updated != nil {
                map["Updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Created") {
                self.created = dict["Created"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NoConfig") {
                self.noConfig = dict["NoConfig"] as! Int32
            }
            if dict.keys.contains("Severity") {
                self.severity = dict["Severity"] as! String
            }
            if dict.keys.contains("Template") {
                self.template = dict["Template"] as! String
            }
            if dict.keys.contains("Updated") {
                self.updated = dict["Updated"] as! String
            }
        }
    }
    public var policy: DescribePolicyDetailsResponseBody.Policy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policy") {
            var model = DescribePolicyDetailsResponseBody.Policy()
            model.fromMap(dict["Policy"] as! [String: Any])
            self.policy = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePolicyDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePolicyDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribePolicyDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePolicyGovernanceInClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class DescribePolicyGovernanceInClusterResponseBody : Tea.TeaModel {
    public class PolicyGovernances : Tea.TeaModel {
        public class Cluster : Tea.TeaModel {
            public var clusterId: String?

            public var clusterSpec: String?

            public var clusterType: String?

            public var name: String?

            public var profile: String?

            public var regionId: String?

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
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.clusterSpec != nil {
                    map["ClusterSpec"] = self.clusterSpec!
                }
                if self.clusterType != nil {
                    map["ClusterType"] = self.clusterType!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.profile != nil {
                    map["Profile"] = self.profile!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("ClusterSpec") {
                    self.clusterSpec = dict["ClusterSpec"] as! String
                }
                if dict.keys.contains("ClusterType") {
                    self.clusterType = dict["ClusterType"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Profile") {
                    self.profile = dict["Profile"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("State") {
                    self.state = dict["State"] as! String
                }
            }
        }
        public class PolicyGovernance : Tea.TeaModel {
            public class AdmitLog : Tea.TeaModel {
                public var count: String?

                public var logProject: String?

                public var logStore: String?

                public var logs: [[String: String]]?

                public var progress: String?

                public override init() {
                    super.init()
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
                    if self.logProject != nil {
                        map["LogProject"] = self.logProject!
                    }
                    if self.logStore != nil {
                        map["LogStore"] = self.logStore!
                    }
                    if self.logs != nil {
                        map["Logs"] = self.logs!
                    }
                    if self.progress != nil {
                        map["Progress"] = self.progress!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Count") {
                        self.count = dict["Count"] as! String
                    }
                    if dict.keys.contains("LogProject") {
                        self.logProject = dict["LogProject"] as! String
                    }
                    if dict.keys.contains("LogStore") {
                        self.logStore = dict["LogStore"] as! String
                    }
                    if dict.keys.contains("Logs") {
                        self.logs = dict["Logs"] as! [[String: String]]
                    }
                    if dict.keys.contains("Progress") {
                        self.progress = dict["Progress"] as! String
                    }
                }
            }
            public class OnState : Tea.TeaModel {
                public var enabledCount: Int64?

                public var severity: String?

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
                    if self.enabledCount != nil {
                        map["EnabledCount"] = self.enabledCount!
                    }
                    if self.severity != nil {
                        map["Severity"] = self.severity!
                    }
                    if self.totalCount != nil {
                        map["TotalCount"] = self.totalCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EnabledCount") {
                        self.enabledCount = dict["EnabledCount"] as! Int64
                    }
                    if dict.keys.contains("Severity") {
                        self.severity = dict["Severity"] as! String
                    }
                    if dict.keys.contains("TotalCount") {
                        self.totalCount = dict["TotalCount"] as! Int64
                    }
                }
            }
            public class Violation : Tea.TeaModel {
                public class TotalViolations : Tea.TeaModel {
                    public class Deny : Tea.TeaModel {
                        public var severity: String?

                        public var violations: Int64?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.severity != nil {
                                map["Severity"] = self.severity!
                            }
                            if self.violations != nil {
                                map["Violations"] = self.violations!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Severity") {
                                self.severity = dict["Severity"] as! String
                            }
                            if dict.keys.contains("Violations") {
                                self.violations = dict["Violations"] as! Int64
                            }
                        }
                    }
                    public class Warn : Tea.TeaModel {
                        public var severity: String?

                        public var violations: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.severity != nil {
                                map["Severity"] = self.severity!
                            }
                            if self.violations != nil {
                                map["Violations"] = self.violations!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Severity") {
                                self.severity = dict["Severity"] as! String
                            }
                            if dict.keys.contains("Violations") {
                                self.violations = dict["Violations"] as! String
                            }
                        }
                    }
                    public var deny: [DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation.TotalViolations.Deny]?

                    public var warn: [DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation.TotalViolations.Warn]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.deny != nil {
                            var tmp : [Any] = []
                            for k in self.deny! {
                                tmp.append(k.toMap())
                            }
                            map["Deny"] = tmp
                        }
                        if self.warn != nil {
                            var tmp : [Any] = []
                            for k in self.warn! {
                                tmp.append(k.toMap())
                            }
                            map["Warn"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Deny") {
                            var tmp : [DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation.TotalViolations.Deny] = []
                            for v in dict["Deny"] as! [Any] {
                                var model = DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation.TotalViolations.Deny()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.deny = tmp
                        }
                        if dict.keys.contains("Warn") {
                            var tmp : [DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation.TotalViolations.Warn] = []
                            for v in dict["Warn"] as! [Any] {
                                var model = DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation.TotalViolations.Warn()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.warn = tmp
                        }
                    }
                }
                public class Violations : Tea.TeaModel {
                    public class Deny : Tea.TeaModel {
                        public var policyDescription: String?

                        public var policyName: String?

                        public var severity: String?

                        public var violations: Int64?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.policyDescription != nil {
                                map["PolicyDescription"] = self.policyDescription!
                            }
                            if self.policyName != nil {
                                map["PolicyName"] = self.policyName!
                            }
                            if self.severity != nil {
                                map["Severity"] = self.severity!
                            }
                            if self.violations != nil {
                                map["Violations"] = self.violations!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("PolicyDescription") {
                                self.policyDescription = dict["PolicyDescription"] as! String
                            }
                            if dict.keys.contains("PolicyName") {
                                self.policyName = dict["PolicyName"] as! String
                            }
                            if dict.keys.contains("Severity") {
                                self.severity = dict["Severity"] as! String
                            }
                            if dict.keys.contains("Violations") {
                                self.violations = dict["Violations"] as! Int64
                            }
                        }
                    }
                    public class Warn : Tea.TeaModel {
                        public var policyDescription: String?

                        public var policyName: String?

                        public var severity: String?

                        public var violations: Int64?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.policyDescription != nil {
                                map["PolicyDescription"] = self.policyDescription!
                            }
                            if self.policyName != nil {
                                map["PolicyName"] = self.policyName!
                            }
                            if self.severity != nil {
                                map["Severity"] = self.severity!
                            }
                            if self.violations != nil {
                                map["Violations"] = self.violations!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("PolicyDescription") {
                                self.policyDescription = dict["PolicyDescription"] as! String
                            }
                            if dict.keys.contains("PolicyName") {
                                self.policyName = dict["PolicyName"] as! String
                            }
                            if dict.keys.contains("Severity") {
                                self.severity = dict["Severity"] as! String
                            }
                            if dict.keys.contains("Violations") {
                                self.violations = dict["Violations"] as! Int64
                            }
                        }
                    }
                    public var deny: [DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation.Violations.Deny]?

                    public var warn: [DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation.Violations.Warn]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.deny != nil {
                            var tmp : [Any] = []
                            for k in self.deny! {
                                tmp.append(k.toMap())
                            }
                            map["Deny"] = tmp
                        }
                        if self.warn != nil {
                            var tmp : [Any] = []
                            for k in self.warn! {
                                tmp.append(k.toMap())
                            }
                            map["Warn"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Deny") {
                            var tmp : [DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation.Violations.Deny] = []
                            for v in dict["Deny"] as! [Any] {
                                var model = DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation.Violations.Deny()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.deny = tmp
                        }
                        if dict.keys.contains("Warn") {
                            var tmp : [DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation.Violations.Warn] = []
                            for v in dict["Warn"] as! [Any] {
                                var model = DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation.Violations.Warn()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.warn = tmp
                        }
                    }
                }
                public var totalViolations: DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation.TotalViolations?

                public var violations: DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation.Violations?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.totalViolations?.validate()
                    try self.violations?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.totalViolations != nil {
                        map["TotalViolations"] = self.totalViolations?.toMap()
                    }
                    if self.violations != nil {
                        map["Violations"] = self.violations?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TotalViolations") {
                        var model = DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation.TotalViolations()
                        model.fromMap(dict["TotalViolations"] as! [String: Any])
                        self.totalViolations = model
                    }
                    if dict.keys.contains("Violations") {
                        var model = DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation.Violations()
                        model.fromMap(dict["Violations"] as! [String: Any])
                        self.violations = model
                    }
                }
            }
            public var admitLog: DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.AdmitLog?

            public var onState: [DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.OnState]?

            public var violation: DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.admitLog?.validate()
                try self.violation?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.admitLog != nil {
                    map["AdmitLog"] = self.admitLog?.toMap()
                }
                if self.onState != nil {
                    var tmp : [Any] = []
                    for k in self.onState! {
                        tmp.append(k.toMap())
                    }
                    map["OnState"] = tmp
                }
                if self.violation != nil {
                    map["Violation"] = self.violation?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AdmitLog") {
                    var model = DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.AdmitLog()
                    model.fromMap(dict["AdmitLog"] as! [String: Any])
                    self.admitLog = model
                }
                if dict.keys.contains("OnState") {
                    var tmp : [DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.OnState] = []
                    for v in dict["OnState"] as! [Any] {
                        var model = DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.OnState()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.onState = tmp
                }
                if dict.keys.contains("Violation") {
                    var model = DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance.Violation()
                    model.fromMap(dict["Violation"] as! [String: Any])
                    self.violation = model
                }
            }
        }
        public var cluster: DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.Cluster?

        public var policyGovernance: DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cluster?.validate()
            try self.policyGovernance?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cluster != nil {
                map["Cluster"] = self.cluster?.toMap()
            }
            if self.policyGovernance != nil {
                map["PolicyGovernance"] = self.policyGovernance?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cluster") {
                var model = DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.Cluster()
                model.fromMap(dict["Cluster"] as! [String: Any])
                self.cluster = model
            }
            if dict.keys.contains("PolicyGovernance") {
                var model = DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances.PolicyGovernance()
                model.fromMap(dict["PolicyGovernance"] as! [String: Any])
                self.policyGovernance = model
            }
        }
    }
    public var policyGovernances: [DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyGovernances != nil {
            var tmp : [Any] = []
            for k in self.policyGovernances! {
                tmp.append(k.toMap())
            }
            map["PolicyGovernances"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyGovernances") {
            var tmp : [DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances] = []
            for v in dict["PolicyGovernances"] as! [Any] {
                var model = DescribePolicyGovernanceInClusterResponseBody.PolicyGovernances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policyGovernances = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePolicyGovernanceInClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePolicyGovernanceInClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribePolicyGovernanceInClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePolicyInstancesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var policyName: String?

    public override init() {
        super.init()
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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
    }
}

public class DescribePolicyInstancesResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public var clusterId: String?

        public var instanceName: String?

        public var policyAction: String?

        public var policyCategory: String?

        public var policyDescription: String?

        public var policyName: String?

        public var policyParameters: [String: String]?

        public var policyScope: String?

        public var policySeverity: String?

        public var totalViolations: Int64?

        public override init() {
            super.init()
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
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.policyAction != nil {
                map["PolicyAction"] = self.policyAction!
            }
            if self.policyCategory != nil {
                map["PolicyCategory"] = self.policyCategory!
            }
            if self.policyDescription != nil {
                map["PolicyDescription"] = self.policyDescription!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.policyParameters != nil {
                map["PolicyParameters"] = self.policyParameters!
            }
            if self.policyScope != nil {
                map["PolicyScope"] = self.policyScope!
            }
            if self.policySeverity != nil {
                map["PolicySeverity"] = self.policySeverity!
            }
            if self.totalViolations != nil {
                map["TotalViolations"] = self.totalViolations!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("PolicyAction") {
                self.policyAction = dict["PolicyAction"] as! String
            }
            if dict.keys.contains("PolicyCategory") {
                self.policyCategory = dict["PolicyCategory"] as! String
            }
            if dict.keys.contains("PolicyDescription") {
                self.policyDescription = dict["PolicyDescription"] as! String
            }
            if dict.keys.contains("PolicyName") {
                self.policyName = dict["PolicyName"] as! String
            }
            if dict.keys.contains("PolicyParameters") {
                self.policyParameters = dict["PolicyParameters"] as! [String: String]
            }
            if dict.keys.contains("PolicyScope") {
                self.policyScope = dict["PolicyScope"] as! String
            }
            if dict.keys.contains("PolicySeverity") {
                self.policySeverity = dict["PolicySeverity"] as! String
            }
            if dict.keys.contains("TotalViolations") {
                self.totalViolations = dict["TotalViolations"] as! Int64
            }
        }
    }
    public var policies: [DescribePolicyInstancesResponseBody.Policies]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policies != nil {
            var tmp : [Any] = []
            for k in self.policies! {
                tmp.append(k.toMap())
            }
            map["Policies"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policies") {
            var tmp : [DescribePolicyInstancesResponseBody.Policies] = []
            for v in dict["Policies"] as! [Any] {
                var model = DescribePolicyInstancesResponseBody.Policies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policies = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePolicyInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePolicyInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribePolicyInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePolicyInstancesStatusRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class DescribePolicyInstancesStatusResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class PolicyInstances : Tea.TeaModel {
            public class PolicyClusters : Tea.TeaModel {
                public var clusterId: String?

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
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ClusterId") {
                        self.clusterId = dict["ClusterId"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
                    }
                }
            }
            public var policyCategory: String?

            public var policyClusters: [DescribePolicyInstancesStatusResponseBody.Policies.PolicyInstances.PolicyClusters]?

            public var policyDescription: String?

            public var policyInstancesCount: Int64?

            public var policyName: String?

            public var policySeverity: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyCategory != nil {
                    map["PolicyCategory"] = self.policyCategory!
                }
                if self.policyClusters != nil {
                    var tmp : [Any] = []
                    for k in self.policyClusters! {
                        tmp.append(k.toMap())
                    }
                    map["PolicyClusters"] = tmp
                }
                if self.policyDescription != nil {
                    map["PolicyDescription"] = self.policyDescription!
                }
                if self.policyInstancesCount != nil {
                    map["PolicyInstancesCount"] = self.policyInstancesCount!
                }
                if self.policyName != nil {
                    map["PolicyName"] = self.policyName!
                }
                if self.policySeverity != nil {
                    map["PolicySeverity"] = self.policySeverity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyCategory") {
                    self.policyCategory = dict["PolicyCategory"] as! String
                }
                if dict.keys.contains("PolicyClusters") {
                    var tmp : [DescribePolicyInstancesStatusResponseBody.Policies.PolicyInstances.PolicyClusters] = []
                    for v in dict["PolicyClusters"] as! [Any] {
                        var model = DescribePolicyInstancesStatusResponseBody.Policies.PolicyInstances.PolicyClusters()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.policyClusters = tmp
                }
                if dict.keys.contains("PolicyDescription") {
                    self.policyDescription = dict["PolicyDescription"] as! String
                }
                if dict.keys.contains("PolicyInstancesCount") {
                    self.policyInstancesCount = dict["PolicyInstancesCount"] as! Int64
                }
                if dict.keys.contains("PolicyName") {
                    self.policyName = dict["PolicyName"] as! String
                }
                if dict.keys.contains("PolicySeverity") {
                    self.policySeverity = dict["PolicySeverity"] as! String
                }
            }
        }
        public class SeverityInfo : Tea.TeaModel {
            public var severityCount: String?

            public var severityType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.severityCount != nil {
                    map["SeverityCount"] = self.severityCount!
                }
                if self.severityType != nil {
                    map["SeverityType"] = self.severityType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SeverityCount") {
                    self.severityCount = dict["SeverityCount"] as! String
                }
                if dict.keys.contains("SeverityType") {
                    self.severityType = dict["SeverityType"] as! String
                }
            }
        }
        public var policyInstances: [DescribePolicyInstancesStatusResponseBody.Policies.PolicyInstances]?

        public var severityInfo: [DescribePolicyInstancesStatusResponseBody.Policies.SeverityInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policyInstances != nil {
                var tmp : [Any] = []
                for k in self.policyInstances! {
                    tmp.append(k.toMap())
                }
                map["PolicyInstances"] = tmp
            }
            if self.severityInfo != nil {
                var tmp : [Any] = []
                for k in self.severityInfo! {
                    tmp.append(k.toMap())
                }
                map["SeverityInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PolicyInstances") {
                var tmp : [DescribePolicyInstancesStatusResponseBody.Policies.PolicyInstances] = []
                for v in dict["PolicyInstances"] as! [Any] {
                    var model = DescribePolicyInstancesStatusResponseBody.Policies.PolicyInstances()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.policyInstances = tmp
            }
            if dict.keys.contains("SeverityInfo") {
                var tmp : [DescribePolicyInstancesStatusResponseBody.Policies.SeverityInfo] = []
                for v in dict["SeverityInfo"] as! [Any] {
                    var model = DescribePolicyInstancesStatusResponseBody.Policies.SeverityInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.severityInfo = tmp
            }
        }
    }
    public var policies: DescribePolicyInstancesStatusResponseBody.Policies?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policies?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policies != nil {
            map["Policies"] = self.policies?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policies") {
            var model = DescribePolicyInstancesStatusResponseBody.Policies()
            model.fromMap(dict["Policies"] as! [String: Any])
            self.policies = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePolicyInstancesStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePolicyInstancesStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribePolicyInstancesStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var language: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.language != nil {
            map["Language"] = self.language!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

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
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = DescribeRegionsResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class DescribeUserPermissionsRequest : Tea.TeaModel {
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeUserPermissionsResponseBody : Tea.TeaModel {
    public class Permissions : Tea.TeaModel {
        public var resourceId: String?

        public var resourceType: String?

        public var roleName: String?

        public var roleType: String?

        public override init() {
            super.init()
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
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.roleType != nil {
                map["RoleType"] = self.roleType!
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
            if dict.keys.contains("RoleName") {
                self.roleName = dict["RoleName"] as! String
            }
            if dict.keys.contains("RoleType") {
                self.roleType = dict["RoleType"] as! String
            }
        }
    }
    public var permissions: [DescribeUserPermissionsResponseBody.Permissions]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.permissions != nil {
            var tmp : [Any] = []
            for k in self.permissions! {
                tmp.append(k.toMap())
            }
            map["Permissions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Permissions") {
            var tmp : [DescribeUserPermissionsResponseBody.Permissions] = []
            for v in dict["Permissions"] as! [Any] {
                var model = DescribeUserPermissionsResponseBody.Permissions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.permissions = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeUserPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserPermissionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeUserPermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachClusterFromHubRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterIds: String?

    public var detachFromMesh: Bool?

    public override init() {
        super.init()
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
        if self.clusterIds != nil {
            map["ClusterIds"] = self.clusterIds!
        }
        if self.detachFromMesh != nil {
            map["DetachFromMesh"] = self.detachFromMesh!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterIds") {
            self.clusterIds = dict["ClusterIds"] as! String
        }
        if dict.keys.contains("DetachFromMesh") {
            self.detachFromMesh = dict["DetachFromMesh"] as! Bool
        }
    }
}

public class DetachClusterFromHubResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var managedClusterIds: [String]?

    public var requestId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.managedClusterIds != nil {
            map["ManagedClusterIds"] = self.managedClusterIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ManagedClusterIds") {
            self.managedClusterIds = dict["ManagedClusterIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DetachClusterFromHubResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachClusterFromHubResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DetachClusterFromHubResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GrantUserPermissionRequest : Tea.TeaModel {
    public var clusterId: String?

    public var isRamRole: Bool?

    public var namespace: String?

    public var roleName: String?

    public var roleType: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.isRamRole != nil {
            map["IsRamRole"] = self.isRamRole!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("IsRamRole") {
            self.isRamRole = dict["IsRamRole"] as! Bool
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GrantUserPermissionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class GrantUserPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantUserPermissionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GrantUserPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GrantUserPermissionsRequest : Tea.TeaModel {
    public class Permissions : Tea.TeaModel {
        public var clusterId: String?

        public var isRamRole: Bool?

        public var namespace: String?

        public var roleName: String?

        public var roleType: String?

        public override init() {
            super.init()
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
            if self.isRamRole != nil {
                map["IsRamRole"] = self.isRamRole!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.roleType != nil {
                map["RoleType"] = self.roleType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("IsRamRole") {
                self.isRamRole = dict["IsRamRole"] as! Bool
            }
            if dict.keys.contains("Namespace") {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("RoleName") {
                self.roleName = dict["RoleName"] as! String
            }
            if dict.keys.contains("RoleType") {
                self.roleType = dict["RoleType"] as! String
            }
        }
    }
    public var permissions: [GrantUserPermissionsRequest.Permissions]?

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
        if self.permissions != nil {
            var tmp : [Any] = []
            for k in self.permissions! {
                tmp.append(k.toMap())
            }
            map["Permissions"] = tmp
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Permissions") {
            var tmp : [GrantUserPermissionsRequest.Permissions] = []
            for v in dict["Permissions"] as! [Any] {
                var model = GrantUserPermissionsRequest.Permissions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.permissions = tmp
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GrantUserPermissionsShrinkRequest : Tea.TeaModel {
    public var permissionsShrink: String?

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
        if self.permissionsShrink != nil {
            map["Permissions"] = self.permissionsShrink!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Permissions") {
            self.permissionsShrink = dict["Permissions"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GrantUserPermissionsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class GrantUserPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantUserPermissionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GrantUserPermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateHubClusterFeatureRequest : Tea.TeaModel {
    public var accessControlList: [String]?

    public var apiServerEipId: String?

    public var argoCDEnabled: Bool?

    public var argoCDHAEnabled: Bool?

    public var argoEventsEnabled: Bool?

    public var argoServerEnabled: Bool?

    public var auditLogEnabled: Bool?

    public var clusterId: String?

    public var deletionProtection: Bool?

    public var enableMesh: Bool?

    public var gatewayEnabled: Bool?

    public var monitorEnabled: Bool?

    public var name: String?

    public var priceLimit: String?

    public var publicAccessEnabled: Bool?

    public var publicApiServerEnabled: Bool?

    public var vSwitches: [String]?

    public var workflowScheduleMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessControlList != nil {
            map["AccessControlList"] = self.accessControlList!
        }
        if self.apiServerEipId != nil {
            map["ApiServerEipId"] = self.apiServerEipId!
        }
        if self.argoCDEnabled != nil {
            map["ArgoCDEnabled"] = self.argoCDEnabled!
        }
        if self.argoCDHAEnabled != nil {
            map["ArgoCDHAEnabled"] = self.argoCDHAEnabled!
        }
        if self.argoEventsEnabled != nil {
            map["ArgoEventsEnabled"] = self.argoEventsEnabled!
        }
        if self.argoServerEnabled != nil {
            map["ArgoServerEnabled"] = self.argoServerEnabled!
        }
        if self.auditLogEnabled != nil {
            map["AuditLogEnabled"] = self.auditLogEnabled!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.deletionProtection != nil {
            map["DeletionProtection"] = self.deletionProtection!
        }
        if self.enableMesh != nil {
            map["EnableMesh"] = self.enableMesh!
        }
        if self.gatewayEnabled != nil {
            map["GatewayEnabled"] = self.gatewayEnabled!
        }
        if self.monitorEnabled != nil {
            map["MonitorEnabled"] = self.monitorEnabled!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.priceLimit != nil {
            map["PriceLimit"] = self.priceLimit!
        }
        if self.publicAccessEnabled != nil {
            map["PublicAccessEnabled"] = self.publicAccessEnabled!
        }
        if self.publicApiServerEnabled != nil {
            map["PublicApiServerEnabled"] = self.publicApiServerEnabled!
        }
        if self.vSwitches != nil {
            map["VSwitches"] = self.vSwitches!
        }
        if self.workflowScheduleMode != nil {
            map["WorkflowScheduleMode"] = self.workflowScheduleMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessControlList") {
            self.accessControlList = dict["AccessControlList"] as! [String]
        }
        if dict.keys.contains("ApiServerEipId") {
            self.apiServerEipId = dict["ApiServerEipId"] as! String
        }
        if dict.keys.contains("ArgoCDEnabled") {
            self.argoCDEnabled = dict["ArgoCDEnabled"] as! Bool
        }
        if dict.keys.contains("ArgoCDHAEnabled") {
            self.argoCDHAEnabled = dict["ArgoCDHAEnabled"] as! Bool
        }
        if dict.keys.contains("ArgoEventsEnabled") {
            self.argoEventsEnabled = dict["ArgoEventsEnabled"] as! Bool
        }
        if dict.keys.contains("ArgoServerEnabled") {
            self.argoServerEnabled = dict["ArgoServerEnabled"] as! Bool
        }
        if dict.keys.contains("AuditLogEnabled") {
            self.auditLogEnabled = dict["AuditLogEnabled"] as! Bool
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DeletionProtection") {
            self.deletionProtection = dict["DeletionProtection"] as! Bool
        }
        if dict.keys.contains("EnableMesh") {
            self.enableMesh = dict["EnableMesh"] as! Bool
        }
        if dict.keys.contains("GatewayEnabled") {
            self.gatewayEnabled = dict["GatewayEnabled"] as! Bool
        }
        if dict.keys.contains("MonitorEnabled") {
            self.monitorEnabled = dict["MonitorEnabled"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PriceLimit") {
            self.priceLimit = dict["PriceLimit"] as! String
        }
        if dict.keys.contains("PublicAccessEnabled") {
            self.publicAccessEnabled = dict["PublicAccessEnabled"] as! Bool
        }
        if dict.keys.contains("PublicApiServerEnabled") {
            self.publicApiServerEnabled = dict["PublicApiServerEnabled"] as! Bool
        }
        if dict.keys.contains("VSwitches") {
            self.vSwitches = dict["VSwitches"] as! [String]
        }
        if dict.keys.contains("WorkflowScheduleMode") {
            self.workflowScheduleMode = dict["WorkflowScheduleMode"] as! String
        }
    }
}

public class UpdateHubClusterFeatureShrinkRequest : Tea.TeaModel {
    public var accessControlListShrink: String?

    public var apiServerEipId: String?

    public var argoCDEnabled: Bool?

    public var argoCDHAEnabled: Bool?

    public var argoEventsEnabled: Bool?

    public var argoServerEnabled: Bool?

    public var auditLogEnabled: Bool?

    public var clusterId: String?

    public var deletionProtection: Bool?

    public var enableMesh: Bool?

    public var gatewayEnabled: Bool?

    public var monitorEnabled: Bool?

    public var name: String?

    public var priceLimit: String?

    public var publicAccessEnabled: Bool?

    public var publicApiServerEnabled: Bool?

    public var vSwitchesShrink: String?

    public var workflowScheduleMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessControlListShrink != nil {
            map["AccessControlList"] = self.accessControlListShrink!
        }
        if self.apiServerEipId != nil {
            map["ApiServerEipId"] = self.apiServerEipId!
        }
        if self.argoCDEnabled != nil {
            map["ArgoCDEnabled"] = self.argoCDEnabled!
        }
        if self.argoCDHAEnabled != nil {
            map["ArgoCDHAEnabled"] = self.argoCDHAEnabled!
        }
        if self.argoEventsEnabled != nil {
            map["ArgoEventsEnabled"] = self.argoEventsEnabled!
        }
        if self.argoServerEnabled != nil {
            map["ArgoServerEnabled"] = self.argoServerEnabled!
        }
        if self.auditLogEnabled != nil {
            map["AuditLogEnabled"] = self.auditLogEnabled!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.deletionProtection != nil {
            map["DeletionProtection"] = self.deletionProtection!
        }
        if self.enableMesh != nil {
            map["EnableMesh"] = self.enableMesh!
        }
        if self.gatewayEnabled != nil {
            map["GatewayEnabled"] = self.gatewayEnabled!
        }
        if self.monitorEnabled != nil {
            map["MonitorEnabled"] = self.monitorEnabled!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.priceLimit != nil {
            map["PriceLimit"] = self.priceLimit!
        }
        if self.publicAccessEnabled != nil {
            map["PublicAccessEnabled"] = self.publicAccessEnabled!
        }
        if self.publicApiServerEnabled != nil {
            map["PublicApiServerEnabled"] = self.publicApiServerEnabled!
        }
        if self.vSwitchesShrink != nil {
            map["VSwitches"] = self.vSwitchesShrink!
        }
        if self.workflowScheduleMode != nil {
            map["WorkflowScheduleMode"] = self.workflowScheduleMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessControlList") {
            self.accessControlListShrink = dict["AccessControlList"] as! String
        }
        if dict.keys.contains("ApiServerEipId") {
            self.apiServerEipId = dict["ApiServerEipId"] as! String
        }
        if dict.keys.contains("ArgoCDEnabled") {
            self.argoCDEnabled = dict["ArgoCDEnabled"] as! Bool
        }
        if dict.keys.contains("ArgoCDHAEnabled") {
            self.argoCDHAEnabled = dict["ArgoCDHAEnabled"] as! Bool
        }
        if dict.keys.contains("ArgoEventsEnabled") {
            self.argoEventsEnabled = dict["ArgoEventsEnabled"] as! Bool
        }
        if dict.keys.contains("ArgoServerEnabled") {
            self.argoServerEnabled = dict["ArgoServerEnabled"] as! Bool
        }
        if dict.keys.contains("AuditLogEnabled") {
            self.auditLogEnabled = dict["AuditLogEnabled"] as! Bool
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DeletionProtection") {
            self.deletionProtection = dict["DeletionProtection"] as! Bool
        }
        if dict.keys.contains("EnableMesh") {
            self.enableMesh = dict["EnableMesh"] as! Bool
        }
        if dict.keys.contains("GatewayEnabled") {
            self.gatewayEnabled = dict["GatewayEnabled"] as! Bool
        }
        if dict.keys.contains("MonitorEnabled") {
            self.monitorEnabled = dict["MonitorEnabled"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PriceLimit") {
            self.priceLimit = dict["PriceLimit"] as! String
        }
        if dict.keys.contains("PublicAccessEnabled") {
            self.publicAccessEnabled = dict["PublicAccessEnabled"] as! Bool
        }
        if dict.keys.contains("PublicApiServerEnabled") {
            self.publicApiServerEnabled = dict["PublicApiServerEnabled"] as! Bool
        }
        if dict.keys.contains("VSwitches") {
            self.vSwitchesShrink = dict["VSwitches"] as! String
        }
        if dict.keys.contains("WorkflowScheduleMode") {
            self.workflowScheduleMode = dict["WorkflowScheduleMode"] as! String
        }
    }
}

public class UpdateHubClusterFeatureResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateHubClusterFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateHubClusterFeatureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateHubClusterFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserPermissionRequest : Tea.TeaModel {
    public var clusterId: String?

    public var namespace: String?

    public var roleName: String?

    public var roleType: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class UpdateUserPermissionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateUserPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserPermissionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateUserPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
