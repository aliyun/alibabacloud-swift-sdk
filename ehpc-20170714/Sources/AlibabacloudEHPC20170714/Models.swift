import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddNodesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var computeSpotPriceLimit: String?

    public var computeSpotStrategy: String?

    public var count: Int32?

    public var imageId: String?

    public var imageOwnerAlias: String?

    public override init() {
        super.init()
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
        if self.computeSpotPriceLimit != nil {
            map["ComputeSpotPriceLimit"] = self.computeSpotPriceLimit!
        }
        if self.computeSpotStrategy != nil {
            map["ComputeSpotStrategy"] = self.computeSpotStrategy!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageOwnerAlias != nil {
            map["ImageOwnerAlias"] = self.imageOwnerAlias!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ComputeSpotPriceLimit") {
            self.computeSpotPriceLimit = dict["ComputeSpotPriceLimit"] as! String
        }
        if dict.keys.contains("ComputeSpotStrategy") {
            self.computeSpotStrategy = dict["ComputeSpotStrategy"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageOwnerAlias") {
            self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
        }
    }
}

public class AddNodesResponseBody : Tea.TeaModel {
    public class InstanceIds : Tea.TeaModel {
        public var instanceId: [String]?

        public override init() {
            super.init()
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
                self.instanceId = dict["InstanceId"] as! [String]
            }
        }
    }
    public var instanceIds: AddNodesResponseBody.InstanceIds?

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
            var model = AddNodesResponseBody.InstanceIds()
            model.fromMap(dict["InstanceIds"] as! [String: Any])
            self.instanceIds = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddUsersRequest : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var group: String?

        public var name: String?

        public var password: String?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Group") {
                self.group = dict["Group"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
        }
    }
    public var clusterId: String?

    public var releaseInstance: Bool?

    public var user: [AddUsersRequest.User]?

    public override init() {
        super.init()
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
        if self.releaseInstance != nil {
            map["ReleaseInstance"] = self.releaseInstance!
        }
        if self.user != nil {
            var tmp : [Any] = []
            for k in self.user! {
                tmp.append(k.toMap())
            }
            map["User"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ReleaseInstance") {
            self.releaseInstance = dict["ReleaseInstance"] as! Bool
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! [AddUsersRequest.User]
        }
    }
}

