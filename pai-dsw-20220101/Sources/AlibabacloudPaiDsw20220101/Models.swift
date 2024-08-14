import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CredentialConfig : Tea.TeaModel {
    public class Configs : Tea.TeaModel {
        public class Roles : Tea.TeaModel {
            public class UserInfo : Tea.TeaModel {
                public var accessKeyId: String?

                public var id: String?

                public var securityToken: String?

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
                    if self.accessKeyId != nil {
                        map["AccessKeyId"] = self.accessKeyId!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.securityToken != nil {
                        map["SecurityToken"] = self.securityToken!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessKeyId") {
                        self.accessKeyId = dict["AccessKeyId"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("SecurityToken") {
                        self.securityToken = dict["SecurityToken"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var assumeRoleFor: String?

            public var policy: String?

            public var roleArn: String?

            public var roleType: String?

            public var userInfo: CredentialConfig.Configs.Roles.UserInfo?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.userInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.assumeRoleFor != nil {
                    map["AssumeRoleFor"] = self.assumeRoleFor!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy!
                }
                if self.roleArn != nil {
                    map["RoleArn"] = self.roleArn!
                }
                if self.roleType != nil {
                    map["RoleType"] = self.roleType!
                }
                if self.userInfo != nil {
                    map["UserInfo"] = self.userInfo?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AssumeRoleFor") {
                    self.assumeRoleFor = dict["AssumeRoleFor"] as! String
                }
                if dict.keys.contains("Policy") {
                    self.policy = dict["Policy"] as! String
                }
                if dict.keys.contains("RoleArn") {
                    self.roleArn = dict["RoleArn"] as! String
                }
                if dict.keys.contains("RoleType") {
                    self.roleType = dict["RoleType"] as! String
                }
                if dict.keys.contains("UserInfo") {
                    var model = CredentialConfig.Configs.Roles.UserInfo()
                    model.fromMap(dict["UserInfo"] as! [String: Any])
                    self.userInfo = model
                }
            }
        }
        public var key: String?

        public var roles: [CredentialConfig.Configs.Roles]?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.roles != nil {
                var tmp : [Any] = []
                for k in self.roles! {
                    tmp.append(k.toMap())
                }
                map["Roles"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Roles") {
                var tmp : [CredentialConfig.Configs.Roles] = []
                for v in dict["Roles"] as! [Any] {
                    var model = CredentialConfig.Configs.Roles()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.roles = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var aliyunEnvRoleKey: String?

    public var configs: [CredentialConfig.Configs]?

    public var enable: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunEnvRoleKey != nil {
            map["AliyunEnvRoleKey"] = self.aliyunEnvRoleKey!
        }
        if self.configs != nil {
            var tmp : [Any] = []
            for k in self.configs! {
                tmp.append(k.toMap())
            }
            map["Configs"] = tmp
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliyunEnvRoleKey") {
            self.aliyunEnvRoleKey = dict["AliyunEnvRoleKey"] as! String
        }
        if dict.keys.contains("Configs") {
            var tmp : [CredentialConfig.Configs] = []
            for v in dict["Configs"] as! [Any] {
                var model = CredentialConfig.Configs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.configs = tmp
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! Bool
        }
    }
}

public class DemoCategory : Tea.TeaModel {
    public var categoryCode: String?

    public var categoryName: String?

    public var order: Int64?

    public var subCategories: [DemoCategory]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryCode != nil {
            map["CategoryCode"] = self.categoryCode!
        }
        if self.categoryName != nil {
            map["CategoryName"] = self.categoryName!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.subCategories != nil {
            var tmp : [Any] = []
            for k in self.subCategories! {
                tmp.append(k.toMap())
            }
            map["SubCategories"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryCode") {
            self.categoryCode = dict["CategoryCode"] as! String
        }
        if dict.keys.contains("CategoryName") {
            self.categoryName = dict["CategoryName"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! Int64
        }
        if dict.keys.contains("SubCategories") {
            var tmp : [DemoCategory] = []
            for v in dict["SubCategories"] as! [Any] {
                var model = DemoCategory()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subCategories = tmp
        }
    }
}

public class ForwardInfo : Tea.TeaModel {
    public var containerName: String?

    public var eipAllocationId: String?

    public var enable: Bool?

    public var natGatewayId: String?

    public var port: String?

    public var SSHPublicKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerName != nil {
            map["ContainerName"] = self.containerName!
        }
        if self.eipAllocationId != nil {
            map["EipAllocationId"] = self.eipAllocationId!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.SSHPublicKey != nil {
            map["SSHPublicKey"] = self.SSHPublicKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerName") {
            self.containerName = dict["ContainerName"] as! String
        }
        if dict.keys.contains("EipAllocationId") {
            self.eipAllocationId = dict["EipAllocationId"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("NatGatewayId") {
            self.natGatewayId = dict["NatGatewayId"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! String
        }
        if dict.keys.contains("SSHPublicKey") {
            self.SSHPublicKey = dict["SSHPublicKey"] as! String
        }
    }
}

public class ForwardInfoResponse : Tea.TeaModel {
    public class ConnectInfo : Tea.TeaModel {
        public class Internet : Tea.TeaModel {
            public var endpoint: String?

            public var port: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Endpoint") {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! String
                }
            }
        }
        public class Intranet : Tea.TeaModel {
            public var endpoint: String?

            public var port: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Endpoint") {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! String
                }
            }
        }
        public var internet: ForwardInfoResponse.ConnectInfo.Internet?

        public var intranet: ForwardInfoResponse.ConnectInfo.Intranet?

        public var message: String?

        public var phase: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.internet?.validate()
            try self.intranet?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.internet != nil {
                map["Internet"] = self.internet?.toMap()
            }
            if self.intranet != nil {
                map["Intranet"] = self.intranet?.toMap()
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.phase != nil {
                map["Phase"] = self.phase!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Internet") {
                var model = ForwardInfoResponse.ConnectInfo.Internet()
                model.fromMap(dict["Internet"] as! [String: Any])
                self.internet = model
            }
            if dict.keys.contains("Intranet") {
                var model = ForwardInfoResponse.ConnectInfo.Intranet()
                model.fromMap(dict["Intranet"] as! [String: Any])
                self.intranet = model
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Phase") {
                self.phase = dict["Phase"] as! String
            }
        }
    }
    public var connectInfo: ForwardInfoResponse.ConnectInfo?

    public var containerName: String?

    public var eipAllocationId: String?

    public var enable: Bool?

    public var natGatewayId: String?

    public var port: String?

    public var SSHPublicKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.connectInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectInfo != nil {
            map["ConnectInfo"] = self.connectInfo?.toMap()
        }
        if self.containerName != nil {
            map["ContainerName"] = self.containerName!
        }
        if self.eipAllocationId != nil {
            map["EipAllocationId"] = self.eipAllocationId!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.SSHPublicKey != nil {
            map["SSHPublicKey"] = self.SSHPublicKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectInfo") {
            var model = ForwardInfoResponse.ConnectInfo()
            model.fromMap(dict["ConnectInfo"] as! [String: Any])
            self.connectInfo = model
        }
        if dict.keys.contains("ContainerName") {
            self.containerName = dict["ContainerName"] as! String
        }
        if dict.keys.contains("EipAllocationId") {
            self.eipAllocationId = dict["EipAllocationId"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("NatGatewayId") {
            self.natGatewayId = dict["NatGatewayId"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! String
        }
        if dict.keys.contains("SSHPublicKey") {
            self.SSHPublicKey = dict["SSHPublicKey"] as! String
        }
    }
}

public class CreateIdleInstanceCullerRequest : Tea.TeaModel {
    public var cpuPercentThreshold: Int32?

    public var gpuPercentThreshold: Int32?

    public var maxIdleTimeInMinutes: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cpuPercentThreshold != nil {
            map["CpuPercentThreshold"] = self.cpuPercentThreshold!
        }
        if self.gpuPercentThreshold != nil {
            map["GpuPercentThreshold"] = self.gpuPercentThreshold!
        }
        if self.maxIdleTimeInMinutes != nil {
            map["MaxIdleTimeInMinutes"] = self.maxIdleTimeInMinutes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CpuPercentThreshold") {
            self.cpuPercentThreshold = dict["CpuPercentThreshold"] as! Int32
        }
        if dict.keys.contains("GpuPercentThreshold") {
            self.gpuPercentThreshold = dict["GpuPercentThreshold"] as! Int32
        }
        if dict.keys.contains("MaxIdleTimeInMinutes") {
            self.maxIdleTimeInMinutes = dict["MaxIdleTimeInMinutes"] as! Int32
        }
    }
}

public class CreateIdleInstanceCullerResponseBody : Tea.TeaModel {
    public var code: String?

    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateIdleInstanceCullerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIdleInstanceCullerResponseBody?

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
            var model = CreateIdleInstanceCullerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public class Affinity : Tea.TeaModel {
        public class CPU : Tea.TeaModel {
            public var enable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["Enable"] = self.enable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Enable") {
                    self.enable = dict["Enable"] as! Bool
                }
            }
        }
        public var CPU: CreateInstanceRequest.Affinity.CPU?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.CPU?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CPU != nil {
                map["CPU"] = self.CPU?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CPU") {
                var model = CreateInstanceRequest.Affinity.CPU()
                model.fromMap(dict["CPU"] as! [String: Any])
                self.CPU = model
            }
        }
    }
    public class CloudDisks : Tea.TeaModel {
        public class Status : Tea.TeaModel {
            public var available: Int64?

            public var capacity: Int64?

            public var usage: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.available != nil {
                    map["Available"] = self.available!
                }
                if self.capacity != nil {
                    map["Capacity"] = self.capacity!
                }
                if self.usage != nil {
                    map["Usage"] = self.usage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Available") {
                    self.available = dict["Available"] as! Int64
                }
                if dict.keys.contains("Capacity") {
                    self.capacity = dict["Capacity"] as! Int64
                }
                if dict.keys.contains("Usage") {
                    self.usage = dict["Usage"] as! Int64
                }
            }
        }
        public var capacity: String?

        public var mountPath: String?

        public var path: String?

        public var status: CreateInstanceRequest.CloudDisks.Status?

        public var subType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.status?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capacity != nil {
                map["Capacity"] = self.capacity!
            }
            if self.mountPath != nil {
                map["MountPath"] = self.mountPath!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.status != nil {
                map["Status"] = self.status?.toMap()
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Capacity") {
                self.capacity = dict["Capacity"] as! String
            }
            if dict.keys.contains("MountPath") {
                self.mountPath = dict["MountPath"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("Status") {
                var model = CreateInstanceRequest.CloudDisks.Status()
                model.fromMap(dict["Status"] as! [String: Any])
                self.status = model
            }
            if dict.keys.contains("SubType") {
                self.subType = dict["SubType"] as! String
            }
        }
    }
    public class Datasets : Tea.TeaModel {
        public var datasetId: String?

        public var mountPath: String?

        public var optionType: String?

        public var options: String?

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
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
            }
            if self.mountPath != nil {
                map["MountPath"] = self.mountPath!
            }
            if self.optionType != nil {
                map["OptionType"] = self.optionType!
            }
            if self.options != nil {
                map["Options"] = self.options!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatasetId") {
                self.datasetId = dict["DatasetId"] as! String
            }
            if dict.keys.contains("MountPath") {
                self.mountPath = dict["MountPath"] as! String
            }
            if dict.keys.contains("OptionType") {
                self.optionType = dict["OptionType"] as! String
            }
            if dict.keys.contains("Options") {
                self.options = dict["Options"] as! String
            }
            if dict.keys.contains("Uri") {
                self.uri = dict["Uri"] as! String
            }
        }
    }
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
    public class RequestedResource : Tea.TeaModel {
        public var CPU: String?

        public var GPU: String?

        public var GPUType: String?

        public var memory: String?

        public var sharedMemory: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.GPU != nil {
                map["GPU"] = self.GPU!
            }
            if self.GPUType != nil {
                map["GPUType"] = self.GPUType!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.sharedMemory != nil {
                map["SharedMemory"] = self.sharedMemory!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CPU") {
                self.CPU = dict["CPU"] as! String
            }
            if dict.keys.contains("GPU") {
                self.GPU = dict["GPU"] as! String
            }
            if dict.keys.contains("GPUType") {
                self.GPUType = dict["GPUType"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! String
            }
            if dict.keys.contains("SharedMemory") {
                self.sharedMemory = dict["SharedMemory"] as! String
            }
        }
    }
    public class UserVpc : Tea.TeaModel {
        public var defaultRoute: String?

        public var extendedCIDRs: [String]?

        public var forwardInfos: [ForwardInfo]?

        public var securityGroupId: String?

        public var vSwitchId: String?

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
            if self.defaultRoute != nil {
                map["DefaultRoute"] = self.defaultRoute!
            }
            if self.extendedCIDRs != nil {
                map["ExtendedCIDRs"] = self.extendedCIDRs!
            }
            if self.forwardInfos != nil {
                var tmp : [Any] = []
                for k in self.forwardInfos! {
                    tmp.append(k.toMap())
                }
                map["ForwardInfos"] = tmp
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultRoute") {
                self.defaultRoute = dict["DefaultRoute"] as! String
            }
            if dict.keys.contains("ExtendedCIDRs") {
                self.extendedCIDRs = dict["ExtendedCIDRs"] as! [String]
            }
            if dict.keys.contains("ForwardInfos") {
                var tmp : [ForwardInfo] = []
                for v in dict["ForwardInfos"] as! [Any] {
                    var model = ForwardInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.forwardInfos = tmp
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var accessibility: String?

    public var affinity: CreateInstanceRequest.Affinity?

    public var cloudDisks: [CreateInstanceRequest.CloudDisks]?

    public var credentialConfig: CredentialConfig?

    public var datasets: [CreateInstanceRequest.Datasets]?

    public var driver: String?

    public var ecsSpec: String?

    public var environmentVariables: [String: String]?

    public var imageAuth: String?

    public var imageId: String?

    public var imageUrl: String?

    public var instanceName: String?

    public var labels: [CreateInstanceRequest.Labels]?

    public var priority: Int64?

    public var requestedResource: CreateInstanceRequest.RequestedResource?

    public var resourceId: String?

    public var userId: String?

    public var userVpc: CreateInstanceRequest.UserVpc?

    public var workspaceId: String?

    public var workspaceSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.affinity?.validate()
        try self.credentialConfig?.validate()
        try self.requestedResource?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.affinity != nil {
            map["Affinity"] = self.affinity?.toMap()
        }
        if self.cloudDisks != nil {
            var tmp : [Any] = []
            for k in self.cloudDisks! {
                tmp.append(k.toMap())
            }
            map["CloudDisks"] = tmp
        }
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.datasets != nil {
            var tmp : [Any] = []
            for k in self.datasets! {
                tmp.append(k.toMap())
            }
            map["Datasets"] = tmp
        }
        if self.driver != nil {
            map["Driver"] = self.driver!
        }
        if self.ecsSpec != nil {
            map["EcsSpec"] = self.ecsSpec!
        }
        if self.environmentVariables != nil {
            map["EnvironmentVariables"] = self.environmentVariables!
        }
        if self.imageAuth != nil {
            map["ImageAuth"] = self.imageAuth!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.requestedResource != nil {
            map["RequestedResource"] = self.requestedResource?.toMap()
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.workspaceSource != nil {
            map["WorkspaceSource"] = self.workspaceSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("Affinity") {
            var model = CreateInstanceRequest.Affinity()
            model.fromMap(dict["Affinity"] as! [String: Any])
            self.affinity = model
        }
        if dict.keys.contains("CloudDisks") {
            var tmp : [CreateInstanceRequest.CloudDisks] = []
            for v in dict["CloudDisks"] as! [Any] {
                var model = CreateInstanceRequest.CloudDisks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.cloudDisks = tmp
        }
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("Datasets") {
            var tmp : [CreateInstanceRequest.Datasets] = []
            for v in dict["Datasets"] as! [Any] {
                var model = CreateInstanceRequest.Datasets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.datasets = tmp
        }
        if dict.keys.contains("Driver") {
            self.driver = dict["Driver"] as! String
        }
        if dict.keys.contains("EcsSpec") {
            self.ecsSpec = dict["EcsSpec"] as! String
        }
        if dict.keys.contains("EnvironmentVariables") {
            self.environmentVariables = dict["EnvironmentVariables"] as! [String: String]
        }
        if dict.keys.contains("ImageAuth") {
            self.imageAuth = dict["ImageAuth"] as! String
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Labels") {
            var tmp : [CreateInstanceRequest.Labels] = []
            for v in dict["Labels"] as! [Any] {
                var model = CreateInstanceRequest.Labels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int64
        }
        if dict.keys.contains("RequestedResource") {
            var model = CreateInstanceRequest.RequestedResource()
            model.fromMap(dict["RequestedResource"] as! [String: Any])
            self.requestedResource = model
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserVpc") {
            var model = CreateInstanceRequest.UserVpc()
            model.fromMap(dict["UserVpc"] as! [String: Any])
            self.userVpc = model
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("WorkspaceSource") {
            self.workspaceSource = dict["WorkspaceSource"] as! String
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceResponseBody?

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
            var model = CreateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateInstanceShutdownTimerRequest : Tea.TeaModel {
    public var dueTime: String?

    public var remainingTimeInMs: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dueTime != nil {
            map["DueTime"] = self.dueTime!
        }
        if self.remainingTimeInMs != nil {
            map["RemainingTimeInMs"] = self.remainingTimeInMs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DueTime") {
            self.dueTime = dict["DueTime"] as! String
        }
        if dict.keys.contains("RemainingTimeInMs") {
            self.remainingTimeInMs = dict["RemainingTimeInMs"] as! Int64
        }
    }
}

public class CreateInstanceShutdownTimerResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateInstanceShutdownTimerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceShutdownTimerResponseBody?

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
            var model = CreateInstanceShutdownTimerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateInstanceSnapshotRequest : Tea.TeaModel {
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
    public var excludePaths: [String]?

    public var imageUrl: String?

    public var labels: [CreateInstanceSnapshotRequest.Labels]?

    public var overwrite: Bool?

    public var snapshotDescription: String?

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
        if self.excludePaths != nil {
            map["ExcludePaths"] = self.excludePaths!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.overwrite != nil {
            map["Overwrite"] = self.overwrite!
        }
        if self.snapshotDescription != nil {
            map["SnapshotDescription"] = self.snapshotDescription!
        }
        if self.snapshotName != nil {
            map["SnapshotName"] = self.snapshotName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExcludePaths") {
            self.excludePaths = dict["ExcludePaths"] as! [String]
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("Labels") {
            var tmp : [CreateInstanceSnapshotRequest.Labels] = []
            for v in dict["Labels"] as! [Any] {
                var model = CreateInstanceSnapshotRequest.Labels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("Overwrite") {
            self.overwrite = dict["Overwrite"] as! Bool
        }
        if dict.keys.contains("SnapshotDescription") {
            self.snapshotDescription = dict["SnapshotDescription"] as! String
        }
        if dict.keys.contains("SnapshotName") {
            self.snapshotName = dict["SnapshotName"] as! String
        }
    }
}

public class CreateInstanceSnapshotResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var instanceId: String?

    public var message: String?

    public var requestId: String?

    public var snapshotId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SnapshotId") {
            self.snapshotId = dict["SnapshotId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateInstanceSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceSnapshotResponseBody?

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
            var model = CreateInstanceSnapshotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIdleInstanceCullerResponseBody : Tea.TeaModel {
    public var code: String?

    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteIdleInstanceCullerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIdleInstanceCullerResponseBody?

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
            var model = DeleteIdleInstanceCullerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceResponseBody?

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
            var model = DeleteInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteInstanceLabelsRequest : Tea.TeaModel {
    public var labelKeys: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelKeys != nil {
            map["LabelKeys"] = self.labelKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LabelKeys") {
            self.labelKeys = dict["LabelKeys"] as! String
        }
    }
}

public class DeleteInstanceLabelsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteInstanceLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceLabelsResponseBody?

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
            var model = DeleteInstanceLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteInstanceShutdownTimerResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteInstanceShutdownTimerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceShutdownTimerResponseBody?

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
            var model = DeleteInstanceShutdownTimerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteInstanceSnapshotResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var instanceId: String?

    public var message: String?

    public var requestId: String?

    public var snapshotId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SnapshotId") {
            self.snapshotId = dict["SnapshotId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteInstanceSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceSnapshotResponseBody?

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
            var model = DeleteInstanceSnapshotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIdleInstanceCullerResponseBody : Tea.TeaModel {
    public var code: String?

    public var cpuPercentThreshold: Int32?

    public var gpuPercentThreshold: Int32?

    public var idleTimeInMinutes: Int32?

    public var instanceId: String?

    public var maxIdleTimeInMinutes: Int32?

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
        if self.cpuPercentThreshold != nil {
            map["CpuPercentThreshold"] = self.cpuPercentThreshold!
        }
        if self.gpuPercentThreshold != nil {
            map["GpuPercentThreshold"] = self.gpuPercentThreshold!
        }
        if self.idleTimeInMinutes != nil {
            map["IdleTimeInMinutes"] = self.idleTimeInMinutes!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxIdleTimeInMinutes != nil {
            map["MaxIdleTimeInMinutes"] = self.maxIdleTimeInMinutes!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CpuPercentThreshold") {
            self.cpuPercentThreshold = dict["CpuPercentThreshold"] as! Int32
        }
        if dict.keys.contains("GpuPercentThreshold") {
            self.gpuPercentThreshold = dict["GpuPercentThreshold"] as! Int32
        }
        if dict.keys.contains("IdleTimeInMinutes") {
            self.idleTimeInMinutes = dict["IdleTimeInMinutes"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxIdleTimeInMinutes") {
            self.maxIdleTimeInMinutes = dict["MaxIdleTimeInMinutes"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetIdleInstanceCullerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIdleInstanceCullerResponseBody?

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
            var model = GetIdleInstanceCullerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceResponseBody : Tea.TeaModel {
    public class Affinity : Tea.TeaModel {
        public class CPU : Tea.TeaModel {
            public var enable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["Enable"] = self.enable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Enable") {
                    self.enable = dict["Enable"] as! Bool
                }
            }
        }
        public var CPU: GetInstanceResponseBody.Affinity.CPU?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.CPU?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CPU != nil {
                map["CPU"] = self.CPU?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CPU") {
                var model = GetInstanceResponseBody.Affinity.CPU()
                model.fromMap(dict["CPU"] as! [String: Any])
                self.CPU = model
            }
        }
    }
    public class CloudDisks : Tea.TeaModel {
        public var capacity: String?

        public var mountPath: String?

        public var path: String?

        public var subType: String?

        public override init() {
            super.init()
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
            if self.mountPath != nil {
                map["MountPath"] = self.mountPath!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Capacity") {
                self.capacity = dict["Capacity"] as! String
            }
            if dict.keys.contains("MountPath") {
                self.mountPath = dict["MountPath"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("SubType") {
                self.subType = dict["SubType"] as! String
            }
        }
    }
    public class Datasets : Tea.TeaModel {
        public var datasetId: String?

        public var mountPath: String?

        public var optionType: String?

        public var options: String?

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
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
            }
            if self.mountPath != nil {
                map["MountPath"] = self.mountPath!
            }
            if self.optionType != nil {
                map["OptionType"] = self.optionType!
            }
            if self.options != nil {
                map["Options"] = self.options!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatasetId") {
                self.datasetId = dict["DatasetId"] as! String
            }
            if dict.keys.contains("MountPath") {
                self.mountPath = dict["MountPath"] as! String
            }
            if dict.keys.contains("OptionType") {
                self.optionType = dict["OptionType"] as! String
            }
            if dict.keys.contains("Options") {
                self.options = dict["Options"] as! String
            }
            if dict.keys.contains("Uri") {
                self.uri = dict["Uri"] as! String
            }
        }
    }
    public class IdleInstanceCuller : Tea.TeaModel {
        public var cpuPercentThreshold: Int32?

        public var gpuPercentThreshold: Int32?

        public var idleTimeInMinutes: Int32?

        public var instanceId: String?

        public var maxIdleTimeInMinutes: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpuPercentThreshold != nil {
                map["CpuPercentThreshold"] = self.cpuPercentThreshold!
            }
            if self.gpuPercentThreshold != nil {
                map["GpuPercentThreshold"] = self.gpuPercentThreshold!
            }
            if self.idleTimeInMinutes != nil {
                map["IdleTimeInMinutes"] = self.idleTimeInMinutes!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.maxIdleTimeInMinutes != nil {
                map["MaxIdleTimeInMinutes"] = self.maxIdleTimeInMinutes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CpuPercentThreshold") {
                self.cpuPercentThreshold = dict["CpuPercentThreshold"] as! Int32
            }
            if dict.keys.contains("GpuPercentThreshold") {
                self.gpuPercentThreshold = dict["GpuPercentThreshold"] as! Int32
            }
            if dict.keys.contains("IdleTimeInMinutes") {
                self.idleTimeInMinutes = dict["IdleTimeInMinutes"] as! Int32
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("MaxIdleTimeInMinutes") {
                self.maxIdleTimeInMinutes = dict["MaxIdleTimeInMinutes"] as! Int32
            }
        }
    }
    public class InstanceShutdownTimer : Tea.TeaModel {
        public var dueTime: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var instanceId: String?

        public var remainingTimeInMs: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dueTime != nil {
                map["DueTime"] = self.dueTime!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.remainingTimeInMs != nil {
                map["RemainingTimeInMs"] = self.remainingTimeInMs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DueTime") {
                self.dueTime = dict["DueTime"] as! String
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("RemainingTimeInMs") {
                self.remainingTimeInMs = dict["RemainingTimeInMs"] as! Int64
            }
        }
    }
    public class InstanceSnapshotList : Tea.TeaModel {
        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var imageId: String?

        public var imageName: String?

        public var imageUrl: String?

        public var reasonCode: String?

        public var reasonMessage: String?

        public var repositoryUrl: String?

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
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageName != nil {
                map["ImageName"] = self.imageName!
            }
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.reasonCode != nil {
                map["ReasonCode"] = self.reasonCode!
            }
            if self.reasonMessage != nil {
                map["ReasonMessage"] = self.reasonMessage!
            }
            if self.repositoryUrl != nil {
                map["RepositoryUrl"] = self.repositoryUrl!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageName") {
                self.imageName = dict["ImageName"] as! String
            }
            if dict.keys.contains("ImageUrl") {
                self.imageUrl = dict["ImageUrl"] as! String
            }
            if dict.keys.contains("ReasonCode") {
                self.reasonCode = dict["ReasonCode"] as! String
            }
            if dict.keys.contains("ReasonMessage") {
                self.reasonMessage = dict["ReasonMessage"] as! String
            }
            if dict.keys.contains("RepositoryUrl") {
                self.repositoryUrl = dict["RepositoryUrl"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
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
    public class LatestSnapshot : Tea.TeaModel {
        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var imageId: String?

        public var imageName: String?

        public var imageUrl: String?

        public var reasonCode: String?

        public var reasonMessage: String?

        public var repositoryUrl: String?

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
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageName != nil {
                map["ImageName"] = self.imageName!
            }
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.reasonCode != nil {
                map["ReasonCode"] = self.reasonCode!
            }
            if self.reasonMessage != nil {
                map["ReasonMessage"] = self.reasonMessage!
            }
            if self.repositoryUrl != nil {
                map["RepositoryUrl"] = self.repositoryUrl!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageName") {
                self.imageName = dict["ImageName"] as! String
            }
            if dict.keys.contains("ImageUrl") {
                self.imageUrl = dict["ImageUrl"] as! String
            }
            if dict.keys.contains("ReasonCode") {
                self.reasonCode = dict["ReasonCode"] as! String
            }
            if dict.keys.contains("ReasonMessage") {
                self.reasonMessage = dict["ReasonMessage"] as! String
            }
            if dict.keys.contains("RepositoryUrl") {
                self.repositoryUrl = dict["RepositoryUrl"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class NodeErrorRecovery : Tea.TeaModel {
        public var autoSwitchCountdownSeconds: Int64?

        public var enableAutoSwitchOnNodeError: Bool?

        public var hasNodeError: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoSwitchCountdownSeconds != nil {
                map["autoSwitchCountdownSeconds"] = self.autoSwitchCountdownSeconds!
            }
            if self.enableAutoSwitchOnNodeError != nil {
                map["enableAutoSwitchOnNodeError"] = self.enableAutoSwitchOnNodeError!
            }
            if self.hasNodeError != nil {
                map["hasNodeError"] = self.hasNodeError!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoSwitchCountdownSeconds") {
                self.autoSwitchCountdownSeconds = dict["autoSwitchCountdownSeconds"] as! Int64
            }
            if dict.keys.contains("enableAutoSwitchOnNodeError") {
                self.enableAutoSwitchOnNodeError = dict["enableAutoSwitchOnNodeError"] as! Bool
            }
            if dict.keys.contains("hasNodeError") {
                self.hasNodeError = dict["hasNodeError"] as! Bool
            }
        }
    }
    public class RequestedResource : Tea.TeaModel {
        public var CPU: String?

        public var GPU: String?

        public var GPUType: String?

        public var memory: String?

        public var sharedMemory: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.GPU != nil {
                map["GPU"] = self.GPU!
            }
            if self.GPUType != nil {
                map["GPUType"] = self.GPUType!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.sharedMemory != nil {
                map["SharedMemory"] = self.sharedMemory!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CPU") {
                self.CPU = dict["CPU"] as! String
            }
            if dict.keys.contains("GPU") {
                self.GPU = dict["GPU"] as! String
            }
            if dict.keys.contains("GPUType") {
                self.GPUType = dict["GPUType"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! String
            }
            if dict.keys.contains("SharedMemory") {
                self.sharedMemory = dict["SharedMemory"] as! String
            }
        }
    }
    public class UserVpc : Tea.TeaModel {
        public var defaultRoute: String?

        public var extendedCIDRs: [String]?

        public var forwardInfos: [ForwardInfoResponse]?

        public var securityGroupId: String?

        public var vSwitchId: String?

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
            if self.defaultRoute != nil {
                map["DefaultRoute"] = self.defaultRoute!
            }
            if self.extendedCIDRs != nil {
                map["ExtendedCIDRs"] = self.extendedCIDRs!
            }
            if self.forwardInfos != nil {
                var tmp : [Any] = []
                for k in self.forwardInfos! {
                    tmp.append(k.toMap())
                }
                map["ForwardInfos"] = tmp
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultRoute") {
                self.defaultRoute = dict["DefaultRoute"] as! String
            }
            if dict.keys.contains("ExtendedCIDRs") {
                self.extendedCIDRs = dict["ExtendedCIDRs"] as! [String]
            }
            if dict.keys.contains("ForwardInfos") {
                var tmp : [ForwardInfoResponse] = []
                for v in dict["ForwardInfos"] as! [Any] {
                    var model = ForwardInfoResponse()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.forwardInfos = tmp
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var acceleratorType: String?

    public var accessibility: String?

    public var accumulatedRunningTimeInMs: Int64?

    public var affinity: GetInstanceResponseBody.Affinity?

    public var cloudDisks: [GetInstanceResponseBody.CloudDisks]?

    public var code: String?

    public var datasets: [GetInstanceResponseBody.Datasets]?

    public var driver: String?

    public var ecsSpec: String?

    public var environmentVariables: [String: String]?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var httpStatusCode: Int32?

    public var idleInstanceCuller: GetInstanceResponseBody.IdleInstanceCuller?

    public var imageAuth: String?

    public var imageId: String?

    public var imageName: String?

    public var imageUrl: String?

    public var instanceId: String?

    public var instanceName: String?

    public var instanceShutdownTimer: GetInstanceResponseBody.InstanceShutdownTimer?

    public var instanceSnapshotList: [GetInstanceResponseBody.InstanceSnapshotList]?

    public var instanceUrl: String?

    public var jupyterlabUrl: String?

    public var labels: [GetInstanceResponseBody.Labels]?

    public var latestSnapshot: GetInstanceResponseBody.LatestSnapshot?

    public var message: String?

    public var nodeErrorRecovery: GetInstanceResponseBody.NodeErrorRecovery?

    public var paymentType: String?

    public var priority: Int64?

    public var reasonCode: String?

    public var reasonMessage: String?

    public var requestId: String?

    public var requestedResource: GetInstanceResponseBody.RequestedResource?

    public var resourceId: String?

    public var resourceName: String?

    public var status: String?

    public var success: Bool?

    public var terminalUrl: String?

    public var userId: String?

    public var userName: String?

    public var userVpc: GetInstanceResponseBody.UserVpc?

    public var webIDEUrl: String?

    public var workspaceId: String?

    public var workspaceName: String?

    public var workspaceSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.affinity?.validate()
        try self.idleInstanceCuller?.validate()
        try self.instanceShutdownTimer?.validate()
        try self.latestSnapshot?.validate()
        try self.nodeErrorRecovery?.validate()
        try self.requestedResource?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorType != nil {
            map["AcceleratorType"] = self.acceleratorType!
        }
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.accumulatedRunningTimeInMs != nil {
            map["AccumulatedRunningTimeInMs"] = self.accumulatedRunningTimeInMs!
        }
        if self.affinity != nil {
            map["Affinity"] = self.affinity?.toMap()
        }
        if self.cloudDisks != nil {
            var tmp : [Any] = []
            for k in self.cloudDisks! {
                tmp.append(k.toMap())
            }
            map["CloudDisks"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.datasets != nil {
            var tmp : [Any] = []
            for k in self.datasets! {
                tmp.append(k.toMap())
            }
            map["Datasets"] = tmp
        }
        if self.driver != nil {
            map["Driver"] = self.driver!
        }
        if self.ecsSpec != nil {
            map["EcsSpec"] = self.ecsSpec!
        }
        if self.environmentVariables != nil {
            map["EnvironmentVariables"] = self.environmentVariables!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.idleInstanceCuller != nil {
            map["IdleInstanceCuller"] = self.idleInstanceCuller?.toMap()
        }
        if self.imageAuth != nil {
            map["ImageAuth"] = self.imageAuth!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.instanceShutdownTimer != nil {
            map["InstanceShutdownTimer"] = self.instanceShutdownTimer?.toMap()
        }
        if self.instanceSnapshotList != nil {
            var tmp : [Any] = []
            for k in self.instanceSnapshotList! {
                tmp.append(k.toMap())
            }
            map["InstanceSnapshotList"] = tmp
        }
        if self.instanceUrl != nil {
            map["InstanceUrl"] = self.instanceUrl!
        }
        if self.jupyterlabUrl != nil {
            map["JupyterlabUrl"] = self.jupyterlabUrl!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.latestSnapshot != nil {
            map["LatestSnapshot"] = self.latestSnapshot?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nodeErrorRecovery != nil {
            map["NodeErrorRecovery"] = self.nodeErrorRecovery?.toMap()
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.reasonCode != nil {
            map["ReasonCode"] = self.reasonCode!
        }
        if self.reasonMessage != nil {
            map["ReasonMessage"] = self.reasonMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requestedResource != nil {
            map["RequestedResource"] = self.requestedResource?.toMap()
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.terminalUrl != nil {
            map["TerminalUrl"] = self.terminalUrl!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        if self.webIDEUrl != nil {
            map["WebIDEUrl"] = self.webIDEUrl!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.workspaceName != nil {
            map["WorkspaceName"] = self.workspaceName!
        }
        if self.workspaceSource != nil {
            map["WorkspaceSource"] = self.workspaceSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorType") {
            self.acceleratorType = dict["AcceleratorType"] as! String
        }
        if dict.keys.contains("Accessibility") {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("AccumulatedRunningTimeInMs") {
            self.accumulatedRunningTimeInMs = dict["AccumulatedRunningTimeInMs"] as! Int64
        }
        if dict.keys.contains("Affinity") {
            var model = GetInstanceResponseBody.Affinity()
            model.fromMap(dict["Affinity"] as! [String: Any])
            self.affinity = model
        }
        if dict.keys.contains("CloudDisks") {
            var tmp : [GetInstanceResponseBody.CloudDisks] = []
            for v in dict["CloudDisks"] as! [Any] {
                var model = GetInstanceResponseBody.CloudDisks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.cloudDisks = tmp
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Datasets") {
            var tmp : [GetInstanceResponseBody.Datasets] = []
            for v in dict["Datasets"] as! [Any] {
                var model = GetInstanceResponseBody.Datasets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.datasets = tmp
        }
        if dict.keys.contains("Driver") {
            self.driver = dict["Driver"] as! String
        }
        if dict.keys.contains("EcsSpec") {
            self.ecsSpec = dict["EcsSpec"] as! String
        }
        if dict.keys.contains("EnvironmentVariables") {
            self.environmentVariables = dict["EnvironmentVariables"] as! [String: String]
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("IdleInstanceCuller") {
            var model = GetInstanceResponseBody.IdleInstanceCuller()
            model.fromMap(dict["IdleInstanceCuller"] as! [String: Any])
            self.idleInstanceCuller = model
        }
        if dict.keys.contains("ImageAuth") {
            self.imageAuth = dict["ImageAuth"] as! String
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageName") {
            self.imageName = dict["ImageName"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("InstanceShutdownTimer") {
            var model = GetInstanceResponseBody.InstanceShutdownTimer()
            model.fromMap(dict["InstanceShutdownTimer"] as! [String: Any])
            self.instanceShutdownTimer = model
        }
        if dict.keys.contains("InstanceSnapshotList") {
            var tmp : [GetInstanceResponseBody.InstanceSnapshotList] = []
            for v in dict["InstanceSnapshotList"] as! [Any] {
                var model = GetInstanceResponseBody.InstanceSnapshotList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceSnapshotList = tmp
        }
        if dict.keys.contains("InstanceUrl") {
            self.instanceUrl = dict["InstanceUrl"] as! String
        }
        if dict.keys.contains("JupyterlabUrl") {
            self.jupyterlabUrl = dict["JupyterlabUrl"] as! String
        }
        if dict.keys.contains("Labels") {
            var tmp : [GetInstanceResponseBody.Labels] = []
            for v in dict["Labels"] as! [Any] {
                var model = GetInstanceResponseBody.Labels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("LatestSnapshot") {
            var model = GetInstanceResponseBody.LatestSnapshot()
            model.fromMap(dict["LatestSnapshot"] as! [String: Any])
            self.latestSnapshot = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NodeErrorRecovery") {
            var model = GetInstanceResponseBody.NodeErrorRecovery()
            model.fromMap(dict["NodeErrorRecovery"] as! [String: Any])
            self.nodeErrorRecovery = model
        }
        if dict.keys.contains("PaymentType") {
            self.paymentType = dict["PaymentType"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int64
        }
        if dict.keys.contains("ReasonCode") {
            self.reasonCode = dict["ReasonCode"] as! String
        }
        if dict.keys.contains("ReasonMessage") {
            self.reasonMessage = dict["ReasonMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RequestedResource") {
            var model = GetInstanceResponseBody.RequestedResource()
            model.fromMap(dict["RequestedResource"] as! [String: Any])
            self.requestedResource = model
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TerminalUrl") {
            self.terminalUrl = dict["TerminalUrl"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("UserVpc") {
            var model = GetInstanceResponseBody.UserVpc()
            model.fromMap(dict["UserVpc"] as! [String: Any])
            self.userVpc = model
        }
        if dict.keys.contains("WebIDEUrl") {
            self.webIDEUrl = dict["WebIDEUrl"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("WorkspaceName") {
            self.workspaceName = dict["WorkspaceName"] as! String
        }
        if dict.keys.contains("WorkspaceSource") {
            self.workspaceSource = dict["WorkspaceSource"] as! String
        }
    }
}

public class GetInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceResponseBody?

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
            var model = GetInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceEventsRequest : Tea.TeaModel {
    public var endTime: String?

    public var maxEventsNum: Int32?

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
        if self.maxEventsNum != nil {
            map["MaxEventsNum"] = self.maxEventsNum!
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
        if dict.keys.contains("MaxEventsNum") {
            self.maxEventsNum = dict["MaxEventsNum"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class GetInstanceEventsResponseBody : Tea.TeaModel {
    public var code: String?

    public var events: [String]?

    public var httpStatusCode: Int32?

    public var instanceId: String?

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
        if self.events != nil {
            map["Events"] = self.events!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Events") {
            self.events = dict["Events"] as! [String]
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetInstanceEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceEventsResponseBody?

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
            var model = GetInstanceEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceMetricsRequest : Tea.TeaModel {
    public var endTime: String?

    public var metricType: String?

    public var startTime: String?

    public var timeStep: String?

    public override init() {
        super.init()
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
        if self.metricType != nil {
            map["MetricType"] = self.metricType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.timeStep != nil {
            map["TimeStep"] = self.timeStep!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("MetricType") {
            self.metricType = dict["MetricType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TimeStep") {
            self.timeStep = dict["TimeStep"] as! String
        }
    }
}

public class GetInstanceMetricsResponseBody : Tea.TeaModel {
    public class PodMetrics : Tea.TeaModel {
        public class Metrics : Tea.TeaModel {
            public var time: Int64?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Time") {
                    self.time = dict["Time"] as! Int64
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public var metrics: [GetInstanceMetricsResponseBody.PodMetrics.Metrics]?

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
            if self.metrics != nil {
                var tmp : [Any] = []
                for k in self.metrics! {
                    tmp.append(k.toMap())
                }
                map["Metrics"] = tmp
            }
            if self.podId != nil {
                map["PodId"] = self.podId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Metrics") {
                var tmp : [GetInstanceMetricsResponseBody.PodMetrics.Metrics] = []
                for v in dict["Metrics"] as! [Any] {
                    var model = GetInstanceMetricsResponseBody.PodMetrics.Metrics()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.metrics = tmp
            }
            if dict.keys.contains("PodId") {
                self.podId = dict["PodId"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var instanceId: String?

    public var message: String?

    public var podMetrics: [GetInstanceMetricsResponseBody.PodMetrics]?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.podMetrics != nil {
            var tmp : [Any] = []
            for k in self.podMetrics! {
                tmp.append(k.toMap())
            }
            map["PodMetrics"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PodMetrics") {
            var tmp : [GetInstanceMetricsResponseBody.PodMetrics] = []
            for v in dict["PodMetrics"] as! [Any] {
                var model = GetInstanceMetricsResponseBody.PodMetrics()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.podMetrics = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetInstanceMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceMetricsResponseBody?

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
            var model = GetInstanceMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceShutdownTimerResponseBody : Tea.TeaModel {
    public var code: String?

    public var dueTime: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var httpStatusCode: Int32?

    public var instanceId: String?

    public var message: String?

    public var remainingTimeInMs: Int64?

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
        if self.dueTime != nil {
            map["DueTime"] = self.dueTime!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.remainingTimeInMs != nil {
            map["RemainingTimeInMs"] = self.remainingTimeInMs!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DueTime") {
            self.dueTime = dict["DueTime"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RemainingTimeInMs") {
            self.remainingTimeInMs = dict["RemainingTimeInMs"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetInstanceShutdownTimerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceShutdownTimerResponseBody?

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
            var model = GetInstanceShutdownTimerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceSnapshotResponseBody : Tea.TeaModel {
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
    public var code: String?

    public var excludePaths: [String]?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var httpStatusCode: Int32?

    public var imageId: String?

    public var imageUrl: String?

    public var instanceId: String?

    public var labels: [GetInstanceSnapshotResponseBody.Labels]?

    public var message: String?

    public var reasonCode: String?

    public var reasonMessage: String?

    public var requestId: String?

    public var snapshotId: String?

    public var snapshotName: String?

    public var status: String?

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
        if self.excludePaths != nil {
            map["ExcludePaths"] = self.excludePaths!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.reasonCode != nil {
            map["ReasonCode"] = self.reasonCode!
        }
        if self.reasonMessage != nil {
            map["ReasonMessage"] = self.reasonMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        if self.snapshotName != nil {
            map["SnapshotName"] = self.snapshotName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ExcludePaths") {
            self.excludePaths = dict["ExcludePaths"] as! [String]
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Labels") {
            var tmp : [GetInstanceSnapshotResponseBody.Labels] = []
            for v in dict["Labels"] as! [Any] {
                var model = GetInstanceSnapshotResponseBody.Labels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ReasonCode") {
            self.reasonCode = dict["ReasonCode"] as! String
        }
        if dict.keys.contains("ReasonMessage") {
            self.reasonMessage = dict["ReasonMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SnapshotId") {
            self.snapshotId = dict["SnapshotId"] as! String
        }
        if dict.keys.contains("SnapshotName") {
            self.snapshotName = dict["SnapshotName"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetInstanceSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceSnapshotResponseBody?

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
            var model = GetInstanceSnapshotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLifecycleRequest : Tea.TeaModel {
    public var endTime: String?

    public var limit: Int32?

    public var order: String?

    public var sessionNumber: Int32?

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
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.sessionNumber != nil {
            map["SessionNumber"] = self.sessionNumber!
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
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("SessionNumber") {
            self.sessionNumber = dict["SessionNumber"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class GetLifecycleResponseBody : Tea.TeaModel {
    public class Lifecycle : Tea.TeaModel {
        public var status: String?

        public var reasonCode: String?

        public var reasonMessage: String?

        public var gmtCreateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.reasonCode != nil {
                map["ReasonCode"] = self.reasonCode!
            }
            if self.reasonMessage != nil {
                map["ReasonMessage"] = self.reasonMessage!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("ReasonCode") {
                self.reasonCode = dict["ReasonCode"] as! String
            }
            if dict.keys.contains("ReasonMessage") {
                self.reasonMessage = dict["ReasonMessage"] as! String
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
        }
    }
    public var code: String?

    public var lifecycle: [[GetLifecycleResponseBody.Lifecycle]]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.lifecycle != nil {
            var tmp : [Any] = []
            for k in self.lifecycle! {
                var l1 : [Any] = []
                for k1 in k {
                    l1.append(k1.toMap())
                }
                tmp.append(l1)
            }
            map["Lifecycle"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Lifecycle") {
            var tmp : [[GetLifecycleResponseBody.Lifecycle]] = []
            for v in dict["Lifecycle"] as! [Any] {
                var l1 : [GetLifecycleResponseBody.Lifecycle] = []
                for v1 in v as! [Any] {
                    var model = GetLifecycleResponseBody.Lifecycle()
                    if v1 != nil {
                        model.fromMap(v1 as! [String: Any])
                    }
                    l1.append(model)
                }
                tmp.append(l1)
            }
            self.lifecycle = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class GetLifecycleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLifecycleResponseBody?

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
            var model = GetLifecycleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMetricsRequest : Tea.TeaModel {
    public var dimensions: String?

    public var endTime: String?

    public var length: String?

    public var metricName: String?

    public var namespace: String?

    public var nextToken: String?

    public var period: String?

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
        if self.dimensions != nil {
            map["Dimensions"] = self.dimensions!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.length != nil {
            map["Length"] = self.length!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dimensions") {
            self.dimensions = dict["Dimensions"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Length") {
            self.length = dict["Length"] as! String
        }
        if dict.keys.contains("MetricName") {
            self.metricName = dict["MetricName"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class GetMetricsResponseBody : Tea.TeaModel {
    public var code: String?

    public var dataPoints: String?

    public var message: String?

    public var nextToken: String?

    public var period: String?

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
        if self.dataPoints != nil {
            map["DataPoints"] = self.dataPoints!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DataPoints") {
            self.dataPoints = dict["DataPoints"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMetricsResponseBody?

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
            var model = GetMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceGroupStatisticsRequest : Tea.TeaModel {
    public var endTime: String?

    public var resourceId: String?

    public var startTime: String?

    public var workspaceIds: String?

    public override init() {
        super.init()
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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.workspaceIds != nil {
            map["WorkspaceIds"] = self.workspaceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("WorkspaceIds") {
            self.workspaceIds = dict["WorkspaceIds"] as! String
        }
    }
}

public class GetResourceGroupStatisticsResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var statistics: [String: [String: Any]]?

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
        if self.statistics != nil {
            map["Statistics"] = self.statistics!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Statistics") {
            self.statistics = dict["Statistics"] as! [String: [String: Any]]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetResourceGroupStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceGroupStatisticsResponseBody?

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
            var model = GetResourceGroupStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTokenRequest : Tea.TeaModel {
    public var expireTime: Int32?

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
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetTokenResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.token != nil {
            map["Token"] = self.token!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class GetTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTokenResponseBody?

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
            var model = GetTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserConfigResponseBody : Tea.TeaModel {
    public class FreeTier : Tea.TeaModel {
        public var endTime: String?

        public var initBaseUnit: String?

        public var initBaseValue: Double?

        public var initShowUnit: String?

        public var initShowValue: String?

        public var isFreeTierUser: Bool?

        public var periodBaseUnit: String?

        public var periodBaseValue: Double?

        public var periodShowUnit: String?

        public var periodShowValue: String?

        public var startTime: String?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.initBaseUnit != nil {
                map["InitBaseUnit"] = self.initBaseUnit!
            }
            if self.initBaseValue != nil {
                map["InitBaseValue"] = self.initBaseValue!
            }
            if self.initShowUnit != nil {
                map["InitShowUnit"] = self.initShowUnit!
            }
            if self.initShowValue != nil {
                map["InitShowValue"] = self.initShowValue!
            }
            if self.isFreeTierUser != nil {
                map["IsFreeTierUser"] = self.isFreeTierUser!
            }
            if self.periodBaseUnit != nil {
                map["PeriodBaseUnit"] = self.periodBaseUnit!
            }
            if self.periodBaseValue != nil {
                map["PeriodBaseValue"] = self.periodBaseValue!
            }
            if self.periodShowUnit != nil {
                map["PeriodShowUnit"] = self.periodShowUnit!
            }
            if self.periodShowValue != nil {
                map["PeriodShowValue"] = self.periodShowValue!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("InitBaseUnit") {
                self.initBaseUnit = dict["InitBaseUnit"] as! String
            }
            if dict.keys.contains("InitBaseValue") {
                self.initBaseValue = dict["InitBaseValue"] as! Double
            }
            if dict.keys.contains("InitShowUnit") {
                self.initShowUnit = dict["InitShowUnit"] as! String
            }
            if dict.keys.contains("InitShowValue") {
                self.initShowValue = dict["InitShowValue"] as! String
            }
            if dict.keys.contains("IsFreeTierUser") {
                self.isFreeTierUser = dict["IsFreeTierUser"] as! Bool
            }
            if dict.keys.contains("PeriodBaseUnit") {
                self.periodBaseUnit = dict["PeriodBaseUnit"] as! String
            }
            if dict.keys.contains("PeriodBaseValue") {
                self.periodBaseValue = dict["PeriodBaseValue"] as! Double
            }
            if dict.keys.contains("PeriodShowUnit") {
                self.periodShowUnit = dict["PeriodShowUnit"] as! String
            }
            if dict.keys.contains("PeriodShowValue") {
                self.periodShowValue = dict["PeriodShowValue"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var accountSufficient: Bool?

    public var code: String?

    public var enableEciDisk: Bool?

    public var freeTier: GetUserConfigResponseBody.FreeTier?

    public var freeTierSpecAvailable: Bool?

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
        try self.freeTier?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountSufficient != nil {
            map["AccountSufficient"] = self.accountSufficient!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.enableEciDisk != nil {
            map["EnableEciDisk"] = self.enableEciDisk!
        }
        if self.freeTier != nil {
            map["FreeTier"] = self.freeTier?.toMap()
        }
        if self.freeTierSpecAvailable != nil {
            map["FreeTierSpecAvailable"] = self.freeTierSpecAvailable!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountSufficient") {
            self.accountSufficient = dict["AccountSufficient"] as! Bool
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("EnableEciDisk") {
            self.enableEciDisk = dict["EnableEciDisk"] as! Bool
        }
        if dict.keys.contains("FreeTier") {
            var model = GetUserConfigResponseBody.FreeTier()
            model.fromMap(dict["FreeTier"] as! [String: Any])
            self.freeTier = model
        }
        if dict.keys.contains("FreeTierSpecAvailable") {
            self.freeTierSpecAvailable = dict["FreeTierSpecAvailable"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetUserConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserConfigResponseBody?

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
            var model = GetUserConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEcsSpecsRequest : Tea.TeaModel {
    public var acceleratorType: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var sortBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorType != nil {
            map["AcceleratorType"] = self.acceleratorType!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorType") {
            self.acceleratorType = dict["AcceleratorType"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
    }
}

public class ListEcsSpecsResponseBody : Tea.TeaModel {
    public class EcsSpecs : Tea.TeaModel {
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
        public var acceleratorType: String?

        public var CPU: Int64?

        public var currency: String?

        public var GPU: Int64?

        public var GPUType: String?

        public var instanceBandwidthRx: Int64?

        public var instanceType: String?

        public var isAvailable: Bool?

        public var labels: [ListEcsSpecsResponseBody.EcsSpecs.Labels]?

        public var memory: Double?

        public var price: Double?

        public var systemDiskCapacity: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceleratorType != nil {
                map["AcceleratorType"] = self.acceleratorType!
            }
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.GPU != nil {
                map["GPU"] = self.GPU!
            }
            if self.GPUType != nil {
                map["GPUType"] = self.GPUType!
            }
            if self.instanceBandwidthRx != nil {
                map["InstanceBandwidthRx"] = self.instanceBandwidthRx!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.isAvailable != nil {
                map["IsAvailable"] = self.isAvailable!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            if self.systemDiskCapacity != nil {
                map["SystemDiskCapacity"] = self.systemDiskCapacity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceleratorType") {
                self.acceleratorType = dict["AcceleratorType"] as! String
            }
            if dict.keys.contains("CPU") {
                self.CPU = dict["CPU"] as! Int64
            }
            if dict.keys.contains("Currency") {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("GPU") {
                self.GPU = dict["GPU"] as! Int64
            }
            if dict.keys.contains("GPUType") {
                self.GPUType = dict["GPUType"] as! String
            }
            if dict.keys.contains("InstanceBandwidthRx") {
                self.instanceBandwidthRx = dict["InstanceBandwidthRx"] as! Int64
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("IsAvailable") {
                self.isAvailable = dict["IsAvailable"] as! Bool
            }
            if dict.keys.contains("Labels") {
                var tmp : [ListEcsSpecsResponseBody.EcsSpecs.Labels] = []
                for v in dict["Labels"] as! [Any] {
                    var model = ListEcsSpecsResponseBody.EcsSpecs.Labels()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.labels = tmp
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Double
            }
            if dict.keys.contains("Price") {
                self.price = dict["Price"] as! Double
            }
            if dict.keys.contains("SystemDiskCapacity") {
                self.systemDiskCapacity = dict["SystemDiskCapacity"] as! Int64
            }
        }
    }
    public var code: String?

    public var ecsSpecs: [ListEcsSpecsResponseBody.EcsSpecs]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.ecsSpecs != nil {
            var tmp : [Any] = []
            for k in self.ecsSpecs! {
                tmp.append(k.toMap())
            }
            map["EcsSpecs"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("EcsSpecs") {
            var tmp : [ListEcsSpecsResponseBody.EcsSpecs] = []
            for v in dict["EcsSpecs"] as! [Any] {
                var model = ListEcsSpecsResponseBody.EcsSpecs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ecsSpecs = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListEcsSpecsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEcsSpecsResponseBody?

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
            var model = ListEcsSpecsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstanceSnapshotRequest : Tea.TeaModel {
    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var sortBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
    }
}

public class ListInstanceSnapshotResponseBody : Tea.TeaModel {
    public class Snapshots : Tea.TeaModel {
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
        public var excludePaths: [String]?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var imageId: String?

        public var imageUrl: String?

        public var instanceId: String?

        public var labels: [ListInstanceSnapshotResponseBody.Snapshots.Labels]?

        public var reasonCode: String?

        public var reasonMessage: String?

        public var snapshotId: String?

        public var snapshotName: String?

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
            if self.excludePaths != nil {
                map["ExcludePaths"] = self.excludePaths!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            if self.reasonCode != nil {
                map["ReasonCode"] = self.reasonCode!
            }
            if self.reasonMessage != nil {
                map["ReasonMessage"] = self.reasonMessage!
            }
            if self.snapshotId != nil {
                map["SnapshotId"] = self.snapshotId!
            }
            if self.snapshotName != nil {
                map["SnapshotName"] = self.snapshotName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExcludePaths") {
                self.excludePaths = dict["ExcludePaths"] as! [String]
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageUrl") {
                self.imageUrl = dict["ImageUrl"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Labels") {
                var tmp : [ListInstanceSnapshotResponseBody.Snapshots.Labels] = []
                for v in dict["Labels"] as! [Any] {
                    var model = ListInstanceSnapshotResponseBody.Snapshots.Labels()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.labels = tmp
            }
            if dict.keys.contains("ReasonCode") {
                self.reasonCode = dict["ReasonCode"] as! String
            }
            if dict.keys.contains("ReasonMessage") {
                self.reasonMessage = dict["ReasonMessage"] as! String
            }
            if dict.keys.contains("SnapshotId") {
                self.snapshotId = dict["SnapshotId"] as! String
            }
            if dict.keys.contains("SnapshotName") {
                self.snapshotName = dict["SnapshotName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var snapshots: [ListInstanceSnapshotResponseBody.Snapshots]?

    public var success: Bool?

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
        if self.snapshots != nil {
            var tmp : [Any] = []
            for k in self.snapshots! {
                tmp.append(k.toMap())
            }
            map["Snapshots"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Snapshots") {
            var tmp : [ListInstanceSnapshotResponseBody.Snapshots] = []
            for v in dict["Snapshots"] as! [Any] {
                var model = ListInstanceSnapshotResponseBody.Snapshots()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.snapshots = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListInstanceSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceSnapshotResponseBody?

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
            var model = ListInstanceSnapshotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstanceStatisticsRequest : Tea.TeaModel {
    public var workspaceIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.workspaceIds != nil {
            map["WorkspaceIds"] = self.workspaceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WorkspaceIds") {
            self.workspaceIds = dict["WorkspaceIds"] as! String
        }
    }
}

public class ListInstanceStatisticsResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var statistics: [String: [String: Any]]?

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
        if self.statistics != nil {
            map["Statistics"] = self.statistics!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Statistics") {
            self.statistics = dict["Statistics"] as! [String: [String: Any]]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListInstanceStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceStatisticsResponseBody?

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
            var model = ListInstanceStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public var acceleratorType: String?

    public var accessibility: String?

    public var createUserId: String?

    public var gpuType: String?

    public var imageName: String?

    public var instanceId: String?

    public var instanceName: String?

    public var labels: [String: Any]?

    public var maxCpu: String?

    public var maxGpu: String?

    public var maxGpuMemory: String?

    public var maxMemory: String?

    public var minCpu: String?

    public var minGpu: String?

    public var minGpuMemory: String?

    public var minMemory: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var paymentType: String?

    public var resourceId: String?

    public var sortBy: String?

    public var status: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorType != nil {
            map["AcceleratorType"] = self.acceleratorType!
        }
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.gpuType != nil {
            map["GpuType"] = self.gpuType!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.maxCpu != nil {
            map["MaxCpu"] = self.maxCpu!
        }
        if self.maxGpu != nil {
            map["MaxGpu"] = self.maxGpu!
        }
        if self.maxGpuMemory != nil {
            map["MaxGpuMemory"] = self.maxGpuMemory!
        }
        if self.maxMemory != nil {
            map["MaxMemory"] = self.maxMemory!
        }
        if self.minCpu != nil {
            map["MinCpu"] = self.minCpu!
        }
        if self.minGpu != nil {
            map["MinGpu"] = self.minGpu!
        }
        if self.minGpuMemory != nil {
            map["MinGpuMemory"] = self.minGpuMemory!
        }
        if self.minMemory != nil {
            map["MinMemory"] = self.minMemory!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorType") {
            self.acceleratorType = dict["AcceleratorType"] as! String
        }
        if dict.keys.contains("Accessibility") {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("CreateUserId") {
            self.createUserId = dict["CreateUserId"] as! String
        }
        if dict.keys.contains("GpuType") {
            self.gpuType = dict["GpuType"] as! String
        }
        if dict.keys.contains("ImageName") {
            self.imageName = dict["ImageName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! [String: Any]
        }
        if dict.keys.contains("MaxCpu") {
            self.maxCpu = dict["MaxCpu"] as! String
        }
        if dict.keys.contains("MaxGpu") {
            self.maxGpu = dict["MaxGpu"] as! String
        }
        if dict.keys.contains("MaxGpuMemory") {
            self.maxGpuMemory = dict["MaxGpuMemory"] as! String
        }
        if dict.keys.contains("MaxMemory") {
            self.maxMemory = dict["MaxMemory"] as! String
        }
        if dict.keys.contains("MinCpu") {
            self.minCpu = dict["MinCpu"] as! String
        }
        if dict.keys.contains("MinGpu") {
            self.minGpu = dict["MinGpu"] as! String
        }
        if dict.keys.contains("MinGpuMemory") {
            self.minGpuMemory = dict["MinGpuMemory"] as! String
        }
        if dict.keys.contains("MinMemory") {
            self.minMemory = dict["MinMemory"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PaymentType") {
            self.paymentType = dict["PaymentType"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListInstancesShrinkRequest : Tea.TeaModel {
    public var acceleratorType: String?

    public var accessibility: String?

    public var createUserId: String?

    public var gpuType: String?

    public var imageName: String?

    public var instanceId: String?

    public var instanceName: String?

    public var labelsShrink: String?

    public var maxCpu: String?

    public var maxGpu: String?

    public var maxGpuMemory: String?

    public var maxMemory: String?

    public var minCpu: String?

    public var minGpu: String?

    public var minGpuMemory: String?

    public var minMemory: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var paymentType: String?

    public var resourceId: String?

    public var sortBy: String?

    public var status: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceleratorType != nil {
            map["AcceleratorType"] = self.acceleratorType!
        }
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.gpuType != nil {
            map["GpuType"] = self.gpuType!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.labelsShrink != nil {
            map["Labels"] = self.labelsShrink!
        }
        if self.maxCpu != nil {
            map["MaxCpu"] = self.maxCpu!
        }
        if self.maxGpu != nil {
            map["MaxGpu"] = self.maxGpu!
        }
        if self.maxGpuMemory != nil {
            map["MaxGpuMemory"] = self.maxGpuMemory!
        }
        if self.maxMemory != nil {
            map["MaxMemory"] = self.maxMemory!
        }
        if self.minCpu != nil {
            map["MinCpu"] = self.minCpu!
        }
        if self.minGpu != nil {
            map["MinGpu"] = self.minGpu!
        }
        if self.minGpuMemory != nil {
            map["MinGpuMemory"] = self.minGpuMemory!
        }
        if self.minMemory != nil {
            map["MinMemory"] = self.minMemory!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorType") {
            self.acceleratorType = dict["AcceleratorType"] as! String
        }
        if dict.keys.contains("Accessibility") {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("CreateUserId") {
            self.createUserId = dict["CreateUserId"] as! String
        }
        if dict.keys.contains("GpuType") {
            self.gpuType = dict["GpuType"] as! String
        }
        if dict.keys.contains("ImageName") {
            self.imageName = dict["ImageName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labelsShrink = dict["Labels"] as! String
        }
        if dict.keys.contains("MaxCpu") {
            self.maxCpu = dict["MaxCpu"] as! String
        }
        if dict.keys.contains("MaxGpu") {
            self.maxGpu = dict["MaxGpu"] as! String
        }
        if dict.keys.contains("MaxGpuMemory") {
            self.maxGpuMemory = dict["MaxGpuMemory"] as! String
        }
        if dict.keys.contains("MaxMemory") {
            self.maxMemory = dict["MaxMemory"] as! String
        }
        if dict.keys.contains("MinCpu") {
            self.minCpu = dict["MinCpu"] as! String
        }
        if dict.keys.contains("MinGpu") {
            self.minGpu = dict["MinGpu"] as! String
        }
        if dict.keys.contains("MinGpuMemory") {
            self.minGpuMemory = dict["MinGpuMemory"] as! String
        }
        if dict.keys.contains("MinMemory") {
            self.minMemory = dict["MinMemory"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PaymentType") {
            self.paymentType = dict["PaymentType"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class Affinity : Tea.TeaModel {
            public class CPU : Tea.TeaModel {
                public var enable: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enable != nil {
                        map["Enable"] = self.enable!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Enable") {
                        self.enable = dict["Enable"] as! Bool
                    }
                }
            }
            public var CPU: ListInstancesResponseBody.Instances.Affinity.CPU?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.CPU?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.CPU != nil {
                    map["CPU"] = self.CPU?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CPU") {
                    var model = ListInstancesResponseBody.Instances.Affinity.CPU()
                    model.fromMap(dict["CPU"] as! [String: Any])
                    self.CPU = model
                }
            }
        }
        public class CloudDisks : Tea.TeaModel {
            public var capacity: String?

            public var mountPath: String?

            public var path: String?

            public var subType: String?

            public override init() {
                super.init()
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
                if self.mountPath != nil {
                    map["MountPath"] = self.mountPath!
                }
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.subType != nil {
                    map["SubType"] = self.subType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Capacity") {
                    self.capacity = dict["Capacity"] as! String
                }
                if dict.keys.contains("MountPath") {
                    self.mountPath = dict["MountPath"] as! String
                }
                if dict.keys.contains("Path") {
                    self.path = dict["Path"] as! String
                }
                if dict.keys.contains("SubType") {
                    self.subType = dict["SubType"] as! String
                }
            }
        }
        public class Datasets : Tea.TeaModel {
            public var datasetId: String?

            public var mountPath: String?

            public var optionType: String?

            public var options: String?

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
                if self.datasetId != nil {
                    map["DatasetId"] = self.datasetId!
                }
                if self.mountPath != nil {
                    map["MountPath"] = self.mountPath!
                }
                if self.optionType != nil {
                    map["OptionType"] = self.optionType!
                }
                if self.options != nil {
                    map["Options"] = self.options!
                }
                if self.uri != nil {
                    map["Uri"] = self.uri!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DatasetId") {
                    self.datasetId = dict["DatasetId"] as! String
                }
                if dict.keys.contains("MountPath") {
                    self.mountPath = dict["MountPath"] as! String
                }
                if dict.keys.contains("OptionType") {
                    self.optionType = dict["OptionType"] as! String
                }
                if dict.keys.contains("Options") {
                    self.options = dict["Options"] as! String
                }
                if dict.keys.contains("Uri") {
                    self.uri = dict["Uri"] as! String
                }
            }
        }
        public class IdleInstanceCuller : Tea.TeaModel {
            public var cpuPercentThreshold: Int32?

            public var gpuPercentThreshold: Int32?

            public var idleTimeInMinutes: Int32?

            public var instanceId: String?

            public var maxIdleTimeInMinutes: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpuPercentThreshold != nil {
                    map["CpuPercentThreshold"] = self.cpuPercentThreshold!
                }
                if self.gpuPercentThreshold != nil {
                    map["GpuPercentThreshold"] = self.gpuPercentThreshold!
                }
                if self.idleTimeInMinutes != nil {
                    map["IdleTimeInMinutes"] = self.idleTimeInMinutes!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.maxIdleTimeInMinutes != nil {
                    map["MaxIdleTimeInMinutes"] = self.maxIdleTimeInMinutes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CpuPercentThreshold") {
                    self.cpuPercentThreshold = dict["CpuPercentThreshold"] as! Int32
                }
                if dict.keys.contains("GpuPercentThreshold") {
                    self.gpuPercentThreshold = dict["GpuPercentThreshold"] as! Int32
                }
                if dict.keys.contains("IdleTimeInMinutes") {
                    self.idleTimeInMinutes = dict["IdleTimeInMinutes"] as! Int32
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("MaxIdleTimeInMinutes") {
                    self.maxIdleTimeInMinutes = dict["MaxIdleTimeInMinutes"] as! Int32
                }
            }
        }
        public class InstanceShutdownTimer : Tea.TeaModel {
            public var dueTime: String?

            public var gmtCreateTime: String?

            public var gmtModifiedTime: String?

            public var instanceId: String?

            public var remainingTimeInMs: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dueTime != nil {
                    map["DueTime"] = self.dueTime!
                }
                if self.gmtCreateTime != nil {
                    map["GmtCreateTime"] = self.gmtCreateTime!
                }
                if self.gmtModifiedTime != nil {
                    map["GmtModifiedTime"] = self.gmtModifiedTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.remainingTimeInMs != nil {
                    map["RemainingTimeInMs"] = self.remainingTimeInMs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DueTime") {
                    self.dueTime = dict["DueTime"] as! String
                }
                if dict.keys.contains("GmtCreateTime") {
                    self.gmtCreateTime = dict["GmtCreateTime"] as! String
                }
                if dict.keys.contains("GmtModifiedTime") {
                    self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("RemainingTimeInMs") {
                    self.remainingTimeInMs = dict["RemainingTimeInMs"] as! Int64
                }
            }
        }
        public class InstanceSnapshotList : Tea.TeaModel {
            public var gmtCreateTime: String?

            public var gmtModifiedTime: String?

            public var imageId: String?

            public var imageName: String?

            public var imageUrl: String?

            public var reasonCode: String?

            public var reasonMessage: String?

            public var repositoryUrl: String?

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
                if self.gmtCreateTime != nil {
                    map["GmtCreateTime"] = self.gmtCreateTime!
                }
                if self.gmtModifiedTime != nil {
                    map["GmtModifiedTime"] = self.gmtModifiedTime!
                }
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.imageName != nil {
                    map["ImageName"] = self.imageName!
                }
                if self.imageUrl != nil {
                    map["ImageUrl"] = self.imageUrl!
                }
                if self.reasonCode != nil {
                    map["ReasonCode"] = self.reasonCode!
                }
                if self.reasonMessage != nil {
                    map["ReasonMessage"] = self.reasonMessage!
                }
                if self.repositoryUrl != nil {
                    map["RepositoryUrl"] = self.repositoryUrl!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GmtCreateTime") {
                    self.gmtCreateTime = dict["GmtCreateTime"] as! String
                }
                if dict.keys.contains("GmtModifiedTime") {
                    self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
                }
                if dict.keys.contains("ImageId") {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("ImageName") {
                    self.imageName = dict["ImageName"] as! String
                }
                if dict.keys.contains("ImageUrl") {
                    self.imageUrl = dict["ImageUrl"] as! String
                }
                if dict.keys.contains("ReasonCode") {
                    self.reasonCode = dict["ReasonCode"] as! String
                }
                if dict.keys.contains("ReasonMessage") {
                    self.reasonMessage = dict["ReasonMessage"] as! String
                }
                if dict.keys.contains("RepositoryUrl") {
                    self.repositoryUrl = dict["RepositoryUrl"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
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
        public class LatestSnapshot : Tea.TeaModel {
            public var gmtCreateTime: String?

            public var gmtModifiedTime: String?

            public var imageId: String?

            public var imageName: String?

            public var imageUrl: String?

            public var reasonCode: String?

            public var reasonMessage: String?

            public var repositoryUrl: String?

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
                if self.gmtCreateTime != nil {
                    map["GmtCreateTime"] = self.gmtCreateTime!
                }
                if self.gmtModifiedTime != nil {
                    map["GmtModifiedTime"] = self.gmtModifiedTime!
                }
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.imageName != nil {
                    map["ImageName"] = self.imageName!
                }
                if self.imageUrl != nil {
                    map["ImageUrl"] = self.imageUrl!
                }
                if self.reasonCode != nil {
                    map["ReasonCode"] = self.reasonCode!
                }
                if self.reasonMessage != nil {
                    map["ReasonMessage"] = self.reasonMessage!
                }
                if self.repositoryUrl != nil {
                    map["RepositoryUrl"] = self.repositoryUrl!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GmtCreateTime") {
                    self.gmtCreateTime = dict["GmtCreateTime"] as! String
                }
                if dict.keys.contains("GmtModifiedTime") {
                    self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
                }
                if dict.keys.contains("ImageId") {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("ImageName") {
                    self.imageName = dict["ImageName"] as! String
                }
                if dict.keys.contains("ImageUrl") {
                    self.imageUrl = dict["ImageUrl"] as! String
                }
                if dict.keys.contains("ReasonCode") {
                    self.reasonCode = dict["ReasonCode"] as! String
                }
                if dict.keys.contains("ReasonMessage") {
                    self.reasonMessage = dict["ReasonMessage"] as! String
                }
                if dict.keys.contains("RepositoryUrl") {
                    self.repositoryUrl = dict["RepositoryUrl"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class RequestedResource : Tea.TeaModel {
            public var CPU: String?

            public var GPU: String?

            public var GPUType: String?

            public var memory: String?

            public var sharedMemory: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.CPU != nil {
                    map["CPU"] = self.CPU!
                }
                if self.GPU != nil {
                    map["GPU"] = self.GPU!
                }
                if self.GPUType != nil {
                    map["GPUType"] = self.GPUType!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.sharedMemory != nil {
                    map["SharedMemory"] = self.sharedMemory!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CPU") {
                    self.CPU = dict["CPU"] as! String
                }
                if dict.keys.contains("GPU") {
                    self.GPU = dict["GPU"] as! String
                }
                if dict.keys.contains("GPUType") {
                    self.GPUType = dict["GPUType"] as! String
                }
                if dict.keys.contains("Memory") {
                    self.memory = dict["Memory"] as! String
                }
                if dict.keys.contains("SharedMemory") {
                    self.sharedMemory = dict["SharedMemory"] as! String
                }
            }
        }
        public class UserVpc : Tea.TeaModel {
            public var defaultRoute: String?

            public var extendedCIDRs: [String]?

            public var forwardInfos: [ForwardInfoResponse]?

            public var securityGroupId: String?

            public var vSwitchId: String?

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
                if self.defaultRoute != nil {
                    map["DefaultRoute"] = self.defaultRoute!
                }
                if self.extendedCIDRs != nil {
                    map["ExtendedCIDRs"] = self.extendedCIDRs!
                }
                if self.forwardInfos != nil {
                    var tmp : [Any] = []
                    for k in self.forwardInfos! {
                        tmp.append(k.toMap())
                    }
                    map["ForwardInfos"] = tmp
                }
                if self.securityGroupId != nil {
                    map["SecurityGroupId"] = self.securityGroupId!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DefaultRoute") {
                    self.defaultRoute = dict["DefaultRoute"] as! String
                }
                if dict.keys.contains("ExtendedCIDRs") {
                    self.extendedCIDRs = dict["ExtendedCIDRs"] as! [String]
                }
                if dict.keys.contains("ForwardInfos") {
                    var tmp : [ForwardInfoResponse] = []
                    for v in dict["ForwardInfos"] as! [Any] {
                        var model = ForwardInfoResponse()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.forwardInfos = tmp
                }
                if dict.keys.contains("SecurityGroupId") {
                    self.securityGroupId = dict["SecurityGroupId"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public var acceleratorType: String?

        public var accessibility: String?

        public var accumulatedRunningTimeInMs: Int64?

        public var affinity: ListInstancesResponseBody.Instances.Affinity?

        public var cloudDisks: [ListInstancesResponseBody.Instances.CloudDisks]?

        public var datasets: [ListInstancesResponseBody.Instances.Datasets]?

        public var driver: String?

        public var ecsSpec: String?

        public var environmentVariables: [String: String]?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var idleInstanceCuller: ListInstancesResponseBody.Instances.IdleInstanceCuller?

        public var imageAuth: String?

        public var imageId: String?

        public var imageName: String?

        public var imageUrl: String?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceShutdownTimer: ListInstancesResponseBody.Instances.InstanceShutdownTimer?

        public var instanceSnapshotList: [ListInstancesResponseBody.Instances.InstanceSnapshotList]?

        public var instanceUrl: String?

        public var jupyterlabUrl: String?

        public var labels: [ListInstancesResponseBody.Instances.Labels]?

        public var latestSnapshot: ListInstancesResponseBody.Instances.LatestSnapshot?

        public var paymentType: String?

        public var priority: Int64?

        public var reasonCode: String?

        public var reasonMessage: String?

        public var requestedResource: ListInstancesResponseBody.Instances.RequestedResource?

        public var resourceId: String?

        public var resourceName: String?

        public var status: String?

        public var terminalUrl: String?

        public var userId: String?

        public var userName: String?

        public var userVpc: ListInstancesResponseBody.Instances.UserVpc?

        public var webIDEUrl: String?

        public var workspaceId: String?

        public var workspaceName: String?

        public var workspaceSource: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.affinity?.validate()
            try self.idleInstanceCuller?.validate()
            try self.instanceShutdownTimer?.validate()
            try self.latestSnapshot?.validate()
            try self.requestedResource?.validate()
            try self.userVpc?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceleratorType != nil {
                map["AcceleratorType"] = self.acceleratorType!
            }
            if self.accessibility != nil {
                map["Accessibility"] = self.accessibility!
            }
            if self.accumulatedRunningTimeInMs != nil {
                map["AccumulatedRunningTimeInMs"] = self.accumulatedRunningTimeInMs!
            }
            if self.affinity != nil {
                map["Affinity"] = self.affinity?.toMap()
            }
            if self.cloudDisks != nil {
                var tmp : [Any] = []
                for k in self.cloudDisks! {
                    tmp.append(k.toMap())
                }
                map["CloudDisks"] = tmp
            }
            if self.datasets != nil {
                var tmp : [Any] = []
                for k in self.datasets! {
                    tmp.append(k.toMap())
                }
                map["Datasets"] = tmp
            }
            if self.driver != nil {
                map["Driver"] = self.driver!
            }
            if self.ecsSpec != nil {
                map["EcsSpec"] = self.ecsSpec!
            }
            if self.environmentVariables != nil {
                map["EnvironmentVariables"] = self.environmentVariables!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.idleInstanceCuller != nil {
                map["IdleInstanceCuller"] = self.idleInstanceCuller?.toMap()
            }
            if self.imageAuth != nil {
                map["ImageAuth"] = self.imageAuth!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageName != nil {
                map["ImageName"] = self.imageName!
            }
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceShutdownTimer != nil {
                map["InstanceShutdownTimer"] = self.instanceShutdownTimer?.toMap()
            }
            if self.instanceSnapshotList != nil {
                var tmp : [Any] = []
                for k in self.instanceSnapshotList! {
                    tmp.append(k.toMap())
                }
                map["InstanceSnapshotList"] = tmp
            }
            if self.instanceUrl != nil {
                map["InstanceUrl"] = self.instanceUrl!
            }
            if self.jupyterlabUrl != nil {
                map["JupyterlabUrl"] = self.jupyterlabUrl!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            if self.latestSnapshot != nil {
                map["LatestSnapshot"] = self.latestSnapshot?.toMap()
            }
            if self.paymentType != nil {
                map["PaymentType"] = self.paymentType!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.reasonCode != nil {
                map["ReasonCode"] = self.reasonCode!
            }
            if self.reasonMessage != nil {
                map["ReasonMessage"] = self.reasonMessage!
            }
            if self.requestedResource != nil {
                map["RequestedResource"] = self.requestedResource?.toMap()
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.terminalUrl != nil {
                map["TerminalUrl"] = self.terminalUrl!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userVpc != nil {
                map["UserVpc"] = self.userVpc?.toMap()
            }
            if self.webIDEUrl != nil {
                map["WebIDEUrl"] = self.webIDEUrl!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            if self.workspaceName != nil {
                map["WorkspaceName"] = self.workspaceName!
            }
            if self.workspaceSource != nil {
                map["WorkspaceSource"] = self.workspaceSource!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceleratorType") {
                self.acceleratorType = dict["AcceleratorType"] as! String
            }
            if dict.keys.contains("Accessibility") {
                self.accessibility = dict["Accessibility"] as! String
            }
            if dict.keys.contains("AccumulatedRunningTimeInMs") {
                self.accumulatedRunningTimeInMs = dict["AccumulatedRunningTimeInMs"] as! Int64
            }
            if dict.keys.contains("Affinity") {
                var model = ListInstancesResponseBody.Instances.Affinity()
                model.fromMap(dict["Affinity"] as! [String: Any])
                self.affinity = model
            }
            if dict.keys.contains("CloudDisks") {
                var tmp : [ListInstancesResponseBody.Instances.CloudDisks] = []
                for v in dict["CloudDisks"] as! [Any] {
                    var model = ListInstancesResponseBody.Instances.CloudDisks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.cloudDisks = tmp
            }
            if dict.keys.contains("Datasets") {
                var tmp : [ListInstancesResponseBody.Instances.Datasets] = []
                for v in dict["Datasets"] as! [Any] {
                    var model = ListInstancesResponseBody.Instances.Datasets()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.datasets = tmp
            }
            if dict.keys.contains("Driver") {
                self.driver = dict["Driver"] as! String
            }
            if dict.keys.contains("EcsSpec") {
                self.ecsSpec = dict["EcsSpec"] as! String
            }
            if dict.keys.contains("EnvironmentVariables") {
                self.environmentVariables = dict["EnvironmentVariables"] as! [String: String]
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("IdleInstanceCuller") {
                var model = ListInstancesResponseBody.Instances.IdleInstanceCuller()
                model.fromMap(dict["IdleInstanceCuller"] as! [String: Any])
                self.idleInstanceCuller = model
            }
            if dict.keys.contains("ImageAuth") {
                self.imageAuth = dict["ImageAuth"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageName") {
                self.imageName = dict["ImageName"] as! String
            }
            if dict.keys.contains("ImageUrl") {
                self.imageUrl = dict["ImageUrl"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("InstanceShutdownTimer") {
                var model = ListInstancesResponseBody.Instances.InstanceShutdownTimer()
                model.fromMap(dict["InstanceShutdownTimer"] as! [String: Any])
                self.instanceShutdownTimer = model
            }
            if dict.keys.contains("InstanceSnapshotList") {
                var tmp : [ListInstancesResponseBody.Instances.InstanceSnapshotList] = []
                for v in dict["InstanceSnapshotList"] as! [Any] {
                    var model = ListInstancesResponseBody.Instances.InstanceSnapshotList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.instanceSnapshotList = tmp
            }
            if dict.keys.contains("InstanceUrl") {
                self.instanceUrl = dict["InstanceUrl"] as! String
            }
            if dict.keys.contains("JupyterlabUrl") {
                self.jupyterlabUrl = dict["JupyterlabUrl"] as! String
            }
            if dict.keys.contains("Labels") {
                var tmp : [ListInstancesResponseBody.Instances.Labels] = []
                for v in dict["Labels"] as! [Any] {
                    var model = ListInstancesResponseBody.Instances.Labels()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.labels = tmp
            }
            if dict.keys.contains("LatestSnapshot") {
                var model = ListInstancesResponseBody.Instances.LatestSnapshot()
                model.fromMap(dict["LatestSnapshot"] as! [String: Any])
                self.latestSnapshot = model
            }
            if dict.keys.contains("PaymentType") {
                self.paymentType = dict["PaymentType"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int64
            }
            if dict.keys.contains("ReasonCode") {
                self.reasonCode = dict["ReasonCode"] as! String
            }
            if dict.keys.contains("ReasonMessage") {
                self.reasonMessage = dict["ReasonMessage"] as! String
            }
            if dict.keys.contains("RequestedResource") {
                var model = ListInstancesResponseBody.Instances.RequestedResource()
                model.fromMap(dict["RequestedResource"] as! [String: Any])
                self.requestedResource = model
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TerminalUrl") {
                self.terminalUrl = dict["TerminalUrl"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("UserVpc") {
                var model = ListInstancesResponseBody.Instances.UserVpc()
                model.fromMap(dict["UserVpc"] as! [String: Any])
                self.userVpc = model
            }
            if dict.keys.contains("WebIDEUrl") {
                self.webIDEUrl = dict["WebIDEUrl"] as! String
            }
            if dict.keys.contains("WorkspaceId") {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") {
                self.workspaceName = dict["WorkspaceName"] as! String
            }
            if dict.keys.contains("WorkspaceSource") {
                self.workspaceSource = dict["WorkspaceSource"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var instances: [ListInstancesResponseBody.Instances]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Instances") {
            var tmp : [ListInstancesResponseBody.Instances] = []
            for v in dict["Instances"] as! [Any] {
                var model = ListInstancesResponseBody.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesResponseBody?

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
            var model = ListInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StartInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartInstanceResponseBody?

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
            var model = StartInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopInstanceRequest : Tea.TeaModel {
    public var saveImage: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.saveImage != nil {
            map["SaveImage"] = self.saveImage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SaveImage") {
            self.saveImage = dict["SaveImage"] as! Bool
        }
    }
}

public class StopInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StopInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopInstanceResponseBody?

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
            var model = StopInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateInstanceRequest : Tea.TeaModel {
    public class Affinity : Tea.TeaModel {
        public class CPU : Tea.TeaModel {
            public var enable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["Enable"] = self.enable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Enable") {
                    self.enable = dict["Enable"] as! Bool
                }
            }
        }
        public var CPU: UpdateInstanceRequest.Affinity.CPU?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.CPU?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CPU != nil {
                map["CPU"] = self.CPU?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CPU") {
                var model = UpdateInstanceRequest.Affinity.CPU()
                model.fromMap(dict["CPU"] as! [String: Any])
                self.CPU = model
            }
        }
    }
    public class CloudDisks : Tea.TeaModel {
        public var capacity: String?

        public var subType: String?

        public override init() {
            super.init()
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
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Capacity") {
                self.capacity = dict["Capacity"] as! String
            }
            if dict.keys.contains("SubType") {
                self.subType = dict["SubType"] as! String
            }
        }
    }
    public class Datasets : Tea.TeaModel {
        public var datasetId: String?

        public var mountPath: String?

        public var optionType: String?

        public var options: String?

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
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
            }
            if self.mountPath != nil {
                map["MountPath"] = self.mountPath!
            }
            if self.optionType != nil {
                map["OptionType"] = self.optionType!
            }
            if self.options != nil {
                map["Options"] = self.options!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatasetId") {
                self.datasetId = dict["DatasetId"] as! String
            }
            if dict.keys.contains("MountPath") {
                self.mountPath = dict["MountPath"] as! String
            }
            if dict.keys.contains("OptionType") {
                self.optionType = dict["OptionType"] as! String
            }
            if dict.keys.contains("Options") {
                self.options = dict["Options"] as! String
            }
            if dict.keys.contains("Uri") {
                self.uri = dict["Uri"] as! String
            }
        }
    }
    public class RequestedResource : Tea.TeaModel {
        public var CPU: String?

        public var GPU: String?

        public var GPUType: String?

        public var memory: String?

        public var sharedMemory: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.GPU != nil {
                map["GPU"] = self.GPU!
            }
            if self.GPUType != nil {
                map["GPUType"] = self.GPUType!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.sharedMemory != nil {
                map["SharedMemory"] = self.sharedMemory!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CPU") {
                self.CPU = dict["CPU"] as! String
            }
            if dict.keys.contains("GPU") {
                self.GPU = dict["GPU"] as! String
            }
            if dict.keys.contains("GPUType") {
                self.GPUType = dict["GPUType"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! String
            }
            if dict.keys.contains("SharedMemory") {
                self.sharedMemory = dict["SharedMemory"] as! String
            }
        }
    }
    public class UserVpc : Tea.TeaModel {
        public var defaultRoute: String?

        public var extendedCIDRs: [String]?

        public var forwardInfos: [ForwardInfo]?

        public var securityGroupId: String?

        public var vSwitchId: String?

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
            if self.defaultRoute != nil {
                map["DefaultRoute"] = self.defaultRoute!
            }
            if self.extendedCIDRs != nil {
                map["ExtendedCIDRs"] = self.extendedCIDRs!
            }
            if self.forwardInfos != nil {
                var tmp : [Any] = []
                for k in self.forwardInfos! {
                    tmp.append(k.toMap())
                }
                map["ForwardInfos"] = tmp
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultRoute") {
                self.defaultRoute = dict["DefaultRoute"] as! String
            }
            if dict.keys.contains("ExtendedCIDRs") {
                self.extendedCIDRs = dict["ExtendedCIDRs"] as! [String]
            }
            if dict.keys.contains("ForwardInfos") {
                var tmp : [ForwardInfo] = []
                for v in dict["ForwardInfos"] as! [Any] {
                    var model = ForwardInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.forwardInfos = tmp
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var accessibility: String?

    public var affinity: UpdateInstanceRequest.Affinity?

    public var cloudDisks: [UpdateInstanceRequest.CloudDisks]?

    public var credentialConfig: CredentialConfig?

    public var datasets: [UpdateInstanceRequest.Datasets]?

    public var disassociateCredential: Bool?

    public var disassociateDatasets: Bool?

    public var disassociateDriver: Bool?

    public var disassociateForwardInfos: Bool?

    public var disassociateVpc: Bool?

    public var driver: String?

    public var ecsSpec: String?

    public var imageAuth: String?

    public var imageId: String?

    public var imageUrl: String?

    public var instanceName: String?

    public var priority: Int64?

    public var requestedResource: UpdateInstanceRequest.RequestedResource?

    public var userId: String?

    public var userVpc: UpdateInstanceRequest.UserVpc?

    public var workspaceSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.affinity?.validate()
        try self.credentialConfig?.validate()
        try self.requestedResource?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.affinity != nil {
            map["Affinity"] = self.affinity?.toMap()
        }
        if self.cloudDisks != nil {
            var tmp : [Any] = []
            for k in self.cloudDisks! {
                tmp.append(k.toMap())
            }
            map["CloudDisks"] = tmp
        }
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.datasets != nil {
            var tmp : [Any] = []
            for k in self.datasets! {
                tmp.append(k.toMap())
            }
            map["Datasets"] = tmp
        }
        if self.disassociateCredential != nil {
            map["DisassociateCredential"] = self.disassociateCredential!
        }
        if self.disassociateDatasets != nil {
            map["DisassociateDatasets"] = self.disassociateDatasets!
        }
        if self.disassociateDriver != nil {
            map["DisassociateDriver"] = self.disassociateDriver!
        }
        if self.disassociateForwardInfos != nil {
            map["DisassociateForwardInfos"] = self.disassociateForwardInfos!
        }
        if self.disassociateVpc != nil {
            map["DisassociateVpc"] = self.disassociateVpc!
        }
        if self.driver != nil {
            map["Driver"] = self.driver!
        }
        if self.ecsSpec != nil {
            map["EcsSpec"] = self.ecsSpec!
        }
        if self.imageAuth != nil {
            map["ImageAuth"] = self.imageAuth!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.requestedResource != nil {
            map["RequestedResource"] = self.requestedResource?.toMap()
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        if self.workspaceSource != nil {
            map["WorkspaceSource"] = self.workspaceSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("Affinity") {
            var model = UpdateInstanceRequest.Affinity()
            model.fromMap(dict["Affinity"] as! [String: Any])
            self.affinity = model
        }
        if dict.keys.contains("CloudDisks") {
            var tmp : [UpdateInstanceRequest.CloudDisks] = []
            for v in dict["CloudDisks"] as! [Any] {
                var model = UpdateInstanceRequest.CloudDisks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.cloudDisks = tmp
        }
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("Datasets") {
            var tmp : [UpdateInstanceRequest.Datasets] = []
            for v in dict["Datasets"] as! [Any] {
                var model = UpdateInstanceRequest.Datasets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.datasets = tmp
        }
        if dict.keys.contains("DisassociateCredential") {
            self.disassociateCredential = dict["DisassociateCredential"] as! Bool
        }
        if dict.keys.contains("DisassociateDatasets") {
            self.disassociateDatasets = dict["DisassociateDatasets"] as! Bool
        }
        if dict.keys.contains("DisassociateDriver") {
            self.disassociateDriver = dict["DisassociateDriver"] as! Bool
        }
        if dict.keys.contains("DisassociateForwardInfos") {
            self.disassociateForwardInfos = dict["DisassociateForwardInfos"] as! Bool
        }
        if dict.keys.contains("DisassociateVpc") {
            self.disassociateVpc = dict["DisassociateVpc"] as! Bool
        }
        if dict.keys.contains("Driver") {
            self.driver = dict["Driver"] as! String
        }
        if dict.keys.contains("EcsSpec") {
            self.ecsSpec = dict["EcsSpec"] as! String
        }
        if dict.keys.contains("ImageAuth") {
            self.imageAuth = dict["ImageAuth"] as! String
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int64
        }
        if dict.keys.contains("RequestedResource") {
            var model = UpdateInstanceRequest.RequestedResource()
            model.fromMap(dict["RequestedResource"] as! [String: Any])
            self.requestedResource = model
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserVpc") {
            var model = UpdateInstanceRequest.UserVpc()
            model.fromMap(dict["UserVpc"] as! [String: Any])
            self.userVpc = model
        }
        if dict.keys.contains("WorkspaceSource") {
            self.workspaceSource = dict["WorkspaceSource"] as! String
        }
    }
}

public class UpdateInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceResponseBody?

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
            var model = UpdateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateInstanceLabelsRequest : Tea.TeaModel {
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
    public var labels: [UpdateInstanceLabelsRequest.Labels]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Labels") {
            var tmp : [UpdateInstanceLabelsRequest.Labels] = []
            for v in dict["Labels"] as! [Any] {
                var model = UpdateInstanceLabelsRequest.Labels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
    }
}

public class UpdateInstanceLabelsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateInstanceLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceLabelsResponseBody?

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
            var model = UpdateInstanceLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
