import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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
        if dict.keys.contains("AttachToMesh") && dict["AttachToMesh"] != nil {
            self.attachToMesh = dict["AttachToMesh"] as! Bool
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterIds") && dict["ClusterIds"] != nil {
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ManagedClusterIds") && dict["ManagedClusterIds"] != nil {
            self.managedClusterIds = dict["ManagedClusterIds"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AttachClusterToHubResponseBody()
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
        if dict.keys.contains("ApiServerPublicEip") && dict["ApiServerPublicEip"] != nil {
            self.apiServerPublicEip = dict["ApiServerPublicEip"] as! Bool
        }
        if dict.keys.contains("ArgoServerEnabled") && dict["ArgoServerEnabled"] != nil {
            self.argoServerEnabled = dict["ArgoServerEnabled"] as! Bool
        }
        if dict.keys.contains("AuditLogEnabled") && dict["AuditLogEnabled"] != nil {
            self.auditLogEnabled = dict["AuditLogEnabled"] as! Bool
        }
        if dict.keys.contains("IsEnterpriseSecurityGroup") && dict["IsEnterpriseSecurityGroup"] != nil {
            self.isEnterpriseSecurityGroup = dict["IsEnterpriseSecurityGroup"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PriceLimit") && dict["PriceLimit"] != nil {
            self.priceLimit = dict["PriceLimit"] as! String
        }
        if dict.keys.contains("Profile") && dict["Profile"] != nil {
            self.profile = dict["Profile"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VSwitches") && dict["VSwitches"] != nil {
            self.vSwitches = dict["VSwitches"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("WorkflowScheduleMode") && dict["WorkflowScheduleMode"] != nil {
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Force") && dict["Force"] != nil {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("RetainResources") && dict["RetainResources"] != nil {
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Force") && dict["Force"] != nil {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("RetainResources") && dict["RetainResources"] != nil {
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteHubClusterResponseBody()
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
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
                if dict.keys.contains("ApiServerEipId") && dict["ApiServerEipId"] != nil {
                    self.apiServerEipId = dict["ApiServerEipId"] as! String
                }
                if dict.keys.contains("EnabledPublic") && dict["EnabledPublic"] != nil {
                    self.enabledPublic = dict["EnabledPublic"] as! Bool
                }
                if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
                    self.loadBalancerId = dict["LoadBalancerId"] as! String
                }
            }
        }
        public class ClusterInfo : Tea.TeaModel {
            public var clusterId: String?

            public var clusterSpec: String?

            public var creationTime: String?

            public var errorMessage: String?

            public var name: String?

            public var profile: String?

            public var regionId: String?

            public var state: String?

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
                if self.state != nil {
                    map["State"] = self.state!
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
                if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("ClusterSpec") && dict["ClusterSpec"] != nil {
                    self.clusterSpec = dict["ClusterSpec"] as! String
                }
                if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Profile") && dict["Profile"] != nil {
                    self.profile = dict["Profile"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("State") && dict["State"] != nil {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("Version") && dict["Version"] != nil {
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
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Reason") && dict["Reason"] != nil {
                    self.reason = dict["Reason"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
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
                if dict.keys.contains("IntranetApiServerEndpoint") && dict["IntranetApiServerEndpoint"] != nil {
                    self.intranetApiServerEndpoint = dict["IntranetApiServerEndpoint"] as! String
                }
                if dict.keys.contains("PublicApiServerEndpoint") && dict["PublicApiServerEndpoint"] != nil {
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
                if dict.keys.contains("EnableLog") && dict["EnableLog"] != nil {
                    self.enableLog = dict["EnableLog"] as! Bool
                }
                if dict.keys.contains("LogProject") && dict["LogProject"] != nil {
                    self.logProject = dict["LogProject"] as! String
                }
                if dict.keys.contains("LogStoreTTL") && dict["LogStoreTTL"] != nil {
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
                if dict.keys.contains("EnableMesh") && dict["EnableMesh"] != nil {
                    self.enableMesh = dict["EnableMesh"] as! Bool
                }
                if dict.keys.contains("MeshId") && dict["MeshId"] != nil {
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
                if dict.keys.contains("ClusterDomain") && dict["ClusterDomain"] != nil {
                    self.clusterDomain = dict["ClusterDomain"] as! String
                }
                if dict.keys.contains("IPStack") && dict["IPStack"] != nil {
                    self.IPStack = dict["IPStack"] as! String
                }
                if dict.keys.contains("SecurityGroupIDs") && dict["SecurityGroupIDs"] != nil {
                    self.securityGroupIDs = dict["SecurityGroupIDs"] as! [String]
                }
                if dict.keys.contains("VSwitches") && dict["VSwitches"] != nil {
                    self.vSwitches = dict["VSwitches"] as! [String]
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
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
                        if dict.keys.contains("VswitchId") && dict["VswitchId"] != nil {
                            self.vswitchId = dict["VswitchId"] as! String
                        }
                        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
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
                    if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                        self.regionId = dict["RegionId"] as! String
                    }
                    if dict.keys.contains("VSwitches") && dict["VSwitches"] != nil {
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
                    if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
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
                if dict.keys.contains("ArgoServerEnabled") && dict["ArgoServerEnabled"] != nil {
                    self.argoServerEnabled = dict["ArgoServerEnabled"] as! Bool
                }
                if dict.keys.contains("PriceLimit") && dict["PriceLimit"] != nil {
                    self.priceLimit = dict["PriceLimit"] as! String
                }
                if dict.keys.contains("WorkflowScheduleMode") && dict["WorkflowScheduleMode"] != nil {
                    self.workflowScheduleMode = dict["WorkflowScheduleMode"] as! String
                }
                if dict.keys.contains("WorkflowUnits") && dict["WorkflowUnits"] != nil {
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
            if dict.keys.contains("ApiServer") && dict["ApiServer"] != nil {
                var model = DescribeHubClusterDetailsResponseBody.Cluster.ApiServer()
                model.fromMap(dict["ApiServer"] as! [String: Any])
                self.apiServer = model
            }
            if dict.keys.contains("ClusterInfo") && dict["ClusterInfo"] != nil {
                var model = DescribeHubClusterDetailsResponseBody.Cluster.ClusterInfo()
                model.fromMap(dict["ClusterInfo"] as! [String: Any])
                self.clusterInfo = model
            }
            if dict.keys.contains("Conditions") && dict["Conditions"] != nil {
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
            if dict.keys.contains("Endpoints") && dict["Endpoints"] != nil {
                var model = DescribeHubClusterDetailsResponseBody.Cluster.Endpoints()
                model.fromMap(dict["Endpoints"] as! [String: Any])
                self.endpoints = model
            }
            if dict.keys.contains("LogConfig") && dict["LogConfig"] != nil {
                var model = DescribeHubClusterDetailsResponseBody.Cluster.LogConfig()
                model.fromMap(dict["LogConfig"] as! [String: Any])
                self.logConfig = model
            }
            if dict.keys.contains("MeshConfig") && dict["MeshConfig"] != nil {
                var model = DescribeHubClusterDetailsResponseBody.Cluster.MeshConfig()
                model.fromMap(dict["MeshConfig"] as! [String: Any])
                self.meshConfig = model
            }
            if dict.keys.contains("Network") && dict["Network"] != nil {
                var model = DescribeHubClusterDetailsResponseBody.Cluster.Network()
                model.fromMap(dict["Network"] as! [String: Any])
                self.network = model
            }
            if dict.keys.contains("WorkflowConfig") && dict["WorkflowConfig"] != nil {
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
        if dict.keys.contains("Cluster") && dict["Cluster"] != nil {
            var model = DescribeHubClusterDetailsResponseBody.Cluster()
            model.fromMap(dict["Cluster"] as! [String: Any])
            self.cluster = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PrivateIpAddress") && dict["PrivateIpAddress"] != nil {
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
        if dict.keys.contains("Kubeconfig") && dict["Kubeconfig"] != nil {
            self.kubeconfig = dict["Kubeconfig"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
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
            if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ClusterLog") && dict["ClusterLog"] != nil {
                self.clusterLog = dict["ClusterLog"] as! String
            }
            if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("LogLevel") && dict["LogLevel"] != nil {
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
        if dict.keys.contains("Logs") && dict["Logs"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeHubClusterLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHubClustersRequest : Tea.TeaModel {
    public var profile: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Profile") && dict["Profile"] != nil {
            self.profile = dict["Profile"] as! String
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
                if dict.keys.contains("ApiServerEipId") && dict["ApiServerEipId"] != nil {
                    self.apiServerEipId = dict["ApiServerEipId"] as! String
                }
                if dict.keys.contains("EnabledPublic") && dict["EnabledPublic"] != nil {
                    self.enabledPublic = dict["EnabledPublic"] as! Bool
                }
                if dict.keys.contains("LoadBalancerId") && dict["LoadBalancerId"] != nil {
                    self.loadBalancerId = dict["LoadBalancerId"] as! String
                }
            }
        }
        public class ClusterInfo : Tea.TeaModel {
            public var clusterId: String?

            public var clusterSpec: String?

            public var creationTime: String?

            public var errorMessage: String?

            public var name: String?

            public var profile: String?

            public var regionId: String?

            public var state: String?

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
                if self.state != nil {
                    map["State"] = self.state!
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
                if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("ClusterSpec") && dict["ClusterSpec"] != nil {
                    self.clusterSpec = dict["ClusterSpec"] as! String
                }
                if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Profile") && dict["Profile"] != nil {
                    self.profile = dict["Profile"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("State") && dict["State"] != nil {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("Version") && dict["Version"] != nil {
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
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Reason") && dict["Reason"] != nil {
                    self.reason = dict["Reason"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
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
                if dict.keys.contains("IntranetApiServerEndpoint") && dict["IntranetApiServerEndpoint"] != nil {
                    self.intranetApiServerEndpoint = dict["IntranetApiServerEndpoint"] as! String
                }
                if dict.keys.contains("PublicApiServerEndpoint") && dict["PublicApiServerEndpoint"] != nil {
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
                if dict.keys.contains("EnableLog") && dict["EnableLog"] != nil {
                    self.enableLog = dict["EnableLog"] as! Bool
                }
                if dict.keys.contains("LogProject") && dict["LogProject"] != nil {
                    self.logProject = dict["LogProject"] as! String
                }
                if dict.keys.contains("LogStoreTTL") && dict["LogStoreTTL"] != nil {
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
                if dict.keys.contains("EnableMesh") && dict["EnableMesh"] != nil {
                    self.enableMesh = dict["EnableMesh"] as! Bool
                }
                if dict.keys.contains("MeshId") && dict["MeshId"] != nil {
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
                if dict.keys.contains("ClusterDomain") && dict["ClusterDomain"] != nil {
                    self.clusterDomain = dict["ClusterDomain"] as! String
                }
                if dict.keys.contains("SecurityGroupIDs") && dict["SecurityGroupIDs"] != nil {
                    self.securityGroupIDs = dict["SecurityGroupIDs"] as! [String]
                }
                if dict.keys.contains("VSwitches") && dict["VSwitches"] != nil {
                    self.vSwitches = dict["VSwitches"] as! [String]
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
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
            if dict.keys.contains("ApiServer") && dict["ApiServer"] != nil {
                var model = DescribeHubClustersResponseBody.Clusters.ApiServer()
                model.fromMap(dict["ApiServer"] as! [String: Any])
                self.apiServer = model
            }
            if dict.keys.contains("ClusterInfo") && dict["ClusterInfo"] != nil {
                var model = DescribeHubClustersResponseBody.Clusters.ClusterInfo()
                model.fromMap(dict["ClusterInfo"] as! [String: Any])
                self.clusterInfo = model
            }
            if dict.keys.contains("Conditions") && dict["Conditions"] != nil {
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
            if dict.keys.contains("Endpoints") && dict["Endpoints"] != nil {
                var model = DescribeHubClustersResponseBody.Clusters.Endpoints()
                model.fromMap(dict["Endpoints"] as! [String: Any])
                self.endpoints = model
            }
            if dict.keys.contains("LogConfig") && dict["LogConfig"] != nil {
                var model = DescribeHubClustersResponseBody.Clusters.LogConfig()
                model.fromMap(dict["LogConfig"] as! [String: Any])
                self.logConfig = model
            }
            if dict.keys.contains("MeshConfig") && dict["MeshConfig"] != nil {
                var model = DescribeHubClustersResponseBody.Clusters.MeshConfig()
                model.fromMap(dict["MeshConfig"] as! [String: Any])
                self.meshConfig = model
            }
            if dict.keys.contains("Network") && dict["Network"] != nil {
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
        if dict.keys.contains("Clusters") && dict["Clusters"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
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
                if dict.keys.contains("ClusterID") && dict["ClusterID"] != nil {
                    self.clusterID = dict["ClusterID"] as! String
                }
                if dict.keys.contains("ClusterSpec") && dict["ClusterSpec"] != nil {
                    self.clusterSpec = dict["ClusterSpec"] as! String
                }
                if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
                    self.clusterType = dict["ClusterType"] as! String
                }
                if dict.keys.contains("Created") && dict["Created"] != nil {
                    self.created = dict["Created"] as! String
                }
                if dict.keys.contains("CurrentVersion") && dict["CurrentVersion"] != nil {
                    self.currentVersion = dict["CurrentVersion"] as! String
                }
                if dict.keys.contains("InitVersion") && dict["InitVersion"] != nil {
                    self.initVersion = dict["InitVersion"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Profile") && dict["Profile"] != nil {
                    self.profile = dict["Profile"] as! String
                }
                if dict.keys.contains("Region") && dict["Region"] != nil {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("State") && dict["State"] != nil {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("Updated") && dict["Updated"] != nil {
                    self.updated = dict["Updated"] as! String
                }
                if dict.keys.contains("VSwitchID") && dict["VSwitchID"] != nil {
                    self.vSwitchID = dict["VSwitchID"] as! String
                }
                if dict.keys.contains("VpcID") && dict["VpcID"] != nil {
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
                if dict.keys.contains("InMesh") && dict["InMesh"] != nil {
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
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("State") && dict["State"] != nil {
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
            if dict.keys.contains("Cluster") && dict["Cluster"] != nil {
                var model = DescribeManagedClustersResponseBody.Clusters.Cluster()
                model.fromMap(dict["Cluster"] as! [String: Any])
                self.cluster = model
            }
            if dict.keys.contains("MeshStatus") && dict["MeshStatus"] != nil {
                var model = DescribeManagedClustersResponseBody.Clusters.MeshStatus()
                model.fromMap(dict["MeshStatus"] as! [String: Any])
                self.meshStatus = model
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("Clusters") && dict["Clusters"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeManagedClustersResponseBody()
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
        if dict.keys.contains("Language") && dict["Language"] != nil {
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
            if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
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
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("RoleName") && dict["RoleName"] != nil {
                self.roleName = dict["RoleName"] as! String
            }
            if dict.keys.contains("RoleType") && dict["RoleType"] != nil {
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
        if dict.keys.contains("Permissions") && dict["Permissions"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterIds") && dict["ClusterIds"] != nil {
            self.clusterIds = dict["ClusterIds"] as! String
        }
        if dict.keys.contains("DetachFromMesh") && dict["DetachFromMesh"] != nil {
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ManagedClusterIds") && dict["ManagedClusterIds"] != nil {
            self.managedClusterIds = dict["ManagedClusterIds"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DetachClusterFromHubResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GrantUserPermissionsRequest : Tea.TeaModel {
    public class Permissions : Tea.TeaModel {
        public var clusterId: String?

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
            if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("RoleName") && dict["RoleName"] != nil {
                self.roleName = dict["RoleName"] as! String
            }
            if dict.keys.contains("RoleType") && dict["RoleType"] != nil {
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
        if dict.keys.contains("Permissions") && dict["Permissions"] != nil {
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
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
        if dict.keys.contains("Permissions") && dict["Permissions"] != nil {
            self.permissionsShrink = dict["Permissions"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GrantUserPermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateHubClusterFeatureRequest : Tea.TeaModel {
    public var apiServerEipId: String?

    public var argoCDEnabled: Bool?

    public var argoServerEnabled: Bool?

    public var auditLogEnabled: Bool?

    public var clusterId: String?

    public var deletionProtection: Bool?

    public var enableMesh: Bool?

    public var name: String?

    public var priceLimit: String?

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
        if self.apiServerEipId != nil {
            map["ApiServerEipId"] = self.apiServerEipId!
        }
        if self.argoCDEnabled != nil {
            map["ArgoCDEnabled"] = self.argoCDEnabled!
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.priceLimit != nil {
            map["PriceLimit"] = self.priceLimit!
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
        if dict.keys.contains("ApiServerEipId") && dict["ApiServerEipId"] != nil {
            self.apiServerEipId = dict["ApiServerEipId"] as! String
        }
        if dict.keys.contains("ArgoCDEnabled") && dict["ArgoCDEnabled"] != nil {
            self.argoCDEnabled = dict["ArgoCDEnabled"] as! Bool
        }
        if dict.keys.contains("ArgoServerEnabled") && dict["ArgoServerEnabled"] != nil {
            self.argoServerEnabled = dict["ArgoServerEnabled"] as! Bool
        }
        if dict.keys.contains("AuditLogEnabled") && dict["AuditLogEnabled"] != nil {
            self.auditLogEnabled = dict["AuditLogEnabled"] as! Bool
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DeletionProtection") && dict["DeletionProtection"] != nil {
            self.deletionProtection = dict["DeletionProtection"] as! Bool
        }
        if dict.keys.contains("EnableMesh") && dict["EnableMesh"] != nil {
            self.enableMesh = dict["EnableMesh"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PriceLimit") && dict["PriceLimit"] != nil {
            self.priceLimit = dict["PriceLimit"] as! String
        }
        if dict.keys.contains("PublicApiServerEnabled") && dict["PublicApiServerEnabled"] != nil {
            self.publicApiServerEnabled = dict["PublicApiServerEnabled"] as! Bool
        }
        if dict.keys.contains("VSwitches") && dict["VSwitches"] != nil {
            self.vSwitches = dict["VSwitches"] as! [String]
        }
        if dict.keys.contains("WorkflowScheduleMode") && dict["WorkflowScheduleMode"] != nil {
            self.workflowScheduleMode = dict["WorkflowScheduleMode"] as! String
        }
    }
}

public class UpdateHubClusterFeatureShrinkRequest : Tea.TeaModel {
    public var apiServerEipId: String?

    public var argoCDEnabled: Bool?

    public var argoServerEnabled: Bool?

    public var auditLogEnabled: Bool?

    public var clusterId: String?

    public var deletionProtection: Bool?

    public var enableMesh: Bool?

    public var name: String?

    public var priceLimit: String?

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
        if self.apiServerEipId != nil {
            map["ApiServerEipId"] = self.apiServerEipId!
        }
        if self.argoCDEnabled != nil {
            map["ArgoCDEnabled"] = self.argoCDEnabled!
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.priceLimit != nil {
            map["PriceLimit"] = self.priceLimit!
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
        if dict.keys.contains("ApiServerEipId") && dict["ApiServerEipId"] != nil {
            self.apiServerEipId = dict["ApiServerEipId"] as! String
        }
        if dict.keys.contains("ArgoCDEnabled") && dict["ArgoCDEnabled"] != nil {
            self.argoCDEnabled = dict["ArgoCDEnabled"] as! Bool
        }
        if dict.keys.contains("ArgoServerEnabled") && dict["ArgoServerEnabled"] != nil {
            self.argoServerEnabled = dict["ArgoServerEnabled"] as! Bool
        }
        if dict.keys.contains("AuditLogEnabled") && dict["AuditLogEnabled"] != nil {
            self.auditLogEnabled = dict["AuditLogEnabled"] as! Bool
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DeletionProtection") && dict["DeletionProtection"] != nil {
            self.deletionProtection = dict["DeletionProtection"] as! Bool
        }
        if dict.keys.contains("EnableMesh") && dict["EnableMesh"] != nil {
            self.enableMesh = dict["EnableMesh"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PriceLimit") && dict["PriceLimit"] != nil {
            self.priceLimit = dict["PriceLimit"] as! String
        }
        if dict.keys.contains("PublicApiServerEnabled") && dict["PublicApiServerEnabled"] != nil {
            self.publicApiServerEnabled = dict["PublicApiServerEnabled"] as! Bool
        }
        if dict.keys.contains("VSwitches") && dict["VSwitches"] != nil {
            self.vSwitchesShrink = dict["VSwitches"] as! String
        }
        if dict.keys.contains("WorkflowScheduleMode") && dict["WorkflowScheduleMode"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateHubClusterFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