public class AddUsersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class AddUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateClusterRequest : Tea.TeaModel {
    public class EcsOrder : Tea.TeaModel {
        public class Compute : Tea.TeaModel {
            public var count: Int32?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
            }
        }
        public class Login : Tea.TeaModel {
            public var count: Int32?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
            }
        }
        public class Manager : Tea.TeaModel {
            public var count: Int32?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
            }
        }
        public var compute: CreateClusterRequest.EcsOrder.Compute?

        public var login: CreateClusterRequest.EcsOrder.Login?

        public var manager: CreateClusterRequest.EcsOrder.Manager?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.validateRequired(self.compute, "compute")
            try self.compute?.validate()
            try self.validateRequired(self.login, "login")
            try self.login?.validate()
            try self.validateRequired(self.manager, "manager")
            try self.manager?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compute != nil {
                map["Compute"] = self.compute?.toMap()
            }
            if self.login != nil {
                map["Login"] = self.login?.toMap()
            }
            if self.manager != nil {
                map["Manager"] = self.manager?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Compute") {
                var model = CreateClusterRequest.EcsOrder.Compute()
                model.fromMap(dict["Compute"] as! [String: Any])
                self.compute = model
            }
            if dict.keys.contains("Login") {
                var model = CreateClusterRequest.EcsOrder.Login()
                model.fromMap(dict["Login"] as! [String: Any])
                self.login = model
            }
            if dict.keys.contains("Manager") {
                var model = CreateClusterRequest.EcsOrder.Manager()
                model.fromMap(dict["Manager"] as! [String: Any])
                self.manager = model
            }
        }
    }
    public class Application : Tea.TeaModel {
        public var tag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
        }
    }
    public var ecsOrder: CreateClusterRequest.EcsOrder?

    public var accountType: String?

    public var application: [CreateClusterRequest.Application]?

    public var computeSpotPriceLimit: String?

    public var computeSpotStrategy: String?

    public var description_: String?

    public var ecsChargeType: String?

    public var ehpcVersion: String?

    public var haEnable: Bool?

    public var imageId: String?

    public var imageOwnerAlias: String?

    public var keyPairName: String?

    public var name: String?

    public var osTag: String?

    public var password: String?

    public var remoteDirectory: String?

    public var sccClusterId: String?

    public var schedulerType: String?

    public var securityGroupId: String?

    public var securityGroupName: String?

    public var vSwitchId: String?

    public var volumeId: String?

    public var volumeMountpoint: String?

    public var volumeProtocol: String?

    public var volumeType: String?

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
        try self.ecsOrder?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecsOrder != nil {
            map["EcsOrder"] = self.ecsOrder?.toMap()
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.application != nil {
            var tmp : [Any] = []
            for k in self.application! {
                tmp.append(k.toMap())
            }
            map["Application"] = tmp
        }
        if self.computeSpotPriceLimit != nil {
            map["ComputeSpotPriceLimit"] = self.computeSpotPriceLimit!
        }
        if self.computeSpotStrategy != nil {
            map["ComputeSpotStrategy"] = self.computeSpotStrategy!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.ecsChargeType != nil {
            map["EcsChargeType"] = self.ecsChargeType!
        }
        if self.ehpcVersion != nil {
            map["EhpcVersion"] = self.ehpcVersion!
        }
        if self.haEnable != nil {
            map["HaEnable"] = self.haEnable!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageOwnerAlias != nil {
            map["ImageOwnerAlias"] = self.imageOwnerAlias!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.osTag != nil {
            map["OsTag"] = self.osTag!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.remoteDirectory != nil {
            map["RemoteDirectory"] = self.remoteDirectory!
        }
        if self.sccClusterId != nil {
            map["SccClusterId"] = self.sccClusterId!
        }
        if self.schedulerType != nil {
            map["SchedulerType"] = self.schedulerType!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.securityGroupName != nil {
            map["SecurityGroupName"] = self.securityGroupName!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.volumeId != nil {
            map["VolumeId"] = self.volumeId!
        }
        if self.volumeMountpoint != nil {
            map["VolumeMountpoint"] = self.volumeMountpoint!
        }
        if self.volumeProtocol != nil {
            map["VolumeProtocol"] = self.volumeProtocol!
        }
        if self.volumeType != nil {
            map["VolumeType"] = self.volumeType!
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
        if dict.keys.contains("EcsOrder") {
            var model = CreateClusterRequest.EcsOrder()
            model.fromMap(dict["EcsOrder"] as! [String: Any])
            self.ecsOrder = model
        }
        if dict.keys.contains("AccountType") {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("Application") {
            self.application = dict["Application"] as! [CreateClusterRequest.Application]
        }
        if dict.keys.contains("ComputeSpotPriceLimit") {
            self.computeSpotPriceLimit = dict["ComputeSpotPriceLimit"] as! String
        }
        if dict.keys.contains("ComputeSpotStrategy") {
            self.computeSpotStrategy = dict["ComputeSpotStrategy"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EcsChargeType") {
            self.ecsChargeType = dict["EcsChargeType"] as! String
        }
        if dict.keys.contains("EhpcVersion") {
            self.ehpcVersion = dict["EhpcVersion"] as! String
        }
        if dict.keys.contains("HaEnable") {
            self.haEnable = dict["HaEnable"] as! Bool
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageOwnerAlias") {
            self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
        }
        if dict.keys.contains("KeyPairName") {
            self.keyPairName = dict["KeyPairName"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OsTag") {
            self.osTag = dict["OsTag"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RemoteDirectory") {
            self.remoteDirectory = dict["RemoteDirectory"] as! String
        }
        if dict.keys.contains("SccClusterId") {
            self.sccClusterId = dict["SccClusterId"] as! String
        }
        if dict.keys.contains("SchedulerType") {
            self.schedulerType = dict["SchedulerType"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("SecurityGroupName") {
            self.securityGroupName = dict["SecurityGroupName"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VolumeId") {
            self.volumeId = dict["VolumeId"] as! String
        }
        if dict.keys.contains("VolumeMountpoint") {
            self.volumeMountpoint = dict["VolumeMountpoint"] as! String
        }
        if dict.keys.contains("VolumeProtocol") {
            self.volumeProtocol = dict["VolumeProtocol"] as! String
        }
        if dict.keys.contains("VolumeType") {
            self.volumeType = dict["VolumeType"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
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

public class CreateJobTemplateRequest : Tea.TeaModel {
    public var arrayRequest: String?

    public var commandLine: String?

    public var name: String?

    public var packagePath: String?

    public var priority: Int32?

    public var reRunable: Bool?

    public var regionId: String?

    public var runasUser: String?

    public var stderrRedirectPath: String?

    public var stdoutRedirectPath: String?

    public var variables: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arrayRequest != nil {
            map["ArrayRequest"] = self.arrayRequest!
        }
        if self.commandLine != nil {
            map["CommandLine"] = self.commandLine!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.packagePath != nil {
            map["PackagePath"] = self.packagePath!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.reRunable != nil {
            map["ReRunable"] = self.reRunable!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.runasUser != nil {
            map["RunasUser"] = self.runasUser!
        }
        if self.stderrRedirectPath != nil {
            map["StderrRedirectPath"] = self.stderrRedirectPath!
        }
        if self.stdoutRedirectPath != nil {
            map["StdoutRedirectPath"] = self.stdoutRedirectPath!
        }
        if self.variables != nil {
            map["Variables"] = self.variables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArrayRequest") {
            self.arrayRequest = dict["ArrayRequest"] as! String
        }
        if dict.keys.contains("CommandLine") {
            self.commandLine = dict["CommandLine"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PackagePath") {
            self.packagePath = dict["PackagePath"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ReRunable") {
            self.reRunable = dict["ReRunable"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RunasUser") {
            self.runasUser = dict["RunasUser"] as! String
        }
        if dict.keys.contains("StderrRedirectPath") {
            self.stderrRedirectPath = dict["StderrRedirectPath"] as! String
        }
        if dict.keys.contains("StdoutRedirectPath") {
            self.stdoutRedirectPath = dict["StdoutRedirectPath"] as! String
        }
        if dict.keys.contains("Variables") {
            self.variables = dict["Variables"] as! String
        }
    }
}

public class CreateJobTemplateResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class CreateJobTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateJobTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateJobTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var releaseInstance: String?

    public override init() {
        super.init()
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
        if self.releaseInstance != nil {
            map["ReleaseInstance"] = self.releaseInstance!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ReleaseInstance") {
            self.releaseInstance = dict["ReleaseInstance"] as! String
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

public class DeleteJobTemplatesRequest : Tea.TeaModel {
    public var regionId: String?

    public var templates: String?

    public override init() {
        super.init()
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
        if self.templates != nil {
            map["Templates"] = self.templates!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Templates") {
            self.templates = dict["Templates"] as! String
        }
    }
}

public class DeleteJobTemplatesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteJobTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteJobTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteJobTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteJobsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var jobs: String?

    public override init() {
        super.init()
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
        if self.jobs != nil {
            map["Jobs"] = self.jobs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Jobs") {
            self.jobs = dict["Jobs"] as! String
        }
    }
}

public class DeleteJobsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteNodesRequest : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var clusterId: String?

    public var instance: [DeleteNodesRequest.Instance]?

    public var releaseInstance: Bool?

    public override init() {
        super.init()
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
        if self.instance != nil {
            var tmp : [Any] = []
            for k in self.instance! {
                tmp.append(k.toMap())
            }
            map["Instance"] = tmp
        }
        if self.releaseInstance != nil {
            map["ReleaseInstance"] = self.releaseInstance!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Instance") {
            self.instance = dict["Instance"] as! [DeleteNodesRequest.Instance]
        }
        if dict.keys.contains("ReleaseInstance") {
            self.releaseInstance = dict["ReleaseInstance"] as! Bool
        }
    }
}

public class DeleteNodesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUsersRequest : Tea.TeaModel {
    public class User : Tea.TeaModel {
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
    public var clusterId: String?

    public var user: [DeleteUsersRequest.User]?

    public override init() {
        super.init()
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
        if self.user != nil {
            var tmp : [Any] = []
            for k in self.user! {
                tmp.append(k.toMap())
            }
            map["User"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! [DeleteUsersRequest.User]
        }
    }
}

public class DeleteUsersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterRequest : Tea.TeaModel {
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

public class DescribeClusterResponseBody : Tea.TeaModel {
    public class ClusterInfo : Tea.TeaModel {
        public class Applications : Tea.TeaModel {
            public class ApplicationInfo : Tea.TeaModel {
                public var name: String?

                public var tag: String?

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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.tag != nil {
                        map["Tag"] = self.tag!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Tag") {
                        self.tag = dict["Tag"] as! String
                    }
                    if dict.keys.contains("Version") {
                        self.version = dict["Version"] as! String
                    }
                }
            }
            public var applicationInfo: [DescribeClusterResponseBody.ClusterInfo.Applications.ApplicationInfo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applicationInfo != nil {
                    var tmp : [Any] = []
                    for k in self.applicationInfo! {
                        tmp.append(k.toMap())
                    }
                    map["ApplicationInfo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApplicationInfo") {
                    self.applicationInfo = dict["ApplicationInfo"] as! [DescribeClusterResponseBody.ClusterInfo.Applications.ApplicationInfo]
                }
            }
        }
        public class EcsInfo : Tea.TeaModel {
            public class Compute : Tea.TeaModel {
                public var count: Int32?

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
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    if self.instanceType != nil {
                        map["InstanceType"] = self.instanceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Count") {
                        self.count = dict["Count"] as! Int32
                    }
                    if dict.keys.contains("InstanceType") {
                        self.instanceType = dict["InstanceType"] as! String
                    }
                }
            }
            public class Login : Tea.TeaModel {
                public var count: Int32?

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
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    if self.instanceType != nil {
                        map["InstanceType"] = self.instanceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Count") {
                        self.count = dict["Count"] as! Int32
                    }
                    if dict.keys.contains("InstanceType") {
                        self.instanceType = dict["InstanceType"] as! String
                    }
                }
            }
            public class Manager : Tea.TeaModel {
                public var count: Int32?

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
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    if self.instanceType != nil {
                        map["InstanceType"] = self.instanceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Count") {
                        self.count = dict["Count"] as! Int32
                    }
                    if dict.keys.contains("InstanceType") {
                        self.instanceType = dict["InstanceType"] as! String
                    }
                }
            }
            public var compute: DescribeClusterResponseBody.ClusterInfo.EcsInfo.Compute?

            public var login: DescribeClusterResponseBody.ClusterInfo.EcsInfo.Login?

            public var manager: DescribeClusterResponseBody.ClusterInfo.EcsInfo.Manager?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.compute?.validate()
                try self.login?.validate()
                try self.manager?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compute != nil {
                    map["Compute"] = self.compute?.toMap()
                }
                if self.login != nil {
                    map["Login"] = self.login?.toMap()
                }
                if self.manager != nil {
                    map["Manager"] = self.manager?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Compute") {
                    var model = DescribeClusterResponseBody.ClusterInfo.EcsInfo.Compute()
                    model.fromMap(dict["Compute"] as! [String: Any])
                    self.compute = model
                }
                if dict.keys.contains("Login") {
                    var model = DescribeClusterResponseBody.ClusterInfo.EcsInfo.Login()
                    model.fromMap(dict["Login"] as! [String: Any])
                    self.login = model
                }
                if dict.keys.contains("Manager") {
                    var model = DescribeClusterResponseBody.ClusterInfo.EcsInfo.Manager()
                    model.fromMap(dict["Manager"] as! [String: Any])
                    self.manager = model
                }
            }
        }
        public var accountType: String?

        public var applications: DescribeClusterResponseBody.ClusterInfo.Applications?

        public var clientVersion: String?

        public var createTime: String?

        public var description_: String?

        public var ecsChargeType: String?

        public var ecsInfo: DescribeClusterResponseBody.ClusterInfo.EcsInfo?

        public var haEnable: Bool?

        public var id: String?

        public var imageId: String?

        public var imageOwnerAlias: String?

        public var keyPairName: String?

        public var name: String?

        public var osTag: String?

        public var regionId: String?

        public var remoteDirectory: String?

        public var sccClusterId: String?

        public var schedulerType: String?

        public var securityGroupId: String?

        public var status: String?

        public var vSwitchId: String?

        public var volumeId: String?

        public var volumeMountpoint: String?

        public var volumeProtocol: String?

        public var volumeType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.applications?.validate()
            try self.ecsInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountType != nil {
                map["AccountType"] = self.accountType!
            }
            if self.applications != nil {
                map["Applications"] = self.applications?.toMap()
            }
            if self.clientVersion != nil {
                map["ClientVersion"] = self.clientVersion!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.ecsChargeType != nil {
                map["EcsChargeType"] = self.ecsChargeType!
            }
            if self.ecsInfo != nil {
                map["EcsInfo"] = self.ecsInfo?.toMap()
            }
            if self.haEnable != nil {
                map["HaEnable"] = self.haEnable!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageOwnerAlias != nil {
                map["ImageOwnerAlias"] = self.imageOwnerAlias!
            }
            if self.keyPairName != nil {
                map["KeyPairName"] = self.keyPairName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.osTag != nil {
                map["OsTag"] = self.osTag!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.remoteDirectory != nil {
                map["RemoteDirectory"] = self.remoteDirectory!
            }
            if self.sccClusterId != nil {
                map["SccClusterId"] = self.sccClusterId!
            }
            if self.schedulerType != nil {
                map["SchedulerType"] = self.schedulerType!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.volumeId != nil {
                map["VolumeId"] = self.volumeId!
            }
            if self.volumeMountpoint != nil {
                map["VolumeMountpoint"] = self.volumeMountpoint!
            }
            if self.volumeProtocol != nil {
                map["VolumeProtocol"] = self.volumeProtocol!
            }
            if self.volumeType != nil {
                map["VolumeType"] = self.volumeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountType") {
                self.accountType = dict["AccountType"] as! String
            }
            if dict.keys.contains("Applications") {
                var model = DescribeClusterResponseBody.ClusterInfo.Applications()
                model.fromMap(dict["Applications"] as! [String: Any])
                self.applications = model
            }
            if dict.keys.contains("ClientVersion") {
                self.clientVersion = dict["ClientVersion"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EcsChargeType") {
                self.ecsChargeType = dict["EcsChargeType"] as! String
            }
            if dict.keys.contains("EcsInfo") {
                var model = DescribeClusterResponseBody.ClusterInfo.EcsInfo()
                model.fromMap(dict["EcsInfo"] as! [String: Any])
                self.ecsInfo = model
            }
            if dict.keys.contains("HaEnable") {
                self.haEnable = dict["HaEnable"] as! Bool
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageOwnerAlias") {
                self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
            }
            if dict.keys.contains("KeyPairName") {
                self.keyPairName = dict["KeyPairName"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OsTag") {
                self.osTag = dict["OsTag"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RemoteDirectory") {
                self.remoteDirectory = dict["RemoteDirectory"] as! String
            }
            if dict.keys.contains("SccClusterId") {
                self.sccClusterId = dict["SccClusterId"] as! String
            }
            if dict.keys.contains("SchedulerType") {
                self.schedulerType = dict["SchedulerType"] as! String
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VolumeId") {
                self.volumeId = dict["VolumeId"] as! String
            }
            if dict.keys.contains("VolumeMountpoint") {
                self.volumeMountpoint = dict["VolumeMountpoint"] as! String
            }
            if dict.keys.contains("VolumeProtocol") {
                self.volumeProtocol = dict["VolumeProtocol"] as! String
            }
            if dict.keys.contains("VolumeType") {
                self.volumeType = dict["VolumeType"] as! String
            }
        }
    }
    public var clusterInfo: DescribeClusterResponseBody.ClusterInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clusterInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterInfo != nil {
            map["ClusterInfo"] = self.clusterInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterInfo") {
            var model = DescribeClusterResponseBody.ClusterInfo()
            model.fromMap(dict["ClusterInfo"] as! [String: Any])
            self.clusterInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class EditJobTemplateRequest : Tea.TeaModel {
    public var arrayRequest: String?

    public var commandLine: String?

    public var name: String?

    public var packagePath: String?

    public var priority: Int32?

    public var reRunable: Bool?

    public var regionId: String?

    public var runasUser: String?

    public var stderrRedirectPath: String?

    public var stdoutRedirectPath: String?

    public var templateId: String?

    public var variables: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arrayRequest != nil {
            map["ArrayRequest"] = self.arrayRequest!
        }
        if self.commandLine != nil {
            map["CommandLine"] = self.commandLine!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.packagePath != nil {
            map["PackagePath"] = self.packagePath!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.reRunable != nil {
            map["ReRunable"] = self.reRunable!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.runasUser != nil {
            map["RunasUser"] = self.runasUser!
        }
        if self.stderrRedirectPath != nil {
            map["StderrRedirectPath"] = self.stderrRedirectPath!
        }
        if self.stdoutRedirectPath != nil {
            map["StdoutRedirectPath"] = self.stdoutRedirectPath!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.variables != nil {
            map["Variables"] = self.variables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArrayRequest") {
            self.arrayRequest = dict["ArrayRequest"] as! String
        }
        if dict.keys.contains("CommandLine") {
            self.commandLine = dict["CommandLine"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PackagePath") {
            self.packagePath = dict["PackagePath"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ReRunable") {
            self.reRunable = dict["ReRunable"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RunasUser") {
            self.runasUser = dict["RunasUser"] as! String
        }
        if dict.keys.contains("StderrRedirectPath") {
            self.stderrRedirectPath = dict["StderrRedirectPath"] as! String
        }
        if dict.keys.contains("StdoutRedirectPath") {
            self.stdoutRedirectPath = dict["StdoutRedirectPath"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("Variables") {
            self.variables = dict["Variables"] as! String
        }
    }
}

public class EditJobTemplateResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class EditJobTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditJobTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EditJobTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAutoScaleConfigRequest : Tea.TeaModel {
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

public class GetAutoScaleConfigResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var clusterType: String?

    public var enableAutoGrow: Bool?

    public var enableAutoShrink: Bool?

    public var excludeNodes: String?

    public var extraNodesGrowRatio: Int32?

    public var growIntervalInMinutes: Int32?

    public var growRatio: Int32?

    public var growTimeoutInMinutes: Int32?

    public var maxNodesInCluster: Int32?

    public var requestId: String?

    public var shrinkIdleTimes: Int32?

    public var shrinkIntervalInMinutes: Int32?

    public var uid: String?

    public override init() {
        super.init()
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
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.enableAutoGrow != nil {
            map["EnableAutoGrow"] = self.enableAutoGrow!
        }
        if self.enableAutoShrink != nil {
            map["EnableAutoShrink"] = self.enableAutoShrink!
        }
        if self.excludeNodes != nil {
            map["ExcludeNodes"] = self.excludeNodes!
        }
        if self.extraNodesGrowRatio != nil {
            map["ExtraNodesGrowRatio"] = self.extraNodesGrowRatio!
        }
        if self.growIntervalInMinutes != nil {
            map["GrowIntervalInMinutes"] = self.growIntervalInMinutes!
        }
        if self.growRatio != nil {
            map["GrowRatio"] = self.growRatio!
        }
        if self.growTimeoutInMinutes != nil {
            map["GrowTimeoutInMinutes"] = self.growTimeoutInMinutes!
        }
        if self.maxNodesInCluster != nil {
            map["MaxNodesInCluster"] = self.maxNodesInCluster!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.shrinkIdleTimes != nil {
            map["ShrinkIdleTimes"] = self.shrinkIdleTimes!
        }
        if self.shrinkIntervalInMinutes != nil {
            map["ShrinkIntervalInMinutes"] = self.shrinkIntervalInMinutes!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterType") {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("EnableAutoGrow") {
            self.enableAutoGrow = dict["EnableAutoGrow"] as! Bool
        }
        if dict.keys.contains("EnableAutoShrink") {
            self.enableAutoShrink = dict["EnableAutoShrink"] as! Bool
        }
        if dict.keys.contains("ExcludeNodes") {
            self.excludeNodes = dict["ExcludeNodes"] as! String
        }
        if dict.keys.contains("ExtraNodesGrowRatio") {
            self.extraNodesGrowRatio = dict["ExtraNodesGrowRatio"] as! Int32
        }
        if dict.keys.contains("GrowIntervalInMinutes") {
            self.growIntervalInMinutes = dict["GrowIntervalInMinutes"] as! Int32
        }
        if dict.keys.contains("GrowRatio") {
            self.growRatio = dict["GrowRatio"] as! Int32
        }
        if dict.keys.contains("GrowTimeoutInMinutes") {
            self.growTimeoutInMinutes = dict["GrowTimeoutInMinutes"] as! Int32
        }
        if dict.keys.contains("MaxNodesInCluster") {
            self.maxNodesInCluster = dict["MaxNodesInCluster"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ShrinkIdleTimes") {
            self.shrinkIdleTimes = dict["ShrinkIdleTimes"] as! Int32
        }
        if dict.keys.contains("ShrinkIntervalInMinutes") {
            self.shrinkIntervalInMinutes = dict["ShrinkIntervalInMinutes"] as! Int32
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! String
        }
    }
}

public class GetAutoScaleConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAutoScaleConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAutoScaleConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClusterLogsRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListClusterLogsResponseBody : Tea.TeaModel {
    public class Logs : Tea.TeaModel {
        public class LogInfo : Tea.TeaModel {
            public var createTime: String?

            public var level: String?

            public var message: String?

            public var operation: String?

            public override init() {
                super.init()
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
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.operation != nil {
                    map["Operation"] = self.operation!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Level") {
                    self.level = dict["Level"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Operation") {
                    self.operation = dict["Operation"] as! String
                }
            }
        }
        public var logInfo: [ListClusterLogsResponseBody.Logs.LogInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logInfo != nil {
                var tmp : [Any] = []
                for k in self.logInfo! {
                    tmp.append(k.toMap())
                }
                map["LogInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogInfo") {
                self.logInfo = dict["LogInfo"] as! [ListClusterLogsResponseBody.Logs.LogInfo]
            }
        }
    }
    public var clusterId: String?

    public var logs: ListClusterLogsResponseBody.Logs?

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
        try self.logs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.logs != nil {
            map["Logs"] = self.logs?.toMap()
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
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Logs") {
            var model = ListClusterLogsResponseBody.Logs()
            model.fromMap(dict["Logs"] as! [String: Any])
            self.logs = model
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

public class ListClusterLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClusterLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListClusterLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClustersRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListClustersResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public class ClusterInfoSimple : Tea.TeaModel {
            public class Computes : Tea.TeaModel {
                public var exceptionCount: Int32?

                public var normalCount: Int32?

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
                    if self.exceptionCount != nil {
                        map["ExceptionCount"] = self.exceptionCount!
                    }
                    if self.normalCount != nil {
                        map["NormalCount"] = self.normalCount!
                    }
                    if self.total != nil {
                        map["Total"] = self.total!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ExceptionCount") {
                        self.exceptionCount = dict["ExceptionCount"] as! Int32
                    }
                    if dict.keys.contains("NormalCount") {
                        self.normalCount = dict["NormalCount"] as! Int32
                    }
                    if dict.keys.contains("Total") {
                        self.total = dict["Total"] as! Int32
                    }
                }
            }
            public class Managers : Tea.TeaModel {
                public var exceptionCount: Int32?

                public var normalCount: Int32?

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
                    if self.exceptionCount != nil {
                        map["ExceptionCount"] = self.exceptionCount!
                    }
                    if self.normalCount != nil {
                        map["NormalCount"] = self.normalCount!
                    }
                    if self.total != nil {
                        map["Total"] = self.total!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ExceptionCount") {
                        self.exceptionCount = dict["ExceptionCount"] as! Int32
                    }
                    if dict.keys.contains("NormalCount") {
                        self.normalCount = dict["NormalCount"] as! Int32
                    }
                    if dict.keys.contains("Total") {
                        self.total = dict["Total"] as! Int32
                    }
                }
            }
            public class TotalResources : Tea.TeaModel {
                public var cpu: Int32?

                public var gpu: Int32?

                public var memory: Int32?

                public override init() {
                    super.init()
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
                    if self.gpu != nil {
                        map["Gpu"] = self.gpu!
                    }
                    if self.memory != nil {
                        map["Memory"] = self.memory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Cpu") {
                        self.cpu = dict["Cpu"] as! Int32
                    }
                    if dict.keys.contains("Gpu") {
                        self.gpu = dict["Gpu"] as! Int32
                    }
                    if dict.keys.contains("Memory") {
                        self.memory = dict["Memory"] as! Int32
                    }
                }
            }
            public class UsedResources : Tea.TeaModel {
                public var cpu: Int32?

                public var gpu: Int32?

                public var memory: Int32?

                public override init() {
                    super.init()
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
                    if self.gpu != nil {
                        map["Gpu"] = self.gpu!
                    }
                    if self.memory != nil {
                        map["Memory"] = self.memory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Cpu") {
                        self.cpu = dict["Cpu"] as! Int32
                    }
                    if dict.keys.contains("Gpu") {
                        self.gpu = dict["Gpu"] as! Int32
                    }
                    if dict.keys.contains("Memory") {
                        self.memory = dict["Memory"] as! Int32
                    }
                }
            }
            public var accountType: String?

            public var computes: ListClustersResponseBody.Clusters.ClusterInfoSimple.Computes?

            public var count: Int32?

            public var createTime: String?

            public var description_: String?

            public var id: String?

            public var imageId: String?

            public var imageOwnerAlias: String?

            public var instanceType: String?

            public var loginNodes: String?

            public var managers: ListClustersResponseBody.Clusters.ClusterInfoSimple.Managers?

            public var name: String?

            public var osTag: String?

            public var regionId: String?

            public var schedulerType: String?

            public var status: String?

            public var totalResources: ListClustersResponseBody.Clusters.ClusterInfoSimple.TotalResources?

            public var usedResources: ListClustersResponseBody.Clusters.ClusterInfoSimple.UsedResources?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.computes?.validate()
                try self.managers?.validate()
                try self.totalResources?.validate()
                try self.usedResources?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountType != nil {
                    map["AccountType"] = self.accountType!
                }
                if self.computes != nil {
                    map["Computes"] = self.computes?.toMap()
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.imageOwnerAlias != nil {
                    map["ImageOwnerAlias"] = self.imageOwnerAlias!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.loginNodes != nil {
                    map["LoginNodes"] = self.loginNodes!
                }
                if self.managers != nil {
                    map["Managers"] = self.managers?.toMap()
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.osTag != nil {
                    map["OsTag"] = self.osTag!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.schedulerType != nil {
                    map["SchedulerType"] = self.schedulerType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.totalResources != nil {
                    map["TotalResources"] = self.totalResources?.toMap()
                }
                if self.usedResources != nil {
                    map["UsedResources"] = self.usedResources?.toMap()
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountType") {
                    self.accountType = dict["AccountType"] as! String
                }
                if dict.keys.contains("Computes") {
                    var model = ListClustersResponseBody.Clusters.ClusterInfoSimple.Computes()
                    model.fromMap(dict["Computes"] as! [String: Any])
                    self.computes = model
                }
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("ImageId") {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("ImageOwnerAlias") {
                    self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("LoginNodes") {
                    self.loginNodes = dict["LoginNodes"] as! String
                }
                if dict.keys.contains("Managers") {
                    var model = ListClustersResponseBody.Clusters.ClusterInfoSimple.Managers()
                    model.fromMap(dict["Managers"] as! [String: Any])
                    self.managers = model
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OsTag") {
                    self.osTag = dict["OsTag"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("SchedulerType") {
                    self.schedulerType = dict["SchedulerType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TotalResources") {
                    var model = ListClustersResponseBody.Clusters.ClusterInfoSimple.TotalResources()
                    model.fromMap(dict["TotalResources"] as! [String: Any])
                    self.totalResources = model
                }
                if dict.keys.contains("UsedResources") {
                    var model = ListClustersResponseBody.Clusters.ClusterInfoSimple.UsedResources()
                    model.fromMap(dict["UsedResources"] as! [String: Any])
                    self.usedResources = model
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var clusterInfoSimple: [ListClustersResponseBody.Clusters.ClusterInfoSimple]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterInfoSimple != nil {
                var tmp : [Any] = []
                for k in self.clusterInfoSimple! {
                    tmp.append(k.toMap())
                }
                map["ClusterInfoSimple"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterInfoSimple") {
                self.clusterInfoSimple = dict["ClusterInfoSimple"] as! [ListClustersResponseBody.Clusters.ClusterInfoSimple]
            }
        }
    }
    public var clusters: ListClustersResponseBody.Clusters?

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
        try self.clusters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusters != nil {
            map["Clusters"] = self.clusters?.toMap()
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
        if dict.keys.contains("Clusters") {
            var model = ListClustersResponseBody.Clusters()
            model.fromMap(dict["Clusters"] as! [String: Any])
            self.clusters = model
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

public class ListCurrentClientVersionResponseBody : Tea.TeaModel {
    public var clientVersion: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListCurrentClientVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCurrentClientVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCurrentClientVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCustomImagesRequest : Tea.TeaModel {
    public var baseOsTag: String?

    public var imageOwnerAlias: String?

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
        if self.baseOsTag != nil {
            map["BaseOsTag"] = self.baseOsTag!
        }
        if self.imageOwnerAlias != nil {
            map["ImageOwnerAlias"] = self.imageOwnerAlias!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaseOsTag") {
            self.baseOsTag = dict["BaseOsTag"] as! String
        }
        if dict.keys.contains("ImageOwnerAlias") {
            self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListCustomImagesResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public class ImageInfo : Tea.TeaModel {
            public class BaseOsTag : Tea.TeaModel {
                public var architecture: String?

                public var osTag: String?

                public var platform: String?

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
                    if self.architecture != nil {
                        map["Architecture"] = self.architecture!
                    }
                    if self.osTag != nil {
                        map["OsTag"] = self.osTag!
                    }
                    if self.platform != nil {
                        map["Platform"] = self.platform!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Architecture") {
                        self.architecture = dict["Architecture"] as! String
                    }
                    if dict.keys.contains("OsTag") {
                        self.osTag = dict["OsTag"] as! String
                    }
                    if dict.keys.contains("Platform") {
                        self.platform = dict["Platform"] as! String
                    }
                    if dict.keys.contains("Version") {
                        self.version = dict["Version"] as! String
                    }
                }
            }
            public var baseOsTag: ListCustomImagesResponseBody.Images.ImageInfo.BaseOsTag?

            public var description_: String?

            public var imageId: String?

            public var imageName: String?

            public var imageOwnerAlias: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.baseOsTag?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.baseOsTag != nil {
                    map["BaseOsTag"] = self.baseOsTag?.toMap()
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.imageName != nil {
                    map["ImageName"] = self.imageName!
                }
                if self.imageOwnerAlias != nil {
                    map["ImageOwnerAlias"] = self.imageOwnerAlias!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BaseOsTag") {
                    var model = ListCustomImagesResponseBody.Images.ImageInfo.BaseOsTag()
                    model.fromMap(dict["BaseOsTag"] as! [String: Any])
                    self.baseOsTag = model
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ImageId") {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("ImageName") {
                    self.imageName = dict["ImageName"] as! String
                }
                if dict.keys.contains("ImageOwnerAlias") {
                    self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
                }
            }
        }
        public var imageInfo: [ListCustomImagesResponseBody.Images.ImageInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageInfo != nil {
                var tmp : [Any] = []
                for k in self.imageInfo! {
                    tmp.append(k.toMap())
                }
                map["ImageInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageInfo") {
                self.imageInfo = dict["ImageInfo"] as! [ListCustomImagesResponseBody.Images.ImageInfo]
            }
        }
    }
    public var images: ListCustomImagesResponseBody.Images?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.images?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.images != nil {
            map["Images"] = self.images?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Images") {
            var model = ListCustomImagesResponseBody.Images()
            model.fromMap(dict["Images"] as! [String: Any])
            self.images = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListCustomImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomImagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCustomImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListImagesResponseBody : Tea.TeaModel {
    public class OsTags : Tea.TeaModel {
        public class OsInfo : Tea.TeaModel {
            public var architecture: String?

            public var osTag: String?

            public var platform: String?

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
                if self.architecture != nil {
                    map["Architecture"] = self.architecture!
                }
                if self.osTag != nil {
                    map["OsTag"] = self.osTag!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Architecture") {
                    self.architecture = dict["Architecture"] as! String
                }
                if dict.keys.contains("OsTag") {
                    self.osTag = dict["OsTag"] as! String
                }
                if dict.keys.contains("Platform") {
                    self.platform = dict["Platform"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public var osInfo: [ListImagesResponseBody.OsTags.OsInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.osInfo != nil {
                var tmp : [Any] = []
                for k in self.osInfo! {
                    tmp.append(k.toMap())
                }
                map["OsInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OsInfo") {
                self.osInfo = dict["OsInfo"] as! [ListImagesResponseBody.OsTags.OsInfo]
            }
        }
    }
    public var osTags: ListImagesResponseBody.OsTags?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.osTags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.osTags != nil {
            map["OsTags"] = self.osTags?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OsTags") {
            var model = ListImagesResponseBody.OsTags()
            model.fromMap(dict["OsTags"] as! [String: Any])
            self.osTags = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListImagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJobTemplatesRequest : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
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
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
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

public class ListJobTemplatesResponseBody : Tea.TeaModel {
    public class Templates : Tea.TeaModel {
        public class JobTemplates : Tea.TeaModel {
            public var arrayRequest: String?

            public var commandLine: String?

            public var id: String?

            public var name: String?

            public var packagePath: String?

            public var priority: Int32?

            public var reRunable: Bool?

            public var runasUser: String?

            public var stderrRedirectPath: String?

            public var stdoutRedirectPath: String?

            public var variables: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrayRequest != nil {
                    map["ArrayRequest"] = self.arrayRequest!
                }
                if self.commandLine != nil {
                    map["CommandLine"] = self.commandLine!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.packagePath != nil {
                    map["PackagePath"] = self.packagePath!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.reRunable != nil {
                    map["ReRunable"] = self.reRunable!
                }
                if self.runasUser != nil {
                    map["RunasUser"] = self.runasUser!
                }
                if self.stderrRedirectPath != nil {
                    map["StderrRedirectPath"] = self.stderrRedirectPath!
                }
                if self.stdoutRedirectPath != nil {
                    map["StdoutRedirectPath"] = self.stdoutRedirectPath!
                }
                if self.variables != nil {
                    map["Variables"] = self.variables!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArrayRequest") {
                    self.arrayRequest = dict["ArrayRequest"] as! String
                }
                if dict.keys.contains("CommandLine") {
                    self.commandLine = dict["CommandLine"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PackagePath") {
                    self.packagePath = dict["PackagePath"] as! String
                }
                if dict.keys.contains("Priority") {
                    self.priority = dict["Priority"] as! Int32
                }
                if dict.keys.contains("ReRunable") {
                    self.reRunable = dict["ReRunable"] as! Bool
                }
                if dict.keys.contains("RunasUser") {
                    self.runasUser = dict["RunasUser"] as! String
                }
                if dict.keys.contains("StderrRedirectPath") {
                    self.stderrRedirectPath = dict["StderrRedirectPath"] as! String
                }
                if dict.keys.contains("StdoutRedirectPath") {
                    self.stdoutRedirectPath = dict["StdoutRedirectPath"] as! String
                }
                if dict.keys.contains("Variables") {
                    self.variables = dict["Variables"] as! String
                }
            }
        }
        public var jobTemplates: [ListJobTemplatesResponseBody.Templates.JobTemplates]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobTemplates != nil {
                var tmp : [Any] = []
                for k in self.jobTemplates! {
                    tmp.append(k.toMap())
                }
                map["JobTemplates"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobTemplates") {
                self.jobTemplates = dict["JobTemplates"] as! [ListJobTemplatesResponseBody.Templates.JobTemplates]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var templates: ListJobTemplatesResponseBody.Templates?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.templates?.validate()
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
        if self.templates != nil {
            map["Templates"] = self.templates?.toMap()
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
        if dict.keys.contains("Templates") {
            var model = ListJobTemplatesResponseBody.Templates()
            model.fromMap(dict["Templates"] as! [String: Any])
            self.templates = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListJobTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListJobTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJobsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var owner: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var rerunable: String?

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
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.rerunable != nil {
            map["Rerunable"] = self.rerunable!
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
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Rerunable") {
            self.rerunable = dict["Rerunable"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
    }
}

public class ListJobsResponseBody : Tea.TeaModel {
    public class Jobs : Tea.TeaModel {
        public class JobInfo : Tea.TeaModel {
            public class Resources : Tea.TeaModel {
                public var cores: Int32?

                public var nodes: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cores != nil {
                        map["Cores"] = self.cores!
                    }
                    if self.nodes != nil {
                        map["Nodes"] = self.nodes!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Cores") {
                        self.cores = dict["Cores"] as! Int32
                    }
                    if dict.keys.contains("Nodes") {
                        self.nodes = dict["Nodes"] as! Int32
                    }
                }
            }
            public var arrayRequest: String?

            public var comment: String?

            public var id: String?

            public var lastModifyTime: String?

            public var name: String?

            public var owner: String?

            public var priority: Int32?

            public var resources: ListJobsResponseBody.Jobs.JobInfo.Resources?

            public var shellPath: String?

            public var startTime: String?

            public var state: String?

            public var stderr: String?

            public var stdout: String?

            public var submitTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.resources?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrayRequest != nil {
                    map["ArrayRequest"] = self.arrayRequest!
                }
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.lastModifyTime != nil {
                    map["LastModifyTime"] = self.lastModifyTime!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.resources != nil {
                    map["Resources"] = self.resources?.toMap()
                }
                if self.shellPath != nil {
                    map["ShellPath"] = self.shellPath!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.stderr != nil {
                    map["Stderr"] = self.stderr!
                }
                if self.stdout != nil {
                    map["Stdout"] = self.stdout!
                }
                if self.submitTime != nil {
                    map["SubmitTime"] = self.submitTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArrayRequest") {
                    self.arrayRequest = dict["ArrayRequest"] as! String
                }
                if dict.keys.contains("Comment") {
                    self.comment = dict["Comment"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("LastModifyTime") {
                    self.lastModifyTime = dict["LastModifyTime"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Owner") {
                    self.owner = dict["Owner"] as! String
                }
                if dict.keys.contains("Priority") {
                    self.priority = dict["Priority"] as! Int32
                }
                if dict.keys.contains("Resources") {
                    var model = ListJobsResponseBody.Jobs.JobInfo.Resources()
                    model.fromMap(dict["Resources"] as! [String: Any])
                    self.resources = model
                }
                if dict.keys.contains("ShellPath") {
                    self.shellPath = dict["ShellPath"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("State") {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("Stderr") {
                    self.stderr = dict["Stderr"] as! String
                }
                if dict.keys.contains("Stdout") {
                    self.stdout = dict["Stdout"] as! String
                }
                if dict.keys.contains("SubmitTime") {
                    self.submitTime = dict["SubmitTime"] as! String
                }
            }
        }
        public var jobInfo: [ListJobsResponseBody.Jobs.JobInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobInfo != nil {
                var tmp : [Any] = []
                for k in self.jobInfo! {
                    tmp.append(k.toMap())
                }
                map["JobInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobInfo") {
                self.jobInfo = dict["JobInfo"] as! [ListJobsResponseBody.Jobs.JobInfo]
            }
        }
    }
    public var jobs: ListJobsResponseBody.Jobs?

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
        try self.jobs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobs != nil {
            map["Jobs"] = self.jobs?.toMap()
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
        if dict.keys.contains("Jobs") {
            var model = ListJobsResponseBody.Jobs()
            model.fromMap(dict["Jobs"] as! [String: Any])
            self.jobs = model
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

public class ListJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var hostName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var role: String?

    public override init() {
        super.init()
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
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("HostName") {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
    }
}

public class ListNodesResponseBody : Tea.TeaModel {
    public class Nodes : Tea.TeaModel {
        public class NodeInfo : Tea.TeaModel {
            public class TotalResources : Tea.TeaModel {
                public var cpu: Int32?

                public var gpu: Int32?

                public var memory: Int32?

                public override init() {
                    super.init()
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
                    if self.gpu != nil {
                        map["Gpu"] = self.gpu!
                    }
                    if self.memory != nil {
                        map["Memory"] = self.memory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Cpu") {
                        self.cpu = dict["Cpu"] as! Int32
                    }
                    if dict.keys.contains("Gpu") {
                        self.gpu = dict["Gpu"] as! Int32
                    }
                    if dict.keys.contains("Memory") {
                        self.memory = dict["Memory"] as! Int32
                    }
                }
            }
            public class UsedResources : Tea.TeaModel {
                public var cpu: Int32?

                public var gpu: Int32?

                public var memory: Int32?

                public override init() {
                    super.init()
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
                    if self.gpu != nil {
                        map["Gpu"] = self.gpu!
                    }
                    if self.memory != nil {
                        map["Memory"] = self.memory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Cpu") {
                        self.cpu = dict["Cpu"] as! Int32
                    }
                    if dict.keys.contains("Gpu") {
                        self.gpu = dict["Gpu"] as! Int32
                    }
                    if dict.keys.contains("Memory") {
                        self.memory = dict["Memory"] as! Int32
                    }
                }
            }
            public var addTime: String?

            public var createdByEhpc: Bool?

            public var expired: Bool?

            public var expiredTime: String?

            public var id: String?

            public var imageId: String?

            public var imageOwnerAlias: String?

            public var lockReason: String?

            public var regionId: String?

            public var role: String?

            public var spotStrategy: String?

            public var status: String?

            public var totalResources: ListNodesResponseBody.Nodes.NodeInfo.TotalResources?

            public var usedResources: ListNodesResponseBody.Nodes.NodeInfo.UsedResources?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.totalResources?.validate()
                try self.usedResources?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addTime != nil {
                    map["AddTime"] = self.addTime!
                }
                if self.createdByEhpc != nil {
                    map["CreatedByEhpc"] = self.createdByEhpc!
                }
                if self.expired != nil {
                    map["Expired"] = self.expired!
                }
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.imageOwnerAlias != nil {
                    map["ImageOwnerAlias"] = self.imageOwnerAlias!
                }
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.spotStrategy != nil {
                    map["SpotStrategy"] = self.spotStrategy!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.totalResources != nil {
                    map["TotalResources"] = self.totalResources?.toMap()
                }
                if self.usedResources != nil {
                    map["UsedResources"] = self.usedResources?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddTime") {
                    self.addTime = dict["AddTime"] as! String
                }
                if dict.keys.contains("CreatedByEhpc") {
                    self.createdByEhpc = dict["CreatedByEhpc"] as! Bool
                }
                if dict.keys.contains("Expired") {
                    self.expired = dict["Expired"] as! Bool
                }
                if dict.keys.contains("ExpiredTime") {
                    self.expiredTime = dict["ExpiredTime"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("ImageId") {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("ImageOwnerAlias") {
                    self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
                }
                if dict.keys.contains("LockReason") {
                    self.lockReason = dict["LockReason"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("SpotStrategy") {
                    self.spotStrategy = dict["SpotStrategy"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TotalResources") {
                    var model = ListNodesResponseBody.Nodes.NodeInfo.TotalResources()
                    model.fromMap(dict["TotalResources"] as! [String: Any])
                    self.totalResources = model
                }
                if dict.keys.contains("UsedResources") {
                    var model = ListNodesResponseBody.Nodes.NodeInfo.UsedResources()
                    model.fromMap(dict["UsedResources"] as! [String: Any])
                    self.usedResources = model
                }
            }
        }
        public var nodeInfo: [ListNodesResponseBody.Nodes.NodeInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeInfo != nil {
                var tmp : [Any] = []
                for k in self.nodeInfo! {
                    tmp.append(k.toMap())
                }
                map["NodeInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeInfo") {
                self.nodeInfo = dict["NodeInfo"] as! [ListNodesResponseBody.Nodes.NodeInfo]
            }
        }
    }
    public var nodes: ListNodesResponseBody.Nodes?

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
        try self.nodes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodes != nil {
            map["Nodes"] = self.nodes?.toMap()
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
        if dict.keys.contains("Nodes") {
            var model = ListNodesResponseBody.Nodes()
            model.fromMap(dict["Nodes"] as! [String: Any])
            self.nodes = model
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

public class ListNodesNoPagingRequest : Tea.TeaModel {
    public var clusterId: String?

    public var hostName: String?

    public var onlyDetached: Bool?

    public var role: String?

    public override init() {
        super.init()
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
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.onlyDetached != nil {
            map["OnlyDetached"] = self.onlyDetached!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("HostName") {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("OnlyDetached") {
            self.onlyDetached = dict["OnlyDetached"] as! Bool
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
    }
}

public class ListNodesNoPagingResponseBody : Tea.TeaModel {
    public class Nodes : Tea.TeaModel {
        public class NodeInfo : Tea.TeaModel {
            public class TotalResources : Tea.TeaModel {
                public var cpu: Int32?

                public var gpu: Int32?

                public var memory: Int32?

                public override init() {
                    super.init()
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
                    if self.gpu != nil {
                        map["Gpu"] = self.gpu!
                    }
                    if self.memory != nil {
                        map["Memory"] = self.memory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Cpu") {
                        self.cpu = dict["Cpu"] as! Int32
                    }
                    if dict.keys.contains("Gpu") {
                        self.gpu = dict["Gpu"] as! Int32
                    }
                    if dict.keys.contains("Memory") {
                        self.memory = dict["Memory"] as! Int32
                    }
                }
            }
            public class UsedResources : Tea.TeaModel {
                public var cpu: Int32?

                public var gpu: Int32?

                public var memory: Int32?

                public override init() {
                    super.init()
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
                    if self.gpu != nil {
                        map["Gpu"] = self.gpu!
                    }
                    if self.memory != nil {
                        map["Memory"] = self.memory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Cpu") {
                        self.cpu = dict["Cpu"] as! Int32
                    }
                    if dict.keys.contains("Gpu") {
                        self.gpu = dict["Gpu"] as! Int32
                    }
                    if dict.keys.contains("Memory") {
                        self.memory = dict["Memory"] as! Int32
                    }
                }
            }
            public var addTime: String?

            public var createdByEhpc: Bool?

            public var expired: Bool?

            public var expiredTime: String?

            public var id: String?

            public var imageId: String?

            public var imageOwnerAlias: String?

            public var lockReason: String?

            public var regionId: String?

            public var role: String?

            public var spotStrategy: String?

            public var status: String?

            public var totalResources: ListNodesNoPagingResponseBody.Nodes.NodeInfo.TotalResources?

            public var usedResources: ListNodesNoPagingResponseBody.Nodes.NodeInfo.UsedResources?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.totalResources?.validate()
                try self.usedResources?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addTime != nil {
                    map["AddTime"] = self.addTime!
                }
                if self.createdByEhpc != nil {
                    map["CreatedByEhpc"] = self.createdByEhpc!
                }
                if self.expired != nil {
                    map["Expired"] = self.expired!
                }
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.imageOwnerAlias != nil {
                    map["ImageOwnerAlias"] = self.imageOwnerAlias!
                }
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.spotStrategy != nil {
                    map["SpotStrategy"] = self.spotStrategy!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.totalResources != nil {
                    map["TotalResources"] = self.totalResources?.toMap()
                }
                if self.usedResources != nil {
                    map["UsedResources"] = self.usedResources?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddTime") {
                    self.addTime = dict["AddTime"] as! String
                }
                if dict.keys.contains("CreatedByEhpc") {
                    self.createdByEhpc = dict["CreatedByEhpc"] as! Bool
                }
                if dict.keys.contains("Expired") {
                    self.expired = dict["Expired"] as! Bool
                }
                if dict.keys.contains("ExpiredTime") {
                    self.expiredTime = dict["ExpiredTime"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("ImageId") {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("ImageOwnerAlias") {
                    self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
                }
                if dict.keys.contains("LockReason") {
                    self.lockReason = dict["LockReason"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("SpotStrategy") {
                    self.spotStrategy = dict["SpotStrategy"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TotalResources") {
                    var model = ListNodesNoPagingResponseBody.Nodes.NodeInfo.TotalResources()
                    model.fromMap(dict["TotalResources"] as! [String: Any])
                    self.totalResources = model
                }
                if dict.keys.contains("UsedResources") {
                    var model = ListNodesNoPagingResponseBody.Nodes.NodeInfo.UsedResources()
                    model.fromMap(dict["UsedResources"] as! [String: Any])
                    self.usedResources = model
                }
            }
        }
        public var nodeInfo: [ListNodesNoPagingResponseBody.Nodes.NodeInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeInfo != nil {
                var tmp : [Any] = []
                for k in self.nodeInfo! {
                    tmp.append(k.toMap())
                }
                map["NodeInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeInfo") {
                self.nodeInfo = dict["NodeInfo"] as! [ListNodesNoPagingResponseBody.Nodes.NodeInfo]
            }
        }
    }
    public var nodes: ListNodesNoPagingResponseBody.Nodes?

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
        try self.nodes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodes != nil {
            map["Nodes"] = self.nodes?.toMap()
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
        if dict.keys.contains("Nodes") {
            var model = ListNodesNoPagingResponseBody.Nodes()
            model.fromMap(dict["Nodes"] as! [String: Any])
            self.nodes = model
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

public class ListNodesNoPagingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodesNoPagingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListNodesNoPagingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPreferredEcsTypesRequest : Tea.TeaModel {
    public var spotStrategy: String?

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
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpotStrategy") {
            self.spotStrategy = dict["SpotStrategy"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ListPreferredEcsTypesResponseBody : Tea.TeaModel {
    public class Series : Tea.TeaModel {
        public class SeriesInfo : Tea.TeaModel {
            public class Roles : Tea.TeaModel {
                public class Compute : Tea.TeaModel {
                    public var instanceTypeId: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.instanceTypeId != nil {
                            map["InstanceTypeId"] = self.instanceTypeId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("InstanceTypeId") {
                            self.instanceTypeId = dict["InstanceTypeId"] as! [String]
                        }
                    }
                }
                public class Login : Tea.TeaModel {
                    public var instanceTypeId: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.instanceTypeId != nil {
                            map["InstanceTypeId"] = self.instanceTypeId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("InstanceTypeId") {
                            self.instanceTypeId = dict["InstanceTypeId"] as! [String]
                        }
                    }
                }
                public class Manager : Tea.TeaModel {
                    public var instanceTypeId: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.instanceTypeId != nil {
                            map["InstanceTypeId"] = self.instanceTypeId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("InstanceTypeId") {
                            self.instanceTypeId = dict["InstanceTypeId"] as! [String]
                        }
                    }
                }
                public var compute: ListPreferredEcsTypesResponseBody.Series.SeriesInfo.Roles.Compute?

                public var login: ListPreferredEcsTypesResponseBody.Series.SeriesInfo.Roles.Login?

                public var manager: ListPreferredEcsTypesResponseBody.Series.SeriesInfo.Roles.Manager?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.compute?.validate()
                    try self.login?.validate()
                    try self.manager?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.compute != nil {
                        map["Compute"] = self.compute?.toMap()
                    }
                    if self.login != nil {
                        map["Login"] = self.login?.toMap()
                    }
                    if self.manager != nil {
                        map["Manager"] = self.manager?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Compute") {
                        var model = ListPreferredEcsTypesResponseBody.Series.SeriesInfo.Roles.Compute()
                        model.fromMap(dict["Compute"] as! [String: Any])
                        self.compute = model
                    }
                    if dict.keys.contains("Login") {
                        var model = ListPreferredEcsTypesResponseBody.Series.SeriesInfo.Roles.Login()
                        model.fromMap(dict["Login"] as! [String: Any])
                        self.login = model
                    }
                    if dict.keys.contains("Manager") {
                        var model = ListPreferredEcsTypesResponseBody.Series.SeriesInfo.Roles.Manager()
                        model.fromMap(dict["Manager"] as! [String: Any])
                        self.manager = model
                    }
                }
            }
            public var roles: ListPreferredEcsTypesResponseBody.Series.SeriesInfo.Roles?

            public var seriesId: String?

            public var seriesName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.roles?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.roles != nil {
                    map["Roles"] = self.roles?.toMap()
                }
                if self.seriesId != nil {
                    map["SeriesId"] = self.seriesId!
                }
                if self.seriesName != nil {
                    map["SeriesName"] = self.seriesName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Roles") {
                    var model = ListPreferredEcsTypesResponseBody.Series.SeriesInfo.Roles()
                    model.fromMap(dict["Roles"] as! [String: Any])
                    self.roles = model
                }
                if dict.keys.contains("SeriesId") {
                    self.seriesId = dict["SeriesId"] as! String
                }
                if dict.keys.contains("SeriesName") {
                    self.seriesName = dict["SeriesName"] as! String
                }
            }
        }
        public var seriesInfo: [ListPreferredEcsTypesResponseBody.Series.SeriesInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.seriesInfo != nil {
                var tmp : [Any] = []
                for k in self.seriesInfo! {
                    tmp.append(k.toMap())
                }
                map["SeriesInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SeriesInfo") {
                self.seriesInfo = dict["SeriesInfo"] as! [ListPreferredEcsTypesResponseBody.Series.SeriesInfo]
            }
        }
    }
    public var requestId: String?

    public var series: ListPreferredEcsTypesResponseBody.Series?

    public var supportSpotInstance: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.series?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.series != nil {
            map["Series"] = self.series?.toMap()
        }
        if self.supportSpotInstance != nil {
            map["SupportSpotInstance"] = self.supportSpotInstance!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Series") {
            var model = ListPreferredEcsTypesResponseBody.Series()
            model.fromMap(dict["Series"] as! [String: Any])
            self.series = model
        }
        if dict.keys.contains("SupportSpotInstance") {
            self.supportSpotInstance = dict["SupportSpotInstance"] as! Bool
        }
    }
}

public class ListPreferredEcsTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPreferredEcsTypesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListPreferredEcsTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class RegionInfo : Tea.TeaModel {
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
        public var regionInfo: [ListRegionsResponseBody.Regions.RegionInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.regionInfo != nil {
                var tmp : [Any] = []
                for k in self.regionInfo! {
                    tmp.append(k.toMap())
                }
                map["RegionInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionInfo") {
                self.regionInfo = dict["RegionInfo"] as! [ListRegionsResponseBody.Regions.RegionInfo]
            }
        }
    }
    public var regions: ListRegionsResponseBody.Regions?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            var model = ListRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSoftwaresRequest : Tea.TeaModel {
    public var ehpcVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ehpcVersion != nil {
            map["EhpcVersion"] = self.ehpcVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EhpcVersion") {
            self.ehpcVersion = dict["EhpcVersion"] as! String
        }
    }
}

public class ListSoftwaresResponseBody : Tea.TeaModel {
    public class Softwares : Tea.TeaModel {
        public class SoftwareInfo : Tea.TeaModel {
            public class Applications : Tea.TeaModel {
                public class ApplicationInfo : Tea.TeaModel {
                    public var name: String?

                    public var required_: Bool?

                    public var tag: String?

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
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.required_ != nil {
                            map["Required"] = self.required_!
                        }
                        if self.tag != nil {
                            map["Tag"] = self.tag!
                        }
                        if self.version != nil {
                            map["Version"] = self.version!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Required") {
                            self.required_ = dict["Required"] as! Bool
                        }
                        if dict.keys.contains("Tag") {
                            self.tag = dict["Tag"] as! String
                        }
                        if dict.keys.contains("Version") {
                            self.version = dict["Version"] as! String
                        }
                    }
                }
                public var applicationInfo: [ListSoftwaresResponseBody.Softwares.SoftwareInfo.Applications.ApplicationInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.applicationInfo != nil {
                        var tmp : [Any] = []
                        for k in self.applicationInfo! {
                            tmp.append(k.toMap())
                        }
                        map["ApplicationInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ApplicationInfo") {
                        self.applicationInfo = dict["ApplicationInfo"] as! [ListSoftwaresResponseBody.Softwares.SoftwareInfo.Applications.ApplicationInfo]
                    }
                }
            }
            public var accountType: String?

            public var accountVersion: String?

            public var applications: ListSoftwaresResponseBody.Softwares.SoftwareInfo.Applications?

            public var ehpcVersion: String?

            public var osTag: String?

            public var schedulerType: String?

            public var schedulerVersion: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.applications?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountType != nil {
                    map["AccountType"] = self.accountType!
                }
                if self.accountVersion != nil {
                    map["AccountVersion"] = self.accountVersion!
                }
                if self.applications != nil {
                    map["Applications"] = self.applications?.toMap()
                }
                if self.ehpcVersion != nil {
                    map["EhpcVersion"] = self.ehpcVersion!
                }
                if self.osTag != nil {
                    map["OsTag"] = self.osTag!
                }
                if self.schedulerType != nil {
                    map["SchedulerType"] = self.schedulerType!
                }
                if self.schedulerVersion != nil {
                    map["SchedulerVersion"] = self.schedulerVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountType") {
                    self.accountType = dict["AccountType"] as! String
                }
                if dict.keys.contains("AccountVersion") {
                    self.accountVersion = dict["AccountVersion"] as! String
                }
                if dict.keys.contains("Applications") {
                    var model = ListSoftwaresResponseBody.Softwares.SoftwareInfo.Applications()
                    model.fromMap(dict["Applications"] as! [String: Any])
                    self.applications = model
                }
                if dict.keys.contains("EhpcVersion") {
                    self.ehpcVersion = dict["EhpcVersion"] as! String
                }
                if dict.keys.contains("OsTag") {
                    self.osTag = dict["OsTag"] as! String
                }
                if dict.keys.contains("SchedulerType") {
                    self.schedulerType = dict["SchedulerType"] as! String
                }
                if dict.keys.contains("SchedulerVersion") {
                    self.schedulerVersion = dict["SchedulerVersion"] as! String
                }
            }
        }
        public var softwareInfo: [ListSoftwaresResponseBody.Softwares.SoftwareInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.softwareInfo != nil {
                var tmp : [Any] = []
                for k in self.softwareInfo! {
                    tmp.append(k.toMap())
                }
                map["SoftwareInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SoftwareInfo") {
                self.softwareInfo = dict["SoftwareInfo"] as! [ListSoftwaresResponseBody.Softwares.SoftwareInfo]
            }
        }
    }
    public var requestId: String?

    public var softwares: ListSoftwaresResponseBody.Softwares?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.softwares?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.softwares != nil {
            map["Softwares"] = self.softwares?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Softwares") {
            var model = ListSoftwaresResponseBody.Softwares()
            model.fromMap(dict["Softwares"] as! [String: Any])
            self.softwares = model
        }
    }
}

public class ListSoftwaresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSoftwaresResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSoftwaresResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class UserInfo : Tea.TeaModel {
            public var addTime: String?

            public var group: String?

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
                if self.addTime != nil {
                    map["AddTime"] = self.addTime!
                }
                if self.group != nil {
                    map["Group"] = self.group!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddTime") {
                    self.addTime = dict["AddTime"] as! String
                }
                if dict.keys.contains("Group") {
                    self.group = dict["Group"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var userInfo: [ListUsersResponseBody.Users.UserInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userInfo != nil {
                var tmp : [Any] = []
                for k in self.userInfo! {
                    tmp.append(k.toMap())
                }
                map["UserInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserInfo") {
                self.userInfo = dict["UserInfo"] as! [ListUsersResponseBody.Users.UserInfo]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var users: ListUsersResponseBody.Users?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.users?.validate()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.users != nil {
            map["Users"] = self.users?.toMap()
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Users") {
            var model = ListUsersResponseBody.Users()
            model.fromMap(dict["Users"] as! [String: Any])
            self.users = model
        }
    }
}

public class ListUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVolumesRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListVolumesResponseBody : Tea.TeaModel {
    public class Volumes : Tea.TeaModel {
        public class VolumeInfo : Tea.TeaModel {
            public var clusterId: String?

            public var clusterName: String?

            public var regionId: String?

            public var remoteDirectory: String?

            public var volumeId: String?

            public var volumeMountpoint: String?

            public var volumeProtocol: String?

            public var volumeType: String?

            public override init() {
                super.init()
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
                if self.clusterName != nil {
                    map["ClusterName"] = self.clusterName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.remoteDirectory != nil {
                    map["RemoteDirectory"] = self.remoteDirectory!
                }
                if self.volumeId != nil {
                    map["VolumeId"] = self.volumeId!
                }
                if self.volumeMountpoint != nil {
                    map["VolumeMountpoint"] = self.volumeMountpoint!
                }
                if self.volumeProtocol != nil {
                    map["VolumeProtocol"] = self.volumeProtocol!
                }
                if self.volumeType != nil {
                    map["VolumeType"] = self.volumeType!
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
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("RemoteDirectory") {
                    self.remoteDirectory = dict["RemoteDirectory"] as! String
                }
                if dict.keys.contains("VolumeId") {
                    self.volumeId = dict["VolumeId"] as! String
                }
                if dict.keys.contains("VolumeMountpoint") {
                    self.volumeMountpoint = dict["VolumeMountpoint"] as! String
                }
                if dict.keys.contains("VolumeProtocol") {
                    self.volumeProtocol = dict["VolumeProtocol"] as! String
                }
                if dict.keys.contains("VolumeType") {
                    self.volumeType = dict["VolumeType"] as! String
                }
            }
        }
        public var volumeInfo: [ListVolumesResponseBody.Volumes.VolumeInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.volumeInfo != nil {
                var tmp : [Any] = []
                for k in self.volumeInfo! {
                    tmp.append(k.toMap())
                }
                map["VolumeInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VolumeInfo") {
                self.volumeInfo = dict["VolumeInfo"] as! [ListVolumesResponseBody.Volumes.VolumeInfo]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var volumes: ListVolumesResponseBody.Volumes?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.volumes?.validate()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.volumes != nil {
            map["Volumes"] = self.volumes?.toMap()
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Volumes") {
            var model = ListVolumesResponseBody.Volumes()
            model.fromMap(dict["Volumes"] as! [String: Any])
            self.volumes = model
        }
    }
}

public class ListVolumesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVolumesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListVolumesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterAttributesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var description_: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class ModifyClusterAttributesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyClusterAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterAttributesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyClusterAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyUserGroupsRequest : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var group: String?

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
            if self.group != nil {
                map["Group"] = self.group!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Group") {
                self.group = dict["Group"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var clusterId: String?

    public var user: [ModifyUserGroupsRequest.User]?

    public override init() {
        super.init()
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
        if self.user != nil {
            var tmp : [Any] = []
            for k in self.user! {
                tmp.append(k.toMap())
            }
            map["User"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! [ModifyUserGroupsRequest.User]
        }
    }
}

public class ModifyUserGroupsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyUserGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUserGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyUserGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyUserPasswordsRequest : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var name: String?

        public var password: String?

        public override init() {
            super.init()
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
            if self.password != nil {
                map["Password"] = self.password!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
        }
    }
    public var clusterId: String?

    public var user: [ModifyUserPasswordsRequest.User]?

    public override init() {
        super.init()
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
        if self.user != nil {
            var tmp : [Any] = []
            for k in self.user! {
                tmp.append(k.toMap())
            }
            map["User"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! [ModifyUserPasswordsRequest.User]
        }
    }
}

public class ModifyUserPasswordsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyUserPasswordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUserPasswordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyUserPasswordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RerunJobsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var jobs: String?

    public override init() {
        super.init()
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
        if self.jobs != nil {
            map["Jobs"] = self.jobs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Jobs") {
            self.jobs = dict["Jobs"] as! String
        }
    }
}

public class RerunJobsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class RerunJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RerunJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RerunJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetNodesRequest : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var clusterId: String?

    public var instance: [ResetNodesRequest.Instance]?

    public override init() {
        super.init()
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
        if self.instance != nil {
            var tmp : [Any] = []
            for k in self.instance! {
                tmp.append(k.toMap())
            }
            map["Instance"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Instance") {
            self.instance = dict["Instance"] as! [ResetNodesRequest.Instance]
        }
    }
}

public class ResetNodesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ResetNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResetNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetAutoScaleConfigRequest : Tea.TeaModel {
    public var clusterId: String?

    public var enableAutoGrow: Bool?

    public var enableAutoShrink: Bool?

    public var excludeNodes: String?

    public var extraNodesGrowRatio: Int32?

    public var growIntervalInMinutes: Int32?

    public var growRatio: Int32?

    public var growTimeoutInMinutes: Int32?

    public var maxNodesInCluster: Int32?

    public var shrinkIdleTimes: Int32?

    public var shrinkIntervalInMinutes: Int32?

    public override init() {
        super.init()
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
        if self.enableAutoGrow != nil {
            map["EnableAutoGrow"] = self.enableAutoGrow!
        }
        if self.enableAutoShrink != nil {
            map["EnableAutoShrink"] = self.enableAutoShrink!
        }
        if self.excludeNodes != nil {
            map["ExcludeNodes"] = self.excludeNodes!
        }
        if self.extraNodesGrowRatio != nil {
            map["ExtraNodesGrowRatio"] = self.extraNodesGrowRatio!
        }
        if self.growIntervalInMinutes != nil {
            map["GrowIntervalInMinutes"] = self.growIntervalInMinutes!
        }
        if self.growRatio != nil {
            map["GrowRatio"] = self.growRatio!
        }
        if self.growTimeoutInMinutes != nil {
            map["GrowTimeoutInMinutes"] = self.growTimeoutInMinutes!
        }
        if self.maxNodesInCluster != nil {
            map["MaxNodesInCluster"] = self.maxNodesInCluster!
        }
        if self.shrinkIdleTimes != nil {
            map["ShrinkIdleTimes"] = self.shrinkIdleTimes!
        }
        if self.shrinkIntervalInMinutes != nil {
            map["ShrinkIntervalInMinutes"] = self.shrinkIntervalInMinutes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("EnableAutoGrow") {
            self.enableAutoGrow = dict["EnableAutoGrow"] as! Bool
        }
        if dict.keys.contains("EnableAutoShrink") {
            self.enableAutoShrink = dict["EnableAutoShrink"] as! Bool
        }
        if dict.keys.contains("ExcludeNodes") {
            self.excludeNodes = dict["ExcludeNodes"] as! String
        }
        if dict.keys.contains("ExtraNodesGrowRatio") {
            self.extraNodesGrowRatio = dict["ExtraNodesGrowRatio"] as! Int32
        }
        if dict.keys.contains("GrowIntervalInMinutes") {
            self.growIntervalInMinutes = dict["GrowIntervalInMinutes"] as! Int32
        }
        if dict.keys.contains("GrowRatio") {
            self.growRatio = dict["GrowRatio"] as! Int32
        }
        if dict.keys.contains("GrowTimeoutInMinutes") {
            self.growTimeoutInMinutes = dict["GrowTimeoutInMinutes"] as! Int32
        }
        if dict.keys.contains("MaxNodesInCluster") {
            self.maxNodesInCluster = dict["MaxNodesInCluster"] as! Int32
        }
        if dict.keys.contains("ShrinkIdleTimes") {
            self.shrinkIdleTimes = dict["ShrinkIdleTimes"] as! Int32
        }
        if dict.keys.contains("ShrinkIntervalInMinutes") {
            self.shrinkIntervalInMinutes = dict["ShrinkIntervalInMinutes"] as! Int32
        }
    }
}

public class SetAutoScaleConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class SetAutoScaleConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAutoScaleConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetAutoScaleConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetJobUserRequest : Tea.TeaModel {
    public var clusterId: String?

    public var runasUser: String?

    public var runasUserPassword: String?

    public override init() {
        super.init()
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
        if self.runasUser != nil {
            map["RunasUser"] = self.runasUser!
        }
        if self.runasUserPassword != nil {
            map["RunasUserPassword"] = self.runasUserPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RunasUser") {
            self.runasUser = dict["RunasUser"] as! String
        }
        if dict.keys.contains("RunasUserPassword") {
            self.runasUserPassword = dict["RunasUserPassword"] as! String
        }
    }
}

public class SetJobUserResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class SetJobUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetJobUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetJobUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopJobsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var jobs: String?

    public override init() {
        super.init()
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
        if self.jobs != nil {
            map["Jobs"] = self.jobs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Jobs") {
            self.jobs = dict["Jobs"] as! String
        }
    }
}

public class StopJobsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class StopJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitJobRequest : Tea.TeaModel {
    public var arrayRequest: String?

    public var clusterId: String?

    public var commandLine: String?

    public var name: String?

    public var packagePath: String?

    public var priority: Int32?

    public var reRunable: Bool?

    public var runasUser: String?

    public var runasUserPassword: String?

    public var stderrRedirectPath: String?

    public var stdoutRedirectPath: String?

    public var variables: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arrayRequest != nil {
            map["ArrayRequest"] = self.arrayRequest!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.commandLine != nil {
            map["CommandLine"] = self.commandLine!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.packagePath != nil {
            map["PackagePath"] = self.packagePath!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.reRunable != nil {
            map["ReRunable"] = self.reRunable!
        }
        if self.runasUser != nil {
            map["RunasUser"] = self.runasUser!
        }
        if self.runasUserPassword != nil {
            map["RunasUserPassword"] = self.runasUserPassword!
        }
        if self.stderrRedirectPath != nil {
            map["StderrRedirectPath"] = self.stderrRedirectPath!
        }
        if self.stdoutRedirectPath != nil {
            map["StdoutRedirectPath"] = self.stdoutRedirectPath!
        }
        if self.variables != nil {
            map["Variables"] = self.variables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArrayRequest") {
            self.arrayRequest = dict["ArrayRequest"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CommandLine") {
            self.commandLine = dict["CommandLine"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PackagePath") {
            self.packagePath = dict["PackagePath"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ReRunable") {
            self.reRunable = dict["ReRunable"] as! Bool
        }
        if dict.keys.contains("RunasUser") {
            self.runasUser = dict["RunasUser"] as! String
        }
        if dict.keys.contains("RunasUserPassword") {
            self.runasUserPassword = dict["RunasUserPassword"] as! String
        }
        if dict.keys.contains("StderrRedirectPath") {
            self.stderrRedirectPath = dict["StderrRedirectPath"] as! String
        }
        if dict.keys.contains("StdoutRedirectPath") {
            self.stdoutRedirectPath = dict["StdoutRedirectPath"] as! String
        }
        if dict.keys.contains("Variables") {
            self.variables = dict["Variables"] as! String
        }
    }
}

public class SubmitJobResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SubmitJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeClientRequest : Tea.TeaModel {
    public var clientVersion: String?

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
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class UpgradeClientResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpgradeClientResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeClientResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpgradeClientResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
