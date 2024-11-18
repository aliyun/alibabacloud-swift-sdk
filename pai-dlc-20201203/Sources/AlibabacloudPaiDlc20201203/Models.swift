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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Extended") {
            self.extended = dict["Extended"] as! String
        }
        if dict.keys.contains("JobRestartCount") {
            self.jobRestartCount = dict["JobRestartCount"] as! Int32
        }
        if dict.keys.contains("MessageContent") {
            self.messageContent = dict["MessageContent"] as! String
        }
        if dict.keys.contains("MessageEvent") {
            self.messageEvent = dict["MessageEvent"] as! String
        }
        if dict.keys.contains("MessageVersion") {
            self.messageVersion = dict["MessageVersion"] as! Int32
        }
        if dict.keys.contains("RestartType") {
            self.restartType = dict["RestartType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliyunUid") {
            self.aliyunUid = dict["AliyunUid"] as! String
        }
        if dict.keys.contains("EmployeeId") {
            self.employeeId = dict["EmployeeId"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AntiAffinityNodeNames") {
            self.antiAffinityNodeNames = dict["AntiAffinityNodeNames"] as! String
        }
        if dict.keys.contains("EnableAssignNode") {
            self.enableAssignNode = dict["EnableAssignNode"] as! Bool
        }
        if dict.keys.contains("NodeNames") {
            self.nodeNames = dict["NodeNames"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CodeBranch") {
            self.codeBranch = dict["CodeBranch"] as! String
        }
        if dict.keys.contains("CodeCommit") {
            self.codeCommit = dict["CodeCommit"] as! String
        }
        if dict.keys.contains("CodeRepo") {
            self.codeRepo = dict["CodeRepo"] as! String
        }
        if dict.keys.contains("CodeRepoAccessToken") {
            self.codeRepoAccessToken = dict["CodeRepoAccessToken"] as! String
        }
        if dict.keys.contains("CodeRepoUserName") {
            self.codeRepoUserName = dict["CodeRepoUserName"] as! String
        }
        if dict.keys.contains("CodeSourceId") {
            self.codeSourceId = dict["CodeSourceId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Args") {
            self.args = dict["Args"] as! [String]
        }
        if dict.keys.contains("Command") {
            self.command = dict["Command"] as! [String]
        }
        if dict.keys.contains("Env") {
            var tmp : [EnvVar] = []
            for v in dict["Env"] as! [Any] {
                var model = EnvVar()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.env = tmp
        }
        if dict.keys.contains("Image") {
            self.image = dict["Image"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Resources") {
            var model = ResourceRequirements()
            model.fromMap(dict["Resources"] as! [String: Any])
            self.resources = model
        }
        if dict.keys.contains("WorkingDir") {
            self.workingDir = dict["WorkingDir"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliyunEnvRoleKey") {
            self.aliyunEnvRoleKey = dict["AliyunEnvRoleKey"] as! String
        }
        if dict.keys.contains("CredentialConfigItems") {
            var tmp : [CredentialConfigItem] = []
            for v in dict["CredentialConfigItems"] as! [Any] {
                var model = CredentialConfigItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.credentialConfigItems = tmp
        }
        if dict.keys.contains("EnableCredentialInject") {
            self.enableCredentialInject = dict["EnableCredentialInject"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("Roles") {
            var tmp : [CredentialRole] = []
            for v in dict["Roles"] as! [Any] {
                var model = CredentialRole()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssumeRoleFor") {
            self.assumeRoleFor = dict["AssumeRoleFor"] as! String
        }
        if dict.keys.contains("AssumeUserInfo") {
            var model = AssumeUserInfo()
            model.fromMap(dict["AssumeUserInfo"] as! [String: Any])
            self.assumeUserInfo = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSourceId") {
            self.dataSourceId = dict["DataSourceId"] as! String
        }
        if dict.keys.contains("DataSourceType") {
            self.dataSourceType = dict["DataSourceType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Endpoint") {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("FileSystemId") {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
        }
        if dict.keys.contains("MountPath") {
            self.mountPath = dict["MountPath"] as! String
        }
        if dict.keys.contains("Options") {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("DebuggerConfigId") {
            self.debuggerConfigId = dict["DebuggerConfigId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DebuggerJobId") {
            self.debuggerJobId = dict["DebuggerJobId"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtFailedTime") {
            self.gmtFailedTime = dict["GmtFailedTime"] as! String
        }
        if dict.keys.contains("GmtFinishTime") {
            self.gmtFinishTime = dict["GmtFinishTime"] as! String
        }
        if dict.keys.contains("GmtRunningTime") {
            self.gmtRunningTime = dict["GmtRunningTime"] as! String
        }
        if dict.keys.contains("GmtStoppedTime") {
            self.gmtStoppedTime = dict["GmtStoppedTime"] as! String
        }
        if dict.keys.contains("GmtSubmittedTime") {
            self.gmtSubmittedTime = dict["GmtSubmittedTime"] as! String
        }
        if dict.keys.contains("GmtSucceedTime") {
            self.gmtSucceedTime = dict["GmtSucceedTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("WorkspaceName") {
            self.workspaceName = dict["WorkspaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DebuggerJobIssue") {
            self.debuggerJobIssue = dict["DebuggerJobIssue"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("JobDebuggerIssueId") {
            self.jobDebuggerIssueId = dict["JobDebuggerIssueId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("ReasonCode") {
            self.reasonCode = dict["ReasonCode"] as! String
        }
        if dict.keys.contains("ReasonMessage") {
            self.reasonMessage = dict["ReasonMessage"] as! String
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DebuggerConfigContent") {
            self.debuggerConfigContent = dict["DebuggerConfigContent"] as! String
        }
        if dict.keys.contains("DebuggerJobIssues") {
            self.debuggerJobIssues = dict["DebuggerJobIssues"] as! String
        }
        if dict.keys.contains("DebuggerJobStatus") {
            self.debuggerJobStatus = dict["DebuggerJobStatus"] as! String
        }
        if dict.keys.contains("DebuggerReportURL") {
            self.debuggerReportURL = dict["DebuggerReportURL"] as! String
        }
        if dict.keys.contains("JobDisplayName") {
            self.jobDisplayName = dict["JobDisplayName"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JobUserId") {
            self.jobUserId = dict["JobUserId"] as! String
        }
    }
}

public class EcsSpec : Tea.TeaModel {
    public var acceleratorType: String?

    public var cpu: Int32?

    public var defaultGPUDriver: String?

    public var gpu: Int32?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorType") {
            self.acceleratorType = dict["AcceleratorType"] as! String
        }
        if dict.keys.contains("Cpu") {
            self.cpu = dict["Cpu"] as! Int32
        }
        if dict.keys.contains("DefaultGPUDriver") {
            self.defaultGPUDriver = dict["DefaultGPUDriver"] as! String
        }
        if dict.keys.contains("Gpu") {
            self.gpu = dict["Gpu"] as! Int32
        }
        if dict.keys.contains("GpuType") {
            self.gpuType = dict["GpuType"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("IsAvailable") {
            self.isAvailable = dict["IsAvailable"] as! Bool
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! Int32
        }
        if dict.keys.contains("NonProtectSpotDiscount") {
            self.nonProtectSpotDiscount = dict["NonProtectSpotDiscount"] as! Double
        }
        if dict.keys.contains("PaymentTypes") {
            self.paymentTypes = dict["PaymentTypes"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SpotStockStatus") {
            self.spotStockStatus = dict["SpotStockStatus"] as! String
        }
        if dict.keys.contains("SupportedGPUDrivers") {
            self.supportedGPUDrivers = dict["SupportedGPUDrivers"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("PodId") {
            self.podId = dict["PodId"] as! String
        }
        if dict.keys.contains("PodUid") {
            self.podUid = dict["PodUid"] as! String
        }
        if dict.keys.contains("Time") {
            self.time = dict["Time"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InitContainers") {
            var tmp : [ContainerSpec] = []
            for v in dict["InitContainers"] as! [Any] {
                var model = ContainerSpec()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.initContainers = tmp
        }
        if dict.keys.contains("Lifecycle") {
            var model = Lifecycle()
            model.fromMap(dict["Lifecycle"] as! [String: Any])
            self.lifecycle = model
        }
        if dict.keys.contains("PodAnnotations") {
            self.podAnnotations = dict["PodAnnotations"] as! [String: String]
        }
        if dict.keys.contains("PodLabels") {
            self.podLabels = dict["PodLabels"] as! [String: String]
        }
        if dict.keys.contains("SharedVolumeMountPaths") {
            self.sharedVolumeMountPaths = dict["SharedVolumeMountPaths"] as! [String]
        }
        if dict.keys.contains("SideCarContainers") {
            var tmp : [ContainerSpec] = []
            for v in dict["SideCarContainers"] as! [Any] {
                var model = ContainerSpec()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterID") {
            self.clusterID = dict["ClusterID"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("CrossClusters") {
            self.crossClusters = dict["CrossClusters"] as! Bool
        }
        if dict.keys.contains("EnableFreeResource") {
            self.enableFreeResource = dict["EnableFreeResource"] as! Bool
        }
        if dict.keys.contains("FreeResourceClusterControlId") {
            self.freeResourceClusterControlId = dict["FreeResourceClusterControlId"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
        }
        if dict.keys.contains("RegionID") {
            self.regionID = dict["RegionID"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Amount") {
            self.amount = dict["Amount"] as! Int32
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvailableNumber") {
            self.availableNumber = dict["AvailableNumber"] as! Int64
        }
        if dict.keys.contains("ClusterID") {
            self.clusterID = dict["ClusterID"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("FreeResourceId") {
            self.freeResourceId = dict["FreeResourceId"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
        }
        if dict.keys.contains("RegionID") {
            self.regionID = dict["RegionID"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GPU") {
            self.GPU = dict["GPU"] as! String
        }
        if dict.keys.contains("GPUType") {
            self.GPUType = dict["GPUType"] as! String
        }
        if dict.keys.contains("GPUTypeFullName") {
            self.GPUTypeFullName = dict["GPUTypeFullName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Auth") {
            self.auth = dict["Auth"] as! String
        }
        if dict.keys.contains("DockerRegistry") {
            self.dockerRegistry = dict["DockerRegistry"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorType") {
            self.acceleratorType = dict["AcceleratorType"] as! String
        }
        if dict.keys.contains("AuthorId") {
            self.authorId = dict["AuthorId"] as! String
        }
        if dict.keys.contains("Framework") {
            self.framework = dict["Framework"] as! String
        }
        if dict.keys.contains("ImageProviderType") {
            self.imageProviderType = dict["ImageProviderType"] as! String
        }
        if dict.keys.contains("ImageTag") {
            self.imageTag = dict["ImageTag"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("ImageUrlVpc") {
            self.imageUrlVpc = dict["ImageUrlVpc"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DebuggerConfigContent") {
            self.debuggerConfigContent = dict["DebuggerConfigContent"] as! String
        }
        if dict.keys.contains("DebuggerConfigId") {
            self.debuggerConfigId = dict["DebuggerConfigId"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AIMasterDockerImage") {
            self.AIMasterDockerImage = dict["AIMasterDockerImage"] as! String
        }
        if dict.keys.contains("AIMasterType") {
            self.AIMasterType = dict["AIMasterType"] as! String
        }
        if dict.keys.contains("EDPMaxParallelism") {
            self.EDPMaxParallelism = dict["EDPMaxParallelism"] as! Int32
        }
        if dict.keys.contains("EDPMinParallelism") {
            self.EDPMinParallelism = dict["EDPMinParallelism"] as! Int32
        }
        if dict.keys.contains("ElasticStrategy") {
            self.elasticStrategy = dict["ElasticStrategy"] as! String
        }
        if dict.keys.contains("EnableAIMaster") {
            self.enableAIMaster = dict["EnableAIMaster"] as! Bool
        }
        if dict.keys.contains("EnableEDP") {
            self.enableEDP = dict["EnableEDP"] as! Bool
        }
        if dict.keys.contains("EnableElasticTraining") {
            self.enableElasticTraining = dict["EnableElasticTraining"] as! Bool
        }
        if dict.keys.contains("EnablePsJobElasticPS") {
            self.enablePsJobElasticPS = dict["EnablePsJobElasticPS"] as! Bool
        }
        if dict.keys.contains("EnablePsJobElasticWorker") {
            self.enablePsJobElasticWorker = dict["EnablePsJobElasticWorker"] as! Bool
        }
        if dict.keys.contains("EnablePsResourceEstimate") {
            self.enablePsResourceEstimate = dict["EnablePsResourceEstimate"] as! Bool
        }
        if dict.keys.contains("MaxParallelism") {
            self.maxParallelism = dict["MaxParallelism"] as! Int32
        }
        if dict.keys.contains("MinParallelism") {
            self.minParallelism = dict["MinParallelism"] as! Int32
        }
        if dict.keys.contains("PSMaxParallelism") {
            self.PSMaxParallelism = dict["PSMaxParallelism"] as! Int32
        }
        if dict.keys.contains("PSMinParallelism") {
            self.PSMinParallelism = dict["PSMinParallelism"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Branch") {
                self.branch = dict["Branch"] as! String
            }
            if dict.keys.contains("CodeSourceId") {
                self.codeSourceId = dict["CodeSourceId"] as! String
            }
            if dict.keys.contains("Commit") {
                self.commit = dict["Commit"] as! String
            }
            if dict.keys.contains("MountPath") {
                self.mountPath = dict["MountPath"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataSourceId") {
                self.dataSourceId = dict["DataSourceId"] as! String
            }
            if dict.keys.contains("MountPath") {
                self.mountPath = dict["MountPath"] as! String
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

    public var userVpc: String?

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
        try self.settings?.validate()
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
            map["UserVpc"] = self.userVpc!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CodeSource") {
            var model = JobItem.CodeSource()
            model.fromMap(dict["CodeSource"] as! [String: Any])
            self.codeSource = model
        }
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("DataSources") {
            var tmp : [JobItem.DataSources] = []
            for v in dict["DataSources"] as! [Any] {
                var model = JobItem.DataSources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataSources = tmp
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("ElasticSpec") {
            var model = JobElasticSpec()
            model.fromMap(dict["ElasticSpec"] as! [String: Any])
            self.elasticSpec = model
        }
        if dict.keys.contains("EnablePreemptibleJob") {
            self.enablePreemptibleJob = dict["EnablePreemptibleJob"] as! Bool
        }
        if dict.keys.contains("EnabledDebugger") {
            self.enabledDebugger = dict["EnabledDebugger"] as! Bool
        }
        if dict.keys.contains("Envs") {
            self.envs = dict["Envs"] as! [String: String]
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtFailedTime") {
            self.gmtFailedTime = dict["GmtFailedTime"] as! String
        }
        if dict.keys.contains("GmtFinishTime") {
            self.gmtFinishTime = dict["GmtFinishTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("GmtRunningTime") {
            self.gmtRunningTime = dict["GmtRunningTime"] as! String
        }
        if dict.keys.contains("GmtStoppedTime") {
            self.gmtStoppedTime = dict["GmtStoppedTime"] as! String
        }
        if dict.keys.contains("GmtSubmittedTime") {
            self.gmtSubmittedTime = dict["GmtSubmittedTime"] as! String
        }
        if dict.keys.contains("GmtSuccessedTime") {
            self.gmtSuccessedTime = dict["GmtSuccessedTime"] as! String
        }
        if dict.keys.contains("IsDeleted") {
            self.isDeleted = dict["IsDeleted"] as! Bool
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JobMaxRunningTimeMinutes") {
            self.jobMaxRunningTimeMinutes = dict["JobMaxRunningTimeMinutes"] as! Int64
        }
        if dict.keys.contains("JobSpecs") {
            var tmp : [JobSpec] = []
            for v in dict["JobSpecs"] as! [Any] {
                var model = JobSpec()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobSpecs = tmp
        }
        if dict.keys.contains("JobType") {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("NodeCount") {
            self.nodeCount = dict["NodeCount"] as! String
        }
        if dict.keys.contains("NodeNames") {
            self.nodeNames = dict["NodeNames"] as! [String]
        }
        if dict.keys.contains("Pods") {
            var tmp : [PodItem] = []
            for v in dict["Pods"] as! [Any] {
                var model = PodItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.pods = tmp
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ReasonCode") {
            self.reasonCode = dict["ReasonCode"] as! String
        }
        if dict.keys.contains("ReasonMessage") {
            self.reasonMessage = dict["ReasonMessage"] as! String
        }
        if dict.keys.contains("RequestCPU") {
            self.requestCPU = dict["RequestCPU"] as! Int64
        }
        if dict.keys.contains("RequestGPU") {
            self.requestGPU = dict["RequestGPU"] as! String
        }
        if dict.keys.contains("RequestMemory") {
            self.requestMemory = dict["RequestMemory"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceLevel") {
            self.resourceLevel = dict["ResourceLevel"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceQuotaName") {
            self.resourceQuotaName = dict["ResourceQuotaName"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("RestartTimes") {
            self.restartTimes = dict["RestartTimes"] as! String
        }
        if dict.keys.contains("Settings") {
            var model = JobSettings()
            model.fromMap(dict["Settings"] as! [String: Any])
            self.settings = model
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StatusHistory") {
            var tmp : [StatusTransitionItem] = []
            for v in dict["StatusHistory"] as! [Any] {
                var model = StatusTransitionItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.statusHistory = tmp
        }
        if dict.keys.contains("SubStatus") {
            self.subStatus = dict["SubStatus"] as! String
        }
        if dict.keys.contains("SystemEnvs") {
            self.systemEnvs = dict["SystemEnvs"] as! [String: String]
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("ThirdpartyLibDir") {
            self.thirdpartyLibDir = dict["ThirdpartyLibDir"] as! String
        }
        if dict.keys.contains("ThirdpartyLibs") {
            self.thirdpartyLibs = dict["ThirdpartyLibs"] as! [String]
        }
        if dict.keys.contains("UseOversoldResource") {
            self.useOversoldResource = dict["UseOversoldResource"] as! Bool
        }
        if dict.keys.contains("UserCommand") {
            self.userCommand = dict["UserCommand"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserScript") {
            self.userScript = dict["UserScript"] as! String
        }
        if dict.keys.contains("UserVpc") {
            self.userVpc = dict["UserVpc"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("WorkingDir") {
            self.workingDir = dict["WorkingDir"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("WorkspaceName") {
            self.workspaceName = dict["WorkspaceName"] as! String
        }
    }
}

public class JobSettings : Tea.TeaModel {
    public var advancedSettings: [String: Any]?

    public var businessUserId: String?

    public var caller: String?

    public var disableEcsStockCheck: Bool?

    public var driver: String?

    public var enableErrorMonitoringInAIMaster: Bool?

    public var enableOssAppend: Bool?

    public var enableRDMA: Bool?

    public var enableSanityCheck: Bool?

    public var enableTideResource: Bool?

    public var errorMonitoringArgs: String?

    public var jobReservedMinutes: Int32?

    public var jobReservedPolicy: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advancedSettings != nil {
            map["AdvancedSettings"] = self.advancedSettings!
        }
        if self.businessUserId != nil {
            map["BusinessUserId"] = self.businessUserId!
        }
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.disableEcsStockCheck != nil {
            map["DisableEcsStockCheck"] = self.disableEcsStockCheck!
        }
        if self.driver != nil {
            map["Driver"] = self.driver!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdvancedSettings") {
            self.advancedSettings = dict["AdvancedSettings"] as! [String: Any]
        }
        if dict.keys.contains("BusinessUserId") {
            self.businessUserId = dict["BusinessUserId"] as! String
        }
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("DisableEcsStockCheck") {
            self.disableEcsStockCheck = dict["DisableEcsStockCheck"] as! Bool
        }
        if dict.keys.contains("Driver") {
            self.driver = dict["Driver"] as! String
        }
        if dict.keys.contains("EnableErrorMonitoringInAIMaster") {
            self.enableErrorMonitoringInAIMaster = dict["EnableErrorMonitoringInAIMaster"] as! Bool
        }
        if dict.keys.contains("EnableOssAppend") {
            self.enableOssAppend = dict["EnableOssAppend"] as! Bool
        }
        if dict.keys.contains("EnableRDMA") {
            self.enableRDMA = dict["EnableRDMA"] as! Bool
        }
        if dict.keys.contains("EnableSanityCheck") {
            self.enableSanityCheck = dict["EnableSanityCheck"] as! Bool
        }
        if dict.keys.contains("EnableTideResource") {
            self.enableTideResource = dict["EnableTideResource"] as! Bool
        }
        if dict.keys.contains("ErrorMonitoringArgs") {
            self.errorMonitoringArgs = dict["ErrorMonitoringArgs"] as! String
        }
        if dict.keys.contains("JobReservedMinutes") {
            self.jobReservedMinutes = dict["JobReservedMinutes"] as! Int32
        }
        if dict.keys.contains("JobReservedPolicy") {
            self.jobReservedPolicy = dict["JobReservedPolicy"] as! String
        }
        if dict.keys.contains("OversoldType") {
            self.oversoldType = dict["OversoldType"] as! String
        }
        if dict.keys.contains("PipelineId") {
            self.pipelineId = dict["PipelineId"] as! String
        }
        if dict.keys.contains("SanityCheckArgs") {
            self.sanityCheckArgs = dict["SanityCheckArgs"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: String]
        }
    }
}

public class JobSpec : Tea.TeaModel {
    public var assignNodeSpec: AssignNodeSpec?

    public var ecsSpec: String?

    public var extraPodSpec: ExtraPodSpec?

    public var image: String?

    public var imageConfig: ImageConfig?

    public var podCount: Int64?

    public var resourceConfig: ResourceConfig?

    public var spotSpec: SpotSpec?

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
        try self.extraPodSpec?.validate()
        try self.imageConfig?.validate()
        try self.resourceConfig?.validate()
        try self.spotSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assignNodeSpec != nil {
            map["AssignNodeSpec"] = self.assignNodeSpec?.toMap()
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
        if self.podCount != nil {
            map["PodCount"] = self.podCount!
        }
        if self.resourceConfig != nil {
            map["ResourceConfig"] = self.resourceConfig?.toMap()
        }
        if self.spotSpec != nil {
            map["SpotSpec"] = self.spotSpec?.toMap()
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.useSpotInstance != nil {
            map["UseSpotInstance"] = self.useSpotInstance!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssignNodeSpec") {
            var model = AssignNodeSpec()
            model.fromMap(dict["AssignNodeSpec"] as! [String: Any])
            self.assignNodeSpec = model
        }
        if dict.keys.contains("EcsSpec") {
            self.ecsSpec = dict["EcsSpec"] as! String
        }
        if dict.keys.contains("ExtraPodSpec") {
            var model = ExtraPodSpec()
            model.fromMap(dict["ExtraPodSpec"] as! [String: Any])
            self.extraPodSpec = model
        }
        if dict.keys.contains("Image") {
            self.image = dict["Image"] as! String
        }
        if dict.keys.contains("ImageConfig") {
            var model = ImageConfig()
            model.fromMap(dict["ImageConfig"] as! [String: Any])
            self.imageConfig = model
        }
        if dict.keys.contains("PodCount") {
            self.podCount = dict["PodCount"] as! Int64
        }
        if dict.keys.contains("ResourceConfig") {
            var model = ResourceConfig()
            model.fromMap(dict["ResourceConfig"] as! [String: Any])
            self.resourceConfig = model
        }
        if dict.keys.contains("SpotSpec") {
            var model = SpotSpec()
            model.fromMap(dict["SpotSpec"] as! [String: Any])
            self.spotSpec = model
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UseSpotInstance") {
            self.useSpotInstance = dict["UseSpotInstance"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Command") {
                    self.command = dict["Command"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Exec") {
                var model = Lifecycle.PostStart.Exec()
                model.fromMap(dict["Exec"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Command") {
                    self.command = dict["Command"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Exec") {
                var model = Lifecycle.PreStop.Exec()
                model.fromMap(dict["Exec"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PostStart") {
            var model = Lifecycle.PostStart()
            model.fromMap(dict["PostStart"] as! [String: Any])
            self.postStart = model
        }
        if dict.keys.contains("PreStop") {
            var model = Lifecycle.PreStop()
            model.fromMap(dict["PreStop"] as! [String: Any])
            self.preStop = model
        }
    }
}

public class LogInfo : Tea.TeaModel {
    public var content: String?

    public var id: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("PodId") {
            self.podId = dict["PodId"] as! String
        }
        if dict.keys.contains("PodUid") {
            self.podUid = dict["PodUid"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Time") {
            self.time = dict["Time"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MemberId") {
            self.memberId = dict["MemberId"] as! String
        }
        if dict.keys.contains("MemberType") {
            self.memberType = dict["MemberType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Time") {
            self.time = dict["Time"] as! Int64
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Metrics") {
            var tmp : [Metric] = []
            for v in dict["Metrics"] as! [Any] {
                var model = Metric()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.metrics = tmp
        }
        if dict.keys.contains("NodeName") {
            self.nodeName = dict["NodeName"] as! String
        }
    }
}

public class PodItem : Tea.TeaModel {
    public var gmtCreateTime: String?

    public var gmtFinishTime: String?

    public var gmtStartTime: String?

    public var historyPods: [PodItem]?

    public var ip: String?

    public var podId: String?

    public var podUid: String?

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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtFinishTime") {
            self.gmtFinishTime = dict["GmtFinishTime"] as! String
        }
        if dict.keys.contains("GmtStartTime") {
            self.gmtStartTime = dict["GmtStartTime"] as! String
        }
        if dict.keys.contains("HistoryPods") {
            var tmp : [PodItem] = []
            for v in dict["HistoryPods"] as! [Any] {
                var model = PodItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.historyPods = tmp
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("PodId") {
            self.podId = dict["PodId"] as! String
        }
        if dict.keys.contains("PodUid") {
            self.podUid = dict["PodUid"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Metrics") {
            var tmp : [Metric] = []
            for v in dict["Metrics"] as! [Any] {
                var model = Metric()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("QuotaConfig") {
            var model = QuotaConfig()
            model.fromMap(dict["QuotaConfig"] as! [String: Any])
            self.quotaConfig = model
        }
        if dict.keys.contains("QuotaId") {
            self.quotaId = dict["QuotaId"] as! String
        }
        if dict.keys.contains("QuotaName") {
            self.quotaName = dict["QuotaName"] as! String
        }
        if dict.keys.contains("QuotaType") {
            self.quotaType = dict["QuotaType"] as! String
        }
        if dict.keys.contains("TotalQuota") {
            var model = QuotaDetail()
            model.fromMap(dict["TotalQuota"] as! [String: Any])
            self.totalQuota = model
        }
        if dict.keys.contains("TotalTideQuota") {
            var model = QuotaDetail()
            model.fromMap(dict["TotalTideQuota"] as! [String: Any])
            self.totalTideQuota = model
        }
        if dict.keys.contains("UsedQuota") {
            var model = QuotaDetail()
            model.fromMap(dict["UsedQuota"] as! [String: Any])
            self.usedQuota = model
        }
        if dict.keys.contains("UsedTideQuota") {
            var model = QuotaDetail()
            model.fromMap(dict["UsedTideQuota"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowedMaxPriority") {
            self.allowedMaxPriority = dict["AllowedMaxPriority"] as! Int32
        }
        if dict.keys.contains("EnableDLC") {
            self.enableDLC = dict["EnableDLC"] as! Bool
        }
        if dict.keys.contains("EnableDSW") {
            self.enableDSW = dict["EnableDSW"] as! Bool
        }
        if dict.keys.contains("EnableTideResource") {
            self.enableTideResource = dict["EnableTideResource"] as! Bool
        }
        if dict.keys.contains("ResourceLevel") {
            self.resourceLevel = dict["ResourceLevel"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CPU") {
            self.CPU = dict["CPU"] as! String
        }
        if dict.keys.contains("GPU") {
            self.GPU = dict["GPU"] as! String
        }
        if dict.keys.contains("GPUDetails") {
            var tmp : [GPUDetail] = []
            for v in dict["GPUDetails"] as! [Any] {
                var model = GPUDetail()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.GPUDetails = tmp
        }
        if dict.keys.contains("GPUType") {
            self.GPUType = dict["GPUType"] as! String
        }
        if dict.keys.contains("GPUTypeFullName") {
            self.GPUTypeFullName = dict["GPUTypeFullName"] as! String
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Limits") {
            self.limits = dict["Limits"] as! [String: String]
        }
        if dict.keys.contains("Requests") {
            self.requests = dict["Requests"] as! [String: String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CPU") {
            self.CPU = dict["CPU"] as! String
        }
        if dict.keys.contains("GPU") {
            self.GPU = dict["GPU"] as! String
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckNumber") {
            self.checkNumber = dict["CheckNumber"] as! Int32
        }
        if dict.keys.contains("FinishedAt") {
            self.finishedAt = dict["FinishedAt"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("StartedAt") {
            self.startedAt = dict["StartedAt"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CacheWorkerNum") {
            self.cacheWorkerNum = dict["CacheWorkerNum"] as! Int64
        }
        if dict.keys.contains("CacheWorkerSize") {
            self.cacheWorkerSize = dict["CacheWorkerSize"] as! Int64
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! String
        }
        if dict.keys.contains("Endpoint") {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("FileSystemId") {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
        }
        if dict.keys.contains("MountPath") {
            self.mountPath = dict["MountPath"] as! String
        }
        if dict.keys.contains("Options") {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("SmartCacheId") {
            self.smartCacheId = dict["SmartCacheId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class SpotSpec : Tea.TeaModel {
    public var spotDiscountLimit: Double?

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
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpotDiscountLimit") {
            self.spotDiscountLimit = dict["SpotDiscountLimit"] as! Double
        }
        if dict.keys.contains("SpotStrategy") {
            self.spotStrategy = dict["SpotStrategy"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ReasonCode") {
            self.reasonCode = dict["ReasonCode"] as! String
        }
        if dict.keys.contains("ReasonMessage") {
            self.reasonMessage = dict["ReasonMessage"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public var workspaceid: String?

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
        if self.workspaceid != nil {
            map["Workspaceid"] = self.workspaceid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("Cpu") {
            self.cpu = dict["Cpu"] as! Int64
        }
        if dict.keys.contains("DataSourceId") {
            self.dataSourceId = dict["DataSourceId"] as! String
        }
        if dict.keys.contains("DataSourceType") {
            self.dataSourceType = dict["DataSourceType"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtFinishTime") {
            self.gmtFinishTime = dict["GmtFinishTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("MaxRunningTimeMinutes") {
            self.maxRunningTimeMinutes = dict["MaxRunningTimeMinutes"] as! Int64
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! Int64
        }
        if dict.keys.contains("Options") {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! String
        }
        if dict.keys.contains("QuotaId") {
            self.quotaId = dict["QuotaId"] as! String
        }
        if dict.keys.contains("QuotaName") {
            self.quotaName = dict["QuotaName"] as! String
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
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SummaryPath") {
            self.summaryPath = dict["SummaryPath"] as! String
        }
        if dict.keys.contains("SummaryRelativePath") {
            self.summaryRelativePath = dict["SummaryRelativePath"] as! String
        }
        if dict.keys.contains("TensorboardDataSources") {
            var tmp : [TensorboardDataSourceSpec] = []
            for v in dict["TensorboardDataSources"] as! [Any] {
                var model = TensorboardDataSourceSpec()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tensorboardDataSources = tmp
        }
        if dict.keys.contains("TensorboardId") {
            self.tensorboardId = dict["TensorboardId"] as! String
        }
        if dict.keys.contains("TensorboardSpec") {
            var model = TensorboardSpec()
            model.fromMap(dict["TensorboardSpec"] as! [String: Any])
            self.tensorboardSpec = model
        }
        if dict.keys.contains("TensorboardUrl") {
            self.tensorboardUrl = dict["TensorboardUrl"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("Workspaceid") {
            self.workspaceid = dict["Workspaceid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSourceType") {
            self.dataSourceType = dict["DataSourceType"] as! String
        }
        if dict.keys.contains("DirectoryName") {
            self.directoryName = dict["DirectoryName"] as! String
        }
        if dict.keys.contains("FullSummaryPath") {
            self.fullSummaryPath = dict["FullSummaryPath"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SummaryPath") {
            self.summaryPath = dict["SummaryPath"] as! String
        }
        if dict.keys.contains("Uri") {
            self.uri = dict["Uri"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EcsType") {
            self.ecsType = dict["EcsType"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("SwitchId") {
            self.switchId = dict["SwitchId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Creator") {
            self.creator = dict["Creator"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
        }
        if dict.keys.contains("Members") {
            var tmp : [Member] = []
            for v in dict["Members"] as! [Any] {
                var model = Member()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.members = tmp
        }
        if dict.keys.contains("Quotas") {
            var tmp : [Quota] = []
            for v in dict["Quotas"] as! [Any] {
                var model = Quota()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.quotas = tmp
        }
        if dict.keys.contains("TotalResources") {
            var model = Resources()
            model.fromMap(dict["TotalResources"] as! [String: Any])
            self.totalResources = model
        }
        if dict.keys.contains("WorkspaceAdmins") {
            var tmp : [Member] = []
            for v in dict["WorkspaceAdmins"] as! [Any] {
                var model = Member()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.workspaceAdmins = tmp
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("WorkspaceName") {
            self.workspaceName = dict["WorkspaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Branch") {
                self.branch = dict["Branch"] as! String
            }
            if dict.keys.contains("CodeSourceId") {
                self.codeSourceId = dict["CodeSourceId"] as! String
            }
            if dict.keys.contains("Commit") {
                self.commit = dict["Commit"] as! String
            }
            if dict.keys.contains("MountPath") {
                self.mountPath = dict["MountPath"] as! String
            }
        }
    }
    public class DataSources : Tea.TeaModel {
        public var dataSourceId: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataSourceId") {
                self.dataSourceId = dict["DataSourceId"] as! String
            }
            if dict.keys.contains("MountPath") {
                self.mountPath = dict["MountPath"] as! String
            }
            if dict.keys.contains("Options") {
                self.options = dict["Options"] as! String
            }
            if dict.keys.contains("Uri") {
                self.uri = dict["Uri"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultRoute") {
                self.defaultRoute = dict["DefaultRoute"] as! String
            }
            if dict.keys.contains("ExtendedCIDRs") {
                self.extendedCIDRs = dict["ExtendedCIDRs"] as! [String]
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("SwitchId") {
                self.switchId = dict["SwitchId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("CodeSource") {
            var model = CreateJobRequest.CodeSource()
            model.fromMap(dict["CodeSource"] as! [String: Any])
            self.codeSource = model
        }
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("DataSources") {
            var tmp : [CreateJobRequest.DataSources] = []
            for v in dict["DataSources"] as! [Any] {
                var model = CreateJobRequest.DataSources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataSources = tmp
        }
        if dict.keys.contains("DebuggerConfigContent") {
            self.debuggerConfigContent = dict["DebuggerConfigContent"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("ElasticSpec") {
            var model = JobElasticSpec()
            model.fromMap(dict["ElasticSpec"] as! [String: Any])
            self.elasticSpec = model
        }
        if dict.keys.contains("Envs") {
            self.envs = dict["Envs"] as! [String: String]
        }
        if dict.keys.contains("JobMaxRunningTimeMinutes") {
            self.jobMaxRunningTimeMinutes = dict["JobMaxRunningTimeMinutes"] as! Int64
        }
        if dict.keys.contains("JobSpecs") {
            var tmp : [JobSpec] = []
            for v in dict["JobSpecs"] as! [Any] {
                var model = JobSpec()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobSpecs = tmp
        }
        if dict.keys.contains("JobType") {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("Options") {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("Settings") {
            var model = JobSettings()
            model.fromMap(dict["Settings"] as! [String: Any])
            self.settings = model
        }
        if dict.keys.contains("SuccessPolicy") {
            self.successPolicy = dict["SuccessPolicy"] as! String
        }
        if dict.keys.contains("ThirdpartyLibDir") {
            self.thirdpartyLibDir = dict["ThirdpartyLibDir"] as! String
        }
        if dict.keys.contains("ThirdpartyLibs") {
            self.thirdpartyLibs = dict["ThirdpartyLibs"] as! [String]
        }
        if dict.keys.contains("UserCommand") {
            self.userCommand = dict["UserCommand"] as! String
        }
        if dict.keys.contains("UserVpc") {
            var model = CreateJobRequest.UserVpc()
            model.fromMap(dict["UserVpc"] as! [String: Any])
            self.userVpc = model
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("Cpu") {
            self.cpu = dict["Cpu"] as! Int64
        }
        if dict.keys.contains("DataSourceId") {
            self.dataSourceId = dict["DataSourceId"] as! String
        }
        if dict.keys.contains("DataSourceType") {
            self.dataSourceType = dict["DataSourceType"] as! String
        }
        if dict.keys.contains("DataSources") {
            var tmp : [DataSourceItem] = []
            for v in dict["DataSources"] as! [Any] {
                var model = DataSourceItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataSources = tmp
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("MaxRunningTimeMinutes") {
            self.maxRunningTimeMinutes = dict["MaxRunningTimeMinutes"] as! Int64
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! Int64
        }
        if dict.keys.contains("Options") {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! String
        }
        if dict.keys.contains("QuotaId") {
            self.quotaId = dict["QuotaId"] as! String
        }
        if dict.keys.contains("SourceId") {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SummaryPath") {
            self.summaryPath = dict["SummaryPath"] as! String
        }
        if dict.keys.contains("SummaryRelativePath") {
            self.summaryRelativePath = dict["SummaryRelativePath"] as! String
        }
        if dict.keys.contains("TensorboardDataSources") {
            var tmp : [TensorboardDataSourceSpec] = []
            for v in dict["TensorboardDataSources"] as! [Any] {
                var model = TensorboardDataSourceSpec()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tensorboardDataSources = tmp
        }
        if dict.keys.contains("TensorboardSpec") {
            var model = TensorboardSpec()
            model.fromMap(dict["TensorboardSpec"] as! [String: Any])
            self.tensorboardSpec = model
        }
        if dict.keys.contains("Uri") {
            self.uri = dict["Uri"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSourceId") {
            self.dataSourceId = dict["DataSourceId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TensorboardId") {
            self.tensorboardId = dict["TensorboardId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateTensorboardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TensorboardId") {
            self.tensorboardId = dict["TensorboardId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteTensorboardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NeedDetail") {
            self.needDetail = dict["NeedDetail"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Branch") {
                self.branch = dict["Branch"] as! String
            }
            if dict.keys.contains("CodeSourceId") {
                self.codeSourceId = dict["CodeSourceId"] as! String
            }
            if dict.keys.contains("Commit") {
                self.commit = dict["Commit"] as! String
            }
            if dict.keys.contains("MountPath") {
                self.mountPath = dict["MountPath"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataSourceId") {
                self.dataSourceId = dict["DataSourceId"] as! String
            }
            if dict.keys.contains("MountPath") {
                self.mountPath = dict["MountPath"] as! String
            }
            if dict.keys.contains("Uri") {
                self.uri = dict["Uri"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GmtCreateTime") {
                    self.gmtCreateTime = dict["GmtCreateTime"] as! String
                }
                if dict.keys.contains("GmtFinishTime") {
                    self.gmtFinishTime = dict["GmtFinishTime"] as! String
                }
                if dict.keys.contains("GmtStartTime") {
                    self.gmtStartTime = dict["GmtStartTime"] as! String
                }
                if dict.keys.contains("Ip") {
                    self.ip = dict["Ip"] as! String
                }
                if dict.keys.contains("PodId") {
                    self.podId = dict["PodId"] as! String
                }
                if dict.keys.contains("PodUid") {
                    self.podUid = dict["PodUid"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SubStatus") {
                    self.subStatus = dict["SubStatus"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtFinishTime") {
                self.gmtFinishTime = dict["GmtFinishTime"] as! String
            }
            if dict.keys.contains("GmtStartTime") {
                self.gmtStartTime = dict["GmtStartTime"] as! String
            }
            if dict.keys.contains("HistoryPods") {
                var tmp : [GetJobResponseBody.Pods.HistoryPods] = []
                for v in dict["HistoryPods"] as! [Any] {
                    var model = GetJobResponseBody.Pods.HistoryPods()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.historyPods = tmp
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("PodId") {
                self.podId = dict["PodId"] as! String
            }
            if dict.keys.contains("PodUid") {
                self.podUid = dict["PodUid"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubStatus") {
                self.subStatus = dict["SubStatus"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.workspaceName != nil {
            map["WorkspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CodeSource") {
            var model = GetJobResponseBody.CodeSource()
            model.fromMap(dict["CodeSource"] as! [String: Any])
            self.codeSource = model
        }
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("DataSources") {
            var tmp : [GetJobResponseBody.DataSources] = []
            for v in dict["DataSources"] as! [Any] {
                var model = GetJobResponseBody.DataSources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataSources = tmp
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("ElasticSpec") {
            var model = JobElasticSpec()
            model.fromMap(dict["ElasticSpec"] as! [String: Any])
            self.elasticSpec = model
        }
        if dict.keys.contains("EnabledDebugger") {
            self.enabledDebugger = dict["EnabledDebugger"] as! Bool
        }
        if dict.keys.contains("Envs") {
            self.envs = dict["Envs"] as! [String: String]
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtFailedTime") {
            self.gmtFailedTime = dict["GmtFailedTime"] as! String
        }
        if dict.keys.contains("GmtFinishTime") {
            self.gmtFinishTime = dict["GmtFinishTime"] as! String
        }
        if dict.keys.contains("GmtRunningTime") {
            self.gmtRunningTime = dict["GmtRunningTime"] as! String
        }
        if dict.keys.contains("GmtStoppedTime") {
            self.gmtStoppedTime = dict["GmtStoppedTime"] as! String
        }
        if dict.keys.contains("GmtSubmittedTime") {
            self.gmtSubmittedTime = dict["GmtSubmittedTime"] as! String
        }
        if dict.keys.contains("GmtSuccessedTime") {
            self.gmtSuccessedTime = dict["GmtSuccessedTime"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JobSpecs") {
            var tmp : [JobSpec] = []
            for v in dict["JobSpecs"] as! [Any] {
                var model = JobSpec()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobSpecs = tmp
        }
        if dict.keys.contains("JobType") {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("Pods") {
            var tmp : [GetJobResponseBody.Pods] = []
            for v in dict["Pods"] as! [Any] {
                var model = GetJobResponseBody.Pods()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.pods = tmp
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
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
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceLevel") {
            self.resourceLevel = dict["ResourceLevel"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("RestartTimes") {
            self.restartTimes = dict["RestartTimes"] as! String
        }
        if dict.keys.contains("Settings") {
            var model = JobSettings()
            model.fromMap(dict["Settings"] as! [String: Any])
            self.settings = model
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StatusHistory") {
            var tmp : [StatusTransitionItem] = []
            for v in dict["StatusHistory"] as! [Any] {
                var model = StatusTransitionItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.statusHistory = tmp
        }
        if dict.keys.contains("SubStatus") {
            self.subStatus = dict["SubStatus"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("ThirdpartyLibDir") {
            self.thirdpartyLibDir = dict["ThirdpartyLibDir"] as! String
        }
        if dict.keys.contains("ThirdpartyLibs") {
            self.thirdpartyLibs = dict["ThirdpartyLibs"] as! [String]
        }
        if dict.keys.contains("UserCommand") {
            self.userCommand = dict["UserCommand"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("WorkspaceName") {
            self.workspaceName = dict["WorkspaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Events") {
            self.events = dict["Events"] as! [String]
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetJobEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("PodMetrics") {
            var tmp : [PodMetric] = []
            for v in dict["PodMetrics"] as! [Any] {
                var model = PodMetric()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetJobMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SanityCheckNumber") {
            self.sanityCheckNumber = dict["SanityCheckNumber"] as! Int32
        }
        if dict.keys.contains("SanityCheckPhase") {
            self.sanityCheckPhase = dict["SanityCheckPhase"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestID") {
            self.requestID = dict["RequestID"] as! String
        }
        if dict.keys.contains("SanityCheckResult") {
            var tmp : [SanityCheckResultItem] = []
            for v in dict["SanityCheckResult"] as! [Any] {
                var model = SanityCheckResultItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetJobSanityCheckResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("MaxEventsNum") {
            self.maxEventsNum = dict["MaxEventsNum"] as! Int32
        }
        if dict.keys.contains("PodUid") {
            self.podUid = dict["PodUid"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Events") {
            self.events = dict["Events"] as! [String]
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("PodId") {
            self.podId = dict["PodId"] as! String
        }
        if dict.keys.contains("PodUid") {
            self.podUid = dict["PodUid"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetPodEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DownloadToFile") {
            self.downloadToFile = dict["DownloadToFile"] as! Bool
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("MaxLines") {
            self.maxLines = dict["MaxLines"] as! Int32
        }
        if dict.keys.contains("PodUid") {
            self.podUid = dict["PodUid"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("Logs") {
            self.logs = dict["Logs"] as! [String]
        }
        if dict.keys.contains("PodId") {
            self.podId = dict["PodId"] as! String
        }
        if dict.keys.contains("PodUid") {
            self.podUid = dict["PodUid"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetPodLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JodId") {
            self.jodId = dict["JodId"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Tensorboard()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpireTimeSeconds") {
            self.expireTimeSeconds = dict["ExpireTimeSeconds"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TensorboardSharedUrl") {
            self.tensorboardSharedUrl = dict["TensorboardSharedUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetTensorboardSharedUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! Int64
        }
        if dict.keys.contains("TargetId") {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsShared") {
            self.isShared = dict["IsShared"] as! Bool
        }
        if dict.keys.contains("PodUid") {
            self.podUid = dict["PodUid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WebTerminalUrl") {
            self.webTerminalUrl = dict["WebTerminalUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetWebTerminalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorType") {
            self.acceleratorType = dict["AcceleratorType"] as! String
        }
        if dict.keys.contains("InstanceTypes") {
            self.instanceTypes = dict["InstanceTypes"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EcsSpecs") {
            var tmp : [EcsSpec] = []
            for v in dict["EcsSpecs"] as! [Any] {
                var model = EcsSpec()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ecsSpecs = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestID") {
            self.requestID = dict["RequestID"] as! String
        }
        if dict.keys.contains("SanityCheckResults") {
            var tmp : [[SanityCheckResultItem]] = []
            for v in dict["SanityCheckResults"] as! [Any] {
                var l1 : [SanityCheckResultItem] = []
                for v1 in v as! [Any] {
                    var model = SanityCheckResultItem()
                    if v1 != nil {
                        model.fromMap(v1 as! [String: Any])
                    }
                    l1.append(model)
                }
                tmp.append(l1)
            }
            self.sanityCheckResults = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListJobSanityCheckResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJobsRequest : Tea.TeaModel {
    public var accessibility: String?

    public var businessUserId: String?

    public var caller: String?

    public var displayName: String?

    public var endTime: String?

    public var fromAllWorkspaces: Bool?

    public var jobId: String?

    public var jobType: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.fromAllWorkspaces != nil {
            map["FromAllWorkspaces"] = self.fromAllWorkspaces!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("BusinessUserId") {
            self.businessUserId = dict["BusinessUserId"] as! String
        }
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FromAllWorkspaces") {
            self.fromAllWorkspaces = dict["FromAllWorkspaces"] as! Bool
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JobType") {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PipelineId") {
            self.pipelineId = dict["PipelineId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceQuotaName") {
            self.resourceQuotaName = dict["ResourceQuotaName"] as! String
        }
        if dict.keys.contains("ShowOwn") {
            self.showOwn = dict["ShowOwn"] as! Bool
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: String]
        }
        if dict.keys.contains("UserIdForFilter") {
            self.userIdForFilter = dict["UserIdForFilter"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListJobsShrinkRequest : Tea.TeaModel {
    public var accessibility: String?

    public var businessUserId: String?

    public var caller: String?

    public var displayName: String?

    public var endTime: String?

    public var fromAllWorkspaces: Bool?

    public var jobId: String?

    public var jobType: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.fromAllWorkspaces != nil {
            map["FromAllWorkspaces"] = self.fromAllWorkspaces!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("BusinessUserId") {
            self.businessUserId = dict["BusinessUserId"] as! String
        }
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FromAllWorkspaces") {
            self.fromAllWorkspaces = dict["FromAllWorkspaces"] as! Bool
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JobType") {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PipelineId") {
            self.pipelineId = dict["PipelineId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceQuotaName") {
            self.resourceQuotaName = dict["ResourceQuotaName"] as! String
        }
        if dict.keys.contains("ShowOwn") {
            self.showOwn = dict["ShowOwn"] as! Bool
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("UserIdForFilter") {
            self.userIdForFilter = dict["UserIdForFilter"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Jobs") {
            var tmp : [JobItem] = []
            for v in dict["Jobs"] as! [Any] {
                var model = JobItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobs = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PaymentType") {
            self.paymentType = dict["PaymentType"] as! String
        }
        if dict.keys.contains("QuotaId") {
            self.quotaId = dict["QuotaId"] as! String
        }
        if dict.keys.contains("ShowOwn") {
            self.showOwn = dict["ShowOwn"] as! Bool
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SourceId") {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TensorboardId") {
            self.tensorboardId = dict["TensorboardId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("Verbose") {
            self.verbose = dict["Verbose"] as! Bool
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tensorboards") {
            var tmp : [Tensorboard] = []
            for v in dict["Tensorboards"] as! [Any] {
                var model = Tensorboard()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tensorboards = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTensorboardsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TensorboardId") {
            self.tensorboardId = dict["TensorboardId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartTensorboardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TensorboardId") {
            self.tensorboardId = dict["TensorboardId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopTensorboardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateJobRequest : Tea.TeaModel {
    public var accessibility: String?

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
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("MaxRunningTimeMinutes") {
            self.maxRunningTimeMinutes = dict["MaxRunningTimeMinutes"] as! Int64
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TensorboardId") {
            self.tensorboardId = dict["TensorboardId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateTensorboardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
