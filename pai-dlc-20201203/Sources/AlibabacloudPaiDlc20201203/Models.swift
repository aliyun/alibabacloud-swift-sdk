import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AIMasterMessage : Tea.TeaModel {
    public var extended: String?

    public var jobRestartCount: Int32?

    public var messageContent: String?

    public var messageEvent: String?

    public var messageVersion: Int32?

    public var restartType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extended != nil {
            map["Extended"] = self.extended!
        }
        if self.jobRestartCount != nil {
            map["JobRestartCount"] = self.jobRestartCount!
        }
        if self.messageContent != nil {
            map["MessageContent"] = self.messageContent!
        }
        if self.messageEvent != nil {
            map["MessageEvent"] = self.messageEvent!
        }
        if self.messageVersion != nil {
            map["MessageVersion"] = self.messageVersion!
        }
        if self.restartType != nil {
            map["RestartType"] = self.restartType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Extended"] as? String {
            self.extended = value
        }
        if let value = dict["JobRestartCount"] as? Int32 {
            self.jobRestartCount = value
        }
        if let value = dict["MessageContent"] as? String {
            self.messageContent = value
        }
        if let value = dict["MessageEvent"] as? String {
            self.messageEvent = value
        }
        if let value = dict["MessageVersion"] as? Int32 {
            self.messageVersion = value
        }
        if let value = dict["RestartType"] as? String {
            self.restartType = value
        }
    }
}

public class AliyunAccounts : Tea.TeaModel {
    public var aliyunUid: String?

    public var employeeId: String?

    public var gmtCreateTime: String?

    public var gmtModifyTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunUid != nil {
            map["AliyunUid"] = self.aliyunUid!
        }
        if self.employeeId != nil {
            map["EmployeeId"] = self.employeeId!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifyTime != nil {
            map["GmtModifyTime"] = self.gmtModifyTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunUid"] as? String {
            self.aliyunUid = value
        }
        if let value = dict["EmployeeId"] as? String {
            self.employeeId = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifyTime"] as? String {
            self.gmtModifyTime = value
        }
    }
}

public class AssignNodeSpec : Tea.TeaModel {
    public var antiAffinityNodeNames: String?

    public var enableAssignNode: Bool?

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
        if self.enableAssignNode != nil {
            map["EnableAssignNode"] = self.enableAssignNode!
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
        if let value = dict["EnableAssignNode"] as? Bool {
            self.enableAssignNode = value
        }
        if let value = dict["NodeNames"] as? String {
            self.nodeNames = value
        }
    }
}

public class AssumeUserInfo : Tea.TeaModel {
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

public class AutoScalingSpec : Tea.TeaModel {
    public var autoscalingMetricSpec: AutoscalingMetricSpec?

    public var maxReplicas: Int32?

    public var minReplicas: Int32?

    public var podsToDelete: [String]?

    public var scalingStrategy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.autoscalingMetricSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoscalingMetricSpec != nil {
            map["AutoscalingMetricSpec"] = self.autoscalingMetricSpec?.toMap()
        }
        if self.maxReplicas != nil {
            map["MaxReplicas"] = self.maxReplicas!
        }
        if self.minReplicas != nil {
            map["MinReplicas"] = self.minReplicas!
        }
        if self.podsToDelete != nil {
            map["PodsToDelete"] = self.podsToDelete!
        }
        if self.scalingStrategy != nil {
            map["ScalingStrategy"] = self.scalingStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoscalingMetricSpec"] as? [String: Any?] {
            var model = AutoscalingMetricSpec()
            model.fromMap(value)
            self.autoscalingMetricSpec = model
        }
        if let value = dict["MaxReplicas"] as? Int32 {
            self.maxReplicas = value
        }
        if let value = dict["MinReplicas"] as? Int32 {
            self.minReplicas = value
        }
        if let value = dict["PodsToDelete"] as? [String] {
            self.podsToDelete = value
        }
        if let value = dict["ScalingStrategy"] as? String {
            self.scalingStrategy = value
        }
    }
}

public class AutoscalingMetricSpec : Tea.TeaModel {
    public var metricName: String?

    public var targetValue: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.targetValue != nil {
            map["TargetValue"] = self.targetValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MetricName"] as? String {
            self.metricName = value
        }
        if let value = dict["TargetValue"] as? Int32 {
            self.targetValue = value
        }
    }
}

public class CodeSourceItem : Tea.TeaModel {
    public var codeBranch: String?

    public var codeCommit: String?

    public var codeRepo: String?

    public var codeRepoAccessToken: String?

    public var codeRepoUserName: String?

    public var codeSourceId: String?

    public var description_: String?

    public var displayName: String?

    public var gmtCreateTime: String?

