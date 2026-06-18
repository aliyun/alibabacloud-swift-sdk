import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ApiKey : Tea.TeaModel {
    public var apiKeyID: String?

    public var apiKeyMask: String?

    public var apiKeyName: String?

    public var apiKeyValue: String?

    public var createdTime: String?

    public var expireTime: String?

    public var lastUsedTime: String?

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
        if self.lastUsedTime != nil {
            map["lastUsedTime"] = self.lastUsedTime!
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
        if let value = dict["lastUsedTime"] as? String {
            self.lastUsedTime = value
        }
        if let value = dict["userID"] as? String {
            self.userID = value
        }
        if let value = dict["username"] as? String {
            self.username = value
        }
    }
}

public class CreateApiKeyInput : Tea.TeaModel {
    public var apiKeyName: String?

    public var expireTime: String?

    public override init() {
        super.init()
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
    public var alias: String?

    public var clientID: String?

    public var cpuCount: Int32?

    public var diskSizeMB: Int32?

    public var endAt: String?

    public var envdVersion: String?

    public var memoryMB: Int32?

    public var metadata: [String: String]?

    public var sandboxID: String?

    public var startedAt: String?

    public var state: String?

    public var templateID: String?

    public var templateName: String?

    public var volumeMounts: [E2BVolumeMount]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.clientID != nil {
            map["clientID"] = self.clientID!
        }
        if self.cpuCount != nil {
            map["cpuCount"] = self.cpuCount!
        }
        if self.diskSizeMB != nil {
            map["diskSizeMB"] = self.diskSizeMB!
        }
        if self.endAt != nil {
            map["endAt"] = self.endAt!
        }
        if self.envdVersion != nil {
            map["envdVersion"] = self.envdVersion!
        }
        if self.memoryMB != nil {
            map["memoryMB"] = self.memoryMB!
        }
        if self.metadata != nil {
            map["metadata"] = self.metadata!
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
        if self.templateID != nil {
            map["templateID"] = self.templateID!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.volumeMounts != nil {
            var tmp : [Any] = []
            for k in self.volumeMounts! {
                tmp.append(k.toMap())
            }
            map["volumeMounts"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alias"] as? String {
            self.alias = value
        }
        if let value = dict["clientID"] as? String {
            self.clientID = value
        }
        if let value = dict["cpuCount"] as? Int32 {
            self.cpuCount = value
        }
        if let value = dict["diskSizeMB"] as? Int32 {
            self.diskSizeMB = value
        }
        if let value = dict["endAt"] as? String {
            self.endAt = value
        }
        if let value = dict["envdVersion"] as? String {
            self.envdVersion = value
        }
        if let value = dict["memoryMB"] as? Int32 {
            self.memoryMB = value
        }
        if let value = dict["metadata"] as? [String: String] {
            self.metadata = value
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
        if let value = dict["templateID"] as? String {
            self.templateID = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["volumeMounts"] as? [Any?] {
            var tmp : [E2BVolumeMount] = []
            for v in value {
                if v != nil {
                    var model = E2BVolumeMount()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.volumeMounts = tmp
        }
    }
}

public class E2BListedTemplate : Tea.TeaModel {
    public var aliases: [String]?

    public var buildStatus: String?

    public var cpuCount: Int32?

    public var createdAt: String?

    public var lastSpawnedAt: String?

    public var logConfiguration: LogConfiguration?

    public var memoryMB: Int32?

    public var names: [String]?

    public var public_: Bool?

    public var spawnCount: String?

    public var statusReason: String?

    public var tags: [E2BTemplateTag]?

    public var templateID: String?

    public var updatedAt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.logConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliases != nil {
            map["aliases"] = self.aliases!
        }
        if self.buildStatus != nil {
            map["buildStatus"] = self.buildStatus!
        }
        if self.cpuCount != nil {
            map["cpuCount"] = self.cpuCount!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.lastSpawnedAt != nil {
            map["lastSpawnedAt"] = self.lastSpawnedAt!
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
        if self.spawnCount != nil {
            map["spawnCount"] = self.spawnCount!
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
        if self.templateID != nil {
            map["templateID"] = self.templateID!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aliases"] as? [String] {
            self.aliases = value
        }
        if let value = dict["buildStatus"] as? String {
            self.buildStatus = value
        }
        if let value = dict["cpuCount"] as? Int32 {
            self.cpuCount = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["lastSpawnedAt"] as? String {
            self.lastSpawnedAt = value
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
        if let value = dict["spawnCount"] as? String {
            self.spawnCount = value
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
        if let value = dict["templateID"] as? String {
            self.templateID = value
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
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
    public var alias: String?

    public var allowInternetAccess: Bool?

    public var clientID: String?

    public var cpuCount: Int32?

    public var diskSizeMB: Int32?

    public var domain: String?

    public var endAt: String?

    public var envdAccessToken: String?

    public var envdVersion: String?

    public var fcFunctionName: String?

    public var fcInstanceID: String?

    public var fcSessionID: String?

    public var lifecycle: E2BLifecycle?

    public var memoryMB: Int32?

    public var metadata: [String: String]?

    public var network: E2BNetwork?

    public var sandboxID: String?

    public var startedAt: String?

    public var state: String?

    public var templateId: String?

    public var templateName: String?

    public var volumeMounts: [E2BVolumeMount]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.lifecycle?.validate()
        try self.network?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.allowInternetAccess != nil {
            map["allowInternetAccess"] = self.allowInternetAccess!
        }
        if self.clientID != nil {
            map["clientID"] = self.clientID!
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
        if self.envdAccessToken != nil {
            map["envdAccessToken"] = self.envdAccessToken!
        }
        if self.envdVersion != nil {
            map["envdVersion"] = self.envdVersion!
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
        if self.lifecycle != nil {
            map["lifecycle"] = self.lifecycle?.toMap()
        }
        if self.memoryMB != nil {
            map["memoryMB"] = self.memoryMB!
        }
        if self.metadata != nil {
            map["metadata"] = self.metadata!
        }
        if self.network != nil {
            map["network"] = self.network?.toMap()
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
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.volumeMounts != nil {
            var tmp : [Any] = []
            for k in self.volumeMounts! {
                tmp.append(k.toMap())
            }
            map["volumeMounts"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alias"] as? String {
            self.alias = value
        }
        if let value = dict["allowInternetAccess"] as? Bool {
            self.allowInternetAccess = value
        }
        if let value = dict["clientID"] as? String {
            self.clientID = value
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
        if let value = dict["envdAccessToken"] as? String {
            self.envdAccessToken = value
        }
        if let value = dict["envdVersion"] as? String {
            self.envdVersion = value
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
        if let value = dict["lifecycle"] as? [String: Any?] {
            var model = E2BLifecycle()
            model.fromMap(value)
            self.lifecycle = model
        }
        if let value = dict["memoryMB"] as? Int32 {
            self.memoryMB = value
        }
        if let value = dict["metadata"] as? [String: String] {
            self.metadata = value
        }
        if let value = dict["network"] as? [String: Any?] {
            var model = E2BNetwork()
            model.fromMap(value)
            self.network = model
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
        if let value = dict["templateId"] as? String {
            self.templateId = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["volumeMounts"] as? [Any?] {
            var tmp : [E2BVolumeMount] = []
            for v in value {
                if v != nil {
                    var model = E2BVolumeMount()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.volumeMounts = tmp
        }
    }
}

public class E2BTemplate : Tea.TeaModel {
    public var aliases: [String]?

    public var buildStatus: String?

    public var builds: E2BTemplateBuild?

    public var cpuCount: Int32?

    public var createdAt: String?

    public var lastSpawnedAt: String?

    public var logConfiguration: LogConfiguration?

    public var memoryMB: Int32?

    public var names: [String]?

    public var public_: Bool?

    public var spawnCount: String?

    public var statusReason: String?

    public var tags: [E2BTemplateTag]?

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
        try self.builds?.validate()
        try self.logConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliases != nil {
            map["aliases"] = self.aliases!
        }
        if self.buildStatus != nil {
            map["buildStatus"] = self.buildStatus!
        }
        if self.builds != nil {
            map["builds"] = self.builds?.toMap()
        }
        if self.cpuCount != nil {
            map["cpuCount"] = self.cpuCount!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.lastSpawnedAt != nil {
            map["lastSpawnedAt"] = self.lastSpawnedAt!
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
        if self.spawnCount != nil {
            map["spawnCount"] = self.spawnCount!
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
        if let value = dict["aliases"] as? [String] {
            self.aliases = value
        }
        if let value = dict["buildStatus"] as? String {
            self.buildStatus = value
        }
        if let value = dict["builds"] as? [String: Any?] {
            var model = E2BTemplateBuild()
            model.fromMap(value)
            self.builds = model
        }
        if let value = dict["cpuCount"] as? Int32 {
            self.cpuCount = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["lastSpawnedAt"] as? String {
            self.lastSpawnedAt = value
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
        if let value = dict["spawnCount"] as? String {
            self.spawnCount = value
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

public class UpdateApiKeyInput : Tea.TeaModel {
    public var apiKeyName: String?

    public var expireTime: String?

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
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class UpdateTemplateInput : Tea.TeaModel {
    public var logConfiguration: LogConfiguration?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.logConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logConfiguration != nil {
            map["logConfiguration"] = self.logConfiguration?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logConfiguration"] as? [String: Any?] {
            var model = LogConfiguration()
            model.fromMap(value)
            self.logConfiguration = model
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
