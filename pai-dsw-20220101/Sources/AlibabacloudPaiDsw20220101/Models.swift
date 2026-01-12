import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BandwidthLimit : Tea.TeaModel {
    public var egressRate: String?

    public var egressWhitelists: [String]?

    public var ingressRate: String?

    public var ingressWhitelists: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.egressRate != nil {
            map["EgressRate"] = self.egressRate!
        }
        if self.egressWhitelists != nil {
            map["EgressWhitelists"] = self.egressWhitelists!
        }
        if self.ingressRate != nil {
            map["IngressRate"] = self.ingressRate!
        }
        if self.ingressWhitelists != nil {
            map["IngressWhitelists"] = self.ingressWhitelists!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EgressRate"] as? String {
            self.egressRate = value
        }
        if let value = dict["EgressWhitelists"] as? [String] {
            self.egressWhitelists = value
        }
        if let value = dict["IngressRate"] as? String {
            self.ingressRate = value
        }
        if let value = dict["IngressWhitelists"] as? [String] {
            self.ingressWhitelists = value
        }
    }
}

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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AccessKeyId"] as? String {
                        self.accessKeyId = value
                    }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["SecurityToken"] as? String {
                        self.securityToken = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AssumeRoleFor"] as? String {
                    self.assumeRoleFor = value
                }
                if let value = dict["Policy"] as? String {
                    self.policy = value
                }
                if let value = dict["RoleArn"] as? String {
                    self.roleArn = value
                }
                if let value = dict["RoleType"] as? String {
                    self.roleType = value
                }
                if let value = dict["UserInfo"] as? [String: Any?] {
                    var model = CredentialConfig.Configs.Roles.UserInfo()
                    model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Roles"] as? [Any?] {
                var tmp : [CredentialConfig.Configs.Roles] = []
                for v in value {
                    if v != nil {
                        var model = CredentialConfig.Configs.Roles()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.roles = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunEnvRoleKey"] as? String {
            self.aliyunEnvRoleKey = value
        }
        if let value = dict["Configs"] as? [Any?] {
            var tmp : [CredentialConfig.Configs] = []
            for v in value {
                if v != nil {
                    var model = CredentialConfig.Configs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configs = tmp
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryCode"] as? String {
            self.categoryCode = value
        }
        if let value = dict["CategoryName"] as? String {
            self.categoryName = value
        }
        if let value = dict["Order"] as? Int64 {
            self.order = value
        }
        if let value = dict["SubCategories"] as? [Any?] {
            var tmp : [DemoCategory] = []
            for v in value {
                if v != nil {
                    var model = DemoCategory()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subCategories = tmp
        }
    }
}

public class DynamicMount : Tea.TeaModel {
    public var enable: Bool?

    public var mountPoints: [DynamicMountPoint]?

    public override init() {
        super.init()
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
        if self.mountPoints != nil {
            var tmp : [Any] = []
            for k in self.mountPoints! {
                tmp.append(k.toMap())
            }
            map["MountPoints"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["MountPoints"] as? [Any?] {
            var tmp : [DynamicMountPoint] = []
            for v in value {
                if v != nil {
                    var model = DynamicMountPoint()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mountPoints = tmp
        }
    }
}

public class DynamicMountPoint : Tea.TeaModel {
    public var options: String?

    public var rootPath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.rootPath != nil {
            map["RootPath"] = self.rootPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["RootPath"] as? String {
            self.rootPath = value
        }
    }
}

public class ForwardInfo : Tea.TeaModel {
    public var accessType: [String]?

    public var containerName: String?

    public var eipAllocationId: String?

    public var enable: Bool?

    public var externalPort: String?

    public var forwardPort: String?

    public var name: String?

    public var natGatewayId: String?

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
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
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
        if self.externalPort != nil {
            map["ExternalPort"] = self.externalPort!
        }
        if self.forwardPort != nil {
            map["ForwardPort"] = self.forwardPort!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        if self.SSHPublicKey != nil {
            map["SSHPublicKey"] = self.SSHPublicKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessType"] as? [String] {
            self.accessType = value
        }
        if let value = dict["ContainerName"] as? String {
            self.containerName = value
        }
        if let value = dict["EipAllocationId"] as? String {
            self.eipAllocationId = value
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["ExternalPort"] as? String {
            self.externalPort = value
        }
        if let value = dict["ForwardPort"] as? String {
            self.forwardPort = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NatGatewayId"] as? String {
            self.natGatewayId = value
        }
        if let value = dict["SSHPublicKey"] as? String {
            self.SSHPublicKey = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["Port"] as? String {
                    self.port = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["Port"] as? String {
                    self.port = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Internet"] as? [String: Any?] {
                var model = ForwardInfoResponse.ConnectInfo.Internet()
                model.fromMap(value)
                self.internet = model
            }
            if let value = dict["Intranet"] as? [String: Any?] {
                var model = ForwardInfoResponse.ConnectInfo.Intranet()
                model.fromMap(value)
                self.intranet = model
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Phase"] as? String {
                self.phase = value
            }
        }
    }
    public var accessType: [String]?

    public var connectInfo: ForwardInfoResponse.ConnectInfo?

    public var containerName: String?

    public var eipAllocationId: String?

    public var enable: Bool?

    public var externalPort: String?

    public var forwardPort: String?

    public var name: String?

    public var natGatewayId: String?

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
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
        }
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
        if self.externalPort != nil {
            map["ExternalPort"] = self.externalPort!
        }
        if self.forwardPort != nil {
            map["ForwardPort"] = self.forwardPort!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        if self.SSHPublicKey != nil {
            map["SSHPublicKey"] = self.SSHPublicKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessType"] as? [String] {
            self.accessType = value
        }
        if let value = dict["ConnectInfo"] as? [String: Any?] {
            var model = ForwardInfoResponse.ConnectInfo()
            model.fromMap(value)
            self.connectInfo = model
        }
        if let value = dict["ContainerName"] as? String {
            self.containerName = value
        }
        if let value = dict["EipAllocationId"] as? String {
            self.eipAllocationId = value
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["ExternalPort"] as? String {
            self.externalPort = value
        }
        if let value = dict["ForwardPort"] as? String {
            self.forwardPort = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NatGatewayId"] as? String {
            self.natGatewayId = value
        }
        if let value = dict["SSHPublicKey"] as? String {
            self.SSHPublicKey = value
        }
    }
}

public class PodIp : Tea.TeaModel {
    public var interfaceName: String?

    public var ip: String?

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
        if self.interfaceName != nil {
            map["InterfaceName"] = self.interfaceName!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InterfaceName"] as? String {
            self.interfaceName = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ServiceConfig : Tea.TeaModel {
    public var codeServerAuth: String?

    public var codeServerPassword: String?

    public var jupyterServerAuth: String?

    public var jupyterServerPassword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.codeServerAuth != nil {
            map["CodeServerAuth"] = self.codeServerAuth!
        }
        if self.codeServerPassword != nil {
            map["CodeServerPassword"] = self.codeServerPassword!
        }
        if self.jupyterServerAuth != nil {
            map["JupyterServerAuth"] = self.jupyterServerAuth!
        }
        if self.jupyterServerPassword != nil {
            map["JupyterServerPassword"] = self.jupyterServerPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CodeServerAuth"] as? String {
            self.codeServerAuth = value
        }
        if let value = dict["CodeServerPassword"] as? String {
            self.codeServerPassword = value
        }
        if let value = dict["JupyterServerAuth"] as? String {
            self.jupyterServerAuth = value
        }
        if let value = dict["JupyterServerPassword"] as? String {
            self.jupyterServerPassword = value
        }
    }
}

public class CreateDiagnosisRequest : Tea.TeaModel {
    public var gmtFailureTime: String?

    public var instanceId: String?

    public var problemCategory: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gmtFailureTime != nil {
            map["GmtFailureTime"] = self.gmtFailureTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.problemCategory != nil {
            map["ProblemCategory"] = self.problemCategory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GmtFailureTime"] as? String {
            self.gmtFailureTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ProblemCategory"] as? String {
            self.problemCategory = value
        }
    }
}

public class CreateDiagnosisResponseBody : Tea.TeaModel {
    public var reasonCode: String?

    public var reasonMessage: String?

    public var solutionMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.reasonCode != nil {
            map["ReasonCode"] = self.reasonCode!
        }
        if self.reasonMessage != nil {
            map["ReasonMessage"] = self.reasonMessage!
        }
        if self.solutionMessage != nil {
            map["SolutionMessage"] = self.solutionMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReasonCode"] as? String {
            self.reasonCode = value
        }
        if let value = dict["ReasonMessage"] as? String {
            self.reasonMessage = value
        }
        if let value = dict["SolutionMessage"] as? String {
            self.solutionMessage = value
        }
    }
}

public class CreateDiagnosisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDiagnosisResponseBody?

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
            var model = CreateDiagnosisResponseBody()
            model.fromMap(value)
            self.body = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CpuPercentThreshold"] as? Int32 {
            self.cpuPercentThreshold = value
        }
        if let value = dict["GpuPercentThreshold"] as? Int32 {
            self.gpuPercentThreshold = value
        }
        if let value = dict["MaxIdleTimeInMinutes"] as? Int32 {
            self.maxIdleTimeInMinutes = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateIdleInstanceCullerResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Enable"] as? Bool {
                    self.enable = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CPU"] as? [String: Any?] {
                var model = CreateInstanceRequest.Affinity.CPU()
                model.fromMap(value)
                self.CPU = model
            }
        }
    }
    public class AssignNodeSpec : Tea.TeaModel {
        public var antiAffinityNodeNames: String?

        public var nodeNames: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.antiAffinityNodeNames != nil {
                map["AntiAffinityNodeNames"] = self.antiAffinityNodeNames!
            }
            if self.nodeNames != nil {
                map["NodeNames"] = self.nodeNames!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AntiAffinityNodeNames"] as? String {
                self.antiAffinityNodeNames = value
            }
            if let value = dict["NodeNames"] as? String {
                self.nodeNames = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Available"] as? Int64 {
                    self.available = value
                }
                if let value = dict["Capacity"] as? Int64 {
                    self.capacity = value
                }
                if let value = dict["Usage"] as? Int64 {
                    self.usage = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Capacity"] as? String {
                self.capacity = value
            }
            if let value = dict["MountPath"] as? String {
                self.mountPath = value
            }
            if let value = dict["Path"] as? String {
                self.path = value
            }
            if let value = dict["Status"] as? [String: Any?] {
                var model = CreateInstanceRequest.CloudDisks.Status()
                model.fromMap(value)
                self.status = model
            }
            if let value = dict["SubType"] as? String {
                self.subType = value
            }
        }
    }
    public class Datasets : Tea.TeaModel {
        public var datasetId: String?

        public var datasetVersion: String?

        public var dynamic_: Bool?

        public var mountAccess: String?

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
            if self.datasetVersion != nil {
                map["DatasetVersion"] = self.datasetVersion!
            }
            if self.dynamic_ != nil {
                map["Dynamic"] = self.dynamic_!
            }
            if self.mountAccess != nil {
                map["MountAccess"] = self.mountAccess!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatasetId"] as? String {
                self.datasetId = value
            }
            if let value = dict["DatasetVersion"] as? String {
                self.datasetVersion = value
            }
            if let value = dict["Dynamic"] as? Bool {
                self.dynamic_ = value
            }
            if let value = dict["MountAccess"] as? String {
                self.mountAccess = value
            }
            if let value = dict["MountPath"] as? String {
                self.mountPath = value
            }
            if let value = dict["OptionType"] as? String {
                self.optionType = value
            }
            if let value = dict["Options"] as? String {
                self.options = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CPU"] as? String {
                self.CPU = value
            }
            if let value = dict["GPU"] as? String {
                self.GPU = value
            }
            if let value = dict["GPUType"] as? String {
                self.GPUType = value
            }
            if let value = dict["Memory"] as? String {
                self.memory = value
            }
            if let value = dict["SharedMemory"] as? String {
                self.sharedMemory = value
            }
        }
    }
    public class SpotSpec : Tea.TeaModel {
        public var spotDiscountLimit: String?

        public var spotDuration: String?

        public var spotPriceLimit: String?

        public var spotStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.spotDiscountLimit != nil {
                map["SpotDiscountLimit"] = self.spotDiscountLimit!
            }
            if self.spotDuration != nil {
                map["SpotDuration"] = self.spotDuration!
            }
            if self.spotPriceLimit != nil {
                map["SpotPriceLimit"] = self.spotPriceLimit!
            }
            if self.spotStrategy != nil {
                map["SpotStrategy"] = self.spotStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SpotDiscountLimit"] as? String {
                self.spotDiscountLimit = value
            }
            if let value = dict["SpotDuration"] as? String {
                self.spotDuration = value
            }
            if let value = dict["SpotPriceLimit"] as? String {
                self.spotPriceLimit = value
            }
            if let value = dict["SpotStrategy"] as? String {
                self.spotStrategy = value
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
    public class UserCommand : Tea.TeaModel {
        public class OnStart : Tea.TeaModel {
            public var content: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.content != nil {
                    map["Content"] = self.content!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
            }
        }
        public var onStart: CreateInstanceRequest.UserCommand.OnStart?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.onStart?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.onStart != nil {
                map["OnStart"] = self.onStart?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OnStart"] as? [String: Any?] {
                var model = CreateInstanceRequest.UserCommand.OnStart()
                model.fromMap(value)
                self.onStart = model
            }
        }
    }
    public class UserVpc : Tea.TeaModel {
        public var bandwidthLimit: BandwidthLimit?

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
            try self.bandwidthLimit?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidthLimit != nil {
                map["BandwidthLimit"] = self.bandwidthLimit?.toMap()
            }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BandwidthLimit"] as? [String: Any?] {
                var model = BandwidthLimit()
                model.fromMap(value)
                self.bandwidthLimit = model
            }
            if let value = dict["DefaultRoute"] as? String {
                self.defaultRoute = value
            }
            if let value = dict["ExtendedCIDRs"] as? [String] {
                self.extendedCIDRs = value
            }
            if let value = dict["ForwardInfos"] as? [Any?] {
                var tmp : [ForwardInfo] = []
                for v in value {
                    if v != nil {
                        var model = ForwardInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.forwardInfos = tmp
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accessibility: String?

    public var affinity: CreateInstanceRequest.Affinity?

    public var assignNodeSpec: CreateInstanceRequest.AssignNodeSpec?

    public var cloudDisks: [CreateInstanceRequest.CloudDisks]?

    public var credentialConfig: CredentialConfig?

    public var datasets: [CreateInstanceRequest.Datasets]?

    public var driver: String?

    public var dynamicMount: DynamicMount?

    public var ecsSpec: String?

    public var environmentVariables: [String: String]?

    public var imageAuth: String?

    public var imageId: String?

    public var imageUrl: String?

    public var instanceName: String?

    public var labels: [CreateInstanceRequest.Labels]?

    public var migrationOptions: [String: Any]?

    public var oversoldType: String?

    public var priority: Int64?

    public var requestedResource: CreateInstanceRequest.RequestedResource?

    public var resourceId: String?

    public var spotSpec: CreateInstanceRequest.SpotSpec?

    public var tag: [CreateInstanceRequest.Tag]?

    public var userCommand: CreateInstanceRequest.UserCommand?

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
        try self.assignNodeSpec?.validate()
        try self.credentialConfig?.validate()
        try self.dynamicMount?.validate()
        try self.requestedResource?.validate()
        try self.spotSpec?.validate()
        try self.userCommand?.validate()
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
        if self.assignNodeSpec != nil {
            map["AssignNodeSpec"] = self.assignNodeSpec?.toMap()
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
        if self.dynamicMount != nil {
            map["DynamicMount"] = self.dynamicMount?.toMap()
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
        if self.migrationOptions != nil {
            map["MigrationOptions"] = self.migrationOptions!
        }
        if self.oversoldType != nil {
            map["OversoldType"] = self.oversoldType!
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
        if self.spotSpec != nil {
            map["SpotSpec"] = self.spotSpec?.toMap()
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.userCommand != nil {
            map["UserCommand"] = self.userCommand?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Affinity"] as? [String: Any?] {
            var model = CreateInstanceRequest.Affinity()
            model.fromMap(value)
            self.affinity = model
        }
        if let value = dict["AssignNodeSpec"] as? [String: Any?] {
            var model = CreateInstanceRequest.AssignNodeSpec()
            model.fromMap(value)
            self.assignNodeSpec = model
        }
        if let value = dict["CloudDisks"] as? [Any?] {
            var tmp : [CreateInstanceRequest.CloudDisks] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceRequest.CloudDisks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cloudDisks = tmp
        }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["Datasets"] as? [Any?] {
            var tmp : [CreateInstanceRequest.Datasets] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceRequest.Datasets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datasets = tmp
        }
        if let value = dict["Driver"] as? String {
            self.driver = value
        }
        if let value = dict["DynamicMount"] as? [String: Any?] {
            var model = DynamicMount()
            model.fromMap(value)
            self.dynamicMount = model
        }
        if let value = dict["EcsSpec"] as? String {
            self.ecsSpec = value
        }
        if let value = dict["EnvironmentVariables"] as? [String: String] {
            self.environmentVariables = value
        }
        if let value = dict["ImageAuth"] as? String {
            self.imageAuth = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [CreateInstanceRequest.Labels] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceRequest.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["MigrationOptions"] as? [String: Any] {
            self.migrationOptions = value
        }
        if let value = dict["OversoldType"] as? String {
            self.oversoldType = value
        }
        if let value = dict["Priority"] as? Int64 {
            self.priority = value
        }
        if let value = dict["RequestedResource"] as? [String: Any?] {
            var model = CreateInstanceRequest.RequestedResource()
            model.fromMap(value)
            self.requestedResource = model
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["SpotSpec"] as? [String: Any?] {
            var model = CreateInstanceRequest.SpotSpec()
            model.fromMap(value)
            self.spotSpec = model
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateInstanceRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["UserCommand"] as? [String: Any?] {
            var model = CreateInstanceRequest.UserCommand()
            model.fromMap(value)
            self.userCommand = model
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = CreateInstanceRequest.UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["WorkspaceSource"] as? String {
            self.workspaceSource = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DueTime"] as? String {
            self.dueTime = value
        }
        if let value = dict["RemainingTimeInMs"] as? Int64 {
            self.remainingTimeInMs = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateInstanceShutdownTimerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExcludePaths"] as? [String] {
            self.excludePaths = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [CreateInstanceSnapshotRequest.Labels] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceSnapshotRequest.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Overwrite"] as? Bool {
            self.overwrite = value
        }
        if let value = dict["SnapshotDescription"] as? String {
            self.snapshotDescription = value
        }
        if let value = dict["SnapshotName"] as? String {
            self.snapshotName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateInstanceSnapshotResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSanityCheckTaskRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class CreateSanityCheckTaskResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateSanityCheckTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSanityCheckTaskResponseBody?

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
            var model = CreateSanityCheckTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteIdleInstanceCullerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelKeys"] as? String {
            self.labelKeys = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteInstanceLabelsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteInstanceShutdownTimerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteInstanceSnapshotResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstancesRequest : Tea.TeaModel {
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
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
    }
}

public class DeleteInstancesResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: [String: Any]?

    public var code: String?

    public var httpStatusCode: Int32?

    public var instanceIds: [String]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
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
        if let value = dict["AccessDeniedDetail"] as? [String: Any] {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
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

public class DeleteInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstancesResponseBody?

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
            var model = DeleteInstancesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CpuPercentThreshold"] as? Int32 {
            self.cpuPercentThreshold = value
        }
        if let value = dict["GpuPercentThreshold"] as? Int32 {
            self.gpuPercentThreshold = value
        }
        if let value = dict["IdleTimeInMinutes"] as? Int32 {
            self.idleTimeInMinutes = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxIdleTimeInMinutes"] as? Int32 {
            self.maxIdleTimeInMinutes = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetIdleInstanceCullerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceRequest : Tea.TeaModel {
    public var fields: String?

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
        if self.fields != nil {
            map["Fields"] = self.fields!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Fields"] as? String {
            self.fields = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Enable"] as? Bool {
                    self.enable = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CPU"] as? [String: Any?] {
                var model = GetInstanceResponseBody.Affinity.CPU()
                model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Available"] as? Int64 {
                    self.available = value
                }
                if let value = dict["Capacity"] as? Int64 {
                    self.capacity = value
                }
                if let value = dict["Usage"] as? Int64 {
                    self.usage = value
                }
            }
        }
        public var capacity: String?

        public var mountPath: String?

        public var path: String?

        public var status: GetInstanceResponseBody.CloudDisks.Status?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Capacity"] as? String {
                self.capacity = value
            }
            if let value = dict["MountPath"] as? String {
                self.mountPath = value
            }
            if let value = dict["Path"] as? String {
                self.path = value
            }
            if let value = dict["Status"] as? [String: Any?] {
                var model = GetInstanceResponseBody.CloudDisks.Status()
                model.fromMap(value)
                self.status = model
            }
            if let value = dict["SubType"] as? String {
                self.subType = value
            }
        }
    }
    public class Datasets : Tea.TeaModel {
        public var actualMountAccess: String?

        public var datasetId: String?

        public var datasetVersion: String?

        public var dynamic_: Bool?

        public var mountAccess: String?

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
            if self.actualMountAccess != nil {
                map["ActualMountAccess"] = self.actualMountAccess!
            }
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
            }
            if self.datasetVersion != nil {
                map["DatasetVersion"] = self.datasetVersion!
            }
            if self.dynamic_ != nil {
                map["Dynamic"] = self.dynamic_!
            }
            if self.mountAccess != nil {
                map["MountAccess"] = self.mountAccess!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActualMountAccess"] as? String {
                self.actualMountAccess = value
            }
            if let value = dict["DatasetId"] as? String {
                self.datasetId = value
            }
            if let value = dict["DatasetVersion"] as? String {
                self.datasetVersion = value
            }
            if let value = dict["Dynamic"] as? Bool {
                self.dynamic_ = value
            }
            if let value = dict["MountAccess"] as? String {
                self.mountAccess = value
            }
            if let value = dict["MountPath"] as? String {
                self.mountPath = value
            }
            if let value = dict["OptionType"] as? String {
                self.optionType = value
            }
            if let value = dict["Options"] as? String {
                self.options = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CpuPercentThreshold"] as? Int32 {
                self.cpuPercentThreshold = value
            }
            if let value = dict["GpuPercentThreshold"] as? Int32 {
                self.gpuPercentThreshold = value
            }
            if let value = dict["IdleTimeInMinutes"] as? Int32 {
                self.idleTimeInMinutes = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["MaxIdleTimeInMinutes"] as? Int32 {
                self.maxIdleTimeInMinutes = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DueTime"] as? String {
                self.dueTime = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["RemainingTimeInMs"] as? Int64 {
                self.remainingTimeInMs = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageName"] as? String {
                self.imageName = value
            }
            if let value = dict["ImageUrl"] as? String {
                self.imageUrl = value
            }
            if let value = dict["ReasonCode"] as? String {
                self.reasonCode = value
            }
            if let value = dict["ReasonMessage"] as? String {
                self.reasonMessage = value
            }
            if let value = dict["RepositoryUrl"] as? String {
                self.repositoryUrl = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageName"] as? String {
                self.imageName = value
            }
            if let value = dict["ImageUrl"] as? String {
                self.imageUrl = value
            }
            if let value = dict["ReasonCode"] as? String {
                self.reasonCode = value
            }
            if let value = dict["ReasonMessage"] as? String {
                self.reasonMessage = value
            }
            if let value = dict["RepositoryUrl"] as? String {
                self.repositoryUrl = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoSwitchCountdownSeconds"] as? Int64 {
                self.autoSwitchCountdownSeconds = value
            }
            if let value = dict["enableAutoSwitchOnNodeError"] as? Bool {
                self.enableAutoSwitchOnNodeError = value
            }
            if let value = dict["hasNodeError"] as? Bool {
                self.hasNodeError = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CPU"] as? String {
                self.CPU = value
            }
            if let value = dict["GPU"] as? String {
                self.GPU = value
            }
            if let value = dict["GPUType"] as? String {
                self.GPUType = value
            }
            if let value = dict["Memory"] as? String {
                self.memory = value
            }
            if let value = dict["SharedMemory"] as? String {
                self.sharedMemory = value
            }
        }
    }
    public class Tags : Tea.TeaModel {
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
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public class UserVpc : Tea.TeaModel {
        public var bandwidthLimit: BandwidthLimit?

        public var defaultRoute: String?

        public var extendedCIDRs: [String]?

        public var forwardInfos: [ForwardInfoResponse]?

        public var ip: String?

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
            try self.bandwidthLimit?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidthLimit != nil {
                map["BandwidthLimit"] = self.bandwidthLimit?.toMap()
            }
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
            if self.ip != nil {
                map["Ip"] = self.ip!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BandwidthLimit"] as? [String: Any?] {
                var model = BandwidthLimit()
                model.fromMap(value)
                self.bandwidthLimit = model
            }
            if let value = dict["DefaultRoute"] as? String {
                self.defaultRoute = value
            }
            if let value = dict["ExtendedCIDRs"] as? [String] {
                self.extendedCIDRs = value
            }
            if let value = dict["ForwardInfos"] as? [Any?] {
                var tmp : [ForwardInfoResponse] = []
                for v in value {
                    if v != nil {
                        var model = ForwardInfoResponse()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.forwardInfos = tmp
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var acceleratorType: String?

    public var accessibility: String?

    public var accumulatedRunningTimeInMs: Int64?

    public var affinity: GetInstanceResponseBody.Affinity?

    public var cloudDisks: [GetInstanceResponseBody.CloudDisks]?

    public var code: String?

    public var credentialConfig: CredentialConfig?

    public var datasets: [GetInstanceResponseBody.Datasets]?

    public var driver: String?

    public var dynamicMount: DynamicMount?

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

    public var migrationOptions: [String: Any]?

    public var nodeErrorRecovery: GetInstanceResponseBody.NodeErrorRecovery?

    public var paymentType: String?

    public var podIps: [PodIp]?

    public var priority: Int64?

    public var proxyPath: String?

    public var reasonCode: String?

    public var reasonMessage: String?

    public var requestId: String?

    public var requestedResource: GetInstanceResponseBody.RequestedResource?

    public var resourceId: String?

    public var resourceName: String?

    public var serviceConfig: ServiceConfig?

    public var status: String?

    public var success: Bool?

    public var tags: [GetInstanceResponseBody.Tags]?

    public var terminalUrl: String?

    public var userCommandId: String?

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
        try self.credentialConfig?.validate()
        try self.dynamicMount?.validate()
        try self.idleInstanceCuller?.validate()
        try self.instanceShutdownTimer?.validate()
        try self.latestSnapshot?.validate()
        try self.nodeErrorRecovery?.validate()
        try self.requestedResource?.validate()
        try self.serviceConfig?.validate()
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
        if self.dynamicMount != nil {
            map["DynamicMount"] = self.dynamicMount?.toMap()
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
        if self.migrationOptions != nil {
            map["MigrationOptions"] = self.migrationOptions!
        }
        if self.nodeErrorRecovery != nil {
            map["NodeErrorRecovery"] = self.nodeErrorRecovery?.toMap()
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.podIps != nil {
            var tmp : [Any] = []
            for k in self.podIps! {
                tmp.append(k.toMap())
            }
            map["PodIps"] = tmp
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.proxyPath != nil {
            map["ProxyPath"] = self.proxyPath!
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
        if self.serviceConfig != nil {
            map["ServiceConfig"] = self.serviceConfig?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.terminalUrl != nil {
            map["TerminalUrl"] = self.terminalUrl!
        }
        if self.userCommandId != nil {
            map["UserCommandId"] = self.userCommandId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceleratorType"] as? String {
            self.acceleratorType = value
        }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["AccumulatedRunningTimeInMs"] as? Int64 {
            self.accumulatedRunningTimeInMs = value
        }
        if let value = dict["Affinity"] as? [String: Any?] {
            var model = GetInstanceResponseBody.Affinity()
            model.fromMap(value)
            self.affinity = model
        }
        if let value = dict["CloudDisks"] as? [Any?] {
            var tmp : [GetInstanceResponseBody.CloudDisks] = []
            for v in value {
                if v != nil {
                    var model = GetInstanceResponseBody.CloudDisks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cloudDisks = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["Datasets"] as? [Any?] {
            var tmp : [GetInstanceResponseBody.Datasets] = []
            for v in value {
                if v != nil {
                    var model = GetInstanceResponseBody.Datasets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datasets = tmp
        }
        if let value = dict["Driver"] as? String {
            self.driver = value
        }
        if let value = dict["DynamicMount"] as? [String: Any?] {
            var model = DynamicMount()
            model.fromMap(value)
            self.dynamicMount = model
        }
        if let value = dict["EcsSpec"] as? String {
            self.ecsSpec = value
        }
        if let value = dict["EnvironmentVariables"] as? [String: String] {
            self.environmentVariables = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["IdleInstanceCuller"] as? [String: Any?] {
            var model = GetInstanceResponseBody.IdleInstanceCuller()
            model.fromMap(value)
            self.idleInstanceCuller = model
        }
        if let value = dict["ImageAuth"] as? String {
            self.imageAuth = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["ImageName"] as? String {
            self.imageName = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstanceShutdownTimer"] as? [String: Any?] {
            var model = GetInstanceResponseBody.InstanceShutdownTimer()
            model.fromMap(value)
            self.instanceShutdownTimer = model
        }
        if let value = dict["InstanceSnapshotList"] as? [Any?] {
            var tmp : [GetInstanceResponseBody.InstanceSnapshotList] = []
            for v in value {
                if v != nil {
                    var model = GetInstanceResponseBody.InstanceSnapshotList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceSnapshotList = tmp
        }
        if let value = dict["InstanceUrl"] as? String {
            self.instanceUrl = value
        }
        if let value = dict["JupyterlabUrl"] as? String {
            self.jupyterlabUrl = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [GetInstanceResponseBody.Labels] = []
            for v in value {
                if v != nil {
                    var model = GetInstanceResponseBody.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["LatestSnapshot"] as? [String: Any?] {
            var model = GetInstanceResponseBody.LatestSnapshot()
            model.fromMap(value)
            self.latestSnapshot = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["MigrationOptions"] as? [String: Any] {
            self.migrationOptions = value
        }
        if let value = dict["NodeErrorRecovery"] as? [String: Any?] {
            var model = GetInstanceResponseBody.NodeErrorRecovery()
            model.fromMap(value)
            self.nodeErrorRecovery = model
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["PodIps"] as? [Any?] {
            var tmp : [PodIp] = []
            for v in value {
                if v != nil {
                    var model = PodIp()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.podIps = tmp
        }
        if let value = dict["Priority"] as? Int64 {
            self.priority = value
        }
        if let value = dict["ProxyPath"] as? String {
            self.proxyPath = value
        }
        if let value = dict["ReasonCode"] as? String {
            self.reasonCode = value
        }
        if let value = dict["ReasonMessage"] as? String {
            self.reasonMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RequestedResource"] as? [String: Any?] {
            var model = GetInstanceResponseBody.RequestedResource()
            model.fromMap(value)
            self.requestedResource = model
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["ServiceConfig"] as? [String: Any?] {
            var model = ServiceConfig()
            model.fromMap(value)
            self.serviceConfig = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetInstanceResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetInstanceResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TerminalUrl"] as? String {
            self.terminalUrl = value
        }
        if let value = dict["UserCommandId"] as? String {
            self.userCommandId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = GetInstanceResponseBody.UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["WebIDEUrl"] as? String {
            self.webIDEUrl = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["WorkspaceName"] as? String {
            self.workspaceName = value
        }
        if let value = dict["WorkspaceSource"] as? String {
            self.workspaceSource = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceEventsRequest : Tea.TeaModel {
    public var endTime: String?

    public var eventLevel: String?

    public var maxEventsNum: Int32?

    public var startTime: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.eventLevel != nil {
            map["EventLevel"] = self.eventLevel!
        }
        if self.maxEventsNum != nil {
            map["MaxEventsNum"] = self.maxEventsNum!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EventLevel"] as? String {
            self.eventLevel = value
        }
        if let value = dict["MaxEventsNum"] as? Int32 {
            self.maxEventsNum = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Events"] as? [String] {
            self.events = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceEventsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["MetricType"] as? String {
            self.metricType = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TimeStep"] as? String {
            self.timeStep = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Time"] as? Int64 {
                    self.time = value
                }
                if let value = dict["Value"] as? Double {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Metrics"] as? [Any?] {
                var tmp : [GetInstanceMetricsResponseBody.PodMetrics.Metrics] = []
                for v in value {
                    if v != nil {
                        var model = GetInstanceMetricsResponseBody.PodMetrics.Metrics()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.metrics = tmp
            }
            if let value = dict["PodId"] as? String {
                self.podId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PodMetrics"] as? [Any?] {
            var tmp : [GetInstanceMetricsResponseBody.PodMetrics] = []
            for v in value {
                if v != nil {
                    var model = GetInstanceMetricsResponseBody.PodMetrics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.podMetrics = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceMetricsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DueTime"] as? String {
            self.dueTime = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RemainingTimeInMs"] as? Int64 {
            self.remainingTimeInMs = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceShutdownTimerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["ExcludePaths"] as? [String] {
            self.excludePaths = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [GetInstanceSnapshotResponseBody.Labels] = []
            for v in value {
                if v != nil {
                    var model = GetInstanceSnapshotResponseBody.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ReasonCode"] as? String {
            self.reasonCode = value
        }
        if let value = dict["ReasonMessage"] as? String {
            self.reasonMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
        if let value = dict["SnapshotName"] as? String {
            self.snapshotName = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceSnapshotResponseBody()
            model.fromMap(value)
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
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["SessionNumber"] as? Int32 {
            self.sessionNumber = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
    }
}

public class GetLifecycleResponseBody : Tea.TeaModel {
    public class Lifecycle : Tea.TeaModel {
        public var status: String?

        public var reasonCode: String?

        public var reasonMessage: String?

        public var gmtCreateTime: String?

        public var gmtEndTime: String?

        public var lifecycleId: String?

        public override init() {
            super.init()
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
            if self.gmtEndTime != nil {
                map["GmtEndTime"] = self.gmtEndTime!
            }
            if self.lifecycleId != nil {
                map["LifecycleId"] = self.lifecycleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["ReasonCode"] as? String {
                self.reasonCode = value
            }
            if let value = dict["ReasonMessage"] as? String {
                self.reasonMessage = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtEndTime"] as? String {
                self.gmtEndTime = value
            }
            if let value = dict["LifecycleId"] as? String {
                self.lifecycleId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Lifecycle"] as? [Any?] {
            var tmp : [[GetLifecycleResponseBody.Lifecycle]] = []
            for v in value {
                if v != nil {
                    var l1 : [GetLifecycleResponseBody.Lifecycle] = []
                    for v1 in v as! [Any?] {
                        if v1 != nil {
                            var model = GetLifecycleResponseBody.Lifecycle()
                            if v1 != nil {
                                model.fromMap(v1 as? [String: Any?])
                            }
                            l1.append(model)
                        }
                    }
                    tmp.append(l1)
                }
            }
            self.lifecycle = tmp
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetLifecycleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Dimensions"] as? String {
            self.dimensions = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Length"] as? String {
            self.length = value
        }
        if let value = dict["MetricName"] as? String {
            self.metricName = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetMetricsResponseBody : Tea.TeaModel {
    public var code: String?

    public var datapoints: String?

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
        if self.datapoints != nil {
            map["Datapoints"] = self.datapoints!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Datapoints"] as? String {
            self.datapoints = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMetricsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["WorkspaceIds"] as? String {
            self.workspaceIds = value
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
        if let value = dict["Statistics"] as? [String: [String: Any]] {
            self.statistics = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetResourceGroupStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSanityCheckTaskRequest : Tea.TeaModel {
    public var verbose: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
    }
}

public class GetSanityCheckTaskResponseBody : Tea.TeaModel {
    public class CheckDetails : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var reason: String?

        public var result: String?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
        }
    }
    public var checkDetails: [GetSanityCheckTaskResponseBody.CheckDetails]?

    public var checkType: String?

    public var endTime: String?

    public var instanceId: String?

    public var issues: [String]?

    public var startTime: String?

    public var status: String?

    public var taskId: String?

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
        if self.checkDetails != nil {
            var tmp : [Any] = []
            for k in self.checkDetails! {
                tmp.append(k.toMap())
            }
            map["CheckDetails"] = tmp
        }
        if self.checkType != nil {
            map["CheckType"] = self.checkType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.issues != nil {
            map["Issues"] = self.issues!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckDetails"] as? [Any?] {
            var tmp : [GetSanityCheckTaskResponseBody.CheckDetails] = []
            for v in value {
                if v != nil {
                    var model = GetSanityCheckTaskResponseBody.CheckDetails()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.checkDetails = tmp
        }
        if let value = dict["CheckType"] as? String {
            self.checkType = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Issues"] as? [String] {
            self.issues = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetSanityCheckTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSanityCheckTaskResponseBody?

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
            var model = GetSanityCheckTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTokenRequest : Tea.TeaModel {
    public var audience: String?

    public var expireTime: Int32?

    public var instanceId: String?

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
        if self.audience != nil {
            map["Audience"] = self.audience!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Audience"] as? String {
            self.audience = value
        }
        if let value = dict["ExpireTime"] as? Int32 {
            self.expireTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["Token"] as? String {
            self.token = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserCommandRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
    }
}

public class GetUserCommandResponseBody : Tea.TeaModel {
    public class OnStart : Tea.TeaModel {
        public var content: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var onStart: GetUserCommandResponseBody.OnStart?

    public var requestId: String?

    public var success: Bool?

    public var userCommandId: String?

    public var accessDeniedDetail: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.onStart?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.onStart != nil {
            map["OnStart"] = self.onStart?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.userCommandId != nil {
            map["UserCommandId"] = self.userCommandId!
        }
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OnStart"] as? [String: Any?] {
            var model = GetUserCommandResponseBody.OnStart()
            model.fromMap(value)
            self.onStart = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["UserCommandId"] as? String {
            self.userCommandId = value
        }
        if let value = dict["accessDeniedDetail"] as? [String: Any] {
            self.accessDeniedDetail = value
        }
    }
}

public class GetUserCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserCommandResponseBody?

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
            var model = GetUserCommandResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["InitBaseUnit"] as? String {
                self.initBaseUnit = value
            }
            if let value = dict["InitBaseValue"] as? Double {
                self.initBaseValue = value
            }
            if let value = dict["InitShowUnit"] as? String {
                self.initShowUnit = value
            }
            if let value = dict["InitShowValue"] as? String {
                self.initShowValue = value
            }
            if let value = dict["IsFreeTierUser"] as? Bool {
                self.isFreeTierUser = value
            }
            if let value = dict["PeriodBaseUnit"] as? String {
                self.periodBaseUnit = value
            }
            if let value = dict["PeriodBaseValue"] as? Double {
                self.periodBaseValue = value
            }
            if let value = dict["PeriodShowUnit"] as? String {
                self.periodShowUnit = value
            }
            if let value = dict["PeriodShowValue"] as? String {
                self.periodShowValue = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountSufficient"] as? Bool {
            self.accountSufficient = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["EnableEciDisk"] as? Bool {
            self.enableEciDisk = value
        }
        if let value = dict["FreeTier"] as? [String: Any?] {
            var model = GetUserConfigResponseBody.FreeTier()
            model.fromMap(value)
            self.freeTier = model
        }
        if let value = dict["FreeTierSpecAvailable"] as? Bool {
            self.freeTierSpecAvailable = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEcsSpecsRequest : Tea.TeaModel {
    public var acceleratorType: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceType: String?

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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceleratorType"] as? String {
            self.acceleratorType = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
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
        public var acceleratorType: String?

        public var CPU: Int64?

        public var currency: String?

        public var GPU: Int64?

        public var GPUMemorySize: Double?

        public var GPUType: String?

        public var instanceBandwidthRx: Int64?

        public var instanceType: String?

        public var isAvailable: Bool?

        public var labels: [ListEcsSpecsResponseBody.EcsSpecs.Labels]?

        public var memory: Double?

        public var price: Double?

        public var spotStockStatus: String?

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
            if self.GPUMemorySize != nil {
                map["GPUMemorySize"] = self.GPUMemorySize!
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
            if self.spotStockStatus != nil {
                map["SpotStockStatus"] = self.spotStockStatus!
            }
            if self.systemDiskCapacity != nil {
                map["SystemDiskCapacity"] = self.systemDiskCapacity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AcceleratorType"] as? String {
                self.acceleratorType = value
            }
            if let value = dict["CPU"] as? Int64 {
                self.CPU = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["GPU"] as? Int64 {
                self.GPU = value
            }
            if let value = dict["GPUMemorySize"] as? Double {
                self.GPUMemorySize = value
            }
            if let value = dict["GPUType"] as? String {
                self.GPUType = value
            }
            if let value = dict["InstanceBandwidthRx"] as? Int64 {
                self.instanceBandwidthRx = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["IsAvailable"] as? Bool {
                self.isAvailable = value
            }
            if let value = dict["Labels"] as? [Any?] {
                var tmp : [ListEcsSpecsResponseBody.EcsSpecs.Labels] = []
                for v in value {
                    if v != nil {
                        var model = ListEcsSpecsResponseBody.EcsSpecs.Labels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labels = tmp
            }
            if let value = dict["Memory"] as? Double {
                self.memory = value
            }
            if let value = dict["Price"] as? Double {
                self.price = value
            }
            if let value = dict["SpotStockStatus"] as? String {
                self.spotStockStatus = value
            }
            if let value = dict["SystemDiskCapacity"] as? Int64 {
                self.systemDiskCapacity = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["EcsSpecs"] as? [Any?] {
            var tmp : [ListEcsSpecsResponseBody.EcsSpecs] = []
            for v in value {
                if v != nil {
                    var model = ListEcsSpecsResponseBody.EcsSpecs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecsSpecs = tmp
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEcsSpecsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExcludePaths"] as? [String] {
                self.excludePaths = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageUrl"] as? String {
                self.imageUrl = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Labels"] as? [Any?] {
                var tmp : [ListInstanceSnapshotResponseBody.Snapshots.Labels] = []
                for v in value {
                    if v != nil {
                        var model = ListInstanceSnapshotResponseBody.Snapshots.Labels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labels = tmp
            }
            if let value = dict["ReasonCode"] as? String {
                self.reasonCode = value
            }
            if let value = dict["ReasonMessage"] as? String {
                self.reasonMessage = value
            }
            if let value = dict["SnapshotId"] as? String {
                self.snapshotId = value
            }
            if let value = dict["SnapshotName"] as? String {
                self.snapshotName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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
        if let value = dict["Snapshots"] as? [Any?] {
            var tmp : [ListInstanceSnapshotResponseBody.Snapshots] = []
            for v in value {
                if v != nil {
                    var model = ListInstanceSnapshotResponseBody.Snapshots()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.snapshots = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstanceSnapshotResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WorkspaceIds"] as? String {
            self.workspaceIds = value
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
        if let value = dict["Statistics"] as? [String: [String: Any]] {
            self.statistics = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstanceStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
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
    public var acceleratorType: String?

    public var accessibility: String?

    public var createTimeAfter: String?

    public var createTimeBefore: String?

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

    public var oversoldInfo: String?

    public var oversoldType: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var paymentType: String?

    public var resourceId: String?

    public var sortBy: String?

    public var status: String?

    public var tag: [ListInstancesRequest.Tag]?

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
        if self.createTimeAfter != nil {
            map["CreateTimeAfter"] = self.createTimeAfter!
        }
        if self.createTimeBefore != nil {
            map["CreateTimeBefore"] = self.createTimeBefore!
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
        if self.oversoldInfo != nil {
            map["OversoldInfo"] = self.oversoldInfo!
        }
        if self.oversoldType != nil {
            map["OversoldType"] = self.oversoldType!
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
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceleratorType"] as? String {
            self.acceleratorType = value
        }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["CreateTimeAfter"] as? String {
            self.createTimeAfter = value
        }
        if let value = dict["CreateTimeBefore"] as? String {
            self.createTimeBefore = value
        }
        if let value = dict["CreateUserId"] as? String {
            self.createUserId = value
        }
        if let value = dict["GpuType"] as? String {
            self.gpuType = value
        }
        if let value = dict["ImageName"] as? String {
            self.imageName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Labels"] as? [String: Any] {
            self.labels = value
        }
        if let value = dict["MaxCpu"] as? String {
            self.maxCpu = value
        }
        if let value = dict["MaxGpu"] as? String {
            self.maxGpu = value
        }
        if let value = dict["MaxGpuMemory"] as? String {
            self.maxGpuMemory = value
        }
        if let value = dict["MaxMemory"] as? String {
            self.maxMemory = value
        }
        if let value = dict["MinCpu"] as? String {
            self.minCpu = value
        }
        if let value = dict["MinGpu"] as? String {
            self.minGpu = value
        }
        if let value = dict["MinGpuMemory"] as? String {
            self.minGpuMemory = value
        }
        if let value = dict["MinMemory"] as? String {
            self.minMemory = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OversoldInfo"] as? String {
            self.oversoldInfo = value
        }
        if let value = dict["OversoldType"] as? String {
            self.oversoldType = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListInstancesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListInstancesShrinkRequest : Tea.TeaModel {
    public var acceleratorType: String?

    public var accessibility: String?

    public var createTimeAfter: String?

    public var createTimeBefore: String?

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

    public var oversoldInfo: String?

    public var oversoldType: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var paymentType: String?

    public var resourceId: String?

    public var sortBy: String?

    public var status: String?

    public var tagShrink: String?

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
        if self.createTimeAfter != nil {
            map["CreateTimeAfter"] = self.createTimeAfter!
        }
        if self.createTimeBefore != nil {
            map["CreateTimeBefore"] = self.createTimeBefore!
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
        if self.oversoldInfo != nil {
            map["OversoldInfo"] = self.oversoldInfo!
        }
        if self.oversoldType != nil {
            map["OversoldType"] = self.oversoldType!
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
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceleratorType"] as? String {
            self.acceleratorType = value
        }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["CreateTimeAfter"] as? String {
            self.createTimeAfter = value
        }
        if let value = dict["CreateTimeBefore"] as? String {
            self.createTimeBefore = value
        }
        if let value = dict["CreateUserId"] as? String {
            self.createUserId = value
        }
        if let value = dict["GpuType"] as? String {
            self.gpuType = value
        }
        if let value = dict["ImageName"] as? String {
            self.imageName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Labels"] as? String {
            self.labelsShrink = value
        }
        if let value = dict["MaxCpu"] as? String {
            self.maxCpu = value
        }
        if let value = dict["MaxGpu"] as? String {
            self.maxGpu = value
        }
        if let value = dict["MaxGpuMemory"] as? String {
            self.maxGpuMemory = value
        }
        if let value = dict["MaxMemory"] as? String {
            self.maxMemory = value
        }
        if let value = dict["MinCpu"] as? String {
            self.minCpu = value
        }
        if let value = dict["MinGpu"] as? String {
            self.minGpu = value
        }
        if let value = dict["MinGpuMemory"] as? String {
            self.minGpuMemory = value
        }
        if let value = dict["MinMemory"] as? String {
            self.minMemory = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OversoldInfo"] as? String {
            self.oversoldInfo = value
        }
        if let value = dict["OversoldType"] as? String {
            self.oversoldType = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Enable"] as? Bool {
                        self.enable = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CPU"] as? [String: Any?] {
                    var model = ListInstancesResponseBody.Instances.Affinity.CPU()
                    model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Capacity"] as? String {
                    self.capacity = value
                }
                if let value = dict["MountPath"] as? String {
                    self.mountPath = value
                }
                if let value = dict["Path"] as? String {
                    self.path = value
                }
                if let value = dict["SubType"] as? String {
                    self.subType = value
                }
            }
        }
        public class Datasets : Tea.TeaModel {
            public var datasetId: String?

            public var datasetVersion: String?

            public var dynamic_: Bool?

            public var mountAccess: String?

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
                if self.datasetVersion != nil {
                    map["DatasetVersion"] = self.datasetVersion!
                }
                if self.dynamic_ != nil {
                    map["Dynamic"] = self.dynamic_!
                }
                if self.mountAccess != nil {
                    map["MountAccess"] = self.mountAccess!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DatasetId"] as? String {
                    self.datasetId = value
                }
                if let value = dict["DatasetVersion"] as? String {
                    self.datasetVersion = value
                }
                if let value = dict["Dynamic"] as? Bool {
                    self.dynamic_ = value
                }
                if let value = dict["MountAccess"] as? String {
                    self.mountAccess = value
                }
                if let value = dict["MountPath"] as? String {
                    self.mountPath = value
                }
                if let value = dict["OptionType"] as? String {
                    self.optionType = value
                }
                if let value = dict["Options"] as? String {
                    self.options = value
                }
                if let value = dict["Uri"] as? String {
                    self.uri = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CpuPercentThreshold"] as? Int32 {
                    self.cpuPercentThreshold = value
                }
                if let value = dict["GpuPercentThreshold"] as? Int32 {
                    self.gpuPercentThreshold = value
                }
                if let value = dict["IdleTimeInMinutes"] as? Int32 {
                    self.idleTimeInMinutes = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["MaxIdleTimeInMinutes"] as? Int32 {
                    self.maxIdleTimeInMinutes = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DueTime"] as? String {
                    self.dueTime = value
                }
                if let value = dict["GmtCreateTime"] as? String {
                    self.gmtCreateTime = value
                }
                if let value = dict["GmtModifiedTime"] as? String {
                    self.gmtModifiedTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["RemainingTimeInMs"] as? Int64 {
                    self.remainingTimeInMs = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GmtCreateTime"] as? String {
                    self.gmtCreateTime = value
                }
                if let value = dict["GmtModifiedTime"] as? String {
                    self.gmtModifiedTime = value
                }
                if let value = dict["ImageId"] as? String {
                    self.imageId = value
                }
                if let value = dict["ImageName"] as? String {
                    self.imageName = value
                }
                if let value = dict["ImageUrl"] as? String {
                    self.imageUrl = value
                }
                if let value = dict["ReasonCode"] as? String {
                    self.reasonCode = value
                }
                if let value = dict["ReasonMessage"] as? String {
                    self.reasonMessage = value
                }
                if let value = dict["RepositoryUrl"] as? String {
                    self.repositoryUrl = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GmtCreateTime"] as? String {
                    self.gmtCreateTime = value
                }
                if let value = dict["GmtModifiedTime"] as? String {
                    self.gmtModifiedTime = value
                }
                if let value = dict["ImageId"] as? String {
                    self.imageId = value
                }
                if let value = dict["ImageName"] as? String {
                    self.imageName = value
                }
                if let value = dict["ImageUrl"] as? String {
                    self.imageUrl = value
                }
                if let value = dict["ReasonCode"] as? String {
                    self.reasonCode = value
                }
                if let value = dict["ReasonMessage"] as? String {
                    self.reasonMessage = value
                }
                if let value = dict["RepositoryUrl"] as? String {
                    self.repositoryUrl = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CPU"] as? String {
                    self.CPU = value
                }
                if let value = dict["GPU"] as? String {
                    self.GPU = value
                }
                if let value = dict["GPUType"] as? String {
                    self.GPUType = value
                }
                if let value = dict["Memory"] as? String {
                    self.memory = value
                }
                if let value = dict["SharedMemory"] as? String {
                    self.sharedMemory = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public class UserVpc : Tea.TeaModel {
            public var bandwidthLimit: BandwidthLimit?

            public var defaultRoute: String?

            public var extendedCIDRs: [String]?

            public var forwardInfos: [ForwardInfoResponse]?

            public var ip: String?

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
                try self.bandwidthLimit?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bandwidthLimit != nil {
                    map["BandwidthLimit"] = self.bandwidthLimit?.toMap()
                }
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
                if self.ip != nil {
                    map["Ip"] = self.ip!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BandwidthLimit"] as? [String: Any?] {
                    var model = BandwidthLimit()
                    model.fromMap(value)
                    self.bandwidthLimit = model
                }
                if let value = dict["DefaultRoute"] as? String {
                    self.defaultRoute = value
                }
                if let value = dict["ExtendedCIDRs"] as? [String] {
                    self.extendedCIDRs = value
                }
                if let value = dict["ForwardInfos"] as? [Any?] {
                    var tmp : [ForwardInfoResponse] = []
                    for v in value {
                        if v != nil {
                            var model = ForwardInfoResponse()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.forwardInfos = tmp
                }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
                if let value = dict["SecurityGroupId"] as? String {
                    self.securityGroupId = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
            }
        }
        public var acceleratorType: String?

        public var accessibility: String?

        public var accumulatedRunningTimeInMs: Int64?

        public var affinity: ListInstancesResponseBody.Instances.Affinity?

        public var cloudDisks: [ListInstancesResponseBody.Instances.CloudDisks]?

        public var credentialConfig: CredentialConfig?

        public var datasets: [ListInstancesResponseBody.Instances.Datasets]?

        public var driver: String?

        public var dynamicMount: DynamicMount?

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

        public var oversoldInfo: String?

        public var oversoldType: String?

        public var paymentType: String?

        public var priority: Int64?

        public var reasonCode: String?

        public var reasonMessage: String?

        public var requestedResource: ListInstancesResponseBody.Instances.RequestedResource?

        public var resourceId: String?

        public var resourceName: String?

        public var serviceConfig: ServiceConfig?

        public var status: String?

        public var tags: [ListInstancesResponseBody.Instances.Tags]?

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
            try self.credentialConfig?.validate()
            try self.dynamicMount?.validate()
            try self.idleInstanceCuller?.validate()
            try self.instanceShutdownTimer?.validate()
            try self.latestSnapshot?.validate()
            try self.requestedResource?.validate()
            try self.serviceConfig?.validate()
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
            if self.dynamicMount != nil {
                map["DynamicMount"] = self.dynamicMount?.toMap()
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
            if self.oversoldInfo != nil {
                map["OversoldInfo"] = self.oversoldInfo!
            }
            if self.oversoldType != nil {
                map["OversoldType"] = self.oversoldType!
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
            if self.serviceConfig != nil {
                map["ServiceConfig"] = self.serviceConfig?.toMap()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AcceleratorType"] as? String {
                self.acceleratorType = value
            }
            if let value = dict["Accessibility"] as? String {
                self.accessibility = value
            }
            if let value = dict["AccumulatedRunningTimeInMs"] as? Int64 {
                self.accumulatedRunningTimeInMs = value
            }
            if let value = dict["Affinity"] as? [String: Any?] {
                var model = ListInstancesResponseBody.Instances.Affinity()
                model.fromMap(value)
                self.affinity = model
            }
            if let value = dict["CloudDisks"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.Instances.CloudDisks] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.Instances.CloudDisks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cloudDisks = tmp
            }
            if let value = dict["CredentialConfig"] as? [String: Any?] {
                var model = CredentialConfig()
                model.fromMap(value)
                self.credentialConfig = model
            }
            if let value = dict["Datasets"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.Instances.Datasets] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.Instances.Datasets()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.datasets = tmp
            }
            if let value = dict["Driver"] as? String {
                self.driver = value
            }
            if let value = dict["DynamicMount"] as? [String: Any?] {
                var model = DynamicMount()
                model.fromMap(value)
                self.dynamicMount = model
            }
            if let value = dict["EcsSpec"] as? String {
                self.ecsSpec = value
            }
            if let value = dict["EnvironmentVariables"] as? [String: String] {
                self.environmentVariables = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["IdleInstanceCuller"] as? [String: Any?] {
                var model = ListInstancesResponseBody.Instances.IdleInstanceCuller()
                model.fromMap(value)
                self.idleInstanceCuller = model
            }
            if let value = dict["ImageAuth"] as? String {
                self.imageAuth = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageName"] as? String {
                self.imageName = value
            }
            if let value = dict["ImageUrl"] as? String {
                self.imageUrl = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InstanceShutdownTimer"] as? [String: Any?] {
                var model = ListInstancesResponseBody.Instances.InstanceShutdownTimer()
                model.fromMap(value)
                self.instanceShutdownTimer = model
            }
            if let value = dict["InstanceSnapshotList"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.Instances.InstanceSnapshotList] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.Instances.InstanceSnapshotList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instanceSnapshotList = tmp
            }
            if let value = dict["InstanceUrl"] as? String {
                self.instanceUrl = value
            }
            if let value = dict["JupyterlabUrl"] as? String {
                self.jupyterlabUrl = value
            }
            if let value = dict["Labels"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.Instances.Labels] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.Instances.Labels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labels = tmp
            }
            if let value = dict["LatestSnapshot"] as? [String: Any?] {
                var model = ListInstancesResponseBody.Instances.LatestSnapshot()
                model.fromMap(value)
                self.latestSnapshot = model
            }
            if let value = dict["OversoldInfo"] as? String {
                self.oversoldInfo = value
            }
            if let value = dict["OversoldType"] as? String {
                self.oversoldType = value
            }
            if let value = dict["PaymentType"] as? String {
                self.paymentType = value
            }
            if let value = dict["Priority"] as? Int64 {
                self.priority = value
            }
            if let value = dict["ReasonCode"] as? String {
                self.reasonCode = value
            }
            if let value = dict["ReasonMessage"] as? String {
                self.reasonMessage = value
            }
            if let value = dict["RequestedResource"] as? [String: Any?] {
                var model = ListInstancesResponseBody.Instances.RequestedResource()
                model.fromMap(value)
                self.requestedResource = model
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["ServiceConfig"] as? [String: Any?] {
                var model = ServiceConfig()
                model.fromMap(value)
                self.serviceConfig = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.Instances.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.Instances.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TerminalUrl"] as? String {
                self.terminalUrl = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
            if let value = dict["UserVpc"] as? [String: Any?] {
                var model = ListInstancesResponseBody.Instances.UserVpc()
                model.fromMap(value)
                self.userVpc = model
            }
            if let value = dict["WebIDEUrl"] as? String {
                self.webIDEUrl = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["WorkspaceName"] as? String {
                self.workspaceName = value
            }
            if let value = dict["WorkspaceSource"] as? String {
                self.workspaceSource = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var instances: [ListInstancesResponseBody.Instances]?

    public var message: String?

    public var migrationOptions: [String: Any]?

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
        if self.migrationOptions != nil {
            map["MigrationOptions"] = self.migrationOptions!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [ListInstancesResponseBody.Instances] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesResponseBody.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["MigrationOptions"] as? [String: Any] {
            self.migrationOptions = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSystemLogsRequest : Tea.TeaModel {
    public var gmtEndTime: String?

    public var gmtStartTime: String?

    public var instanceId: String?

    public var lifecycleId: String?

    public var logLevel: String?

    public var logRepository: String?

    public var offset: String?

    public var order: String?

    public var problemCategory: String?

    public var sortBy: String?

    public var sourceRequestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gmtEndTime != nil {
            map["GmtEndTime"] = self.gmtEndTime!
        }
        if self.gmtStartTime != nil {
            map["GmtStartTime"] = self.gmtStartTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lifecycleId != nil {
            map["LifecycleId"] = self.lifecycleId!
        }
        if self.logLevel != nil {
            map["LogLevel"] = self.logLevel!
        }
        if self.logRepository != nil {
            map["LogRepository"] = self.logRepository!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.problemCategory != nil {
            map["ProblemCategory"] = self.problemCategory!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sourceRequestId != nil {
            map["SourceRequestId"] = self.sourceRequestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GmtEndTime"] as? String {
            self.gmtEndTime = value
        }
        if let value = dict["GmtStartTime"] as? String {
            self.gmtStartTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LifecycleId"] as? String {
            self.lifecycleId = value
        }
        if let value = dict["LogLevel"] as? String {
            self.logLevel = value
        }
        if let value = dict["LogRepository"] as? String {
            self.logRepository = value
        }
        if let value = dict["Offset"] as? String {
            self.offset = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["ProblemCategory"] as? String {
            self.problemCategory = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["SourceRequestId"] as? String {
            self.sourceRequestId = value
        }
    }
}

public class ListSystemLogsResponseBody : Tea.TeaModel {
    public class SystemLogs : Tea.TeaModel {
        public var content: String?

        public var gmtCreateTime: String?

        public var level: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
        }
    }
    public var offset: String?

    public var systemLogs: [ListSystemLogsResponseBody.SystemLogs]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.systemLogs != nil {
            var tmp : [Any] = []
            for k in self.systemLogs! {
                tmp.append(k.toMap())
            }
            map["SystemLogs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Offset"] as? String {
            self.offset = value
        }
        if let value = dict["SystemLogs"] as? [Any?] {
            var tmp : [ListSystemLogsResponseBody.SystemLogs] = []
            for v in value {
                if v != nil {
                    var model = ListSystemLogsResponseBody.SystemLogs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.systemLogs = tmp
        }
    }
}

public class ListSystemLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSystemLogsResponseBody?

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
            var model = ListSystemLogsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SaveImage"] as? Bool {
            self.saveImage = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopInstancesRequest : Tea.TeaModel {
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
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
    }
}

public class StopInstancesResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: [String: String]?

    public var code: String?

    public var httpStatusCode: Int32?

    public var instanceIds: [String]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
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
        if let value = dict["AccessDeniedDetail"] as? [String: String] {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
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

public class StopInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopInstancesResponseBody?

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
            var model = StopInstancesResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Enable"] as? Bool {
                    self.enable = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CPU"] as? [String: Any?] {
                var model = UpdateInstanceRequest.Affinity.CPU()
                model.fromMap(value)
                self.CPU = model
            }
        }
    }
    public class AssignNodeSpec : Tea.TeaModel {
        public var antiAffinityNodeNames: String?

        public var nodeNames: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.antiAffinityNodeNames != nil {
                map["AntiAffinityNodeNames"] = self.antiAffinityNodeNames!
            }
            if self.nodeNames != nil {
                map["NodeNames"] = self.nodeNames!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AntiAffinityNodeNames"] as? String {
                self.antiAffinityNodeNames = value
            }
            if let value = dict["NodeNames"] as? String {
                self.nodeNames = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Capacity"] as? String {
                self.capacity = value
            }
            if let value = dict["SubType"] as? String {
                self.subType = value
            }
        }
    }
    public class Datasets : Tea.TeaModel {
        public var datasetId: String?

        public var datasetVersion: String?

        public var dynamic_: Bool?

        public var mountAccess: String?

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
            if self.datasetVersion != nil {
                map["DatasetVersion"] = self.datasetVersion!
            }
            if self.dynamic_ != nil {
                map["Dynamic"] = self.dynamic_!
            }
            if self.mountAccess != nil {
                map["MountAccess"] = self.mountAccess!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatasetId"] as? String {
                self.datasetId = value
            }
            if let value = dict["DatasetVersion"] as? String {
                self.datasetVersion = value
            }
            if let value = dict["Dynamic"] as? Bool {
                self.dynamic_ = value
            }
            if let value = dict["MountAccess"] as? String {
                self.mountAccess = value
            }
            if let value = dict["MountPath"] as? String {
                self.mountPath = value
            }
            if let value = dict["OptionType"] as? String {
                self.optionType = value
            }
            if let value = dict["Options"] as? String {
                self.options = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CPU"] as? String {
                self.CPU = value
            }
            if let value = dict["GPU"] as? String {
                self.GPU = value
            }
            if let value = dict["GPUType"] as? String {
                self.GPUType = value
            }
            if let value = dict["Memory"] as? String {
                self.memory = value
            }
            if let value = dict["SharedMemory"] as? String {
                self.sharedMemory = value
            }
        }
    }
    public class SpotSpec : Tea.TeaModel {
        public var spotDiscountLimit: String?

        public var spotDuration: String?

        public var spotPriceLimit: String?

        public var spotStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.spotDiscountLimit != nil {
                map["SpotDiscountLimit"] = self.spotDiscountLimit!
            }
            if self.spotDuration != nil {
                map["SpotDuration"] = self.spotDuration!
            }
            if self.spotPriceLimit != nil {
                map["SpotPriceLimit"] = self.spotPriceLimit!
            }
            if self.spotStrategy != nil {
                map["SpotStrategy"] = self.spotStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SpotDiscountLimit"] as? String {
                self.spotDiscountLimit = value
            }
            if let value = dict["SpotDuration"] as? String {
                self.spotDuration = value
            }
            if let value = dict["SpotPriceLimit"] as? String {
                self.spotPriceLimit = value
            }
            if let value = dict["SpotStrategy"] as? String {
                self.spotStrategy = value
            }
        }
    }
    public class UserCommand : Tea.TeaModel {
        public class OnStart : Tea.TeaModel {
            public var content: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.content != nil {
                    map["Content"] = self.content!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
            }
        }
        public var onStart: UpdateInstanceRequest.UserCommand.OnStart?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.onStart?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.onStart != nil {
                map["OnStart"] = self.onStart?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OnStart"] as? [String: Any?] {
                var model = UpdateInstanceRequest.UserCommand.OnStart()
                model.fromMap(value)
                self.onStart = model
            }
        }
    }
    public class UserVpc : Tea.TeaModel {
        public var bandwidthLimit: BandwidthLimit?

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
            try self.bandwidthLimit?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidthLimit != nil {
                map["BandwidthLimit"] = self.bandwidthLimit?.toMap()
            }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BandwidthLimit"] as? [String: Any?] {
                var model = BandwidthLimit()
                model.fromMap(value)
                self.bandwidthLimit = model
            }
            if let value = dict["DefaultRoute"] as? String {
                self.defaultRoute = value
            }
            if let value = dict["ExtendedCIDRs"] as? [String] {
                self.extendedCIDRs = value
            }
            if let value = dict["ForwardInfos"] as? [Any?] {
                var tmp : [ForwardInfo] = []
                for v in value {
                    if v != nil {
                        var model = ForwardInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.forwardInfos = tmp
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accessibility: String?

    public var affinity: UpdateInstanceRequest.Affinity?

    public var assignNodeSpec: UpdateInstanceRequest.AssignNodeSpec?

    public var cloudDisks: [UpdateInstanceRequest.CloudDisks]?

    public var credentialConfig: CredentialConfig?

    public var datasets: [UpdateInstanceRequest.Datasets]?

    public var disassociateAssignNode: Bool?

    public var disassociateCredential: Bool?

    public var disassociateDatasets: Bool?

    public var disassociateDriver: Bool?

    public var disassociateEnvironmentVariables: Bool?

    public var disassociateForwardInfos: Bool?

    public var disassociateMigrationOptions: Bool?

    public var disassociateSpot: Bool?

    public var disassociateUserCommand: Bool?

    public var disassociateVpc: Bool?

    public var driver: String?

    public var dynamicMount: DynamicMount?

    public var ecsSpec: String?

    public var environmentVariables: [String: Any]?

    public var imageAuth: String?

    public var imageId: String?

    public var imageUrl: String?

    public var instanceName: String?

    public var migrationOptions: [String: Any]?

    public var oversoldType: String?

    public var priority: Int64?

    public var requestedResource: UpdateInstanceRequest.RequestedResource?

    public var spotSpec: UpdateInstanceRequest.SpotSpec?

    public var startInstance: Bool?

    public var userCommand: UpdateInstanceRequest.UserCommand?

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
        try self.assignNodeSpec?.validate()
        try self.credentialConfig?.validate()
        try self.dynamicMount?.validate()
        try self.requestedResource?.validate()
        try self.spotSpec?.validate()
        try self.userCommand?.validate()
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
        if self.assignNodeSpec != nil {
            map["AssignNodeSpec"] = self.assignNodeSpec?.toMap()
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
        if self.disassociateAssignNode != nil {
            map["DisassociateAssignNode"] = self.disassociateAssignNode!
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
        if self.disassociateEnvironmentVariables != nil {
            map["DisassociateEnvironmentVariables"] = self.disassociateEnvironmentVariables!
        }
        if self.disassociateForwardInfos != nil {
            map["DisassociateForwardInfos"] = self.disassociateForwardInfos!
        }
        if self.disassociateMigrationOptions != nil {
            map["DisassociateMigrationOptions"] = self.disassociateMigrationOptions!
        }
        if self.disassociateSpot != nil {
            map["DisassociateSpot"] = self.disassociateSpot!
        }
        if self.disassociateUserCommand != nil {
            map["DisassociateUserCommand"] = self.disassociateUserCommand!
        }
        if self.disassociateVpc != nil {
            map["DisassociateVpc"] = self.disassociateVpc!
        }
        if self.driver != nil {
            map["Driver"] = self.driver!
        }
        if self.dynamicMount != nil {
            map["DynamicMount"] = self.dynamicMount?.toMap()
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
        if self.migrationOptions != nil {
            map["MigrationOptions"] = self.migrationOptions!
        }
        if self.oversoldType != nil {
            map["OversoldType"] = self.oversoldType!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.requestedResource != nil {
            map["RequestedResource"] = self.requestedResource?.toMap()
        }
        if self.spotSpec != nil {
            map["SpotSpec"] = self.spotSpec?.toMap()
        }
        if self.startInstance != nil {
            map["StartInstance"] = self.startInstance!
        }
        if self.userCommand != nil {
            map["UserCommand"] = self.userCommand?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Affinity"] as? [String: Any?] {
            var model = UpdateInstanceRequest.Affinity()
            model.fromMap(value)
            self.affinity = model
        }
        if let value = dict["AssignNodeSpec"] as? [String: Any?] {
            var model = UpdateInstanceRequest.AssignNodeSpec()
            model.fromMap(value)
            self.assignNodeSpec = model
        }
        if let value = dict["CloudDisks"] as? [Any?] {
            var tmp : [UpdateInstanceRequest.CloudDisks] = []
            for v in value {
                if v != nil {
                    var model = UpdateInstanceRequest.CloudDisks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cloudDisks = tmp
        }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["Datasets"] as? [Any?] {
            var tmp : [UpdateInstanceRequest.Datasets] = []
            for v in value {
                if v != nil {
                    var model = UpdateInstanceRequest.Datasets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datasets = tmp
        }
        if let value = dict["DisassociateAssignNode"] as? Bool {
            self.disassociateAssignNode = value
        }
        if let value = dict["DisassociateCredential"] as? Bool {
            self.disassociateCredential = value
        }
        if let value = dict["DisassociateDatasets"] as? Bool {
            self.disassociateDatasets = value
        }
        if let value = dict["DisassociateDriver"] as? Bool {
            self.disassociateDriver = value
        }
        if let value = dict["DisassociateEnvironmentVariables"] as? Bool {
            self.disassociateEnvironmentVariables = value
        }
        if let value = dict["DisassociateForwardInfos"] as? Bool {
            self.disassociateForwardInfos = value
        }
        if let value = dict["DisassociateMigrationOptions"] as? Bool {
            self.disassociateMigrationOptions = value
        }
        if let value = dict["DisassociateSpot"] as? Bool {
            self.disassociateSpot = value
        }
        if let value = dict["DisassociateUserCommand"] as? Bool {
            self.disassociateUserCommand = value
        }
        if let value = dict["DisassociateVpc"] as? Bool {
            self.disassociateVpc = value
        }
        if let value = dict["Driver"] as? String {
            self.driver = value
        }
        if let value = dict["DynamicMount"] as? [String: Any?] {
            var model = DynamicMount()
            model.fromMap(value)
            self.dynamicMount = model
        }
        if let value = dict["EcsSpec"] as? String {
            self.ecsSpec = value
        }
        if let value = dict["EnvironmentVariables"] as? [String: Any] {
            self.environmentVariables = value
        }
        if let value = dict["ImageAuth"] as? String {
            self.imageAuth = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["MigrationOptions"] as? [String: Any] {
            self.migrationOptions = value
        }
        if let value = dict["OversoldType"] as? String {
            self.oversoldType = value
        }
        if let value = dict["Priority"] as? Int64 {
            self.priority = value
        }
        if let value = dict["RequestedResource"] as? [String: Any?] {
            var model = UpdateInstanceRequest.RequestedResource()
            model.fromMap(value)
            self.requestedResource = model
        }
        if let value = dict["SpotSpec"] as? [String: Any?] {
            var model = UpdateInstanceRequest.SpotSpec()
            model.fromMap(value)
            self.spotSpec = model
        }
        if let value = dict["StartInstance"] as? Bool {
            self.startInstance = value
        }
        if let value = dict["UserCommand"] as? [String: Any?] {
            var model = UpdateInstanceRequest.UserCommand()
            model.fromMap(value)
            self.userCommand = model
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = UpdateInstanceRequest.UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["WorkspaceSource"] as? String {
            self.workspaceSource = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [UpdateInstanceLabelsRequest.Labels] = []
            for v in value {
                if v != nil {
                    var model = UpdateInstanceLabelsRequest.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateInstanceLabelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