    public var gmtModifyTime: String?

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
        if self.codeBranch != nil {
            map["CodeBranch"] = self.codeBranch!
        }
        if self.codeCommit != nil {
            map["CodeCommit"] = self.codeCommit!
        }
        if self.codeRepo != nil {
            map["CodeRepo"] = self.codeRepo!
        }
        if self.codeRepoAccessToken != nil {
            map["CodeRepoAccessToken"] = self.codeRepoAccessToken!
        }
        if self.codeRepoUserName != nil {
            map["CodeRepoUserName"] = self.codeRepoUserName!
        }
        if self.codeSourceId != nil {
            map["CodeSourceId"] = self.codeSourceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifyTime != nil {
            map["GmtModifyTime"] = self.gmtModifyTime!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CodeBranch"] as? String {
            self.codeBranch = value
        }
        if let value = dict["CodeCommit"] as? String {
            self.codeCommit = value
        }
        if let value = dict["CodeRepo"] as? String {
            self.codeRepo = value
        }
        if let value = dict["CodeRepoAccessToken"] as? String {
            self.codeRepoAccessToken = value
        }
        if let value = dict["CodeRepoUserName"] as? String {
            self.codeRepoUserName = value
        }
        if let value = dict["CodeSourceId"] as? String {
            self.codeSourceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifyTime"] as? String {
            self.gmtModifyTime = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class ContainerSpec : Tea.TeaModel {
    public var args: [String]?

    public var command: [String]?

    public var env: [EnvVar]?

    public var image: String?

    public var name: String?

    public var resources: ResourceRequirements?

    public var workingDir: String?

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
        if self.args != nil {
            map["Args"] = self.args!
        }
        if self.command != nil {
            map["Command"] = self.command!
        }
        if self.env != nil {
            var tmp : [Any] = []
            for k in self.env! {
                tmp.append(k.toMap())
            }
            map["Env"] = tmp
        }
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.resources != nil {
            map["Resources"] = self.resources?.toMap()
        }
        if self.workingDir != nil {
            map["WorkingDir"] = self.workingDir!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Args"] as? [String] {
            self.args = value
        }
        if let value = dict["Command"] as? [String] {
            self.command = value
        }
        if let value = dict["Env"] as? [Any?] {
            var tmp : [EnvVar] = []
            for v in value {
                if v != nil {
                    var model = EnvVar()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.env = tmp
        }
        if let value = dict["Image"] as? String {
            self.image = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Resources"] as? [String: Any?] {
            var model = ResourceRequirements()
            model.fromMap(value)
            self.resources = model
        }
        if let value = dict["WorkingDir"] as? String {
            self.workingDir = value
        }
    }
}

public class CredentialConfig : Tea.TeaModel {
    public var aliyunEnvRoleKey: String?

    public var credentialConfigItems: [CredentialConfigItem]?

    public var enableCredentialInject: Bool?

    public override init() {
        super.init()
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
        if self.credentialConfigItems != nil {
            var tmp : [Any] = []
            for k in self.credentialConfigItems! {
                tmp.append(k.toMap())
            }
            map["CredentialConfigItems"] = tmp
        }
        if self.enableCredentialInject != nil {
            map["EnableCredentialInject"] = self.enableCredentialInject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunEnvRoleKey"] as? String {
            self.aliyunEnvRoleKey = value
        }
        if let value = dict["CredentialConfigItems"] as? [Any?] {
            var tmp : [CredentialConfigItem] = []
            for v in value {
                if v != nil {
                    var model = CredentialConfigItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.credentialConfigItems = tmp
        }
        if let value = dict["EnableCredentialInject"] as? Bool {
            self.enableCredentialInject = value
        }
    }
}

public class CredentialConfigItem : Tea.TeaModel {
    public var key: String?

    public var roles: [CredentialRole]?

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
            var tmp : [CredentialRole] = []
            for v in value {
                if v != nil {
                    var model = CredentialRole()
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

public class CredentialRole : Tea.TeaModel {
    public var assumeRoleFor: String?

    public var assumeUserInfo: AssumeUserInfo?

    public var policy: String?

    public var roleArn: String?

    public var roleType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.assumeUserInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assumeRoleFor != nil {
            map["AssumeRoleFor"] = self.assumeRoleFor!
        }
        if self.assumeUserInfo != nil {
            map["AssumeUserInfo"] = self.assumeUserInfo?.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssumeRoleFor"] as? String {
            self.assumeRoleFor = value
        }
        if let value = dict["AssumeUserInfo"] as? [String: Any?] {
            var model = AssumeUserInfo()
            model.fromMap(value)
            self.assumeUserInfo = model
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
    }
}

public class DataJuicerConfig : Tea.TeaModel {
    public var commandType: String?

    public var executionMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commandType != nil {
            map["CommandType"] = self.commandType!
        }
        if self.executionMode != nil {
            map["ExecutionMode"] = self.executionMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandType"] as? String {
            self.commandType = value
        }
        if let value = dict["ExecutionMode"] as? String {
            self.executionMode = value
        }
    }
}

public class DataSourceItem : Tea.TeaModel {
    public var dataSourceId: String?

    public var dataSourceType: String?

    public var description_: String?

    public var displayName: String?

    public var endpoint: String?

    public var fileSystemId: String?

    public var gmtCreateTime: String?

    public var gmtModifyTime: String?

    public var mountPath: String?

    public var options: String?

    public var path: String?

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
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifyTime != nil {
            map["GmtModifyTime"] = self.gmtModifyTime!
        }
        if self.mountPath != nil {
            map["MountPath"] = self.mountPath!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifyTime"] as? String {
            self.gmtModifyTime = value
        }
        if let value = dict["MountPath"] as? String {
            self.mountPath = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class DebuggerConfig : Tea.TeaModel {
    public var content: String?

    public var debuggerConfigId: String?

    public var description_: String?

    public var displayName: String?

    public var gmtCreateTime: String?

    public var gmtModifyTime: String?

    public override init() {
        super.init()
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
        if self.debuggerConfigId != nil {
            map["DebuggerConfigId"] = self.debuggerConfigId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifyTime != nil {
            map["GmtModifyTime"] = self.gmtModifyTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["DebuggerConfigId"] as? String {
            self.debuggerConfigId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifyTime"] as? String {
            self.gmtModifyTime = value
        }
    }
}

public class DebuggerJob : Tea.TeaModel {
    public var debuggerJobId: String?

    public var displayName: String?

    public var duration: String?

    public var gmtCreateTime: String?

    public var gmtFailedTime: String?

    public var gmtFinishTime: String?

    public var gmtRunningTime: String?

    public var gmtStoppedTime: String?

    public var gmtSubmittedTime: String?

    public var gmtSucceedTime: String?

    public var status: String?

    public var userId: String?

    public var workspaceId: String?

    public var workspaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.debuggerJobId != nil {
            map["DebuggerJobId"] = self.debuggerJobId!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtFailedTime != nil {
            map["GmtFailedTime"] = self.gmtFailedTime!
        }
        if self.gmtFinishTime != nil {
            map["GmtFinishTime"] = self.gmtFinishTime!
        }
        if self.gmtRunningTime != nil {
            map["GmtRunningTime"] = self.gmtRunningTime!
        }
        if self.gmtStoppedTime != nil {
            map["GmtStoppedTime"] = self.gmtStoppedTime!
        }
        if self.gmtSubmittedTime != nil {
            map["GmtSubmittedTime"] = self.gmtSubmittedTime!
        }
        if self.gmtSucceedTime != nil {
            map["GmtSucceedTime"] = self.gmtSucceedTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.workspaceName != nil {
            map["WorkspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DebuggerJobId"] as? String {
            self.debuggerJobId = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Duration"] as? String {
            self.duration = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtFailedTime"] as? String {
            self.gmtFailedTime = value
        }
        if let value = dict["GmtFinishTime"] as? String {
            self.gmtFinishTime = value
        }
        if let value = dict["GmtRunningTime"] as? String {
            self.gmtRunningTime = value
        }
        if let value = dict["GmtStoppedTime"] as? String {
            self.gmtStoppedTime = value
        }
        if let value = dict["GmtSubmittedTime"] as? String {
            self.gmtSubmittedTime = value
        }
        if let value = dict["GmtSucceedTime"] as? String {
            self.gmtSucceedTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["WorkspaceName"] as? String {
            self.workspaceName = value
        }
    }
}

public class DebuggerJobIssue : Tea.TeaModel {
    public var debuggerJobIssue: String?

    public var gmtCreateTime: String?

    public var jobDebuggerIssueId: String?

    public var jobId: String?

    public var reasonCode: String?

    public var reasonMessage: String?

    public var ruleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.debuggerJobIssue != nil {
            map["DebuggerJobIssue"] = self.debuggerJobIssue!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.jobDebuggerIssueId != nil {
            map["JobDebuggerIssueId"] = self.jobDebuggerIssueId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.reasonCode != nil {
            map["ReasonCode"] = self.reasonCode!
        }
        if self.reasonMessage != nil {
            map["ReasonMessage"] = self.reasonMessage!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DebuggerJobIssue"] as? String {
            self.debuggerJobIssue = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["JobDebuggerIssueId"] as? String {
            self.jobDebuggerIssueId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["ReasonCode"] as? String {
            self.reasonCode = value
        }
        if let value = dict["ReasonMessage"] as? String {
            self.reasonMessage = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
    }
}

public class DebuggerResult : Tea.TeaModel {
    public var debuggerConfigContent: String?

    public var debuggerJobIssues: String?

    public var debuggerJobStatus: String?

    public var debuggerReportURL: String?

    public var jobDisplayName: String?

    public var jobId: String?

    public var jobUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.debuggerConfigContent != nil {
            map["DebuggerConfigContent"] = self.debuggerConfigContent!
        }
        if self.debuggerJobIssues != nil {
            map["DebuggerJobIssues"] = self.debuggerJobIssues!
        }
        if self.debuggerJobStatus != nil {
            map["DebuggerJobStatus"] = self.debuggerJobStatus!
        }
        if self.debuggerReportURL != nil {
            map["DebuggerReportURL"] = self.debuggerReportURL!
        }
        if self.jobDisplayName != nil {
            map["JobDisplayName"] = self.jobDisplayName!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobUserId != nil {
            map["JobUserId"] = self.jobUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DebuggerConfigContent"] as? String {
            self.debuggerConfigContent = value
        }
        if let value = dict["DebuggerJobIssues"] as? String {
            self.debuggerJobIssues = value
        }
        if let value = dict["DebuggerJobStatus"] as? String {
            self.debuggerJobStatus = value
        }
        if let value = dict["DebuggerReportURL"] as? String {
            self.debuggerReportURL = value
        }
        if let value = dict["JobDisplayName"] as? String {
            self.jobDisplayName = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["JobUserId"] as? String {
            self.jobUserId = value
        }
    }
}

public class EcsSpec : Tea.TeaModel {
    public var acceleratorType: String?

    public var cpu: Int32?

    public var defaultGPUDriver: String?

    public var gpu: Int32?

    public var gpuMemory: Int32?

    public var gpuType: String?

    public var instanceType: String?

    public var isAvailable: Bool?

    public var memory: Int32?

    public var nonProtectSpotDiscount: Double?

    public var paymentTypes: [String]?

    public var resourceType: String?

    public var spotStockStatus: String?

    public var supportedGPUDrivers: [String]?

    public override init() {
        super.init()
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
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.defaultGPUDriver != nil {
            map["DefaultGPUDriver"] = self.defaultGPUDriver!
        }
        if self.gpu != nil {
            map["Gpu"] = self.gpu!
        }
        if self.gpuMemory != nil {
            map["GpuMemory"] = self.gpuMemory!
        }
        if self.gpuType != nil {
            map["GpuType"] = self.gpuType!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.isAvailable != nil {
            map["IsAvailable"] = self.isAvailable!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.nonProtectSpotDiscount != nil {
            map["NonProtectSpotDiscount"] = self.nonProtectSpotDiscount!
        }
        if self.paymentTypes != nil {
            map["PaymentTypes"] = self.paymentTypes!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.spotStockStatus != nil {
            map["SpotStockStatus"] = self.spotStockStatus!
        }
        if self.supportedGPUDrivers != nil {
            map["SupportedGPUDrivers"] = self.supportedGPUDrivers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceleratorType"] as? String {
            self.acceleratorType = value
        }
        if let value = dict["Cpu"] as? Int32 {
            self.cpu = value
        }
        if let value = dict["DefaultGPUDriver"] as? String {
            self.defaultGPUDriver = value
        }
        if let value = dict["Gpu"] as? Int32 {
            self.gpu = value
        }
        if let value = dict["GpuMemory"] as? Int32 {
            self.gpuMemory = value
        }
        if let value = dict["GpuType"] as? String {
            self.gpuType = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["IsAvailable"] as? Bool {
            self.isAvailable = value
        }
        if let value = dict["Memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["NonProtectSpotDiscount"] as? Double {
            self.nonProtectSpotDiscount = value
        }
        if let value = dict["PaymentTypes"] as? [String] {
            self.paymentTypes = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SpotStockStatus"] as? String {
            self.spotStockStatus = value
        }
        if let value = dict["SupportedGPUDrivers"] as? [String] {
            self.supportedGPUDrivers = value
        }
    }
}

public class EnvVar : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class EventInfo : Tea.TeaModel {
    public var content: String?

    public var id: String?

    public var podId: String?

    public var podUid: String?

    public var time: String?

    public override init() {
        super.init()
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.podId != nil {
            map["PodId"] = self.podId!
        }
        if self.podUid != nil {
            map["PodUid"] = self.podUid!
        }
        if self.time != nil {
            map["Time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["PodId"] as? String {
            self.podId = value
        }
        if let value = dict["PodUid"] as? String {
            self.podUid = value
        }
        if let value = dict["Time"] as? String {
            self.time = value
        }
    }
}

public class ExtraPodSpec : Tea.TeaModel {
    public var initContainers: [ContainerSpec]?

    public var lifecycle: Lifecycle?

    public var podAnnotations: [String: String]?

    public var podLabels: [String: String]?

    public var sharedVolumeMountPaths: [String]?

    public var sideCarContainers: [ContainerSpec]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.lifecycle?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.initContainers != nil {
            var tmp : [Any] = []
            for k in self.initContainers! {
                tmp.append(k.toMap())
            }
            map["InitContainers"] = tmp
        }
        if self.lifecycle != nil {
            map["Lifecycle"] = self.lifecycle?.toMap()
        }
        if self.podAnnotations != nil {
            map["PodAnnotations"] = self.podAnnotations!
        }
        if self.podLabels != nil {
            map["PodLabels"] = self.podLabels!
        }
        if self.sharedVolumeMountPaths != nil {
            map["SharedVolumeMountPaths"] = self.sharedVolumeMountPaths!
        }
        if self.sideCarContainers != nil {
            var tmp : [Any] = []
            for k in self.sideCarContainers! {
                tmp.append(k.toMap())
            }
            map["SideCarContainers"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InitContainers"] as? [Any?] {
            var tmp : [ContainerSpec] = []
            for v in value {
                if v != nil {
                    var model = ContainerSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.initContainers = tmp
        }
        if let value = dict["Lifecycle"] as? [String: Any?] {
            var model = Lifecycle()
            model.fromMap(value)
            self.lifecycle = model
        }
        if let value = dict["PodAnnotations"] as? [String: String] {
            self.podAnnotations = value
        }
        if let value = dict["PodLabels"] as? [String: String] {
            self.podLabels = value
        }
        if let value = dict["SharedVolumeMountPaths"] as? [String] {
            self.sharedVolumeMountPaths = value
        }
        if let value = dict["SideCarContainers"] as? [Any?] {
            var tmp : [ContainerSpec] = []
            for v in value {
                if v != nil {
                    var model = ContainerSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sideCarContainers = tmp
        }
    }
}

public class FreeResourceClusterControlItem : Tea.TeaModel {
    public var clusterID: String?

    public var clusterName: String?

    public var crossClusters: Bool?

    public var enableFreeResource: Bool?

    public var freeResourceClusterControlId: String?

    public var gmtCreateTime: String?

    public var gmtModifyTime: String?

    public var regionID: String?

    public override init() {
        super.init()
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
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.crossClusters != nil {
            map["CrossClusters"] = self.crossClusters!
        }
        if self.enableFreeResource != nil {
            map["EnableFreeResource"] = self.enableFreeResource!
        }
        if self.freeResourceClusterControlId != nil {
            map["FreeResourceClusterControlId"] = self.freeResourceClusterControlId!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifyTime != nil {
            map["GmtModifyTime"] = self.gmtModifyTime!
        }
        if self.regionID != nil {
            map["RegionID"] = self.regionID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterID"] as? String {
            self.clusterID = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["CrossClusters"] as? Bool {
            self.crossClusters = value
        }
        if let value = dict["EnableFreeResource"] as? Bool {
            self.enableFreeResource = value
        }
        if let value = dict["FreeResourceClusterControlId"] as? String {
            self.freeResourceClusterControlId = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifyTime"] as? String {
            self.gmtModifyTime = value
        }
        if let value = dict["RegionID"] as? String {
            self.regionID = value
        }
    }
}

public class FreeResourceDetail : Tea.TeaModel {
    public var amount: Int32?

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
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Amount"] as? Int32 {
            self.amount = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class FreeResourceItem : Tea.TeaModel {
    public var availableNumber: Int64?

    public var clusterID: String?

    public var clusterName: String?

    public var freeResourceId: String?

    public var gmtCreateTime: String?

    public var gmtModifyTime: String?

    public var regionID: String?

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
        if self.availableNumber != nil {
            map["AvailableNumber"] = self.availableNumber!
        }
        if self.clusterID != nil {
            map["ClusterID"] = self.clusterID!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.freeResourceId != nil {
            map["FreeResourceId"] = self.freeResourceId!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifyTime != nil {
            map["GmtModifyTime"] = self.gmtModifyTime!
        }
        if self.regionID != nil {
            map["RegionID"] = self.regionID!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvailableNumber"] as? Int64 {
            self.availableNumber = value
        }
        if let value = dict["ClusterID"] as? String {
            self.clusterID = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["FreeResourceId"] as? String {
            self.freeResourceId = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifyTime"] as? String {
            self.gmtModifyTime = value
        }
        if let value = dict["RegionID"] as? String {
            self.regionID = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class GPUDetail : Tea.TeaModel {
    public var GPU: String?

    public var GPUType: String?

    public var GPUTypeFullName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.GPU != nil {
            map["GPU"] = self.GPU!
        }
        if self.GPUType != nil {
            map["GPUType"] = self.GPUType!
        }
        if self.GPUTypeFullName != nil {
            map["GPUTypeFullName"] = self.GPUTypeFullName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GPU"] as? String {
            self.GPU = value
        }
        if let value = dict["GPUType"] as? String {
            self.GPUType = value
        }
        if let value = dict["GPUTypeFullName"] as? String {
            self.GPUTypeFullName = value
        }
    }
}

public class ImageConfig : Tea.TeaModel {
    public var auth: String?

    public var dockerRegistry: String?

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
        if self.auth != nil {
            map["Auth"] = self.auth!
        }
        if self.dockerRegistry != nil {
            map["DockerRegistry"] = self.dockerRegistry!
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
        if let value = dict["Auth"] as? String {
            self.auth = value
        }
        if let value = dict["DockerRegistry"] as? String {
            self.dockerRegistry = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
    }
}

public class ImageItem : Tea.TeaModel {
    public var acceleratorType: String?

    public var authorId: String?

    public var framework: String?

    public var imageProviderType: String?

    public var imageTag: String?

    public var imageUrl: String?

    public var imageUrlVpc: String?

    public override init() {
        super.init()
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
        if self.authorId != nil {
            map["AuthorId"] = self.authorId!
        }
        if self.framework != nil {
            map["Framework"] = self.framework!
        }
        if self.imageProviderType != nil {
            map["ImageProviderType"] = self.imageProviderType!
        }
        if self.imageTag != nil {
            map["ImageTag"] = self.imageTag!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.imageUrlVpc != nil {
            map["ImageUrlVpc"] = self.imageUrlVpc!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceleratorType"] as? String {
            self.acceleratorType = value
        }
        if let value = dict["AuthorId"] as? String {
            self.authorId = value
        }
        if let value = dict["Framework"] as? String {
            self.framework = value
        }
        if let value = dict["ImageProviderType"] as? String {
            self.imageProviderType = value
        }
        if let value = dict["ImageTag"] as? String {
            self.imageTag = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["ImageUrlVpc"] as? String {
            self.imageUrlVpc = value
        }
    }
}

public class JobDebuggerConfig : Tea.TeaModel {
    public var debuggerConfigContent: String?

    public var debuggerConfigId: String?

    public var gmtCreateTime: String?

    public var jobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.debuggerConfigContent != nil {
            map["DebuggerConfigContent"] = self.debuggerConfigContent!
        }
        if self.debuggerConfigId != nil {
            map["DebuggerConfigId"] = self.debuggerConfigId!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DebuggerConfigContent"] as? String {
            self.debuggerConfigContent = value
        }
        if let value = dict["DebuggerConfigId"] as? String {
            self.debuggerConfigId = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class JobElasticSpec : Tea.TeaModel {
    public var AIMasterDockerImage: String?

    public var AIMasterType: String?

    public var EDPMaxParallelism: Int32?

    public var EDPMinParallelism: Int32?

    public var elasticStrategy: String?

    public var enableAIMaster: Bool?

    public var enableEDP: Bool?

    public var enableElasticTraining: Bool?

    public var enablePsJobElasticPS: Bool?

    public var enablePsJobElasticWorker: Bool?

    public var enablePsResourceEstimate: Bool?

    public var maxParallelism: Int32?

    public var minParallelism: Int32?

    public var PSMaxParallelism: Int32?

    public var PSMinParallelism: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.AIMasterDockerImage != nil {
            map["AIMasterDockerImage"] = self.AIMasterDockerImage!
        }
        if self.AIMasterType != nil {
            map["AIMasterType"] = self.AIMasterType!
        }
        if self.EDPMaxParallelism != nil {
            map["EDPMaxParallelism"] = self.EDPMaxParallelism!
        }
        if self.EDPMinParallelism != nil {
            map["EDPMinParallelism"] = self.EDPMinParallelism!
        }
        if self.elasticStrategy != nil {
            map["ElasticStrategy"] = self.elasticStrategy!
        }
        if self.enableAIMaster != nil {
            map["EnableAIMaster"] = self.enableAIMaster!
        }
        if self.enableEDP != nil {
            map["EnableEDP"] = self.enableEDP!
        }
        if self.enableElasticTraining != nil {
            map["EnableElasticTraining"] = self.enableElasticTraining!
        }
        if self.enablePsJobElasticPS != nil {
            map["EnablePsJobElasticPS"] = self.enablePsJobElasticPS!
        }
        if self.enablePsJobElasticWorker != nil {
            map["EnablePsJobElasticWorker"] = self.enablePsJobElasticWorker!
        }
        if self.enablePsResourceEstimate != nil {
            map["EnablePsResourceEstimate"] = self.enablePsResourceEstimate!
        }
        if self.maxParallelism != nil {
            map["MaxParallelism"] = self.maxParallelism!
        }
        if self.minParallelism != nil {
            map["MinParallelism"] = self.minParallelism!
        }
        if self.PSMaxParallelism != nil {
            map["PSMaxParallelism"] = self.PSMaxParallelism!
        }
        if self.PSMinParallelism != nil {
            map["PSMinParallelism"] = self.PSMinParallelism!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AIMasterDockerImage"] as? String {
            self.AIMasterDockerImage = value
        }
        if let value = dict["AIMasterType"] as? String {
            self.AIMasterType = value
        }
        if let value = dict["EDPMaxParallelism"] as? Int32 {
            self.EDPMaxParallelism = value
        }
        if let value = dict["EDPMinParallelism"] as? Int32 {
            self.EDPMinParallelism = value
        }
        if let value = dict["ElasticStrategy"] as? String {
            self.elasticStrategy = value
        }
        if let value = dict["EnableAIMaster"] as? Bool {
            self.enableAIMaster = value
        }
        if let value = dict["EnableEDP"] as? Bool {
            self.enableEDP = value
        }
        if let value = dict["EnableElasticTraining"] as? Bool {
            self.enableElasticTraining = value
        }
        if let value = dict["EnablePsJobElasticPS"] as? Bool {
            self.enablePsJobElasticPS = value
        }
        if let value = dict["EnablePsJobElasticWorker"] as? Bool {
            self.enablePsJobElasticWorker = value
        }
        if let value = dict["EnablePsResourceEstimate"] as? Bool {
            self.enablePsResourceEstimate = value
        }
        if let value = dict["MaxParallelism"] as? Int32 {
            self.maxParallelism = value
        }
        if let value = dict["MinParallelism"] as? Int32 {
            self.minParallelism = value
        }
        if let value = dict["PSMaxParallelism"] as? Int32 {
            self.PSMaxParallelism = value
        }
        if let value = dict["PSMinParallelism"] as? Int32 {
            self.PSMinParallelism = value
        }
    }
}

public class JobItem : Tea.TeaModel {
    public class CodeSource : Tea.TeaModel {
        public var branch: String?

        public var codeSourceId: String?

        public var commit: String?

        public var mountPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.branch != nil {
                map["Branch"] = self.branch!
            }
            if self.codeSourceId != nil {
                map["CodeSourceId"] = self.codeSourceId!
            }
            if self.commit != nil {
                map["Commit"] = self.commit!
            }
            if self.mountPath != nil {
                map["MountPath"] = self.mountPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Branch"] as? String {
                self.branch = value
            }
            if let value = dict["CodeSourceId"] as? String {
                self.codeSourceId = value
            }
            if let value = dict["Commit"] as? String {
                self.commit = value
            }
            if let value = dict["MountPath"] as? String {
                self.mountPath = value
            }
        }
    }
    public class DataSources : Tea.TeaModel {
        public var dataSourceId: String?

        public var mountPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataSourceId != nil {
                map["DataSourceId"] = self.dataSourceId!
            }
            if self.mountPath != nil {
                map["MountPath"] = self.mountPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataSourceId"] as? String {
                self.dataSourceId = value
            }
            if let value = dict["MountPath"] as? String {
                self.mountPath = value
            }
        }
    }
    public class UserVpc : Tea.TeaModel {
        public var defaultRoute: String?

        public var extendedCidrs: [String]?

        public var securityGroupId: String?

        public var switchId: String?

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
            if self.extendedCidrs != nil {
                map["ExtendedCidrs"] = self.extendedCidrs!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.switchId != nil {
                map["SwitchId"] = self.switchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefaultRoute"] as? String {
                self.defaultRoute = value
            }
            if let value = dict["ExtendedCidrs"] as? [String] {
                self.extendedCidrs = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["SwitchId"] as? String {
                self.switchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accessibility: String?

    public var clusterId: String?

    public var codeSource: JobItem.CodeSource?

    public var credentialConfig: CredentialConfig?

    public var dataSources: [JobItem.DataSources]?

    public var displayName: String?

    public var duration: Int64?

    public var elasticSpec: JobElasticSpec?

    public var enablePreemptibleJob: Bool?

    public var enabledDebugger: Bool?

    public var envs: [String: String]?

    public var gmtCreateTime: String?

    public var gmtFailedTime: String?

    public var gmtFinishTime: String?

    public var gmtModifiedTime: String?

    public var gmtRunningTime: String?

    public var gmtStoppedTime: String?

    public var gmtSubmittedTime: String?

    public var gmtSuccessedTime: String?

    public var isDeleted: Bool?

    public var jobId: String?

    public var jobMaxRunningTimeMinutes: Int64?

    public var jobReplicaStatuses: JobReplicaStatus?

    public var jobSpecs: [JobSpec]?

    public var jobType: String?

    public var nodeCount: String?

    public var nodeNames: [String]?

    public var pods: [PodItem]?

    public var priority: Int32?

    public var reasonCode: String?

    public var reasonMessage: String?

    public var requestCPU: Int64?

    public var requestGPU: String?

    public var requestMemory: String?

    public var resourceId: String?

    public var resourceLevel: String?

    public var resourceName: String?

    public var resourceQuotaName: String?

    public var resourceType: String?

    public var restartTimes: String?

    public var settings: JobSettings?

    public var status: String?

    public var statusHistory: [StatusTransitionItem]?

    public var subStatus: String?

    public var systemEnvs: [String: String]?

    public var tenantId: String?

    public var thirdpartyLibDir: String?

    public var thirdpartyLibs: [String]?

    public var useOversoldResource: Bool?

    public var userCommand: String?

    public var userId: String?

    public var userScript: String?

    public var userVpc: JobItem.UserVpc?

    public var username: String?

    public var workingDir: String?

    public var workspaceId: String?

    public var workspaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.codeSource?.validate()
        try self.credentialConfig?.validate()
        try self.elasticSpec?.validate()
        try self.jobReplicaStatuses?.validate()
        try self.settings?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.codeSource != nil {
            map["CodeSource"] = self.codeSource?.toMap()
        }
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["DataSources"] = tmp
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.elasticSpec != nil {
            map["ElasticSpec"] = self.elasticSpec?.toMap()
        }
        if self.enablePreemptibleJob != nil {
            map["EnablePreemptibleJob"] = self.enablePreemptibleJob!
        }
        if self.enabledDebugger != nil {
            map["EnabledDebugger"] = self.enabledDebugger!
        }
        if self.envs != nil {
            map["Envs"] = self.envs!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtFailedTime != nil {
            map["GmtFailedTime"] = self.gmtFailedTime!
        }
        if self.gmtFinishTime != nil {
            map["GmtFinishTime"] = self.gmtFinishTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.gmtRunningTime != nil {
            map["GmtRunningTime"] = self.gmtRunningTime!
        }
        if self.gmtStoppedTime != nil {
            map["GmtStoppedTime"] = self.gmtStoppedTime!
        }
        if self.gmtSubmittedTime != nil {
            map["GmtSubmittedTime"] = self.gmtSubmittedTime!
        }
        if self.gmtSuccessedTime != nil {
            map["GmtSuccessedTime"] = self.gmtSuccessedTime!
        }
        if self.isDeleted != nil {
            map["IsDeleted"] = self.isDeleted!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobMaxRunningTimeMinutes != nil {
            map["JobMaxRunningTimeMinutes"] = self.jobMaxRunningTimeMinutes!
        }
        if self.jobReplicaStatuses != nil {
            map["JobReplicaStatuses"] = self.jobReplicaStatuses?.toMap()
        }
        if self.jobSpecs != nil {
            var tmp : [Any] = []
            for k in self.jobSpecs! {
                tmp.append(k.toMap())
            }
            map["JobSpecs"] = tmp
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        if self.nodeNames != nil {
            map["NodeNames"] = self.nodeNames!
        }
        if self.pods != nil {
            var tmp : [Any] = []
            for k in self.pods! {
                tmp.append(k.toMap())
            }
            map["Pods"] = tmp
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
        if self.requestCPU != nil {
            map["RequestCPU"] = self.requestCPU!
        }
        if self.requestGPU != nil {
            map["RequestGPU"] = self.requestGPU!
        }
        if self.requestMemory != nil {
            map["RequestMemory"] = self.requestMemory!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceLevel != nil {
            map["ResourceLevel"] = self.resourceLevel!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceQuotaName != nil {
            map["ResourceQuotaName"] = self.resourceQuotaName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.restartTimes != nil {
            map["RestartTimes"] = self.restartTimes!
        }
        if self.settings != nil {
            map["Settings"] = self.settings?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusHistory != nil {
            var tmp : [Any] = []
            for k in self.statusHistory! {
                tmp.append(k.toMap())
            }
            map["StatusHistory"] = tmp
        }
        if self.subStatus != nil {
            map["SubStatus"] = self.subStatus!
        }
        if self.systemEnvs != nil {
            map["SystemEnvs"] = self.systemEnvs!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.thirdpartyLibDir != nil {
            map["ThirdpartyLibDir"] = self.thirdpartyLibDir!
        }
        if self.thirdpartyLibs != nil {
            map["ThirdpartyLibs"] = self.thirdpartyLibs!
        }
        if self.useOversoldResource != nil {
            map["UseOversoldResource"] = self.useOversoldResource!
        }
        if self.userCommand != nil {
            map["UserCommand"] = self.userCommand!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userScript != nil {
            map["UserScript"] = self.userScript!
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.workingDir != nil {
            map["WorkingDir"] = self.workingDir!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.workspaceName != nil {
            map["WorkspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["CodeSource"] as? [String: Any?] {
            var model = JobItem.CodeSource()
            model.fromMap(value)
            self.codeSource = model
        }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["DataSources"] as? [Any?] {
            var tmp : [JobItem.DataSources] = []
            for v in value {
                if v != nil {
                    var model = JobItem.DataSources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSources = tmp
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Duration"] as? Int64 {
            self.duration = value
        }
        if let value = dict["ElasticSpec"] as? [String: Any?] {
            var model = JobElasticSpec()
            model.fromMap(value)
            self.elasticSpec = model
        }
        if let value = dict["EnablePreemptibleJob"] as? Bool {
            self.enablePreemptibleJob = value
        }
        if let value = dict["EnabledDebugger"] as? Bool {
            self.enabledDebugger = value
        }
        if let value = dict["Envs"] as? [String: String] {
            self.envs = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtFailedTime"] as? String {
            self.gmtFailedTime = value
        }
        if let value = dict["GmtFinishTime"] as? String {
            self.gmtFinishTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["GmtRunningTime"] as? String {
            self.gmtRunningTime = value
        }
        if let value = dict["GmtStoppedTime"] as? String {
            self.gmtStoppedTime = value
        }
        if let value = dict["GmtSubmittedTime"] as? String {
            self.gmtSubmittedTime = value
        }
        if let value = dict["GmtSuccessedTime"] as? String {
            self.gmtSuccessedTime = value
        }
        if let value = dict["IsDeleted"] as? Bool {
            self.isDeleted = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["JobMaxRunningTimeMinutes"] as? Int64 {
            self.jobMaxRunningTimeMinutes = value
        }
        if let value = dict["JobReplicaStatuses"] as? [String: Any?] {
            var model = JobReplicaStatus()
            model.fromMap(value)
            self.jobReplicaStatuses = model
        }
        if let value = dict["JobSpecs"] as? [Any?] {
            var tmp : [JobSpec] = []
            for v in value {
                if v != nil {
                    var model = JobSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobSpecs = tmp
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["NodeCount"] as? String {
            self.nodeCount = value
        }
        if let value = dict["NodeNames"] as? [String] {
            self.nodeNames = value
        }
        if let value = dict["Pods"] as? [Any?] {
            var tmp : [PodItem] = []
            for v in value {
                if v != nil {
                    var model = PodItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.pods = tmp
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["ReasonCode"] as? String {
            self.reasonCode = value
        }
        if let value = dict["ReasonMessage"] as? String {
            self.reasonMessage = value
        }
        if let value = dict["RequestCPU"] as? Int64 {
            self.requestCPU = value
        }
        if let value = dict["RequestGPU"] as? String {
            self.requestGPU = value
        }
        if let value = dict["RequestMemory"] as? String {
            self.requestMemory = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceLevel"] as? String {
            self.resourceLevel = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["ResourceQuotaName"] as? String {
            self.resourceQuotaName = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["RestartTimes"] as? String {
            self.restartTimes = value
        }
        if let value = dict["Settings"] as? [String: Any?] {
            var model = JobSettings()
            model.fromMap(value)
            self.settings = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusHistory"] as? [Any?] {
            var tmp : [StatusTransitionItem] = []
            for v in value {
                if v != nil {
                    var model = StatusTransitionItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.statusHistory = tmp
        }
        if let value = dict["SubStatus"] as? String {
            self.subStatus = value
        }
        if let value = dict["SystemEnvs"] as? [String: String] {
            self.systemEnvs = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ThirdpartyLibDir"] as? String {
            self.thirdpartyLibDir = value
        }
        if let value = dict["ThirdpartyLibs"] as? [String] {
            self.thirdpartyLibs = value
        }
        if let value = dict["UseOversoldResource"] as? Bool {
            self.useOversoldResource = value
        }
        if let value = dict["UserCommand"] as? String {
            self.userCommand = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserScript"] as? String {
            self.userScript = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = JobItem.UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
        if let value = dict["WorkingDir"] as? String {
            self.workingDir = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["WorkspaceName"] as? String {
            self.workspaceName = value
        }
    }
}

public class JobReplicaStatus : Tea.TeaModel {
    public var active: Int32?

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
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Active"] as? Int32 {
            self.active = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class JobSettings : Tea.TeaModel {
    public var advancedSettings: [String: Any]?

    public var allocateAllRDMADevices: Bool?

    public var businessUserId: String?

    public var caller: String?

    public var dataJuicerConfig: DataJuicerConfig?

    public var disableEcsStockCheck: Bool?

    public var driver: String?

    public var enableCPUAffinity: Bool?

    public var enableDSWDev: Bool?

    public var enableErrorMonitoringInAIMaster: Bool?

    public var enableOssAppend: Bool?

    public var enableRDMA: Bool?

    public var enableSanityCheck: Bool?

    public var enableTideResource: Bool?

    public var errorMonitoringArgs: String?

    public var jobReservedMinutes: Int32?

    public var jobReservedPolicy: String?

    public var modelConfig: ModelConfig?

    public var oversoldType: String?

    public var pipelineId: String?

    public var sanityCheckArgs: String?

    public var tags: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataJuicerConfig?.validate()
        try self.modelConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advancedSettings != nil {
            map["AdvancedSettings"] = self.advancedSettings!
        }
        if self.allocateAllRDMADevices != nil {
            map["AllocateAllRDMADevices"] = self.allocateAllRDMADevices!
        }
        if self.businessUserId != nil {
            map["BusinessUserId"] = self.businessUserId!
        }
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.dataJuicerConfig != nil {
            map["DataJuicerConfig"] = self.dataJuicerConfig?.toMap()
        }
        if self.disableEcsStockCheck != nil {
            map["DisableEcsStockCheck"] = self.disableEcsStockCheck!
        }
        if self.driver != nil {
            map["Driver"] = self.driver!
        }
        if self.enableCPUAffinity != nil {
            map["EnableCPUAffinity"] = self.enableCPUAffinity!
        }
        if self.enableDSWDev != nil {
            map["EnableDSWDev"] = self.enableDSWDev!
        }
        if self.enableErrorMonitoringInAIMaster != nil {
            map["EnableErrorMonitoringInAIMaster"] = self.enableErrorMonitoringInAIMaster!
        }
        if self.enableOssAppend != nil {
            map["EnableOssAppend"] = self.enableOssAppend!
        }
        if self.enableRDMA != nil {
            map["EnableRDMA"] = self.enableRDMA!
        }
        if self.enableSanityCheck != nil {
            map["EnableSanityCheck"] = self.enableSanityCheck!
        }
        if self.enableTideResource != nil {
            map["EnableTideResource"] = self.enableTideResource!
        }
        if self.errorMonitoringArgs != nil {
            map["ErrorMonitoringArgs"] = self.errorMonitoringArgs!
        }
        if self.jobReservedMinutes != nil {
            map["JobReservedMinutes"] = self.jobReservedMinutes!
        }
        if self.jobReservedPolicy != nil {
            map["JobReservedPolicy"] = self.jobReservedPolicy!
        }
        if self.modelConfig != nil {
            map["ModelConfig"] = self.modelConfig?.toMap()
        }
        if self.oversoldType != nil {
            map["OversoldType"] = self.oversoldType!
        }
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        if self.sanityCheckArgs != nil {
            map["SanityCheckArgs"] = self.sanityCheckArgs!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdvancedSettings"] as? [String: Any] {
            self.advancedSettings = value
        }
        if let value = dict["AllocateAllRDMADevices"] as? Bool {
            self.allocateAllRDMADevices = value
        }
        if let value = dict["BusinessUserId"] as? String {
            self.businessUserId = value
        }
        if let value = dict["Caller"] as? String {
            self.caller = value
        }
        if let value = dict["DataJuicerConfig"] as? [String: Any?] {
            var model = DataJuicerConfig()
            model.fromMap(value)
            self.dataJuicerConfig = model
        }
        if let value = dict["DisableEcsStockCheck"] as? Bool {
            self.disableEcsStockCheck = value
        }
        if let value = dict["Driver"] as? String {
            self.driver = value
        }
        if let value = dict["EnableCPUAffinity"] as? Bool {
            self.enableCPUAffinity = value
        }
        if let value = dict["EnableDSWDev"] as? Bool {
            self.enableDSWDev = value
        }
        if let value = dict["EnableErrorMonitoringInAIMaster"] as? Bool {
            self.enableErrorMonitoringInAIMaster = value
        }
        if let value = dict["EnableOssAppend"] as? Bool {
            self.enableOssAppend = value
        }
        if let value = dict["EnableRDMA"] as? Bool {
            self.enableRDMA = value
        }
        if let value = dict["EnableSanityCheck"] as? Bool {
            self.enableSanityCheck = value
        }
        if let value = dict["EnableTideResource"] as? Bool {
            self.enableTideResource = value
        }
        if let value = dict["ErrorMonitoringArgs"] as? String {
            self.errorMonitoringArgs = value
        }
        if let value = dict["JobReservedMinutes"] as? Int32 {
            self.jobReservedMinutes = value
        }
        if let value = dict["JobReservedPolicy"] as? String {
            self.jobReservedPolicy = value
        }
        if let value = dict["ModelConfig"] as? [String: Any?] {
            var model = ModelConfig()
            model.fromMap(value)
            self.modelConfig = model
        }
        if let value = dict["OversoldType"] as? String {
            self.oversoldType = value
        }
        if let value = dict["PipelineId"] as? String {
            self.pipelineId = value
        }
        if let value = dict["SanityCheckArgs"] as? String {
            self.sanityCheckArgs = value
        }
        if let value = dict["Tags"] as? [String: String] {
            self.tags = value
        }
    }
}

public class JobSpec : Tea.TeaModel {
    public var assignNodeSpec: AssignNodeSpec?

    public var autoScalingSpec: AutoScalingSpec?

    public var ecsSpec: String?

    public var extraPodSpec: ExtraPodSpec?

    public var image: String?

    public var imageConfig: ImageConfig?

    public var isCheif: Bool?

    public var isChief: Bool?

    public var localMountSpecs: [LocalMountSpec]?

    public var podCount: Int64?

    public var resourceConfig: ResourceConfig?

    public var restartPolicy: String?

    public var serviceSpec: ServiceSpec?

    public var spotSpec: SpotSpec?

    public var systemDisk: SystemDisk?

    public var type: String?

    public var useSpotInstance: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.assignNodeSpec?.validate()
        try self.autoScalingSpec?.validate()
        try self.extraPodSpec?.validate()
        try self.imageConfig?.validate()
        try self.resourceConfig?.validate()
        try self.serviceSpec?.validate()
        try self.spotSpec?.validate()
        try self.systemDisk?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assignNodeSpec != nil {
            map["AssignNodeSpec"] = self.assignNodeSpec?.toMap()
        }
        if self.autoScalingSpec != nil {
            map["AutoScalingSpec"] = self.autoScalingSpec?.toMap()
        }
        if self.ecsSpec != nil {
            map["EcsSpec"] = self.ecsSpec!
        }
        if self.extraPodSpec != nil {
            map["ExtraPodSpec"] = self.extraPodSpec?.toMap()
        }
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.imageConfig != nil {
            map["ImageConfig"] = self.imageConfig?.toMap()
        }
        if self.isCheif != nil {
            map["IsCheif"] = self.isCheif!
        }
        if self.isChief != nil {
            map["IsChief"] = self.isChief!
        }
        if self.localMountSpecs != nil {
            var tmp : [Any] = []
            for k in self.localMountSpecs! {
                tmp.append(k.toMap())
            }
            map["LocalMountSpecs"] = tmp
        }
        if self.podCount != nil {
            map["PodCount"] = self.podCount!
        }
        if self.resourceConfig != nil {
            map["ResourceConfig"] = self.resourceConfig?.toMap()
        }
        if self.restartPolicy != nil {
            map["RestartPolicy"] = self.restartPolicy!
        }
        if self.serviceSpec != nil {
            map["ServiceSpec"] = self.serviceSpec?.toMap()
        }
        if self.spotSpec != nil {
            map["SpotSpec"] = self.spotSpec?.toMap()
        }
        if self.systemDisk != nil {
            map["SystemDisk"] = self.systemDisk?.toMap()
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.useSpotInstance != nil {
            map["UseSpotInstance"] = self.useSpotInstance!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssignNodeSpec"] as? [String: Any?] {
            var model = AssignNodeSpec()
            model.fromMap(value)
            self.assignNodeSpec = model
        }
        if let value = dict["AutoScalingSpec"] as? [String: Any?] {
            var model = AutoScalingSpec()
            model.fromMap(value)
            self.autoScalingSpec = model
        }
        if let value = dict["EcsSpec"] as? String {
            self.ecsSpec = value
        }
        if let value = dict["ExtraPodSpec"] as? [String: Any?] {
            var model = ExtraPodSpec()
            model.fromMap(value)
            self.extraPodSpec = model
        }
        if let value = dict["Image"] as? String {
            self.image = value
        }
        if let value = dict["ImageConfig"] as? [String: Any?] {
            var model = ImageConfig()
            model.fromMap(value)
            self.imageConfig = model
        }
        if let value = dict["IsCheif"] as? Bool {
            self.isCheif = value
        }
        if let value = dict["IsChief"] as? Bool {
            self.isChief = value
        }
        if let value = dict["LocalMountSpecs"] as? [Any?] {
            var tmp : [LocalMountSpec] = []
            for v in value {
                if v != nil {
                    var model = LocalMountSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.localMountSpecs = tmp
        }
        if let value = dict["PodCount"] as? Int64 {
            self.podCount = value
        }
        if let value = dict["ResourceConfig"] as? [String: Any?] {
            var model = ResourceConfig()
            model.fromMap(value)
            self.resourceConfig = model
        }
        if let value = dict["RestartPolicy"] as? String {
            self.restartPolicy = value
        }
        if let value = dict["ServiceSpec"] as? [String: Any?] {
            var model = ServiceSpec()
            model.fromMap(value)
            self.serviceSpec = model
        }
        if let value = dict["SpotSpec"] as? [String: Any?] {
            var model = SpotSpec()
            model.fromMap(value)
            self.spotSpec = model
        }
        if let value = dict["SystemDisk"] as? [String: Any?] {
            var model = SystemDisk()
            model.fromMap(value)
            self.systemDisk = model
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UseSpotInstance"] as? Bool {
            self.useSpotInstance = value
        }
    }
}

public class Lifecycle : Tea.TeaModel {
    public class PostStart : Tea.TeaModel {
        public class Exec : Tea.TeaModel {
            public var command: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.command != nil {
                    map["Command"] = self.command!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Command"] as? [String] {
                    self.command = value
                }
            }
        }
        public var exec: Lifecycle.PostStart.Exec?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.exec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.exec != nil {
                map["Exec"] = self.exec?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Exec"] as? [String: Any?] {
                var model = Lifecycle.PostStart.Exec()
                model.fromMap(value)
                self.exec = model
            }
        }
    }
    public class PreStop : Tea.TeaModel {
        public class Exec : Tea.TeaModel {
            public var command: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.command != nil {
                    map["Command"] = self.command!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Command"] as? [String] {
                    self.command = value
                }
            }
        }
        public var exec: Lifecycle.PreStop.Exec?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.exec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.exec != nil {
                map["Exec"] = self.exec?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Exec"] as? [String: Any?] {
                var model = Lifecycle.PreStop.Exec()
                model.fromMap(value)
                self.exec = model
            }
        }
    }
    public var postStart: Lifecycle.PostStart?

    public var preStop: Lifecycle.PreStop?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.postStart?.validate()
        try self.preStop?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.postStart != nil {
            map["PostStart"] = self.postStart?.toMap()
        }
        if self.preStop != nil {
            map["PreStop"] = self.preStop?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PostStart"] as? [String: Any?] {
            var model = Lifecycle.PostStart()
            model.fromMap(value)
            self.postStart = model
        }
        if let value = dict["PreStop"] as? [String: Any?] {
            var model = Lifecycle.PreStop()
            model.fromMap(value)
            self.preStop = model
        }
    }
}

public class LocalMountSpec : Tea.TeaModel {
    public var localPath: String?

    public var mountMode: String?

    public var mountPath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.localPath != nil {
            map["LocalPath"] = self.localPath!
        }
        if self.mountMode != nil {
            map["MountMode"] = self.mountMode!
        }
        if self.mountPath != nil {
            map["MountPath"] = self.mountPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LocalPath"] as? String {
            self.localPath = value
        }
        if let value = dict["MountMode"] as? String {
            self.mountMode = value
        }
        if let value = dict["MountPath"] as? String {
            self.mountPath = value
        }
    }
}

public class LogInfo : Tea.TeaModel {
    public var content: String?

    public var id: String?

    public var isTruncated: Bool?

    public var podId: String?

    public var podUid: String?

    public var source: String?

    public var time: String?

    public override init() {
        super.init()
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.podId != nil {
            map["PodId"] = self.podId!
        }
        if self.podUid != nil {
            map["PodUid"] = self.podUid!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.time != nil {
            map["Time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["PodId"] as? String {
            self.podId = value
        }
        if let value = dict["PodUid"] as? String {
            self.podUid = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["Time"] as? String {
            self.time = value
        }
    }
}

public class Member : Tea.TeaModel {
    public var memberId: String?

    public var memberType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.memberType != nil {
            map["MemberType"] = self.memberType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MemberId"] as? String {
            self.memberId = value
        }
        if let value = dict["MemberType"] as? String {
            self.memberType = value
        }
    }
}

public class Metric : Tea.TeaModel {
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

public class ModelConfig : Tea.TeaModel {
    public var modelName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ModelName"] as? String {
            self.modelName = value
        }
    }
}

public class NodeMetric : Tea.TeaModel {
    public var metrics: [Metric]?

    public var nodeName: String?

    public override init() {
        super.init()
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
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Metrics"] as? [Any?] {
            var tmp : [Metric] = []
            for v in value {
                if v != nil {
                    var model = Metric()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.metrics = tmp
        }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
        }
    }
}

public class PodItem : Tea.TeaModel {
    public var gmtCreateTime: String?

    public var gmtFinishTime: String?

    public var gmtStartTime: String?

    public var historyPods: [PodItem]?

    public var ip: String?

    public var nodeName: String?

    public var podId: String?

    public var podIp: String?

    public var podIps: [PodNetworkInterface]?

    public var podUid: String?

    public var status: String?

    public var subStatus: String?

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
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtFinishTime != nil {
            map["GmtFinishTime"] = self.gmtFinishTime!
        }
        if self.gmtStartTime != nil {
            map["GmtStartTime"] = self.gmtStartTime!
        }
        if self.historyPods != nil {
            var tmp : [Any] = []
            for k in self.historyPods! {
                tmp.append(k.toMap())
            }
            map["HistoryPods"] = tmp
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.podId != nil {
            map["PodId"] = self.podId!
        }
        if self.podIp != nil {
            map["PodIp"] = self.podIp!
        }
        if self.podIps != nil {
            var tmp : [Any] = []
            for k in self.podIps! {
                tmp.append(k.toMap())
            }
            map["PodIps"] = tmp
        }
        if self.podUid != nil {
            map["PodUid"] = self.podUid!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subStatus != nil {
            map["SubStatus"] = self.subStatus!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtFinishTime"] as? String {
            self.gmtFinishTime = value
        }
        if let value = dict["GmtStartTime"] as? String {
            self.gmtStartTime = value
        }
        if let value = dict["HistoryPods"] as? [Any?] {
            var tmp : [PodItem] = []
            for v in value {
                if v != nil {
                    var model = PodItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.historyPods = tmp
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
        }
        if let value = dict["PodId"] as? String {
            self.podId = value
        }
        if let value = dict["PodIp"] as? String {
            self.podIp = value
        }
        if let value = dict["PodIps"] as? [Any?] {
            var tmp : [PodNetworkInterface] = []
            for v in value {
                if v != nil {
                    var model = PodNetworkInterface()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.podIps = tmp
        }
        if let value = dict["PodUid"] as? String {
            self.podUid = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SubStatus"] as? String {
            self.subStatus = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class PodMetric : Tea.TeaModel {
    public var metrics: [Metric]?

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
            var tmp : [Metric] = []
            for v in value {
                if v != nil {
                    var model = Metric()
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

public class PodNetworkInterface : Tea.TeaModel {
    public var interfaceName: String?

    public var ip: String?

    public override init() {
        super.init()
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
    }
}

public class Quota : Tea.TeaModel {
    public var clusterId: String?

    public var clusterName: String?

    public var quotaConfig: QuotaConfig?

    public var quotaId: String?

    public var quotaName: String?

    public var quotaType: String?

    public var totalQuota: QuotaDetail?

    public var totalTideQuota: QuotaDetail?

    public var usedQuota: QuotaDetail?

    public var usedTideQuota: QuotaDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.quotaConfig?.validate()
        try self.totalQuota?.validate()
        try self.totalTideQuota?.validate()
        try self.usedQuota?.validate()
        try self.usedTideQuota?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.quotaConfig != nil {
            map["QuotaConfig"] = self.quotaConfig?.toMap()
        }
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.quotaName != nil {
            map["QuotaName"] = self.quotaName!
        }
        if self.quotaType != nil {
            map["QuotaType"] = self.quotaType!
        }
        if self.totalQuota != nil {
            map["TotalQuota"] = self.totalQuota?.toMap()
        }
        if self.totalTideQuota != nil {
            map["TotalTideQuota"] = self.totalTideQuota?.toMap()
        }
        if self.usedQuota != nil {
            map["UsedQuota"] = self.usedQuota?.toMap()
        }
        if self.usedTideQuota != nil {
            map["UsedTideQuota"] = self.usedTideQuota?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["QuotaConfig"] as? [String: Any?] {
            var model = QuotaConfig()
            model.fromMap(value)
            self.quotaConfig = model
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["QuotaName"] as? String {
            self.quotaName = value
        }
        if let value = dict["QuotaType"] as? String {
            self.quotaType = value
        }
        if let value = dict["TotalQuota"] as? [String: Any?] {
            var model = QuotaDetail()
            model.fromMap(value)
            self.totalQuota = model
        }
        if let value = dict["TotalTideQuota"] as? [String: Any?] {
            var model = QuotaDetail()
            model.fromMap(value)
            self.totalTideQuota = model
        }
        if let value = dict["UsedQuota"] as? [String: Any?] {
            var model = QuotaDetail()
            model.fromMap(value)
            self.usedQuota = model
        }
        if let value = dict["UsedTideQuota"] as? [String: Any?] {
            var model = QuotaDetail()
            model.fromMap(value)
            self.usedTideQuota = model
        }
    }
}

public class QuotaConfig : Tea.TeaModel {
    public var allowedMaxPriority: Int32?

    public var enableDLC: Bool?

    public var enableDSW: Bool?

    public var enableTideResource: Bool?

    public var resourceLevel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowedMaxPriority != nil {
            map["AllowedMaxPriority"] = self.allowedMaxPriority!
        }
        if self.enableDLC != nil {
            map["EnableDLC"] = self.enableDLC!
        }
        if self.enableDSW != nil {
            map["EnableDSW"] = self.enableDSW!
        }
        if self.enableTideResource != nil {
            map["EnableTideResource"] = self.enableTideResource!
        }
        if self.resourceLevel != nil {
            map["ResourceLevel"] = self.resourceLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowedMaxPriority"] as? Int32 {
            self.allowedMaxPriority = value
        }
        if let value = dict["EnableDLC"] as? Bool {
            self.enableDLC = value
        }
        if let value = dict["EnableDSW"] as? Bool {
            self.enableDSW = value
        }
        if let value = dict["EnableTideResource"] as? Bool {
            self.enableTideResource = value
        }
        if let value = dict["ResourceLevel"] as? String {
            self.resourceLevel = value
        }
    }
}

public class QuotaDetail : Tea.TeaModel {
    public var CPU: String?

    public var GPU: String?

    public var GPUDetails: [GPUDetail]?

    public var GPUType: String?

    public var GPUTypeFullName: String?

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
        if self.CPU != nil {
            map["CPU"] = self.CPU!
        }
        if self.GPU != nil {
            map["GPU"] = self.GPU!
        }
        if self.GPUDetails != nil {
            var tmp : [Any] = []
            for k in self.GPUDetails! {
                tmp.append(k.toMap())
            }
            map["GPUDetails"] = tmp
        }
        if self.GPUType != nil {
            map["GPUType"] = self.GPUType!
        }
        if self.GPUTypeFullName != nil {
            map["GPUTypeFullName"] = self.GPUTypeFullName!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
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
        if let value = dict["GPUDetails"] as? [Any?] {
            var tmp : [GPUDetail] = []
            for v in value {
                if v != nil {
                    var model = GPUDetail()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.GPUDetails = tmp
        }
        if let value = dict["GPUType"] as? String {
            self.GPUType = value
        }
        if let value = dict["GPUTypeFullName"] as? String {
            self.GPUTypeFullName = value
        }
        if let value = dict["Memory"] as? String {
            self.memory = value
        }
    }
}

public class ResourceConfig : Tea.TeaModel {
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

public class ResourceRequirements : Tea.TeaModel {
    public var limits: [String: String]?

    public var requests: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.limits != nil {
            map["Limits"] = self.limits!
        }
        if self.requests != nil {
            map["Requests"] = self.requests!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Limits"] as? [String: String] {
            self.limits = value
        }
        if let value = dict["Requests"] as? [String: String] {
            self.requests = value
        }
    }
}

public class Resources : Tea.TeaModel {
    public var CPU: String?

    public var GPU: String?

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
        if self.CPU != nil {
            map["CPU"] = self.CPU!
        }
        if self.GPU != nil {
            map["GPU"] = self.GPU!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
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
        if let value = dict["Memory"] as? String {
            self.memory = value
        }
    }
}

public class SanityCheckResultItem : Tea.TeaModel {
    public var checkNumber: Int32?

    public var finishedAt: String?

    public var message: String?

    public var phase: String?

    public var startedAt: String?

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
        if self.checkNumber != nil {
            map["CheckNumber"] = self.checkNumber!
        }
        if self.finishedAt != nil {
            map["FinishedAt"] = self.finishedAt!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.startedAt != nil {
            map["StartedAt"] = self.startedAt!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckNumber"] as? Int32 {
            self.checkNumber = value
        }
        if let value = dict["FinishedAt"] as? String {
            self.finishedAt = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Phase"] as? String {
            self.phase = value
        }
        if let value = dict["StartedAt"] as? String {
            self.startedAt = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class SeccompProfile : Tea.TeaModel {
    public var localhostProfile: String?

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
        if self.localhostProfile != nil {
            map["LocalhostProfile"] = self.localhostProfile!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LocalhostProfile"] as? String {
            self.localhostProfile = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class SecurityContext : Tea.TeaModel {
    public var capabilities: SecurityContextCapabilities?

    public var privileged: Bool?

    public var runAsGroup: Int64?

    public var runAsUser: Int64?

    public var seccompProfile: SeccompProfile?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.capabilities?.validate()
        try self.seccompProfile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.capabilities != nil {
            map["Capabilities"] = self.capabilities?.toMap()
        }
        if self.privileged != nil {
            map["Privileged"] = self.privileged!
        }
        if self.runAsGroup != nil {
            map["RunAsGroup"] = self.runAsGroup!
        }
        if self.runAsUser != nil {
            map["RunAsUser"] = self.runAsUser!
        }
        if self.seccompProfile != nil {
            map["SeccompProfile"] = self.seccompProfile?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Capabilities"] as? [String: Any?] {
            var model = SecurityContextCapabilities()
            model.fromMap(value)
            self.capabilities = model
        }
        if let value = dict["Privileged"] as? Bool {
            self.privileged = value
        }
        if let value = dict["RunAsGroup"] as? Int64 {
            self.runAsGroup = value
        }
        if let value = dict["RunAsUser"] as? Int64 {
            self.runAsUser = value
        }
        if let value = dict["SeccompProfile"] as? [String: Any?] {
            var model = SeccompProfile()
            model.fromMap(value)
            self.seccompProfile = model
        }
    }
}

public class SecurityContextCapabilities : Tea.TeaModel {
    public var add: [String]?

    public var drop: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.add != nil {
            map["Add"] = self.add!
        }
        if self.drop != nil {
            map["Drop"] = self.drop!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Add"] as? [String] {
            self.add = value
        }
        if let value = dict["Drop"] as? [String] {
            self.drop = value
        }
    }
}

public class ServiceExposure : Tea.TeaModel {
    public var displayName: String?

    public var jobId: String?

    public var message: String?

    public var podId: String?

    public var port: Int32?

    public var serviceId: String?

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
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.podId != nil {
            map["PodId"] = self.podId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PodId"] as? String {
            self.podId = value
        }
        if let value = dict["Port"] as? Int32 {
            self.port = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ServiceSpec : Tea.TeaModel {
    public var defaultPort: Int32?

    public var extraPorts: [Int32]?

    public var serviceMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultPort != nil {
            map["DefaultPort"] = self.defaultPort!
        }
        if self.extraPorts != nil {
            map["ExtraPorts"] = self.extraPorts!
        }
        if self.serviceMode != nil {
            map["ServiceMode"] = self.serviceMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultPort"] as? Int32 {
            self.defaultPort = value
        }
        if let value = dict["ExtraPorts"] as? [Int32] {
            self.extraPorts = value
        }
        if let value = dict["ServiceMode"] as? String {
            self.serviceMode = value
        }
    }
}

public class SmartCache : Tea.TeaModel {
    public var cacheWorkerNum: Int64?

    public var cacheWorkerSize: Int64?

    public var description_: String?

    public var displayName: String?

    public var duration: String?

    public var endpoint: String?

    public var fileSystemId: String?

    public var gmtCreateTime: String?

    public var gmtModifyTime: String?

    public var mountPath: String?

    public var options: String?

    public var path: String?

    public var smartCacheId: String?

    public var status: String?

    public var type: String?

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
        if self.cacheWorkerNum != nil {
            map["CacheWorkerNum"] = self.cacheWorkerNum!
        }
        if self.cacheWorkerSize != nil {
            map["CacheWorkerSize"] = self.cacheWorkerSize!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifyTime != nil {
            map["GmtModifyTime"] = self.gmtModifyTime!
        }
        if self.mountPath != nil {
            map["MountPath"] = self.mountPath!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.smartCacheId != nil {
            map["SmartCacheId"] = self.smartCacheId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CacheWorkerNum"] as? Int64 {
            self.cacheWorkerNum = value
        }
        if let value = dict["CacheWorkerSize"] as? Int64 {
            self.cacheWorkerSize = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Duration"] as? String {
            self.duration = value
        }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifyTime"] as? String {
            self.gmtModifyTime = value
        }
        if let value = dict["MountPath"] as? String {
            self.mountPath = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["SmartCacheId"] as? String {
            self.smartCacheId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class SpotSpec : Tea.TeaModel {
    public var spotDiscountLimit: Double?

    public var spotPriceLimit: Double?

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
        if let value = dict["SpotDiscountLimit"] as? Double {
            self.spotDiscountLimit = value
        }
        if let value = dict["SpotPriceLimit"] as? Double {
            self.spotPriceLimit = value
        }
        if let value = dict["SpotStrategy"] as? String {
            self.spotStrategy = value
        }
    }
}

public class StatusTransitionItem : Tea.TeaModel {
    public var endTime: String?

    public var reasonCode: String?

    public var reasonMessage: String?

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
        if self.reasonCode != nil {
            map["ReasonCode"] = self.reasonCode!
        }
        if self.reasonMessage != nil {
            map["ReasonMessage"] = self.reasonMessage!
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
        if let value = dict["ReasonCode"] as? String {
            self.reasonCode = value
        }
        if let value = dict["ReasonMessage"] as? String {
            self.reasonMessage = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class SystemDisk : Tea.TeaModel {
    public var category: String?

    public var performanceLevel: String?

    public var size: Int64?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["PerformanceLevel"] as? String {
            self.performanceLevel = value
        }
        if let value = dict["Size"] as? Int64 {
            self.size = value
        }
    }
}

public class Tensorboard : Tea.TeaModel {
    public var accessibility: String?

    public var cpu: Int64?

    public var dataSourceId: String?

    public var dataSourceType: String?

    public var displayName: String?

    public var duration: String?

    public var gmtCreateTime: String?

    public var gmtFinishTime: String?

    public var gmtModifyTime: String?

    public var jobId: String?

    public var maxRunningTimeMinutes: Int64?

    public var memory: Int64?

    public var options: String?

    public var priority: String?

    public var quotaId: String?

    public var quotaName: String?

    public var reasonCode: String?

    public var reasonMessage: String?

    public var requestId: String?

    public var status: String?

    public var summaryPath: String?

    public var summaryRelativePath: String?

    public var tensorboardDataSources: [TensorboardDataSourceSpec]?

    public var tensorboardId: String?

    public var tensorboardSpec: TensorboardSpec?

    public var tensorboardUrl: String?

    public var token: String?

    public var userId: String?

    public var username: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tensorboardSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtFinishTime != nil {
            map["GmtFinishTime"] = self.gmtFinishTime!
        }
        if self.gmtModifyTime != nil {
            map["GmtModifyTime"] = self.gmtModifyTime!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.maxRunningTimeMinutes != nil {
            map["MaxRunningTimeMinutes"] = self.maxRunningTimeMinutes!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.quotaName != nil {
            map["QuotaName"] = self.quotaName!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.summaryPath != nil {
            map["SummaryPath"] = self.summaryPath!
        }
        if self.summaryRelativePath != nil {
            map["SummaryRelativePath"] = self.summaryRelativePath!
        }
        if self.tensorboardDataSources != nil {
            var tmp : [Any] = []
            for k in self.tensorboardDataSources! {
                tmp.append(k.toMap())
            }
            map["TensorboardDataSources"] = tmp
        }
        if self.tensorboardId != nil {
            map["TensorboardId"] = self.tensorboardId!
        }
        if self.tensorboardSpec != nil {
            map["TensorboardSpec"] = self.tensorboardSpec?.toMap()
        }
        if self.tensorboardUrl != nil {
            map["TensorboardUrl"] = self.tensorboardUrl!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Cpu"] as? Int64 {
            self.cpu = value
        }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Duration"] as? String {
            self.duration = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtFinishTime"] as? String {
            self.gmtFinishTime = value
        }
        if let value = dict["GmtModifyTime"] as? String {
            self.gmtModifyTime = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["MaxRunningTimeMinutes"] as? Int64 {
            self.maxRunningTimeMinutes = value
        }
        if let value = dict["Memory"] as? Int64 {
            self.memory = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["Priority"] as? String {
            self.priority = value
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["QuotaName"] as? String {
            self.quotaName = value
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
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SummaryPath"] as? String {
            self.summaryPath = value
        }
        if let value = dict["SummaryRelativePath"] as? String {
            self.summaryRelativePath = value
        }
        if let value = dict["TensorboardDataSources"] as? [Any?] {
            var tmp : [TensorboardDataSourceSpec] = []
            for v in value {
                if v != nil {
                    var model = TensorboardDataSourceSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tensorboardDataSources = tmp
        }
        if let value = dict["TensorboardId"] as? String {
            self.tensorboardId = value
        }
        if let value = dict["TensorboardSpec"] as? [String: Any?] {
            var model = TensorboardSpec()
            model.fromMap(value)
            self.tensorboardSpec = model
        }
        if let value = dict["TensorboardUrl"] as? String {
            self.tensorboardUrl = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class TensorboardDataSourceSpec : Tea.TeaModel {
    public var dataSourceType: String?

    public var directoryName: String?

    public var fullSummaryPath: String?

    public var id: String?

    public var name: String?

    public var sourceType: String?

    public var summaryPath: String?

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
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.directoryName != nil {
            map["DirectoryName"] = self.directoryName!
        }
        if self.fullSummaryPath != nil {
            map["FullSummaryPath"] = self.fullSummaryPath!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.summaryPath != nil {
            map["SummaryPath"] = self.summaryPath!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["DirectoryName"] as? String {
            self.directoryName = value
        }
        if let value = dict["FullSummaryPath"] as? String {
            self.fullSummaryPath = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["SummaryPath"] as? String {
            self.summaryPath = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
    }
}

public class TensorboardSpec : Tea.TeaModel {
    public var ecsType: String?

    public var securityGroupId: String?

    public var switchId: String?

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
        if self.ecsType != nil {
            map["EcsType"] = self.ecsType!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.switchId != nil {
            map["SwitchId"] = self.switchId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcsType"] as? String {
            self.ecsType = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["SwitchId"] as? String {
            self.switchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class Workspace : Tea.TeaModel {
    public var creator: String?

    public var gmtCreateTime: String?

    public var gmtModifyTime: String?

    public var members: [Member]?

    public var quotas: [Quota]?

    public var totalResources: Resources?

    public var workspaceAdmins: [Member]?

    public var workspaceId: String?

    public var workspaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.totalResources?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifyTime != nil {
            map["GmtModifyTime"] = self.gmtModifyTime!
        }
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["Members"] = tmp
        }
        if self.quotas != nil {
            var tmp : [Any] = []
            for k in self.quotas! {
                tmp.append(k.toMap())
            }
            map["Quotas"] = tmp
        }
        if self.totalResources != nil {
            map["TotalResources"] = self.totalResources?.toMap()
        }
        if self.workspaceAdmins != nil {
            var tmp : [Any] = []
            for k in self.workspaceAdmins! {
                tmp.append(k.toMap())
            }
            map["WorkspaceAdmins"] = tmp
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.workspaceName != nil {
            map["WorkspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifyTime"] as? String {
            self.gmtModifyTime = value
        }
        if let value = dict["Members"] as? [Any?] {
            var tmp : [Member] = []
            for v in value {
                if v != nil {
                    var model = Member()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.members = tmp
        }
        if let value = dict["Quotas"] as? [Any?] {
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
        if let value = dict["TotalResources"] as? [String: Any?] {
            var model = Resources()
            model.fromMap(value)
            self.totalResources = model
        }
        if let value = dict["WorkspaceAdmins"] as? [Any?] {
            var tmp : [Member] = []
            for v in value {
                if v != nil {
                    var model = Member()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.workspaceAdmins = tmp
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["WorkspaceName"] as? String {
            self.workspaceName = value
        }
    }
}

public class CreateJobRequest : Tea.TeaModel {
    public class CodeSource : Tea.TeaModel {
        public var branch: String?

        public var codeSourceId: String?

        public var commit: String?

        public var mountPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.branch != nil {
                map["Branch"] = self.branch!
            }
            if self.codeSourceId != nil {
                map["CodeSourceId"] = self.codeSourceId!
            }
            if self.commit != nil {
                map["Commit"] = self.commit!
            }
            if self.mountPath != nil {
                map["MountPath"] = self.mountPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Branch"] as? String {
                self.branch = value
            }
            if let value = dict["CodeSourceId"] as? String {
                self.codeSourceId = value
            }
            if let value = dict["Commit"] as? String {
                self.commit = value
            }
            if let value = dict["MountPath"] as? String {
                self.mountPath = value
            }
        }
    }
    public class DataSources : Tea.TeaModel {
        public var dataSourceId: String?

        public var dataSourceVersion: String?

        public var enableCache: Bool?

        public var mountAccess: String?

        public var mountPath: String?

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
            if self.dataSourceId != nil {
                map["DataSourceId"] = self.dataSourceId!
            }
            if self.dataSourceVersion != nil {
                map["DataSourceVersion"] = self.dataSourceVersion!
            }
            if self.enableCache != nil {
                map["EnableCache"] = self.enableCache!
            }
            if self.mountAccess != nil {
                map["MountAccess"] = self.mountAccess!
            }
            if self.mountPath != nil {
                map["MountPath"] = self.mountPath!
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
            if let value = dict["DataSourceId"] as? String {
                self.dataSourceId = value
            }
            if let value = dict["DataSourceVersion"] as? String {
                self.dataSourceVersion = value
            }
            if let value = dict["EnableCache"] as? Bool {
                self.enableCache = value
            }
            if let value = dict["MountAccess"] as? String {
                self.mountAccess = value
            }
            if let value = dict["MountPath"] as? String {
                self.mountPath = value
            }
            if let value = dict["Options"] as? String {
                self.options = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
        }
    }
    public class UserVpc : Tea.TeaModel {
        public var defaultRoute: String?

        public var extendedCIDRs: [String]?

        public var securityGroupId: String?

        public var switchId: String?

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
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.switchId != nil {
                map["SwitchId"] = self.switchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefaultRoute"] as? String {
                self.defaultRoute = value
            }
            if let value = dict["ExtendedCIDRs"] as? [String] {
                self.extendedCIDRs = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["SwitchId"] as? String {
                self.switchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accessibility: String?

    public var codeSource: CreateJobRequest.CodeSource?

    public var credentialConfig: CredentialConfig?

    public var dataSources: [CreateJobRequest.DataSources]?

    public var debuggerConfigContent: String?

    public var displayName: String?

    public var elasticSpec: JobElasticSpec?

    public var envs: [String: String]?

    public var jobMaxRunningTimeMinutes: Int64?

    public var jobSpecs: [JobSpec]?

    public var jobType: String?

    public var options: String?

    public var priority: Int32?

    public var resourceId: String?

    public var settings: JobSettings?

    public var successPolicy: String?

    public var thirdpartyLibDir: String?

    public var thirdpartyLibs: [String]?

    public var userCommand: String?

    public var userVpc: CreateJobRequest.UserVpc?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.codeSource?.validate()
        try self.credentialConfig?.validate()
        try self.elasticSpec?.validate()
        try self.settings?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.codeSource != nil {
            map["CodeSource"] = self.codeSource?.toMap()
        }
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["DataSources"] = tmp
        }
        if self.debuggerConfigContent != nil {
            map["DebuggerConfigContent"] = self.debuggerConfigContent!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.elasticSpec != nil {
            map["ElasticSpec"] = self.elasticSpec?.toMap()
        }
        if self.envs != nil {
            map["Envs"] = self.envs!
        }
        if self.jobMaxRunningTimeMinutes != nil {
            map["JobMaxRunningTimeMinutes"] = self.jobMaxRunningTimeMinutes!
        }
        if self.jobSpecs != nil {
            var tmp : [Any] = []
            for k in self.jobSpecs! {
                tmp.append(k.toMap())
            }
            map["JobSpecs"] = tmp
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.settings != nil {
            map["Settings"] = self.settings?.toMap()
        }
        if self.successPolicy != nil {
            map["SuccessPolicy"] = self.successPolicy!
        }
        if self.thirdpartyLibDir != nil {
            map["ThirdpartyLibDir"] = self.thirdpartyLibDir!
        }
        if self.thirdpartyLibs != nil {
            map["ThirdpartyLibs"] = self.thirdpartyLibs!
        }
        if self.userCommand != nil {
            map["UserCommand"] = self.userCommand!
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["CodeSource"] as? [String: Any?] {
            var model = CreateJobRequest.CodeSource()
            model.fromMap(value)
            self.codeSource = model
        }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["DataSources"] as? [Any?] {
            var tmp : [CreateJobRequest.DataSources] = []
            for v in value {
                if v != nil {
                    var model = CreateJobRequest.DataSources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSources = tmp
        }
        if let value = dict["DebuggerConfigContent"] as? String {
            self.debuggerConfigContent = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["ElasticSpec"] as? [String: Any?] {
            var model = JobElasticSpec()
            model.fromMap(value)
            self.elasticSpec = model
        }
        if let value = dict["Envs"] as? [String: String] {
            self.envs = value
        }
        if let value = dict["JobMaxRunningTimeMinutes"] as? Int64 {
            self.jobMaxRunningTimeMinutes = value
        }
        if let value = dict["JobSpecs"] as? [Any?] {
            var tmp : [JobSpec] = []
            for v in value {
                if v != nil {
                    var model = JobSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobSpecs = tmp
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["Settings"] as? [String: Any?] {
            var model = JobSettings()
            model.fromMap(value)
            self.settings = model
        }
        if let value = dict["SuccessPolicy"] as? String {
            self.successPolicy = value
        }
        if let value = dict["ThirdpartyLibDir"] as? String {
            self.thirdpartyLibDir = value
        }
        if let value = dict["ThirdpartyLibs"] as? [String] {
            self.thirdpartyLibs = value
        }
        if let value = dict["UserCommand"] as? String {
            self.userCommand = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = CreateJobRequest.UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateJobResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateJobResponseBody?

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
            var model = CreateJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTensorboardRequest : Tea.TeaModel {
    public var accessibility: String?

    public var cpu: Int64?

    public var dataSourceId: String?

    public var dataSourceType: String?

    public var dataSources: [DataSourceItem]?

    public var displayName: String?

    public var jobId: String?

    public var maxRunningTimeMinutes: Int64?

    public var memory: Int64?

    public var options: String?

    public var priority: String?

    public var quotaId: String?

    public var sourceId: String?

    public var sourceType: String?

    public var summaryPath: String?

    public var summaryRelativePath: String?

    public var tensorboardDataSources: [TensorboardDataSourceSpec]?

    public var tensorboardSpec: TensorboardSpec?

    public var uri: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tensorboardSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["DataSources"] = tmp
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.maxRunningTimeMinutes != nil {
            map["MaxRunningTimeMinutes"] = self.maxRunningTimeMinutes!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.summaryPath != nil {
            map["SummaryPath"] = self.summaryPath!
        }
        if self.summaryRelativePath != nil {
            map["SummaryRelativePath"] = self.summaryRelativePath!
        }
        if self.tensorboardDataSources != nil {
            var tmp : [Any] = []
            for k in self.tensorboardDataSources! {
                tmp.append(k.toMap())
            }
            map["TensorboardDataSources"] = tmp
        }
        if self.tensorboardSpec != nil {
            map["TensorboardSpec"] = self.tensorboardSpec?.toMap()
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Cpu"] as? Int64 {
            self.cpu = value
        }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["DataSources"] as? [Any?] {
            var tmp : [DataSourceItem] = []
            for v in value {
                if v != nil {
                    var model = DataSourceItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSources = tmp
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["MaxRunningTimeMinutes"] as? Int64 {
            self.maxRunningTimeMinutes = value
        }
        if let value = dict["Memory"] as? Int64 {
            self.memory = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["Priority"] as? String {
            self.priority = value
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["SummaryPath"] as? String {
            self.summaryPath = value
        }
        if let value = dict["SummaryRelativePath"] as? String {
            self.summaryRelativePath = value
        }
        if let value = dict["TensorboardDataSources"] as? [Any?] {
            var tmp : [TensorboardDataSourceSpec] = []
            for v in value {
                if v != nil {
                    var model = TensorboardDataSourceSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tensorboardDataSources = tmp
        }
        if let value = dict["TensorboardSpec"] as? [String: Any?] {
            var model = TensorboardSpec()
            model.fromMap(value)
            self.tensorboardSpec = model
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateTensorboardResponseBody : Tea.TeaModel {
    public var dataSourceId: String?

    public var jobId: String?

    public var requestId: String?

    public var tensorboardId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tensorboardId != nil {
            map["TensorboardId"] = self.tensorboardId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TensorboardId"] as? String {
            self.tensorboardId = value
        }
    }
}

public class CreateTensorboardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTensorboardResponseBody?

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
            var model = CreateTensorboardResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteJobResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteJobResponseBody?

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
            var model = DeleteJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTensorboardRequest : Tea.TeaModel {
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteTensorboardResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tensorboardId: String?

    public override init() {
        super.init()
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
        if self.tensorboardId != nil {
            map["TensorboardId"] = self.tensorboardId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TensorboardId"] as? String {
            self.tensorboardId = value
        }
    }
}

public class DeleteTensorboardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTensorboardResponseBody?

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
            var model = DeleteTensorboardResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDashboardRequest : Tea.TeaModel {
    public var isShared: Bool?

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
        if self.isShared != nil {
            map["isShared"] = self.isShared!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["isShared"] as? Bool {
            self.isShared = value
        }
        if let value = dict["token"] as? String {
            self.token = value
        }
    }
}

public class GetDashboardResponseBody : Tea.TeaModel {
    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["url"] as? String {
            self.url = value
        }
    }
}

public class GetDashboardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDashboardResponseBody?

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
            var model = GetDashboardResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobRequest : Tea.TeaModel {
    public var needDetail: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.needDetail != nil {
            map["NeedDetail"] = self.needDetail!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NeedDetail"] as? Bool {
            self.needDetail = value
        }
    }
}

public class GetJobResponseBody : Tea.TeaModel {
    public class CodeSource : Tea.TeaModel {
        public var branch: String?

        public var codeSourceId: String?

        public var commit: String?

        public var mountPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.branch != nil {
                map["Branch"] = self.branch!
            }
            if self.codeSourceId != nil {
                map["CodeSourceId"] = self.codeSourceId!
            }
            if self.commit != nil {
                map["Commit"] = self.commit!
            }
            if self.mountPath != nil {
                map["MountPath"] = self.mountPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Branch"] as? String {
                self.branch = value
            }
            if let value = dict["CodeSourceId"] as? String {
                self.codeSourceId = value
            }
            if let value = dict["Commit"] as? String {
                self.commit = value
            }
            if let value = dict["MountPath"] as? String {
                self.mountPath = value
            }
        }
    }
    public class DataSources : Tea.TeaModel {
        public var dataSourceId: String?

        public var mountPath: String?

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
            if self.dataSourceId != nil {
                map["DataSourceId"] = self.dataSourceId!
            }
            if self.mountPath != nil {
                map["MountPath"] = self.mountPath!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataSourceId"] as? String {
                self.dataSourceId = value
            }
            if let value = dict["MountPath"] as? String {
                self.mountPath = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
        }
    }
    public class Pods : Tea.TeaModel {
        public class HistoryPods : Tea.TeaModel {
            public var gmtCreateTime: String?

            public var gmtFinishTime: String?

            public var gmtStartTime: String?

            public var ip: String?

            public var podId: String?

            public var podUid: String?

            public var resourceType: String?

            public var status: String?

            public var subStatus: String?

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
                if self.gmtCreateTime != nil {
                    map["GmtCreateTime"] = self.gmtCreateTime!
                }
                if self.gmtFinishTime != nil {
                    map["GmtFinishTime"] = self.gmtFinishTime!
                }
                if self.gmtStartTime != nil {
                    map["GmtStartTime"] = self.gmtStartTime!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.podId != nil {
                    map["PodId"] = self.podId!
                }
                if self.podUid != nil {
                    map["PodUid"] = self.podUid!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.subStatus != nil {
                    map["SubStatus"] = self.subStatus!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GmtCreateTime"] as? String {
                    self.gmtCreateTime = value
                }
                if let value = dict["GmtFinishTime"] as? String {
                    self.gmtFinishTime = value
                }
                if let value = dict["GmtStartTime"] as? String {
                    self.gmtStartTime = value
                }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
                if let value = dict["PodId"] as? String {
                    self.podId = value
                }
                if let value = dict["PodUid"] as? String {
                    self.podUid = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["SubStatus"] as? String {
                    self.subStatus = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var gmtCreateTime: String?

        public var gmtFinishTime: String?

        public var gmtStartTime: String?

        public var historyPods: [GetJobResponseBody.Pods.HistoryPods]?

        public var ip: String?

        public var podId: String?

        public var podUid: String?

        public var resourceType: String?

        public var status: String?

        public var subStatus: String?

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
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtFinishTime != nil {
                map["GmtFinishTime"] = self.gmtFinishTime!
            }
            if self.gmtStartTime != nil {
                map["GmtStartTime"] = self.gmtStartTime!
            }
            if self.historyPods != nil {
                var tmp : [Any] = []
                for k in self.historyPods! {
                    tmp.append(k.toMap())
                }
                map["HistoryPods"] = tmp
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.podId != nil {
                map["PodId"] = self.podId!
            }
            if self.podUid != nil {
                map["PodUid"] = self.podUid!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subStatus != nil {
                map["SubStatus"] = self.subStatus!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtFinishTime"] as? String {
                self.gmtFinishTime = value
            }
            if let value = dict["GmtStartTime"] as? String {
                self.gmtStartTime = value
            }
            if let value = dict["HistoryPods"] as? [Any?] {
                var tmp : [GetJobResponseBody.Pods.HistoryPods] = []
                for v in value {
                    if v != nil {
                        var model = GetJobResponseBody.Pods.HistoryPods()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.historyPods = tmp
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["PodId"] as? String {
                self.podId = value
            }
            if let value = dict["PodUid"] as? String {
                self.podUid = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubStatus"] as? String {
                self.subStatus = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class RestartRecord : Tea.TeaModel {
        public class DetailErrorInfoList : Tea.TeaModel {
            public var addJobLevelBlacklist: Bool?

            public var addNodeToBlacklist: Bool?

            public var detailErrorMsg: String?

            public var errorCode: String?

            public var errorMsg: String?

            public var errorSource: String?

            public var node: String?

            public var pod: String?

            public var triggerRestart: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addJobLevelBlacklist != nil {
                    map["AddJobLevelBlacklist"] = self.addJobLevelBlacklist!
                }
                if self.addNodeToBlacklist != nil {
                    map["AddNodeToBlacklist"] = self.addNodeToBlacklist!
                }
                if self.detailErrorMsg != nil {
                    map["DetailErrorMsg"] = self.detailErrorMsg!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMsg != nil {
                    map["ErrorMsg"] = self.errorMsg!
                }
                if self.errorSource != nil {
                    map["ErrorSource"] = self.errorSource!
                }
                if self.node != nil {
                    map["Node"] = self.node!
                }
                if self.pod != nil {
                    map["Pod"] = self.pod!
                }
                if self.triggerRestart != nil {
                    map["TriggerRestart"] = self.triggerRestart!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AddJobLevelBlacklist"] as? Bool {
                    self.addJobLevelBlacklist = value
                }
                if let value = dict["AddNodeToBlacklist"] as? Bool {
                    self.addNodeToBlacklist = value
                }
                if let value = dict["DetailErrorMsg"] as? String {
                    self.detailErrorMsg = value
                }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ErrorMsg"] as? String {
                    self.errorMsg = value
                }
                if let value = dict["ErrorSource"] as? String {
                    self.errorSource = value
                }
                if let value = dict["Node"] as? String {
                    self.node = value
                }
                if let value = dict["Pod"] as? String {
                    self.pod = value
                }
                if let value = dict["TriggerRestart"] as? Bool {
                    self.triggerRestart = value
                }
            }
        }
        public var detailErrorInfoList: [GetJobResponseBody.RestartRecord.DetailErrorInfoList]?

        public var jobRestartCount: Int64?

        public var occurPhase: String?

        public var occurTime: String?

        public var reason: String?

        public var restartDurationInSec: Int64?

        public var restartFailReason: String?

        public var restartStatus: String?

        public var triggerID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detailErrorInfoList != nil {
                var tmp : [Any] = []
                for k in self.detailErrorInfoList! {
                    tmp.append(k.toMap())
                }
                map["DetailErrorInfoList"] = tmp
            }
            if self.jobRestartCount != nil {
                map["JobRestartCount"] = self.jobRestartCount!
            }
            if self.occurPhase != nil {
                map["OccurPhase"] = self.occurPhase!
            }
            if self.occurTime != nil {
                map["OccurTime"] = self.occurTime!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.restartDurationInSec != nil {
                map["RestartDurationInSec"] = self.restartDurationInSec!
            }
            if self.restartFailReason != nil {
                map["RestartFailReason"] = self.restartFailReason!
            }
            if self.restartStatus != nil {
                map["RestartStatus"] = self.restartStatus!
            }
            if self.triggerID != nil {
                map["TriggerID"] = self.triggerID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DetailErrorInfoList"] as? [Any?] {
                var tmp : [GetJobResponseBody.RestartRecord.DetailErrorInfoList] = []
                for v in value {
                    if v != nil {
                        var model = GetJobResponseBody.RestartRecord.DetailErrorInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.detailErrorInfoList = tmp
            }
            if let value = dict["JobRestartCount"] as? Int64 {
                self.jobRestartCount = value
            }
            if let value = dict["OccurPhase"] as? String {
                self.occurPhase = value
            }
            if let value = dict["OccurTime"] as? String {
                self.occurTime = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["RestartDurationInSec"] as? Int64 {
                self.restartDurationInSec = value
            }
            if let value = dict["RestartFailReason"] as? String {
                self.restartFailReason = value
            }
            if let value = dict["RestartStatus"] as? String {
                self.restartStatus = value
            }
            if let value = dict["TriggerID"] as? String {
                self.triggerID = value
            }
        }
    }
    public class UserVpc : Tea.TeaModel {
        public var defaultRoute: String?

        public var extendedCidrs: [String]?

        public var securityGroupId: String?

        public var switchId: String?

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
            if self.extendedCidrs != nil {
                map["ExtendedCidrs"] = self.extendedCidrs!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.switchId != nil {
                map["SwitchId"] = self.switchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefaultRoute"] as? String {
                self.defaultRoute = value
            }
            if let value = dict["ExtendedCidrs"] as? [String] {
                self.extendedCidrs = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["SwitchId"] as? String {
                self.switchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accessibility: String?

    public var clusterId: String?

    public var codeSource: GetJobResponseBody.CodeSource?

    public var credentialConfig: CredentialConfig?

    public var dataSources: [GetJobResponseBody.DataSources]?

    public var displayName: String?

    public var duration: Int64?

    public var elasticSpec: JobElasticSpec?

    public var enabledDebugger: Bool?

    public var envs: [String: String]?

    public var gmtCreateTime: String?

    public var gmtFailedTime: String?

    public var gmtFinishTime: String?

    public var gmtRunningTime: String?

    public var gmtStoppedTime: String?

    public var gmtSubmittedTime: String?

    public var gmtSuccessedTime: String?

    public var jobId: String?

    public var jobReplicaStatuses: [JobReplicaStatus]?

    public var jobSpecs: [JobSpec]?

    public var jobType: String?

    public var pods: [GetJobResponseBody.Pods]?

    public var priority: Int32?

    public var reasonCode: String?

    public var reasonMessage: String?

    public var requestId: String?

    public var resourceId: String?

    public var resourceLevel: String?

    public var resourceType: String?

    public var restartRecord: [GetJobResponseBody.RestartRecord]?

    public var restartTimes: String?

    public var settings: JobSettings?

    public var status: String?

    public var statusHistory: [StatusTransitionItem]?

    public var subStatus: String?

    public var tenantId: String?

    public var thirdpartyLibDir: String?

    public var thirdpartyLibs: [String]?

    public var userCommand: String?

    public var userId: String?

    public var userVpc: GetJobResponseBody.UserVpc?

    public var workspaceId: String?

    public var workspaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.codeSource?.validate()
        try self.credentialConfig?.validate()
        try self.elasticSpec?.validate()
        try self.settings?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.codeSource != nil {
            map["CodeSource"] = self.codeSource?.toMap()
        }
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["DataSources"] = tmp
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.elasticSpec != nil {
            map["ElasticSpec"] = self.elasticSpec?.toMap()
        }
        if self.enabledDebugger != nil {
            map["EnabledDebugger"] = self.enabledDebugger!
        }
        if self.envs != nil {
            map["Envs"] = self.envs!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtFailedTime != nil {
            map["GmtFailedTime"] = self.gmtFailedTime!
        }
        if self.gmtFinishTime != nil {
            map["GmtFinishTime"] = self.gmtFinishTime!
        }
        if self.gmtRunningTime != nil {
            map["GmtRunningTime"] = self.gmtRunningTime!
        }
        if self.gmtStoppedTime != nil {
            map["GmtStoppedTime"] = self.gmtStoppedTime!
        }
        if self.gmtSubmittedTime != nil {
            map["GmtSubmittedTime"] = self.gmtSubmittedTime!
        }
        if self.gmtSuccessedTime != nil {
            map["GmtSuccessedTime"] = self.gmtSuccessedTime!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobReplicaStatuses != nil {
            var tmp : [Any] = []
            for k in self.jobReplicaStatuses! {
                tmp.append(k.toMap())
            }
            map["JobReplicaStatuses"] = tmp
        }
        if self.jobSpecs != nil {
            var tmp : [Any] = []
            for k in self.jobSpecs! {
                tmp.append(k.toMap())
            }
            map["JobSpecs"] = tmp
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.pods != nil {
            var tmp : [Any] = []
            for k in self.pods! {
                tmp.append(k.toMap())
            }
            map["Pods"] = tmp
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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceLevel != nil {
            map["ResourceLevel"] = self.resourceLevel!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.restartRecord != nil {
            var tmp : [Any] = []
            for k in self.restartRecord! {
                tmp.append(k.toMap())
            }
            map["RestartRecord"] = tmp
        }
        if self.restartTimes != nil {
            map["RestartTimes"] = self.restartTimes!
        }
        if self.settings != nil {
            map["Settings"] = self.settings?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusHistory != nil {
            var tmp : [Any] = []
            for k in self.statusHistory! {
                tmp.append(k.toMap())
            }
            map["StatusHistory"] = tmp
        }
        if self.subStatus != nil {
            map["SubStatus"] = self.subStatus!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.thirdpartyLibDir != nil {
            map["ThirdpartyLibDir"] = self.thirdpartyLibDir!
        }
        if self.thirdpartyLibs != nil {
            map["ThirdpartyLibs"] = self.thirdpartyLibs!
        }
        if self.userCommand != nil {
            map["UserCommand"] = self.userCommand!
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
        if self.workspaceName != nil {
            map["WorkspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["CodeSource"] as? [String: Any?] {
            var model = GetJobResponseBody.CodeSource()
            model.fromMap(value)
            self.codeSource = model
        }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["DataSources"] as? [Any?] {
            var tmp : [GetJobResponseBody.DataSources] = []
            for v in value {
                if v != nil {
                    var model = GetJobResponseBody.DataSources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSources = tmp
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Duration"] as? Int64 {
            self.duration = value
        }
        if let value = dict["ElasticSpec"] as? [String: Any?] {
            var model = JobElasticSpec()
            model.fromMap(value)
            self.elasticSpec = model
        }
        if let value = dict["EnabledDebugger"] as? Bool {
            self.enabledDebugger = value
        }
        if let value = dict["Envs"] as? [String: String] {
            self.envs = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtFailedTime"] as? String {
            self.gmtFailedTime = value
        }
        if let value = dict["GmtFinishTime"] as? String {
            self.gmtFinishTime = value
        }
        if let value = dict["GmtRunningTime"] as? String {
            self.gmtRunningTime = value
        }
        if let value = dict["GmtStoppedTime"] as? String {
            self.gmtStoppedTime = value
        }
        if let value = dict["GmtSubmittedTime"] as? String {
            self.gmtSubmittedTime = value
        }
        if let value = dict["GmtSuccessedTime"] as? String {
            self.gmtSuccessedTime = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["JobReplicaStatuses"] as? [Any?] {
            var tmp : [JobReplicaStatus] = []
            for v in value {
                if v != nil {
                    var model = JobReplicaStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobReplicaStatuses = tmp
        }
        if let value = dict["JobSpecs"] as? [Any?] {
            var tmp : [JobSpec] = []
            for v in value {
                if v != nil {
                    var model = JobSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobSpecs = tmp
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["Pods"] as? [Any?] {
            var tmp : [GetJobResponseBody.Pods] = []
            for v in value {
                if v != nil {
                    var model = GetJobResponseBody.Pods()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.pods = tmp
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
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
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceLevel"] as? String {
            self.resourceLevel = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["RestartRecord"] as? [Any?] {
            var tmp : [GetJobResponseBody.RestartRecord] = []
            for v in value {
                if v != nil {
                    var model = GetJobResponseBody.RestartRecord()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.restartRecord = tmp
        }
        if let value = dict["RestartTimes"] as? String {
            self.restartTimes = value
        }
        if let value = dict["Settings"] as? [String: Any?] {
            var model = JobSettings()
            model.fromMap(value)
            self.settings = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusHistory"] as? [Any?] {
            var tmp : [StatusTransitionItem] = []
            for v in value {
                if v != nil {
                    var model = StatusTransitionItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.statusHistory = tmp
        }
        if let value = dict["SubStatus"] as? String {
            self.subStatus = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["ThirdpartyLibDir"] as? String {
            self.thirdpartyLibDir = value
        }
        if let value = dict["ThirdpartyLibs"] as? [String] {
            self.thirdpartyLibs = value
        }
        if let value = dict["UserCommand"] as? String {
            self.userCommand = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = GetJobResponseBody.UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["WorkspaceName"] as? String {
            self.workspaceName = value
        }
    }
}

public class GetJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobResponseBody?

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
            var model = GetJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobEventsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["MaxEventsNum"] as? Int32 {
            self.maxEventsNum = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetJobEventsResponseBody : Tea.TeaModel {
    public var events: [String]?

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
        if self.events != nil {
            map["Events"] = self.events!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Events"] as? [String] {
            self.events = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetJobEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobEventsResponseBody?

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
            var model = GetJobEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobMetricsRequest : Tea.TeaModel {
    public var endTime: String?

    public var metricType: String?

    public var startTime: String?

    public var timeStep: String?

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
        if self.metricType != nil {
            map["MetricType"] = self.metricType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.timeStep != nil {
            map["TimeStep"] = self.timeStep!
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
        if let value = dict["MetricType"] as? String {
            self.metricType = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TimeStep"] as? String {
            self.timeStep = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
    }
}

public class GetJobMetricsResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var podMetrics: [PodMetric]?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["PodMetrics"] as? [Any?] {
            var tmp : [PodMetric] = []
            for v in value {
                if v != nil {
                    var model = PodMetric()
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
    }
}

public class GetJobMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobMetricsResponseBody?

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
            var model = GetJobMetricsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobSanityCheckResultRequest : Tea.TeaModel {
    public var sanityCheckNumber: Int32?

    public var sanityCheckPhase: String?

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
        if self.sanityCheckNumber != nil {
            map["SanityCheckNumber"] = self.sanityCheckNumber!
        }
        if self.sanityCheckPhase != nil {
            map["SanityCheckPhase"] = self.sanityCheckPhase!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SanityCheckNumber"] as? Int32 {
            self.sanityCheckNumber = value
        }
        if let value = dict["SanityCheckPhase"] as? String {
            self.sanityCheckPhase = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
    }
}

public class GetJobSanityCheckResultResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestID: String?

    public var sanityCheckResult: [SanityCheckResultItem]?

    public override init() {
        super.init()
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
        if self.requestID != nil {
            map["RequestID"] = self.requestID!
        }
        if self.sanityCheckResult != nil {
            var tmp : [Any] = []
            for k in self.sanityCheckResult! {
                tmp.append(k.toMap())
            }
            map["SanityCheckResult"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestID"] as? String {
            self.requestID = value
        }
        if let value = dict["SanityCheckResult"] as? [Any?] {
            var tmp : [SanityCheckResultItem] = []
            for v in value {
                if v != nil {
                    var model = SanityCheckResultItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sanityCheckResult = tmp
        }
    }
}

public class GetJobSanityCheckResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobSanityCheckResultResponseBody?

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
            var model = GetJobSanityCheckResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPodEventsRequest : Tea.TeaModel {
    public var endTime: String?

    public var maxEventsNum: Int32?

    public var podUid: String?

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
        if self.podUid != nil {
            map["PodUid"] = self.podUid!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["MaxEventsNum"] as? Int32 {
            self.maxEventsNum = value
        }
        if let value = dict["PodUid"] as? String {
            self.podUid = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetPodEventsResponseBody : Tea.TeaModel {
    public var events: [String]?

    public var jobId: String?

    public var podId: String?

    public var podUid: String?

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
        if self.events != nil {
            map["Events"] = self.events!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.podId != nil {
            map["PodId"] = self.podId!
        }
        if self.podUid != nil {
            map["PodUid"] = self.podUid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Events"] as? [String] {
            self.events = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["PodId"] as? String {
            self.podId = value
        }
        if let value = dict["PodUid"] as? String {
            self.podUid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPodEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPodEventsResponseBody?

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
            var model = GetPodEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPodLogsRequest : Tea.TeaModel {
    public var downloadToFile: Bool?

    public var endTime: String?

    public var maxLines: Int32?

    public var podUid: String?

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
        if self.downloadToFile != nil {
            map["DownloadToFile"] = self.downloadToFile!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.maxLines != nil {
            map["MaxLines"] = self.maxLines!
        }
        if self.podUid != nil {
            map["PodUid"] = self.podUid!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DownloadToFile"] as? Bool {
            self.downloadToFile = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["MaxLines"] as? Int32 {
            self.maxLines = value
        }
        if let value = dict["PodUid"] as? String {
            self.podUid = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetPodLogsResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var logs: [String]?

    public var podId: String?

    public var podUid: String?

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
        if self.logs != nil {
            map["Logs"] = self.logs!
        }
        if self.podId != nil {
            map["PodId"] = self.podId!
        }
        if self.podUid != nil {
            map["PodUid"] = self.podUid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["Logs"] as? [String] {
            self.logs = value
        }
        if let value = dict["PodId"] as? String {
            self.podId = value
        }
        if let value = dict["PodUid"] as? String {
            self.podUid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPodLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPodLogsResponseBody?

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
            var model = GetPodLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRayDashboardRequest : Tea.TeaModel {
    public var isShared: Bool?

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
        if self.isShared != nil {
            map["isShared"] = self.isShared!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["isShared"] as? Bool {
            self.isShared = value
        }
        if let value = dict["token"] as? String {
            self.token = value
        }
    }
}

public class GetRayDashboardResponseBody : Tea.TeaModel {
    public var metricsEnabled: String?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metricsEnabled != nil {
            map["metricsEnabled"] = self.metricsEnabled!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["metricsEnabled"] as? String {
            self.metricsEnabled = value
        }
        if let value = dict["url"] as? String {
            self.url = value
        }
    }
}

public class GetRayDashboardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRayDashboardResponseBody?

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
            var model = GetRayDashboardResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTensorboardRequest : Tea.TeaModel {
    public var jodId: String?

    public var token: String?

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
        if self.jodId != nil {
            map["JodId"] = self.jodId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JodId"] as? String {
            self.jodId = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetTensorboardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Tensorboard?

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
            var model = Tensorboard()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTensorboardSharedUrlRequest : Tea.TeaModel {
    public var expireTimeSeconds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expireTimeSeconds != nil {
            map["ExpireTimeSeconds"] = self.expireTimeSeconds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpireTimeSeconds"] as? String {
            self.expireTimeSeconds = value
        }
    }
}

public class GetTensorboardSharedUrlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tensorboardSharedUrl: String?

    public override init() {
        super.init()
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
        if self.tensorboardSharedUrl != nil {
            map["TensorboardSharedUrl"] = self.tensorboardSharedUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TensorboardSharedUrl"] as? String {
            self.tensorboardSharedUrl = value
        }
    }
}

public class GetTensorboardSharedUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTensorboardSharedUrlResponseBody?

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
            var model = GetTensorboardSharedUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTokenRequest : Tea.TeaModel {
    public var expireTime: Int64?

    public var targetId: String?

    public var targetType: String?

    public override init() {
        super.init()
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
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpireTime"] as? Int64 {
            self.expireTime = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
        }
    }
}

public class GetTokenResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

public class GetWebTerminalRequest : Tea.TeaModel {
    public var isShared: Bool?

    public var podUid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isShared != nil {
            map["IsShared"] = self.isShared!
        }
        if self.podUid != nil {
            map["PodUid"] = self.podUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsShared"] as? Bool {
            self.isShared = value
        }
        if let value = dict["PodUid"] as? String {
            self.podUid = value
        }
    }
}

public class GetWebTerminalResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var webTerminalUrl: String?

    public override init() {
        super.init()
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
        if self.webTerminalUrl != nil {
            map["WebTerminalUrl"] = self.webTerminalUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WebTerminalUrl"] as? String {
            self.webTerminalUrl = value
        }
    }
}

public class GetWebTerminalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWebTerminalResponseBody?

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
            var model = GetWebTerminalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEcsSpecsRequest : Tea.TeaModel {
    public var acceleratorType: String?

    public var instanceTypes: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.instanceTypes != nil {
            map["InstanceTypes"] = self.instanceTypes!
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
        if let value = dict["InstanceTypes"] as? String {
            self.instanceTypes = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
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
    public var ecsSpecs: [EcsSpec]?

    public var requestId: String?

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
        if self.ecsSpecs != nil {
            var tmp : [Any] = []
            for k in self.ecsSpecs! {
                tmp.append(k.toMap())
            }
            map["EcsSpecs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcsSpecs"] as? [Any?] {
            var tmp : [EcsSpec] = []
            for v in value {
                if v != nil {
                    var model = EcsSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ecsSpecs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

public class ListJobSanityCheckResultsRequest : Tea.TeaModel {
    public var order: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Order"] as? String {
            self.order = value
        }
    }
}

public class ListJobSanityCheckResultsResponseBody : Tea.TeaModel {
    public var requestID: String?

    public var sanityCheckResults: [[SanityCheckResultItem]]?

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
        if self.requestID != nil {
            map["RequestID"] = self.requestID!
        }
        if self.sanityCheckResults != nil {
            var tmp : [Any] = []
            for k in self.sanityCheckResults! {
                var l1 : [Any] = []
                for k1 in k {
                    l1.append(k1.toMap())
                }
                tmp.append(l1)
            }
            map["SanityCheckResults"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestID"] as? String {
            self.requestID = value
        }
        if let value = dict["SanityCheckResults"] as? [Any?] {
            var tmp : [[SanityCheckResultItem]] = []
            for v in value {
                if v != nil {
                    var l1 : [SanityCheckResultItem] = []
                    for v1 in v as! [Any?] {
                        if v1 != nil {
                            var model = SanityCheckResultItem()
                            if v1 != nil {
                                model.fromMap(v1 as? [String: Any?])
                            }
                            l1.append(model)
                        }
                    }
                    tmp.append(l1)
                }
            }
            self.sanityCheckResults = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListJobSanityCheckResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobSanityCheckResultsResponseBody?

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
            var model = ListJobSanityCheckResultsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListJobsRequest : Tea.TeaModel {
    public var accessibility: String?

    public var businessUserId: String?

    public var caller: String?

    public var displayName: String?

    public var displayNameSearchMode: String?

    public var endTime: String?

    public var fromAllWorkspaces: Bool?

    public var jobId: String?

    public var jobIds: String?

    public var jobType: String?

    public var order: String?

    public var oversoldInfo: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var paymentType: String?

    public var pipelineId: String?

    public var resourceId: String?

    public var resourceQuotaName: String?

    public var showOwn: Bool?

    public var sortBy: String?

    public var startTime: String?

    public var status: String?

    public var tags: [String: String]?

    public var userIdForFilter: String?

    public var username: String?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.businessUserId != nil {
            map["BusinessUserId"] = self.businessUserId!
        }
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.displayNameSearchMode != nil {
            map["DisplayNameSearchMode"] = self.displayNameSearchMode!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.fromAllWorkspaces != nil {
            map["FromAllWorkspaces"] = self.fromAllWorkspaces!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobIds != nil {
            map["JobIds"] = self.jobIds!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.oversoldInfo != nil {
            map["OversoldInfo"] = self.oversoldInfo!
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
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceQuotaName != nil {
            map["ResourceQuotaName"] = self.resourceQuotaName!
        }
        if self.showOwn != nil {
            map["ShowOwn"] = self.showOwn!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.userIdForFilter != nil {
            map["UserIdForFilter"] = self.userIdForFilter!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["BusinessUserId"] as? String {
            self.businessUserId = value
        }
        if let value = dict["Caller"] as? String {
            self.caller = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["DisplayNameSearchMode"] as? String {
            self.displayNameSearchMode = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["FromAllWorkspaces"] as? Bool {
            self.fromAllWorkspaces = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["JobIds"] as? String {
            self.jobIds = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OversoldInfo"] as? String {
            self.oversoldInfo = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["PipelineId"] as? String {
            self.pipelineId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceQuotaName"] as? String {
            self.resourceQuotaName = value
        }
        if let value = dict["ShowOwn"] as? Bool {
            self.showOwn = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [String: String] {
            self.tags = value
        }
        if let value = dict["UserIdForFilter"] as? String {
            self.userIdForFilter = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListJobsShrinkRequest : Tea.TeaModel {
    public var accessibility: String?

    public var businessUserId: String?

    public var caller: String?

    public var displayName: String?

    public var displayNameSearchMode: String?

    public var endTime: String?

    public var fromAllWorkspaces: Bool?

    public var jobId: String?

    public var jobIds: String?

    public var jobType: String?

    public var order: String?

    public var oversoldInfo: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var paymentType: String?

    public var pipelineId: String?

    public var resourceId: String?

    public var resourceQuotaName: String?

    public var showOwn: Bool?

    public var sortBy: String?

    public var startTime: String?

    public var status: String?

    public var tagsShrink: String?

    public var userIdForFilter: String?

    public var username: String?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.businessUserId != nil {
            map["BusinessUserId"] = self.businessUserId!
        }
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.displayNameSearchMode != nil {
            map["DisplayNameSearchMode"] = self.displayNameSearchMode!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.fromAllWorkspaces != nil {
            map["FromAllWorkspaces"] = self.fromAllWorkspaces!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobIds != nil {
            map["JobIds"] = self.jobIds!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.oversoldInfo != nil {
            map["OversoldInfo"] = self.oversoldInfo!
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
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceQuotaName != nil {
            map["ResourceQuotaName"] = self.resourceQuotaName!
        }
        if self.showOwn != nil {
            map["ShowOwn"] = self.showOwn!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.userIdForFilter != nil {
            map["UserIdForFilter"] = self.userIdForFilter!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["BusinessUserId"] as? String {
            self.businessUserId = value
        }
        if let value = dict["Caller"] as? String {
            self.caller = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["DisplayNameSearchMode"] as? String {
            self.displayNameSearchMode = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["FromAllWorkspaces"] as? Bool {
            self.fromAllWorkspaces = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["JobIds"] as? String {
            self.jobIds = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OversoldInfo"] as? String {
            self.oversoldInfo = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["PipelineId"] as? String {
            self.pipelineId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceQuotaName"] as? String {
            self.resourceQuotaName = value
        }
        if let value = dict["ShowOwn"] as? Bool {
            self.showOwn = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["UserIdForFilter"] as? String {
            self.userIdForFilter = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListJobsResponseBody : Tea.TeaModel {
    public var jobs: [JobItem]?

    public var requestId: String?

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
        if self.jobs != nil {
            var tmp : [Any] = []
            for k in self.jobs! {
                tmp.append(k.toMap())
            }
            map["Jobs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Jobs"] as? [Any?] {
            var tmp : [JobItem] = []
            for v in value {
                if v != nil {
                    var model = JobItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTensorboardsRequest : Tea.TeaModel {
    public var accessibility: String?

    public var displayName: String?

    public var endTime: String?

    public var jobId: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var paymentType: String?

    public var quotaId: String?

    public var showOwn: Bool?

    public var sortBy: String?

    public var sourceId: String?

    public var sourceType: String?

    public var startTime: String?

    public var status: String?

    public var tensorboardId: String?

    public var userId: String?

    public var username: String?

    public var verbose: Bool?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
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
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.showOwn != nil {
            map["ShowOwn"] = self.showOwn!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tensorboardId != nil {
            map["TensorboardId"] = self.tensorboardId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["ShowOwn"] as? Bool {
            self.showOwn = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TensorboardId"] as? String {
            self.tensorboardId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListTensorboardsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tensorboards: [Tensorboard]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tensorboards != nil {
            var tmp : [Any] = []
            for k in self.tensorboards! {
                tmp.append(k.toMap())
            }
            map["Tensorboards"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tensorboards"] as? [Any?] {
            var tmp : [Tensorboard] = []
            for v in value {
                if v != nil {
                    var model = Tensorboard()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tensorboards = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListTensorboardsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTensorboardsResponseBody?

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
            var model = ListTensorboardsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartTensorboardRequest : Tea.TeaModel {
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class StartTensorboardResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tensorboardId: String?

    public override init() {
        super.init()
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
        if self.tensorboardId != nil {
            map["TensorboardId"] = self.tensorboardId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TensorboardId"] as? String {
            self.tensorboardId = value
        }
    }
}

public class StartTensorboardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartTensorboardResponseBody?

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
            var model = StartTensorboardResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopJobResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class StopJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopJobResponseBody?

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
            var model = StopJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopTensorboardRequest : Tea.TeaModel {
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class StopTensorboardResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tensorboardId: String?

    public override init() {
        super.init()
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
        if self.tensorboardId != nil {
            map["TensorboardId"] = self.tensorboardId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TensorboardId"] as? String {
            self.tensorboardId = value
        }
    }
}

public class StopTensorboardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopTensorboardResponseBody?

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
            var model = StopTensorboardResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateJobRequest : Tea.TeaModel {
    public var accessibility: String?

    public var jobSpecs: [JobSpec]?

    public var priority: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.jobSpecs != nil {
            var tmp : [Any] = []
            for k in self.jobSpecs! {
                tmp.append(k.toMap())
            }
            map["JobSpecs"] = tmp
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["JobSpecs"] as? [Any?] {
            var tmp : [JobSpec] = []
            for v in value {
                if v != nil {
                    var model = JobSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobSpecs = tmp
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
    }
}

public class UpdateJobResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateJobResponseBody?

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
            var model = UpdateJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTensorboardRequest : Tea.TeaModel {
    public var accessibility: String?

    public var maxRunningTimeMinutes: Int64?

    public var priority: String?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.maxRunningTimeMinutes != nil {
            map["MaxRunningTimeMinutes"] = self.maxRunningTimeMinutes!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["MaxRunningTimeMinutes"] as? Int64 {
            self.maxRunningTimeMinutes = value
        }
        if let value = dict["Priority"] as? String {
            self.priority = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateTensorboardResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tensorboardId: String?

    public override init() {
        super.init()
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
        if self.tensorboardId != nil {
            map["TensorboardId"] = self.tensorboardId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TensorboardId"] as? String {
            self.tensorboardId = value
        }
    }
}

public class UpdateTensorboardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTensorboardResponseBody?

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
            var model = UpdateTensorboardResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
