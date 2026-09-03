import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AgenticFSVolumeConfig : Tea.TeaModel {
    public var groupID: Int32?

    public var serverAddr: String?

    public var userID: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupID != nil {
            map["groupID"] = self.groupID!
        }
        if self.serverAddr != nil {
            map["serverAddr"] = self.serverAddr!
        }
        if self.userID != nil {
            map["userID"] = self.userID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["groupID"] as? Int32 {
            self.groupID = value
        }
        if let value = dict["serverAddr"] as? String {
            self.serverAddr = value
        }
        if let value = dict["userID"] as? Int32 {
            self.userID = value
        }
    }
}

public class ApiKey : Tea.TeaModel {
    public var apiKeyID: String?

    public var apiKeyMask: String?

    public var apiKeyName: String?

    public var apiKeyValue: String?

    public var createdTime: String?

    public var expireTime: String?

    public var ipBlacklist: [IPConfig]?

    public var ipWhitelist: [IPConfig]?

    public var lastUsedTime: String?

    public var resourceGroupID: String?

    public var source: String?

    public var status: String?

    public var teamID: String?

    public var teamName: String?

    public var teamPlan: String?

    public var userID: String?

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
        if self.apiKeyID != nil {
            map["apiKeyID"] = self.apiKeyID!
        }
        if self.apiKeyMask != nil {
            map["apiKeyMask"] = self.apiKeyMask!
        }
        if self.apiKeyName != nil {
            map["apiKeyName"] = self.apiKeyName!
        }
        if self.apiKeyValue != nil {
            map["apiKeyValue"] = self.apiKeyValue!
        }
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.expireTime != nil {
            map["expireTime"] = self.expireTime!
        }
        if self.ipBlacklist != nil {
            var tmp : [Any] = []
            for k in self.ipBlacklist! {
                tmp.append(k.toMap())
            }
            map["ipBlacklist"] = tmp
        }
        if self.ipWhitelist != nil {
            var tmp : [Any] = []
            for k in self.ipWhitelist! {
                tmp.append(k.toMap())
            }
            map["ipWhitelist"] = tmp
        }
        if self.lastUsedTime != nil {
            map["lastUsedTime"] = self.lastUsedTime!
        }
        if self.resourceGroupID != nil {
            map["resourceGroupID"] = self.resourceGroupID!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        if self.teamName != nil {
            map["teamName"] = self.teamName!
        }
        if self.teamPlan != nil {
            map["teamPlan"] = self.teamPlan!
        }
        if self.userID != nil {
            map["userID"] = self.userID!
        }
        if self.username != nil {
            map["username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeyID"] as? String {
            self.apiKeyID = value
        }
        if let value = dict["apiKeyMask"] as? String {
            self.apiKeyMask = value
        }
        if let value = dict["apiKeyName"] as? String {
            self.apiKeyName = value
        }
        if let value = dict["apiKeyValue"] as? String {
            self.apiKeyValue = value
        }
        if let value = dict["createdTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["expireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["ipBlacklist"] as? [Any?] {
            var tmp : [IPConfig] = []
            for v in value {
                if v != nil {
                    var model = IPConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipBlacklist = tmp
        }
        if let value = dict["ipWhitelist"] as? [Any?] {
            var tmp : [IPConfig] = []
            for v in value {
                if v != nil {
                    var model = IPConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipWhitelist = tmp
        }
        if let value = dict["lastUsedTime"] as? String {
            self.lastUsedTime = value
        }
        if let value = dict["resourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
        if let value = dict["teamName"] as? String {
            self.teamName = value
        }
        if let value = dict["teamPlan"] as? String {
            self.teamPlan = value
        }
        if let value = dict["userID"] as? String {
            self.userID = value
        }
        if let value = dict["username"] as? String {
            self.username = value
        }
    }
}

public class CertConfig : Tea.TeaModel {
    public var certName: String?

    public var certificate: String?

    public var privateKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certName != nil {
            map["certName"] = self.certName!
        }
        if self.certificate != nil {
            map["certificate"] = self.certificate!
        }
        if self.privateKey != nil {
            map["privateKey"] = self.privateKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["certName"] as? String {
            self.certName = value
        }
        if let value = dict["certificate"] as? String {
            self.certificate = value
        }
        if let value = dict["privateKey"] as? String {
            self.privateKey = value
        }
    }
}

public class ContainerConfiguration : Tea.TeaModel {
    public class RegistryCredential : Tea.TeaModel {
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
            if self.password != nil {
                map["password"] = self.password!
            }
            if self.username != nil {
                map["username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["password"] as? String {
                self.password = value
            }
            if let value = dict["username"] as? String {
                self.username = value
            }
        }
    }
    public var acrInstanceId: String?

    public var image: String?

    public var registryCredential: ContainerConfiguration.RegistryCredential?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.registryCredential?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acrInstanceId != nil {
            map["acrInstanceId"] = self.acrInstanceId!
        }
        if self.image != nil {
            map["image"] = self.image!
        }
        if self.registryCredential != nil {
            map["registryCredential"] = self.registryCredential?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acrInstanceId"] as? String {
            self.acrInstanceId = value
        }
        if let value = dict["image"] as? String {
            self.image = value
        }
        if let value = dict["registryCredential"] as? [String: Any?] {
            var model = ContainerConfiguration.RegistryCredential()
            model.fromMap(value)
            self.registryCredential = model
        }
    }
}

public class CreateApiKeyInput : Tea.TeaModel {
    public var apiKeyName: String?

    public var expireTime: String?

    public var ipBlacklist: [IPConfig]?

    public var ipWhitelist: [IPConfig]?

    public var teamID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKeyName != nil {
            map["apiKeyName"] = self.apiKeyName!
        }
        if self.expireTime != nil {
            map["expireTime"] = self.expireTime!
        }
        if self.ipBlacklist != nil {
            var tmp : [Any] = []
            for k in self.ipBlacklist! {
                tmp.append(k.toMap())
            }
            map["ipBlacklist"] = tmp
        }
        if self.ipWhitelist != nil {
            var tmp : [Any] = []
            for k in self.ipWhitelist! {
                tmp.append(k.toMap())
            }
            map["ipWhitelist"] = tmp
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeyName"] as? String {
            self.apiKeyName = value
        }
        if let value = dict["expireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["ipBlacklist"] as? [Any?] {
            var tmp : [IPConfig] = []
            for v in value {
                if v != nil {
                    var model = IPConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipBlacklist = tmp
        }
        if let value = dict["ipWhitelist"] as? [Any?] {
            var tmp : [IPConfig] = []
            for v in value {
                if v != nil {
                    var model = IPConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipWhitelist = tmp
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
    }
}

public class CreateCustomDomainInput : Tea.TeaModel {
    public var certConfig: CertConfig?

    public var description_: String?

    public var domainName: String?

    public var tlsConfig: TLSConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certConfig?.validate()
        try self.tlsConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certConfig != nil {
            map["certConfig"] = self.certConfig?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domainName != nil {
            map["domainName"] = self.domainName!
        }
        if self.tlsConfig != nil {
            map["tlsConfig"] = self.tlsConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["certConfig"] as? [String: Any?] {
            var model = CertConfig()
            model.fromMap(value)
            self.certConfig = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["domainName"] as? String {
            self.domainName = value
        }
        if let value = dict["tlsConfig"] as? [String: Any?] {
            var model = TLSConfig()
            model.fromMap(value)
            self.tlsConfig = model
        }
    }
}

public class CreateTeamInput : Tea.TeaModel {
    public var description_: String?

    public var plan: String?

    public var resourceGroupID: String?

    public var teamName: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.plan != nil {
            map["plan"] = self.plan!
        }
        if self.resourceGroupID != nil {
            map["resourceGroupID"] = self.resourceGroupID!
        }
        if self.teamName != nil {
            map["teamName"] = self.teamName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["plan"] as? String {
            self.plan = value
        }
        if let value = dict["resourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["teamName"] as? String {
            self.teamName = value
        }
    }
}

public class CreateTemplateBuildConfig : Tea.TeaModel {
    public var copy: CreateTemplateCopyAction?

    public var envdInject: CreateTemplateEnvdInjectAction?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.copy?.validate()
        try self.envdInject?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.copy != nil {
            map["copy"] = self.copy?.toMap()
        }
        if self.envdInject != nil {
            map["envdInject"] = self.envdInject?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["copy"] as? [String: Any?] {
            var model = CreateTemplateCopyAction()
            model.fromMap(value)
            self.copy = model
        }
        if let value = dict["envdInject"] as? [String: Any?] {
            var model = CreateTemplateEnvdInjectAction()
            model.fromMap(value)
            self.envdInject = model
        }
    }
}

public class CreateTemplateCopyAction : Tea.TeaModel {
    public var acrInstanceId: String?

    public var enabled: Bool?

    public var image: String?

    public var registryConfig: CreateTemplateRegistryConfig?

    public var registryType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.registryConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acrInstanceId != nil {
            map["acrInstanceId"] = self.acrInstanceId!
        }
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.image != nil {
            map["image"] = self.image!
        }
        if self.registryConfig != nil {
            map["registryConfig"] = self.registryConfig?.toMap()
        }
        if self.registryType != nil {
            map["registryType"] = self.registryType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acrInstanceId"] as? String {
            self.acrInstanceId = value
        }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["image"] as? String {
            self.image = value
        }
        if let value = dict["registryConfig"] as? [String: Any?] {
            var model = CreateTemplateRegistryConfig()
            model.fromMap(value)
            self.registryConfig = model
        }
        if let value = dict["registryType"] as? String {
            self.registryType = value
        }
    }
}

public class CreateTemplateEnvdInjectAction : Tea.TeaModel {
    public var enabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
    }
}

public class CreateTemplateInput : Tea.TeaModel {
    public var buildConfig: CreateTemplateBuildConfig?

    public var name: String?

    public var runtimeConfig: CreateTemplateRuntimeConfig?

    public var teamID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.buildConfig?.validate()
        try self.runtimeConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildConfig != nil {
            map["buildConfig"] = self.buildConfig?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.runtimeConfig != nil {
            map["runtimeConfig"] = self.runtimeConfig?.toMap()
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["buildConfig"] as? [String: Any?] {
            var model = CreateTemplateBuildConfig()
            model.fromMap(value)
            self.buildConfig = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["runtimeConfig"] as? [String: Any?] {
            var model = CreateTemplateRuntimeConfig()
            model.fromMap(value)
            self.runtimeConfig = model
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
    }
}

public class CreateTemplateLogConfig : Tea.TeaModel {
    public var logstore: String?

    public var project: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.project != nil {
            map["project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["project"] as? String {
            self.project = value
        }
    }
}

public class CreateTemplateRegistryAuthConfig : Tea.TeaModel {
    public var password: String?

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
            map["password"] = self.password!
        }
        if self.userName != nil {
            map["userName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["password"] as? String {
            self.password = value
        }
        if let value = dict["userName"] as? String {
            self.userName = value
        }
    }
}

public class CreateTemplateRegistryCertConfig : Tea.TeaModel {
    public var insecure: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.insecure != nil {
            map["insecure"] = self.insecure!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["insecure"] as? Bool {
            self.insecure = value
        }
    }
}

public class CreateTemplateRegistryConfig : Tea.TeaModel {
    public var authConfig: CreateTemplateRegistryAuthConfig?

    public var certConfig: CreateTemplateRegistryCertConfig?

    public var networkConfig: CreateTemplateRegistryNetworkConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authConfig?.validate()
        try self.certConfig?.validate()
        try self.networkConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authConfig != nil {
            map["authConfig"] = self.authConfig?.toMap()
        }
        if self.certConfig != nil {
            map["certConfig"] = self.certConfig?.toMap()
        }
        if self.networkConfig != nil {
            map["networkConfig"] = self.networkConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authConfig"] as? [String: Any?] {
            var model = CreateTemplateRegistryAuthConfig()
            model.fromMap(value)
            self.authConfig = model
        }
        if let value = dict["certConfig"] as? [String: Any?] {
            var model = CreateTemplateRegistryCertConfig()
            model.fromMap(value)
            self.certConfig = model
        }
        if let value = dict["networkConfig"] as? [String: Any?] {
            var model = CreateTemplateRegistryNetworkConfig()
            model.fromMap(value)
            self.networkConfig = model
        }
    }
}

public class CreateTemplateRegistryNetworkConfig : Tea.TeaModel {
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
        if self.securityGroupId != nil {
            map["securityGroupId"] = self.securityGroupId!
        }
        if self.vSwitchId != nil {
            map["vSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["securityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["vSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class CreateTemplateRuntimeConfig : Tea.TeaModel {
    public var cpu: Double?

    public var diskSize: Int32?

    public var internetAccess: Bool?

    public var logConfig: CreateTemplateLogConfig?

    public var memorySize: Int32?

    public var sandboxConfig: CreateTemplateSandboxConfig?

    public var vpcConfig: CreateTemplateVPCConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.logConfig?.validate()
        try self.sandboxConfig?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.diskSize != nil {
            map["diskSize"] = self.diskSize!
        }
        if self.internetAccess != nil {
            map["internetAccess"] = self.internetAccess!
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.sandboxConfig != nil {
            map["sandboxConfig"] = self.sandboxConfig?.toMap()
        }
        if self.vpcConfig != nil {
            map["vpcConfig"] = self.vpcConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["diskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["internetAccess"] as? Bool {
            self.internetAccess = value
        }
        if let value = dict["logConfig"] as? [String: Any?] {
            var model = CreateTemplateLogConfig()
            model.fromMap(value)
            self.logConfig = model
        }
        if let value = dict["memorySize"] as? Int32 {
            self.memorySize = value
        }
        if let value = dict["sandboxConfig"] as? [String: Any?] {
            var model = CreateTemplateSandboxConfig()
            model.fromMap(value)
            self.sandboxConfig = model
        }
        if let value = dict["vpcConfig"] as? [String: Any?] {
            var model = CreateTemplateVPCConfig()
            model.fromMap(value)
            self.vpcConfig = model
        }
    }
}

public class CreateTemplateSandboxConfig : Tea.TeaModel {
    public var acrInstanceId: String?

    public var generation: Int32?

    public var image: String?

    public var osType: String?

    public var readyCommand: String?

    public var registryConfig: CreateTemplateRegistryConfig?

    public var registryType: String?

    public var startCommand: String?

    public var steps: [CreateTemplateStep]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.registryConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acrInstanceId != nil {
            map["acrInstanceId"] = self.acrInstanceId!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.image != nil {
            map["image"] = self.image!
        }
        if self.osType != nil {
            map["osType"] = self.osType!
        }
        if self.readyCommand != nil {
            map["readyCommand"] = self.readyCommand!
        }
        if self.registryConfig != nil {
            map["registryConfig"] = self.registryConfig?.toMap()
        }
        if self.registryType != nil {
            map["registryType"] = self.registryType!
        }
        if self.startCommand != nil {
            map["startCommand"] = self.startCommand!
        }
        if self.steps != nil {
            var tmp : [Any] = []
            for k in self.steps! {
                tmp.append(k.toMap())
            }
            map["steps"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acrInstanceId"] as? String {
            self.acrInstanceId = value
        }
        if let value = dict["generation"] as? Int32 {
            self.generation = value
        }
        if let value = dict["image"] as? String {
            self.image = value
        }
        if let value = dict["osType"] as? String {
            self.osType = value
        }
        if let value = dict["readyCommand"] as? String {
            self.readyCommand = value
        }
        if let value = dict["registryConfig"] as? [String: Any?] {
            var model = CreateTemplateRegistryConfig()
            model.fromMap(value)
            self.registryConfig = model
        }
        if let value = dict["registryType"] as? String {
            self.registryType = value
        }
        if let value = dict["startCommand"] as? String {
            self.startCommand = value
        }
        if let value = dict["steps"] as? [Any?] {
            var tmp : [CreateTemplateStep] = []
            for v in value {
                if v != nil {
                    var model = CreateTemplateStep()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.steps = tmp
        }
    }
}

public class CreateTemplateStep : Tea.TeaModel {
    public var args: [String]?

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
        if self.args != nil {
            map["args"] = self.args!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["args"] as? [String] {
            self.args = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateTemplateVPCConfig : Tea.TeaModel {
    public var role: String?

    public var securityGroupId: String?

    public var vSwitchIds: [String]?

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
        if self.role != nil {
            map["role"] = self.role!
        }
        if self.securityGroupId != nil {
            map["securityGroupId"] = self.securityGroupId!
        }
        if self.vSwitchIds != nil {
            map["vSwitchIds"] = self.vSwitchIds!
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["role"] as? String {
            self.role = value
        }
        if let value = dict["securityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["vSwitchIds"] as? [String] {
            self.vSwitchIds = value
        }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class CreateVolumeInput : Tea.TeaModel {
    public class MountConfig : Tea.TeaModel {
        public class VpcConfig : Tea.TeaModel {
            public var securityGroupId: String?

            public var vSwitchIds: [String]?

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
                if self.securityGroupId != nil {
                    map["securityGroupId"] = self.securityGroupId!
                }
                if self.vSwitchIds != nil {
                    map["vSwitchIds"] = self.vSwitchIds!
                }
                if self.vpcId != nil {
                    map["vpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["securityGroupId"] as? String {
                    self.securityGroupId = value
                }
                if let value = dict["vSwitchIds"] as? [String] {
                    self.vSwitchIds = value
                }
                if let value = dict["vpcId"] as? String {
                    self.vpcId = value
                }
            }
        }
        public var role: String?

        public var vpcConfig: CreateVolumeInput.MountConfig.VpcConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.vpcConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.role != nil {
                map["role"] = self.role!
            }
            if self.vpcConfig != nil {
                map["vpcConfig"] = self.vpcConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["role"] as? String {
                self.role = value
            }
            if let value = dict["vpcConfig"] as? [String: Any?] {
                var model = CreateVolumeInput.MountConfig.VpcConfig()
                model.fromMap(value)
                self.vpcConfig = model
            }
        }
    }
    public var agenticFSVolumeConfig: AgenticFSVolumeConfig?

    public var mountConfig: CreateVolumeInput.MountConfig?

    public var ossVolumeConfig: OSSVolumeConfig?

    public var teamID: String?

    public var volumeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.agenticFSVolumeConfig?.validate()
        try self.mountConfig?.validate()
        try self.ossVolumeConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agenticFSVolumeConfig != nil {
            map["agenticFSVolumeConfig"] = self.agenticFSVolumeConfig?.toMap()
        }
        if self.mountConfig != nil {
            map["mountConfig"] = self.mountConfig?.toMap()
        }
        if self.ossVolumeConfig != nil {
            map["ossVolumeConfig"] = self.ossVolumeConfig?.toMap()
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        if self.volumeName != nil {
            map["volumeName"] = self.volumeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agenticFSVolumeConfig"] as? [String: Any?] {
            var model = AgenticFSVolumeConfig()
            model.fromMap(value)
            self.agenticFSVolumeConfig = model
        }
        if let value = dict["mountConfig"] as? [String: Any?] {
            var model = CreateVolumeInput.MountConfig()
            model.fromMap(value)
            self.mountConfig = model
        }
        if let value = dict["ossVolumeConfig"] as? [String: Any?] {
            var model = OSSVolumeConfig()
            model.fromMap(value)
            self.ossVolumeConfig = model
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
        if let value = dict["volumeName"] as? String {
            self.volumeName = value
        }
    }
}

public class CustomDomainResp : Tea.TeaModel {
    public var certConfig: CertConfig?

    public var createdAt: Int64?

    public var description_: String?

    public var domainName: String?

    public var tlsConfig: TLSConfig?

    public var updatedAt: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certConfig?.validate()
        try self.tlsConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certConfig != nil {
            map["certConfig"] = self.certConfig?.toMap()
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domainName != nil {
            map["domainName"] = self.domainName!
        }
        if self.tlsConfig != nil {
            map["tlsConfig"] = self.tlsConfig?.toMap()
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["certConfig"] as? [String: Any?] {
            var model = CertConfig()
            model.fromMap(value)
            self.certConfig = model
        }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["domainName"] as? String {
            self.domainName = value
        }
        if let value = dict["tlsConfig"] as? [String: Any?] {
            var model = TLSConfig()
            model.fromMap(value)
            self.tlsConfig = model
        }
        if let value = dict["updatedAt"] as? Int64 {
            self.updatedAt = value
        }
    }
}

public class E2BLifecycle : Tea.TeaModel {
    public var autoResume: Bool?

    public var onTimeout: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoResume != nil {
            map["autoResume"] = self.autoResume!
        }
        if self.onTimeout != nil {
            map["onTimeout"] = self.onTimeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoResume"] as? Bool {
            self.autoResume = value
        }
        if let value = dict["onTimeout"] as? String {
            self.onTimeout = value
        }
    }
}

public class E2BListedSandbox : Tea.TeaModel {
    public var cpuCount: Int32?

    public var diskSizeMB: Int32?

    public var endAt: String?

    public var memoryMB: Int32?

    public var metadata: [String: String]?

    public var resourceGroupID: String?

    public var sandboxID: String?

    public var startedAt: String?

    public var state: String?

    public var teamID: String?

    public var teamName: String?

    public var teamPlan: String?

    public var templateID: String?

    public var templateName: String?

    public var userID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cpuCount != nil {
            map["cpuCount"] = self.cpuCount!
        }
        if self.diskSizeMB != nil {
            map["diskSizeMB"] = self.diskSizeMB!
        }
        if self.endAt != nil {
            map["endAt"] = self.endAt!
        }
        if self.memoryMB != nil {
            map["memoryMB"] = self.memoryMB!
        }
        if self.metadata != nil {
            map["metadata"] = self.metadata!
        }
        if self.resourceGroupID != nil {
            map["resourceGroupID"] = self.resourceGroupID!
        }
        if self.sandboxID != nil {
            map["sandboxID"] = self.sandboxID!
        }
        if self.startedAt != nil {
            map["startedAt"] = self.startedAt!
        }
        if self.state != nil {
            map["state"] = self.state!
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        if self.teamName != nil {
            map["teamName"] = self.teamName!
        }
        if self.teamPlan != nil {
            map["teamPlan"] = self.teamPlan!
        }
        if self.templateID != nil {
            map["templateID"] = self.templateID!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.userID != nil {
            map["userID"] = self.userID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cpuCount"] as? Int32 {
            self.cpuCount = value
        }
        if let value = dict["diskSizeMB"] as? Int32 {
            self.diskSizeMB = value
        }
        if let value = dict["endAt"] as? String {
            self.endAt = value
        }
        if let value = dict["memoryMB"] as? Int32 {
            self.memoryMB = value
        }
        if let value = dict["metadata"] as? [String: String] {
            self.metadata = value
        }
        if let value = dict["resourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["sandboxID"] as? String {
            self.sandboxID = value
        }
        if let value = dict["startedAt"] as? String {
            self.startedAt = value
        }
        if let value = dict["state"] as? String {
            self.state = value
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
        if let value = dict["teamName"] as? String {
            self.teamName = value
        }
        if let value = dict["teamPlan"] as? String {
            self.teamPlan = value
        }
        if let value = dict["templateID"] as? String {
            self.templateID = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["userID"] as? String {
            self.userID = value
        }
    }
}

public class E2BListedTemplate : Tea.TeaModel {
    public var buildStatus: String?

    public var category: String?

    public var containerConfiguration: ContainerConfiguration?

    public var cpuCount: Int32?

    public var createdAt: String?

    public var functionName: String?

    public var logConfiguration: LogConfiguration?

    public var memoryMB: Int32?

    public var names: [String]?

    public var public_: Bool?

    public var resourceGroupID: String?

    public var statusReason: String?

    public var tags: [E2BTemplateTag]?

    public var teamID: String?

    public var teamName: String?

    public var teamPlan: String?

    public var templateID: String?

    public var updatedAt: String?

    public var userID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.containerConfiguration?.validate()
        try self.logConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildStatus != nil {
            map["buildStatus"] = self.buildStatus!
        }
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.containerConfiguration != nil {
            map["containerConfiguration"] = self.containerConfiguration?.toMap()
        }
        if self.cpuCount != nil {
            map["cpuCount"] = self.cpuCount!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.logConfiguration != nil {
            map["logConfiguration"] = self.logConfiguration?.toMap()
        }
        if self.memoryMB != nil {
            map["memoryMB"] = self.memoryMB!
        }
        if self.names != nil {
            map["names"] = self.names!
        }
        if self.public_ != nil {
            map["public"] = self.public_!
        }
        if self.resourceGroupID != nil {
            map["resourceGroupID"] = self.resourceGroupID!
        }
        if self.statusReason != nil {
            map["statusReason"] = self.statusReason!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        if self.teamName != nil {
            map["teamName"] = self.teamName!
        }
        if self.teamPlan != nil {
            map["teamPlan"] = self.teamPlan!
        }
        if self.templateID != nil {
            map["templateID"] = self.templateID!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        if self.userID != nil {
            map["userID"] = self.userID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["buildStatus"] as? String {
            self.buildStatus = value
        }
        if let value = dict["category"] as? String {
            self.category = value
        }
        if let value = dict["containerConfiguration"] as? [String: Any?] {
            var model = ContainerConfiguration()
            model.fromMap(value)
            self.containerConfiguration = model
        }
        if let value = dict["cpuCount"] as? Int32 {
            self.cpuCount = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["logConfiguration"] as? [String: Any?] {
            var model = LogConfiguration()
            model.fromMap(value)
            self.logConfiguration = model
        }
        if let value = dict["memoryMB"] as? Int32 {
            self.memoryMB = value
        }
        if let value = dict["names"] as? [String] {
            self.names = value
        }
        if let value = dict["public"] as? Bool {
            self.public_ = value
        }
        if let value = dict["resourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["statusReason"] as? String {
            self.statusReason = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [E2BTemplateTag] = []
            for v in value {
                if v != nil {
                    var model = E2BTemplateTag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
        if let value = dict["teamName"] as? String {
            self.teamName = value
        }
        if let value = dict["teamPlan"] as? String {
            self.teamPlan = value
        }
        if let value = dict["templateID"] as? String {
            self.templateID = value
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
        }
        if let value = dict["userID"] as? String {
            self.userID = value
        }
    }
}

public class E2BNetwork : Tea.TeaModel {
    public var allowOut: [String]?

    public var allowPublicTraffic: Bool?

    public var denyOut: [String]?

    public var maskRequestHost: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowOut != nil {
            map["allowOut"] = self.allowOut!
        }
        if self.allowPublicTraffic != nil {
            map["allowPublicTraffic"] = self.allowPublicTraffic!
        }
        if self.denyOut != nil {
            map["denyOut"] = self.denyOut!
        }
        if self.maskRequestHost != nil {
            map["maskRequestHost"] = self.maskRequestHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["allowOut"] as? [String] {
            self.allowOut = value
        }
        if let value = dict["allowPublicTraffic"] as? Bool {
            self.allowPublicTraffic = value
        }
        if let value = dict["denyOut"] as? [String] {
            self.denyOut = value
        }
        if let value = dict["maskRequestHost"] as? String {
            self.maskRequestHost = value
        }
    }
}

public class E2BSandbox : Tea.TeaModel {
    public var accessEndpoint: String?

    public var cpuCount: Int32?

    public var diskSizeMB: Int32?

    public var domain: String?

    public var endAt: String?

    public var fcFunctionName: String?

    public var fcInstanceID: String?

    public var fcSessionID: String?

    public var memoryMB: Int32?

    public var metadata: [String: String]?

    public var resourceGroupID: String?

    public var sandboxID: String?

    public var startedAt: String?

    public var state: String?

    public var teamID: String?

    public var teamName: String?

    public var teamPlan: String?

    public var templateID: String?

    public var templateName: String?

    public var userID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessEndpoint != nil {
            map["accessEndpoint"] = self.accessEndpoint!
        }
        if self.cpuCount != nil {
            map["cpuCount"] = self.cpuCount!
        }
        if self.diskSizeMB != nil {
            map["diskSizeMB"] = self.diskSizeMB!
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.endAt != nil {
            map["endAt"] = self.endAt!
        }
        if self.fcFunctionName != nil {
            map["fcFunctionName"] = self.fcFunctionName!
        }
        if self.fcInstanceID != nil {
            map["fcInstanceID"] = self.fcInstanceID!
        }
        if self.fcSessionID != nil {
            map["fcSessionID"] = self.fcSessionID!
        }
        if self.memoryMB != nil {
            map["memoryMB"] = self.memoryMB!
        }
        if self.metadata != nil {
            map["metadata"] = self.metadata!
        }
        if self.resourceGroupID != nil {
            map["resourceGroupID"] = self.resourceGroupID!
        }
        if self.sandboxID != nil {
            map["sandboxID"] = self.sandboxID!
        }
        if self.startedAt != nil {
            map["startedAt"] = self.startedAt!
        }
        if self.state != nil {
            map["state"] = self.state!
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        if self.teamName != nil {
            map["teamName"] = self.teamName!
        }
        if self.teamPlan != nil {
            map["teamPlan"] = self.teamPlan!
        }
        if self.templateID != nil {
            map["templateID"] = self.templateID!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.userID != nil {
            map["userID"] = self.userID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessEndpoint"] as? String {
            self.accessEndpoint = value
        }
        if let value = dict["cpuCount"] as? Int32 {
            self.cpuCount = value
        }
        if let value = dict["diskSizeMB"] as? Int32 {
            self.diskSizeMB = value
        }
        if let value = dict["domain"] as? String {
            self.domain = value
        }
        if let value = dict["endAt"] as? String {
            self.endAt = value
        }
        if let value = dict["fcFunctionName"] as? String {
            self.fcFunctionName = value
        }
        if let value = dict["fcInstanceID"] as? String {
            self.fcInstanceID = value
        }
        if let value = dict["fcSessionID"] as? String {
            self.fcSessionID = value
        }
        if let value = dict["memoryMB"] as? Int32 {
            self.memoryMB = value
        }
        if let value = dict["metadata"] as? [String: String] {
            self.metadata = value
        }
        if let value = dict["resourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["sandboxID"] as? String {
            self.sandboxID = value
        }
        if let value = dict["startedAt"] as? String {
            self.startedAt = value
        }
        if let value = dict["state"] as? String {
            self.state = value
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
        if let value = dict["teamName"] as? String {
            self.teamName = value
        }
        if let value = dict["teamPlan"] as? String {
            self.teamPlan = value
        }
        if let value = dict["templateID"] as? String {
            self.templateID = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["userID"] as? String {
            self.userID = value
        }
    }
}

public class E2BTeam : Tea.TeaModel {
    public var allowUpdateTeamName: Bool?

    public var createdTime: String?

    public var description_: String?

    public var plan: String?

    public var readOnly: Bool?

    public var resourceGroupID: String?

    public var status: String?

    public var teamID: String?

    public var teamName: String?

    public var userID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowUpdateTeamName != nil {
            map["allowUpdateTeamName"] = self.allowUpdateTeamName!
        }
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.plan != nil {
            map["plan"] = self.plan!
        }
        if self.readOnly != nil {
            map["readOnly"] = self.readOnly!
        }
        if self.resourceGroupID != nil {
            map["resourceGroupID"] = self.resourceGroupID!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        if self.teamName != nil {
            map["teamName"] = self.teamName!
        }
        if self.userID != nil {
            map["userID"] = self.userID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["allowUpdateTeamName"] as? Bool {
            self.allowUpdateTeamName = value
        }
        if let value = dict["createdTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["plan"] as? String {
            self.plan = value
        }
        if let value = dict["readOnly"] as? Bool {
            self.readOnly = value
        }
        if let value = dict["resourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
        if let value = dict["teamName"] as? String {
            self.teamName = value
        }
        if let value = dict["userID"] as? String {
            self.userID = value
        }
    }
}

public class E2BTemplate : Tea.TeaModel {
    public var buildStatus: String?

    public var category: String?

    public var containerConfiguration: ContainerConfiguration?

    public var cpuCount: Int32?

    public var createdAt: String?

    public var logConfiguration: LogConfiguration?

    public var memoryMB: Int32?

    public var names: [String]?

    public var networkConfiguration: NetworkConfiguration?

    public var public_: Bool?

    public var resourceGroupID: String?

    public var statusReason: String?

    public var tags: [E2BTemplateTag]?

    public var teamID: String?

    public var teamName: String?

    public var teamPlan: String?

    public var templateID: String?

    public var updatedAt: String?

    public var userID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.containerConfiguration?.validate()
        try self.logConfiguration?.validate()
        try self.networkConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildStatus != nil {
            map["buildStatus"] = self.buildStatus!
        }
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.containerConfiguration != nil {
            map["containerConfiguration"] = self.containerConfiguration?.toMap()
        }
        if self.cpuCount != nil {
            map["cpuCount"] = self.cpuCount!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.logConfiguration != nil {
            map["logConfiguration"] = self.logConfiguration?.toMap()
        }
        if self.memoryMB != nil {
            map["memoryMB"] = self.memoryMB!
        }
        if self.names != nil {
            map["names"] = self.names!
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.public_ != nil {
            map["public"] = self.public_!
        }
        if self.resourceGroupID != nil {
            map["resourceGroupID"] = self.resourceGroupID!
        }
        if self.statusReason != nil {
            map["statusReason"] = self.statusReason!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        if self.teamName != nil {
            map["teamName"] = self.teamName!
        }
        if self.teamPlan != nil {
            map["teamPlan"] = self.teamPlan!
        }
        if self.templateID != nil {
            map["templateID"] = self.templateID!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        if self.userID != nil {
            map["userID"] = self.userID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["buildStatus"] as? String {
            self.buildStatus = value
        }
        if let value = dict["category"] as? String {
            self.category = value
        }
        if let value = dict["containerConfiguration"] as? [String: Any?] {
            var model = ContainerConfiguration()
            model.fromMap(value)
            self.containerConfiguration = model
        }
        if let value = dict["cpuCount"] as? Int32 {
            self.cpuCount = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["logConfiguration"] as? [String: Any?] {
            var model = LogConfiguration()
            model.fromMap(value)
            self.logConfiguration = model
        }
        if let value = dict["memoryMB"] as? Int32 {
            self.memoryMB = value
        }
        if let value = dict["names"] as? [String] {
            self.names = value
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["public"] as? Bool {
            self.public_ = value
        }
        if let value = dict["resourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["statusReason"] as? String {
            self.statusReason = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [E2BTemplateTag] = []
            for v in value {
                if v != nil {
                    var model = E2BTemplateTag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
        if let value = dict["teamName"] as? String {
            self.teamName = value
        }
        if let value = dict["teamPlan"] as? String {
            self.teamPlan = value
        }
        if let value = dict["templateID"] as? String {
            self.templateID = value
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
        }
        if let value = dict["userID"] as? String {
            self.userID = value
        }
    }
}

public class E2BTemplateBuild : Tea.TeaModel {
    public var buildID: String?

    public var cpuCount: Int32?

    public var createdAt: String?

    public var diskSizeMB: Int32?

    public var envdVersion: String?

    public var finishedAt: String?

    public var memoryMB: Int32?

    public var status: String?

    public var updatedAt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildID != nil {
            map["buildID"] = self.buildID!
        }
        if self.cpuCount != nil {
            map["cpuCount"] = self.cpuCount!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.diskSizeMB != nil {
            map["diskSizeMB"] = self.diskSizeMB!
        }
        if self.envdVersion != nil {
            map["envdVersion"] = self.envdVersion!
        }
        if self.finishedAt != nil {
            map["finishedAt"] = self.finishedAt!
        }
        if self.memoryMB != nil {
            map["memoryMB"] = self.memoryMB!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["buildID"] as? String {
            self.buildID = value
        }
        if let value = dict["cpuCount"] as? Int32 {
            self.cpuCount = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["diskSizeMB"] as? Int32 {
            self.diskSizeMB = value
        }
        if let value = dict["envdVersion"] as? String {
            self.envdVersion = value
        }
        if let value = dict["finishedAt"] as? String {
            self.finishedAt = value
        }
        if let value = dict["memoryMB"] as? Int32 {
            self.memoryMB = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
        }
    }
}

public class E2BTemplateTag : Tea.TeaModel {
    public var buildID: String?

    public var createdAt: String?

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
        if self.buildID != nil {
            map["buildID"] = self.buildID!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.tag != nil {
            map["tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["buildID"] as? String {
            self.buildID = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["tag"] as? String {
            self.tag = value
        }
    }
}

public class E2BVolume : Tea.TeaModel {
    public class MountConfig : Tea.TeaModel {
        public class VpcConfig : Tea.TeaModel {
            public var securityGroupId: String?

            public var vSwitchIds: [String]?

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
                if self.securityGroupId != nil {
                    map["securityGroupId"] = self.securityGroupId!
                }
                if self.vSwitchIds != nil {
                    map["vSwitchIds"] = self.vSwitchIds!
                }
                if self.vpcId != nil {
                    map["vpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["securityGroupId"] as? String {
                    self.securityGroupId = value
                }
                if let value = dict["vSwitchIds"] as? [String] {
                    self.vSwitchIds = value
                }
                if let value = dict["vpcId"] as? String {
                    self.vpcId = value
                }
            }
        }
        public var role: String?

        public var vpcConfig: E2BVolume.MountConfig.VpcConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.vpcConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.role != nil {
                map["role"] = self.role!
            }
            if self.vpcConfig != nil {
                map["vpcConfig"] = self.vpcConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["role"] as? String {
                self.role = value
            }
            if let value = dict["vpcConfig"] as? [String: Any?] {
                var model = E2BVolume.MountConfig.VpcConfig()
                model.fromMap(value)
                self.vpcConfig = model
            }
        }
    }
    public var agenticFSVolumeConfig: AgenticFSVolumeConfig?

    public var createdAt: String?

    public var mountConfig: E2BVolume.MountConfig?

    public var ossVolumeConfig: OSSVolumeConfig?

    public var resourceGroupID: String?

    public var status: String?

    public var statusReason: String?

    public var storageClass: String?

    public var teamID: String?

    public var updatedAt: String?

    public var userID: String?

    public var volumeID: String?

    public var volumeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.agenticFSVolumeConfig?.validate()
        try self.mountConfig?.validate()
        try self.ossVolumeConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agenticFSVolumeConfig != nil {
            map["agenticFSVolumeConfig"] = self.agenticFSVolumeConfig?.toMap()
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.mountConfig != nil {
            map["mountConfig"] = self.mountConfig?.toMap()
        }
        if self.ossVolumeConfig != nil {
            map["ossVolumeConfig"] = self.ossVolumeConfig?.toMap()
        }
        if self.resourceGroupID != nil {
            map["resourceGroupID"] = self.resourceGroupID!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.statusReason != nil {
            map["statusReason"] = self.statusReason!
        }
        if self.storageClass != nil {
            map["storageClass"] = self.storageClass!
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        if self.userID != nil {
            map["userID"] = self.userID!
        }
        if self.volumeID != nil {
            map["volumeID"] = self.volumeID!
        }
        if self.volumeName != nil {
            map["volumeName"] = self.volumeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agenticFSVolumeConfig"] as? [String: Any?] {
            var model = AgenticFSVolumeConfig()
            model.fromMap(value)
            self.agenticFSVolumeConfig = model
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["mountConfig"] as? [String: Any?] {
            var model = E2BVolume.MountConfig()
            model.fromMap(value)
            self.mountConfig = model
        }
        if let value = dict["ossVolumeConfig"] as? [String: Any?] {
            var model = OSSVolumeConfig()
            model.fromMap(value)
            self.ossVolumeConfig = model
        }
        if let value = dict["resourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["statusReason"] as? String {
            self.statusReason = value
        }
        if let value = dict["storageClass"] as? String {
            self.storageClass = value
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
        }
        if let value = dict["userID"] as? String {
            self.userID = value
        }
        if let value = dict["volumeID"] as? String {
            self.volumeID = value
        }
        if let value = dict["volumeName"] as? String {
            self.volumeName = value
        }
    }
}

public class E2BVolumeMount : Tea.TeaModel {
    public var name: String?

    public var path: String?

    public override init() {
        super.init()
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
            map["name"] = self.name!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
    }
}

public class EffectivePermissions : Tea.TeaModel {
    public var actions: [String]?

    public var capabilities: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actions != nil {
            map["actions"] = self.actions!
        }
        if self.capabilities != nil {
            map["capabilities"] = self.capabilities!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["actions"] as? [String] {
            self.actions = value
        }
        if let value = dict["capabilities"] as? [String] {
            self.capabilities = value
        }
    }
}

public class IPConfig : Tea.TeaModel {
    public var description_: String?

    public var ipAddress: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.ipAddress != nil {
            map["ipAddress"] = self.ipAddress!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["ipAddress"] as? String {
            self.ipAddress = value
        }
    }
}

public class ImportApiKeyInput : Tea.TeaModel {
    public var apiKeyName: String?

    public var apiKeyValue: String?

    public var expireTime: String?

    public var teamID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKeyName != nil {
            map["apiKeyName"] = self.apiKeyName!
        }
        if self.apiKeyValue != nil {
            map["apiKeyValue"] = self.apiKeyValue!
        }
        if self.expireTime != nil {
            map["expireTime"] = self.expireTime!
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeyName"] as? String {
            self.apiKeyName = value
        }
        if let value = dict["apiKeyValue"] as? String {
            self.apiKeyValue = value
        }
        if let value = dict["expireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
    }
}

public class LogConfiguration : Tea.TeaModel {
    public var logstore: String?

    public var project: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.project != nil {
            map["project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["project"] as? String {
            self.project = value
        }
    }
}

public class NetworkConfiguration : Tea.TeaModel {
    public var networkMode: String?

    public var securityGroupID: String?

    public var vpcID: String?

    public var vswitchIDs: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkMode != nil {
            map["networkMode"] = self.networkMode!
        }
        if self.securityGroupID != nil {
            map["securityGroupID"] = self.securityGroupID!
        }
        if self.vpcID != nil {
            map["vpcID"] = self.vpcID!
        }
        if self.vswitchIDs != nil {
            map["vswitchIDs"] = self.vswitchIDs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["networkMode"] as? String {
            self.networkMode = value
        }
        if let value = dict["securityGroupID"] as? String {
            self.securityGroupID = value
        }
        if let value = dict["vpcID"] as? String {
            self.vpcID = value
        }
        if let value = dict["vswitchIDs"] as? [String] {
            self.vswitchIDs = value
        }
    }
}

public class OSSVolumeConfig : Tea.TeaModel {
    public var bucketName: String?

    public var bucketPath: String?

    public var endpoint: String?

    public var readOnly: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucketName != nil {
            map["bucketName"] = self.bucketName!
        }
        if self.bucketPath != nil {
            map["bucketPath"] = self.bucketPath!
        }
        if self.endpoint != nil {
            map["endpoint"] = self.endpoint!
        }
        if self.readOnly != nil {
            map["readOnly"] = self.readOnly!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["bucketPath"] as? String {
            self.bucketPath = value
        }
        if let value = dict["endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["readOnly"] as? Bool {
            self.readOnly = value
        }
    }
}

public class PermissionPolicy : Tea.TeaModel {
    public class Allow : Tea.TeaModel {
        public var actions: [String]?

        public var capabilities: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actions != nil {
                map["actions"] = self.actions!
            }
            if self.capabilities != nil {
                map["capabilities"] = self.capabilities!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["actions"] as? [String] {
                self.actions = value
            }
            if let value = dict["capabilities"] as? [String] {
                self.capabilities = value
            }
        }
    }
    public class Deny : Tea.TeaModel {
        public var actions: [String]?

        public var capabilities: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actions != nil {
                map["actions"] = self.actions!
            }
            if self.capabilities != nil {
                map["capabilities"] = self.capabilities!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["actions"] as? [String] {
                self.actions = value
            }
            if let value = dict["capabilities"] as? [String] {
                self.capabilities = value
            }
        }
    }
    public var allow: PermissionPolicy.Allow?

    public var catalogVersion: Int64?

    public var deny: PermissionPolicy.Deny?

    public var schemaVersion: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.allow?.validate()
        try self.deny?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allow != nil {
            map["allow"] = self.allow?.toMap()
        }
        if self.catalogVersion != nil {
            map["catalogVersion"] = self.catalogVersion!
        }
        if self.deny != nil {
            map["deny"] = self.deny?.toMap()
        }
        if self.schemaVersion != nil {
            map["schemaVersion"] = self.schemaVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["allow"] as? [String: Any?] {
            var model = PermissionPolicy.Allow()
            model.fromMap(value)
            self.allow = model
        }
        if let value = dict["catalogVersion"] as? Int64 {
            self.catalogVersion = value
        }
        if let value = dict["deny"] as? [String: Any?] {
            var model = PermissionPolicy.Deny()
            model.fromMap(value)
            self.deny = model
        }
        if let value = dict["schemaVersion"] as? Int64 {
            self.schemaVersion = value
        }
    }
}

public class PublicTemplate : Tea.TeaModel {
    public var createdTime: String?

    public var name: String?

    public var resourceGroupID: String?

    public var runtimeConfig: PublicTemplateRuntimeConfig?

    public var status: PublicTemplateStatus?

    public var teamID: String?

    public var teamName: String?

    public var templateID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.runtimeConfig?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resourceGroupID != nil {
            map["resourceGroupID"] = self.resourceGroupID!
        }
        if self.runtimeConfig != nil {
            map["runtimeConfig"] = self.runtimeConfig?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        if self.teamName != nil {
            map["teamName"] = self.teamName!
        }
        if self.templateID != nil {
            map["templateID"] = self.templateID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["resourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["runtimeConfig"] as? [String: Any?] {
            var model = PublicTemplateRuntimeConfig()
            model.fromMap(value)
            self.runtimeConfig = model
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = PublicTemplateStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
        if let value = dict["teamName"] as? String {
            self.teamName = value
        }
        if let value = dict["templateID"] as? String {
            self.templateID = value
        }
    }
}

public class PublicTemplateLogConfig : Tea.TeaModel {
    public var logstore: String?

    public var project: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logstore != nil {
            map["logstore"] = self.logstore!
        }
        if self.project != nil {
            map["project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logstore"] as? String {
            self.logstore = value
        }
        if let value = dict["project"] as? String {
            self.project = value
        }
    }
}

public class PublicTemplateRegistryConfig : Tea.TeaModel {
    public var networkConfig: PublicTemplateRegistryNetworkConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networkConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkConfig != nil {
            map["networkConfig"] = self.networkConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["networkConfig"] as? [String: Any?] {
            var model = PublicTemplateRegistryNetworkConfig()
            model.fromMap(value)
            self.networkConfig = model
        }
    }
}

public class PublicTemplateRegistryNetworkConfig : Tea.TeaModel {
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
        if self.securityGroupId != nil {
            map["securityGroupId"] = self.securityGroupId!
        }
        if self.vSwitchId != nil {
            map["vSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["securityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["vSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class PublicTemplateRuntimeConfig : Tea.TeaModel {
    public var cpu: Double?

    public var diskSize: Int32?

    public var internetAccess: Bool?

    public var logConfig: PublicTemplateLogConfig?

    public var memorySize: Int32?

    public var sandboxConfig: PublicTemplateSandboxConfig?

    public var vpcConfig: PublicTemplateVPCConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.logConfig?.validate()
        try self.sandboxConfig?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.diskSize != nil {
            map["diskSize"] = self.diskSize!
        }
        if self.internetAccess != nil {
            map["internetAccess"] = self.internetAccess!
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.sandboxConfig != nil {
            map["sandboxConfig"] = self.sandboxConfig?.toMap()
        }
        if self.vpcConfig != nil {
            map["vpcConfig"] = self.vpcConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["diskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["internetAccess"] as? Bool {
            self.internetAccess = value
        }
        if let value = dict["logConfig"] as? [String: Any?] {
            var model = PublicTemplateLogConfig()
            model.fromMap(value)
            self.logConfig = model
        }
        if let value = dict["memorySize"] as? Int32 {
            self.memorySize = value
        }
        if let value = dict["sandboxConfig"] as? [String: Any?] {
            var model = PublicTemplateSandboxConfig()
            model.fromMap(value)
            self.sandboxConfig = model
        }
        if let value = dict["vpcConfig"] as? [String: Any?] {
            var model = PublicTemplateVPCConfig()
            model.fromMap(value)
            self.vpcConfig = model
        }
    }
}

public class PublicTemplateSandboxConfig : Tea.TeaModel {
    public var acrInstanceId: String?

    public var generation: Int32?

    public var image: String?

    public var osType: String?

    public var readyCommand: String?

    public var registryConfig: PublicTemplateRegistryConfig?

    public var startCommand: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.registryConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acrInstanceId != nil {
            map["acrInstanceId"] = self.acrInstanceId!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.image != nil {
            map["image"] = self.image!
        }
        if self.osType != nil {
            map["osType"] = self.osType!
        }
        if self.readyCommand != nil {
            map["readyCommand"] = self.readyCommand!
        }
        if self.registryConfig != nil {
            map["registryConfig"] = self.registryConfig?.toMap()
        }
        if self.startCommand != nil {
            map["startCommand"] = self.startCommand!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acrInstanceId"] as? String {
            self.acrInstanceId = value
        }
        if let value = dict["generation"] as? Int32 {
            self.generation = value
        }
        if let value = dict["image"] as? String {
            self.image = value
        }
        if let value = dict["osType"] as? String {
            self.osType = value
        }
        if let value = dict["readyCommand"] as? String {
            self.readyCommand = value
        }
        if let value = dict["registryConfig"] as? [String: Any?] {
            var model = PublicTemplateRegistryConfig()
            model.fromMap(value)
            self.registryConfig = model
        }
        if let value = dict["startCommand"] as? String {
            self.startCommand = value
        }
    }
}

public class PublicTemplateStatus : Tea.TeaModel {
    public var finishedAt: String?

    public var reason: PublicTemplateStatusReason?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.reason?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.finishedAt != nil {
            map["finishedAt"] = self.finishedAt!
        }
        if self.reason != nil {
            map["reason"] = self.reason?.toMap()
        }
        if self.state != nil {
            map["state"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["finishedAt"] as? String {
            self.finishedAt = value
        }
        if let value = dict["reason"] as? [String: Any?] {
            var model = PublicTemplateStatusReason()
            model.fromMap(value)
            self.reason = model
        }
        if let value = dict["state"] as? String {
            self.state = value
        }
    }
}

public class PublicTemplateStatusReason : Tea.TeaModel {
    public var message: String?

    public var step: String?

    public override init() {
        super.init()
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
            map["message"] = self.message!
        }
        if self.step != nil {
            map["step"] = self.step!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["step"] as? String {
            self.step = value
        }
    }
}

public class PublicTemplateVPCConfig : Tea.TeaModel {
    public var role: String?

    public var securityGroupId: String?

    public var vSwitchIds: [String]?

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
        if self.role != nil {
            map["role"] = self.role!
        }
        if self.securityGroupId != nil {
            map["securityGroupId"] = self.securityGroupId!
        }
        if self.vSwitchIds != nil {
            map["vSwitchIds"] = self.vSwitchIds!
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["role"] as? String {
            self.role = value
        }
        if let value = dict["securityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["vSwitchIds"] as? [String] {
            self.vSwitchIds = value
        }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class Quota : Tea.TeaModel {
    public var cpuCores: Int32?

    public var memoryGB: Int32?

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
        if self.cpuCores != nil {
            map["cpuCores"] = self.cpuCores!
        }
        if self.memoryGB != nil {
            map["memoryGB"] = self.memoryGB!
        }
        if self.tagValue != nil {
            map["tagValue"] = self.tagValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cpuCores"] as? Int32 {
            self.cpuCores = value
        }
        if let value = dict["memoryGB"] as? Int32 {
            self.memoryGB = value
        }
        if let value = dict["tagValue"] as? String {
            self.tagValue = value
        }
    }
}

public class TLSConfig : Tea.TeaModel {
    public var cipherSuites: [String]?

    public var maxVersion: String?

    public var minVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cipherSuites != nil {
            map["cipherSuites"] = self.cipherSuites!
        }
        if self.maxVersion != nil {
            map["maxVersion"] = self.maxVersion!
        }
        if self.minVersion != nil {
            map["minVersion"] = self.minVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cipherSuites"] as? [String] {
            self.cipherSuites = value
        }
        if let value = dict["maxVersion"] as? String {
            self.maxVersion = value
        }
        if let value = dict["minVersion"] as? String {
            self.minVersion = value
        }
    }
}

public class UpdateApiKeyInput : Tea.TeaModel {
    public var apiKeyName: String?

    public var expireTime: String?

    public var ipBlacklist: [IPConfig]?

    public var ipWhitelist: [IPConfig]?

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
        if self.apiKeyName != nil {
            map["apiKeyName"] = self.apiKeyName!
        }
        if self.expireTime != nil {
            map["expireTime"] = self.expireTime!
        }
        if self.ipBlacklist != nil {
            var tmp : [Any] = []
            for k in self.ipBlacklist! {
                tmp.append(k.toMap())
            }
            map["ipBlacklist"] = tmp
        }
        if self.ipWhitelist != nil {
            var tmp : [Any] = []
            for k in self.ipWhitelist! {
                tmp.append(k.toMap())
            }
            map["ipWhitelist"] = tmp
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeyName"] as? String {
            self.apiKeyName = value
        }
        if let value = dict["expireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["ipBlacklist"] as? [Any?] {
            var tmp : [IPConfig] = []
            for v in value {
                if v != nil {
                    var model = IPConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipBlacklist = tmp
        }
        if let value = dict["ipWhitelist"] as? [Any?] {
            var tmp : [IPConfig] = []
            for v in value {
                if v != nil {
                    var model = IPConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipWhitelist = tmp
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class UpdateCustomDomainInput : Tea.TeaModel {
    public var certConfig: CertConfig?

    public var description_: String?

    public var tlsConfig: TLSConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certConfig?.validate()
        try self.tlsConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certConfig != nil {
            map["certConfig"] = self.certConfig?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.tlsConfig != nil {
            map["tlsConfig"] = self.tlsConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["certConfig"] as? [String: Any?] {
            var model = CertConfig()
            model.fromMap(value)
            self.certConfig = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["tlsConfig"] as? [String: Any?] {
            var model = TLSConfig()
            model.fromMap(value)
            self.tlsConfig = model
        }
    }
}

public class UpdateTeamInput : Tea.TeaModel {
    public var description_: String?

    public var plan: String?

    public var resourceGroupID: String?

    public var teamName: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.plan != nil {
            map["plan"] = self.plan!
        }
        if self.resourceGroupID != nil {
            map["resourceGroupID"] = self.resourceGroupID!
        }
        if self.teamName != nil {
            map["teamName"] = self.teamName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["plan"] as? String {
            self.plan = value
        }
        if let value = dict["resourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["teamName"] as? String {
            self.teamName = value
        }
    }
}

public class UpdateTemplateInput : Tea.TeaModel {
    public var containerConfiguration: ContainerConfiguration?

    public var logConfiguration: LogConfiguration?

    public var networkConfiguration: NetworkConfiguration?

    public var teamID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.containerConfiguration?.validate()
        try self.logConfiguration?.validate()
        try self.networkConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerConfiguration != nil {
            map["containerConfiguration"] = self.containerConfiguration?.toMap()
        }
        if self.logConfiguration != nil {
            map["logConfiguration"] = self.logConfiguration?.toMap()
        }
        if self.networkConfiguration != nil {
            map["networkConfiguration"] = self.networkConfiguration?.toMap()
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["containerConfiguration"] as? [String: Any?] {
            var model = ContainerConfiguration()
            model.fromMap(value)
            self.containerConfiguration = model
        }
        if let value = dict["logConfiguration"] as? [String: Any?] {
            var model = LogConfiguration()
            model.fromMap(value)
            self.logConfiguration = model
        }
        if let value = dict["networkConfiguration"] as? [String: Any?] {
            var model = NetworkConfiguration()
            model.fromMap(value)
            self.networkConfiguration = model
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
    }
}

public class UpdateVolumeInput : Tea.TeaModel {
    public var status: String?

    public var teamID: String?

    public override init() {
        super.init()
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
            map["status"] = self.status!
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
    }
}

public class CreateApiKeyRequest : Tea.TeaModel {
    public var body: CreateApiKeyInput?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateApiKeyInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateApiKeyResponseBody : Tea.TeaModel {
    public var apiKey: ApiKey?

    public var code: String?

    public var ipBlacklist: [IPConfig]?

    public var ipWhitelist: [IPConfig]?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.apiKey?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey?.toMap()
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.ipBlacklist != nil {
            var tmp : [Any] = []
            for k in self.ipBlacklist! {
                tmp.append(k.toMap())
            }
            map["ipBlacklist"] = tmp
        }
        if self.ipWhitelist != nil {
            var tmp : [Any] = []
            for k in self.ipWhitelist! {
                tmp.append(k.toMap())
            }
            map["ipWhitelist"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? [String: Any?] {
            var model = ApiKey()
            model.fromMap(value)
            self.apiKey = model
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["ipBlacklist"] as? [Any?] {
            var tmp : [IPConfig] = []
            for v in value {
                if v != nil {
                    var model = IPConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipBlacklist = tmp
        }
        if let value = dict["ipWhitelist"] as? [Any?] {
            var tmp : [IPConfig] = []
            for v in value {
                if v != nil {
                    var model = IPConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipWhitelist = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateApiKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApiKeyResponseBody?

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
            var model = CreateApiKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTeamRequest : Tea.TeaModel {
    public var body: CreateTeamInput?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTeamInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTeamResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var team: E2BTeam?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.team?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.team != nil {
            map["team"] = self.team?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["team"] as? [String: Any?] {
            var model = E2BTeam()
            model.fromMap(value)
            self.team = model
        }
    }
}

public class CreateTeamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTeamResponseBody?

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
            var model = CreateTeamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTemplateRequest : Tea.TeaModel {
    public var body: CreateTemplateInput?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTemplateInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var templateID: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.templateID != nil {
            map["templateID"] = self.templateID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["templateID"] as? String {
            self.templateID = value
        }
    }
}

public class CreateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTemplateResponseBody?

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
            var model = CreateTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVolumeRequest : Tea.TeaModel {
    public var body: CreateVolumeInput?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateVolumeInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVolumeResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var volume: E2BVolume?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.volume?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.volume != nil {
            map["volume"] = self.volume?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["volume"] as? [String: Any?] {
            var model = E2BVolume()
            model.fromMap(value)
            self.volume = model
        }
    }
}

public class CreateVolumeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVolumeResponseBody?

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
            var model = CreateVolumeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteApiKeyRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteApiKeyResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteApiKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApiKeyResponseBody?

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
            var model = DeleteApiKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteQuotaRequest : Tea.TeaModel {
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
        if self.tagValue != nil {
            map["tagValue"] = self.tagValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tagValue"] as? String {
            self.tagValue = value
        }
    }
}

public class DeleteQuotaResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteQuotaResponseBody?

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
            var model = DeleteQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTeamRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteTeamResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteTeamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTeamResponseBody?

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
            var model = DeleteTeamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTemplateRequest : Tea.TeaModel {
    public var teamID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
    }
}

public class DeleteTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTemplateResponseBody?

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
            var model = DeleteTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVolumeRequest : Tea.TeaModel {
    public var teamID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
    }
}

public class DeleteVolumeResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteVolumeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVolumeResponseBody?

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
            var model = DeleteVolumeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeApiKeyRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DescribeApiKeyResponseBody : Tea.TeaModel {
    public var apiKey: ApiKey?

    public var code: String?

    public var effectivePermissions: EffectivePermissions?

    public var ipBlacklist: [IPConfig]?

    public var ipWhitelist: [IPConfig]?

    public var message: String?

    public var permissionPolicy: PermissionPolicy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.apiKey?.validate()
        try self.effectivePermissions?.validate()
        try self.permissionPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey?.toMap()
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.effectivePermissions != nil {
            map["effectivePermissions"] = self.effectivePermissions?.toMap()
        }
        if self.ipBlacklist != nil {
            var tmp : [Any] = []
            for k in self.ipBlacklist! {
                tmp.append(k.toMap())
            }
            map["ipBlacklist"] = tmp
        }
        if self.ipWhitelist != nil {
            var tmp : [Any] = []
            for k in self.ipWhitelist! {
                tmp.append(k.toMap())
            }
            map["ipWhitelist"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.permissionPolicy != nil {
            map["permissionPolicy"] = self.permissionPolicy?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? [String: Any?] {
            var model = ApiKey()
            model.fromMap(value)
            self.apiKey = model
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["effectivePermissions"] as? [String: Any?] {
            var model = EffectivePermissions()
            model.fromMap(value)
            self.effectivePermissions = model
        }
        if let value = dict["ipBlacklist"] as? [Any?] {
            var tmp : [IPConfig] = []
            for v in value {
                if v != nil {
                    var model = IPConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipBlacklist = tmp
        }
        if let value = dict["ipWhitelist"] as? [Any?] {
            var tmp : [IPConfig] = []
            for v in value {
                if v != nil {
                    var model = IPConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipWhitelist = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["permissionPolicy"] as? [String: Any?] {
            var model = PermissionPolicy()
            model.fromMap(value)
            self.permissionPolicy = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeApiKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiKeyResponseBody?

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
            var model = DescribeApiKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeQuotaRequest : Tea.TeaModel {
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
        if self.tagValue != nil {
            map["tagValue"] = self.tagValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tagValue"] as? String {
            self.tagValue = value
        }
    }
}

public class DescribeQuotaResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var quota: Quota?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.quota?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.quota != nil {
            map["quota"] = self.quota?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["quota"] as? [String: Any?] {
            var model = Quota()
            model.fromMap(value)
            self.quota = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeQuotaResponseBody?

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
            var model = DescribeQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTeamRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetTeamResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var team: E2BTeam?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.team?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.team != nil {
            map["team"] = self.team?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["team"] as? [String: Any?] {
            var model = E2BTeam()
            model.fromMap(value)
            self.team = model
        }
    }
}

public class GetTeamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTeamResponseBody?

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
            var model = GetTeamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTemplateRequest : Tea.TeaModel {
    public var teamID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
    }
}

public class GetTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var createdTime: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var resourceGroupID: String?

    public var runtimeConfig: PublicTemplateRuntimeConfig?

    public var status: PublicTemplateStatus?

    public var teamID: String?

    public var teamName: String?

    public var templateID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.runtimeConfig?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resourceGroupID != nil {
            map["resourceGroupID"] = self.resourceGroupID!
        }
        if self.runtimeConfig != nil {
            map["runtimeConfig"] = self.runtimeConfig?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        if self.teamName != nil {
            map["teamName"] = self.teamName!
        }
        if self.templateID != nil {
            map["templateID"] = self.templateID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["createdTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["runtimeConfig"] as? [String: Any?] {
            var model = PublicTemplateRuntimeConfig()
            model.fromMap(value)
            self.runtimeConfig = model
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = PublicTemplateStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
        if let value = dict["teamName"] as? String {
            self.teamName = value
        }
        if let value = dict["templateID"] as? String {
            self.templateID = value
        }
    }
}

public class GetTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateResponseBody?

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
            var model = GetTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVolumeRequest : Tea.TeaModel {
    public var teamID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
    }
}

public class GetVolumeResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var volume: E2BVolume?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.volume?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.volume != nil {
            map["volume"] = self.volume?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["volume"] as? [String: Any?] {
            var model = E2BVolume()
            model.fromMap(value)
            self.volume = model
        }
    }
}

public class GetVolumeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVolumeResponseBody?

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
            var model = GetVolumeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListApiKeysRequest : Tea.TeaModel {
    public var apiKeyName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupID: String?

    public var status: String?

    public var teamID: String?

    public var userID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKeyName != nil {
            map["apiKeyName"] = self.apiKeyName!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupID != nil {
            map["resourceGroupID"] = self.resourceGroupID!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        if self.userID != nil {
            map["userID"] = self.userID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeyName"] as? String {
            self.apiKeyName = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
        if let value = dict["userID"] as? String {
            self.userID = value
        }
    }
}

public class ListApiKeysResponseBody : Tea.TeaModel {
    public var apiKeys: [ApiKey]?

    public var code: String?

    public var message: String?

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
        if self.apiKeys != nil {
            var tmp : [Any] = []
            for k in self.apiKeys! {
                tmp.append(k.toMap())
            }
            map["apiKeys"] = tmp
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeys"] as? [Any?] {
            var tmp : [ApiKey] = []
            for v in value {
                if v != nil {
                    var model = ApiKey()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.apiKeys = tmp
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListApiKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApiKeysResponseBody?

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
            var model = ListApiKeysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQuotaRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
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
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListQuotaResponseBody : Tea.TeaModel {
    public var code: String?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var quotas: [Quota]?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.quotas != nil {
            var tmp : [Any] = []
            for k in self.quotas! {
                tmp.append(k.toMap())
            }
            map["quotas"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["quotas"] as? [Any?] {
            var tmp : [Quota] = []
            for v in value {
                if v != nil {
                    var model = Quota()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.quotas = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQuotaResponseBody?

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
            var model = ListQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTeamsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var plan: String?

    public var resourceGroupID: String?

    public var teamName: String?

    public override init() {
        super.init()
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
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.plan != nil {
            map["plan"] = self.plan!
        }
        if self.resourceGroupID != nil {
            map["resourceGroupID"] = self.resourceGroupID!
        }
        if self.teamName != nil {
            map["teamName"] = self.teamName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["plan"] as? String {
            self.plan = value
        }
        if let value = dict["resourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["teamName"] as? String {
            self.teamName = value
        }
    }
}

public class ListTeamsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var teams: [E2BTeam]?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.teams != nil {
            var tmp : [Any] = []
            for k in self.teams! {
                tmp.append(k.toMap())
            }
            map["teams"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["teams"] as? [Any?] {
            var tmp : [E2BTeam] = []
            for v in value {
                if v != nil {
                    var model = E2BTeam()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.teams = tmp
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListTeamsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTeamsResponseBody?

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
            var model = ListTeamsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTemplatesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var teamID: String?

    public override init() {
        super.init()
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
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
    }
}

public class ListTemplatesResponseBody : Tea.TeaModel {
    public var code: String?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var templates: [PublicTemplate]?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.templates != nil {
            var tmp : [Any] = []
            for k in self.templates! {
                tmp.append(k.toMap())
            }
            map["templates"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["templates"] as? [Any?] {
            var tmp : [PublicTemplate] = []
            for v in value {
                if v != nil {
                    var model = PublicTemplate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.templates = tmp
        }
    }
}

public class ListTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTemplatesResponseBody?

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
            var model = ListTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVolumesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceGroupID: String?

    public var status: String?

    public var teamID: String?

    public var userID: String?

    public var volumeName: String?

    public override init() {
        super.init()
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
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.resourceGroupID != nil {
            map["resourceGroupID"] = self.resourceGroupID!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.teamID != nil {
            map["teamID"] = self.teamID!
        }
        if self.userID != nil {
            map["userID"] = self.userID!
        }
        if self.volumeName != nil {
            map["volumeName"] = self.volumeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["resourceGroupID"] as? String {
            self.resourceGroupID = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["teamID"] as? String {
            self.teamID = value
        }
        if let value = dict["userID"] as? String {
            self.userID = value
        }
        if let value = dict["volumeName"] as? String {
            self.volumeName = value
        }
    }
}

public class ListVolumesResponseBody : Tea.TeaModel {
    public var code: String?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var volumes: [E2BVolume]?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.volumes != nil {
            var tmp : [Any] = []
            for k in self.volumes! {
                tmp.append(k.toMap())
            }
            map["volumes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["volumes"] as? [Any?] {
            var tmp : [E2BVolume] = []
            for v in value {
                if v != nil {
                    var model = E2BVolume()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.volumes = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVolumesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetApiKeyRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class ResetApiKeyResponseBody : Tea.TeaModel {
    public var apiKey: ApiKey?

    public var code: String?

    public var ipBlacklist: [IPConfig]?

    public var ipWhitelist: [IPConfig]?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.apiKey?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey?.toMap()
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.ipBlacklist != nil {
            var tmp : [Any] = []
            for k in self.ipBlacklist! {
                tmp.append(k.toMap())
            }
            map["ipBlacklist"] = tmp
        }
        if self.ipWhitelist != nil {
            var tmp : [Any] = []
            for k in self.ipWhitelist! {
                tmp.append(k.toMap())
            }
            map["ipWhitelist"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? [String: Any?] {
            var model = ApiKey()
            model.fromMap(value)
            self.apiKey = model
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["ipBlacklist"] as? [Any?] {
            var tmp : [IPConfig] = []
            for v in value {
                if v != nil {
                    var model = IPConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipBlacklist = tmp
        }
        if let value = dict["ipWhitelist"] as? [Any?] {
            var tmp : [IPConfig] = []
            for v in value {
                if v != nil {
                    var model = IPConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipWhitelist = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ResetApiKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetApiKeyResponseBody?

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
            var model = ResetApiKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateApiKeyRequest : Tea.TeaModel {
    public var body: UpdateApiKeyInput?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateApiKeyInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateApiKeyResponseBody : Tea.TeaModel {
    public var apiKey: ApiKey?

    public var code: String?

    public var ipBlacklist: [IPConfig]?

    public var ipWhitelist: [IPConfig]?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.apiKey?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey?.toMap()
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.ipBlacklist != nil {
            var tmp : [Any] = []
            for k in self.ipBlacklist! {
                tmp.append(k.toMap())
            }
            map["ipBlacklist"] = tmp
        }
        if self.ipWhitelist != nil {
            var tmp : [Any] = []
            for k in self.ipWhitelist! {
                tmp.append(k.toMap())
            }
            map["ipWhitelist"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? [String: Any?] {
            var model = ApiKey()
            model.fromMap(value)
            self.apiKey = model
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["ipBlacklist"] as? [Any?] {
            var tmp : [IPConfig] = []
            for v in value {
                if v != nil {
                    var model = IPConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipBlacklist = tmp
        }
        if let value = dict["ipWhitelist"] as? [Any?] {
            var tmp : [IPConfig] = []
            for v in value {
                if v != nil {
                    var model = IPConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipWhitelist = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateApiKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApiKeyResponseBody?

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
            var model = UpdateApiKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateQuotaRequest : Tea.TeaModel {
    public var body: Quota?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Quota()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateQuotaResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var quota: Quota?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.quota?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.quota != nil {
            map["quota"] = self.quota?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["quota"] as? [String: Any?] {
            var model = Quota()
            model.fromMap(value)
            self.quota = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateQuotaResponseBody?

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
            var model = UpdateQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTeamRequest : Tea.TeaModel {
    public var body: UpdateTeamInput?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateTeamInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTeamResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var team: E2BTeam?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.team?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.team != nil {
            map["team"] = self.team?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["team"] as? [String: Any?] {
            var model = E2BTeam()
            model.fromMap(value)
            self.team = model
        }
    }
}

public class UpdateTeamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTeamResponseBody?

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
            var model = UpdateTeamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVolumeRequest : Tea.TeaModel {
    public var body: UpdateVolumeInput?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateVolumeInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVolumeResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var volume: E2BVolume?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.volume?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.volume != nil {
            map["volume"] = self.volume?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["volume"] as? [String: Any?] {
            var model = E2BVolume()
            model.fromMap(value)
            self.volume = model
        }
    }
}

public class UpdateVolumeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVolumeResponseBody?

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
            var model = UpdateVolumeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
