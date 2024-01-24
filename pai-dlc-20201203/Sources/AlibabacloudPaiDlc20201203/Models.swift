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
        if dict.keys.contains("Extended") && dict["Extended"] != nil {
            self.extended = dict["Extended"] as! String
        }
        if dict.keys.contains("JobRestartCount") && dict["JobRestartCount"] != nil {
            self.jobRestartCount = dict["JobRestartCount"] as! Int32
        }
        if dict.keys.contains("MessageContent") && dict["MessageContent"] != nil {
            self.messageContent = dict["MessageContent"] as! String
        }
        if dict.keys.contains("MessageEvent") && dict["MessageEvent"] != nil {
            self.messageEvent = dict["MessageEvent"] as! String
        }
        if dict.keys.contains("MessageVersion") && dict["MessageVersion"] != nil {
            self.messageVersion = dict["MessageVersion"] as! Int32
        }
        if dict.keys.contains("RestartType") && dict["RestartType"] != nil {
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
        if dict.keys.contains("AliyunUid") && dict["AliyunUid"] != nil {
            self.aliyunUid = dict["AliyunUid"] as! String
        }
        if dict.keys.contains("EmployeeId") && dict["EmployeeId"] != nil {
            self.employeeId = dict["EmployeeId"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") && dict["GmtModifyTime"] != nil {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
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
        if dict.keys.contains("CodeBranch") && dict["CodeBranch"] != nil {
            self.codeBranch = dict["CodeBranch"] as! String
        }
        if dict.keys.contains("CodeCommit") && dict["CodeCommit"] != nil {
            self.codeCommit = dict["CodeCommit"] as! String
        }
        if dict.keys.contains("CodeRepo") && dict["CodeRepo"] != nil {
            self.codeRepo = dict["CodeRepo"] as! String
        }
        if dict.keys.contains("CodeRepoAccessToken") && dict["CodeRepoAccessToken"] != nil {
            self.codeRepoAccessToken = dict["CodeRepoAccessToken"] as! String
        }
        if dict.keys.contains("CodeRepoUserName") && dict["CodeRepoUserName"] != nil {
            self.codeRepoUserName = dict["CodeRepoUserName"] as! String
        }
        if dict.keys.contains("CodeSourceId") && dict["CodeSourceId"] != nil {
            self.codeSourceId = dict["CodeSourceId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") && dict["GmtModifyTime"] != nil {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
        if dict.keys.contains("Args") && dict["Args"] != nil {
            self.args = dict["Args"] as! [String]
        }
        if dict.keys.contains("Command") && dict["Command"] != nil {
            self.command = dict["Command"] as! [String]
        }
        if dict.keys.contains("Env") && dict["Env"] != nil {
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
        if dict.keys.contains("Image") && dict["Image"] != nil {
            self.image = dict["Image"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Resources") && dict["Resources"] != nil {
            var model = ResourceRequirements()
            model.fromMap(dict["Resources"] as! [String: Any])
            self.resources = model
        }
        if dict.keys.contains("WorkingDir") && dict["WorkingDir"] != nil {
            self.workingDir = dict["WorkingDir"] as! String
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
        if dict.keys.contains("DataSourceId") && dict["DataSourceId"] != nil {
            self.dataSourceId = dict["DataSourceId"] as! String
        }
        if dict.keys.contains("DataSourceType") && dict["DataSourceType"] != nil {
            self.dataSourceType = dict["DataSourceType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Endpoint") && dict["Endpoint"] != nil {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") && dict["GmtModifyTime"] != nil {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
        }
        if dict.keys.contains("MountPath") && dict["MountPath"] != nil {
            self.mountPath = dict["MountPath"] as! String
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("DebuggerConfigId") && dict["DebuggerConfigId"] != nil {
            self.debuggerConfigId = dict["DebuggerConfigId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") && dict["GmtModifyTime"] != nil {
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
        if dict.keys.contains("DebuggerJobId") && dict["DebuggerJobId"] != nil {
            self.debuggerJobId = dict["DebuggerJobId"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtFailedTime") && dict["GmtFailedTime"] != nil {
            self.gmtFailedTime = dict["GmtFailedTime"] as! String
        }
        if dict.keys.contains("GmtFinishTime") && dict["GmtFinishTime"] != nil {
            self.gmtFinishTime = dict["GmtFinishTime"] as! String
        }
        if dict.keys.contains("GmtRunningTime") && dict["GmtRunningTime"] != nil {
            self.gmtRunningTime = dict["GmtRunningTime"] as! String
        }
        if dict.keys.contains("GmtStoppedTime") && dict["GmtStoppedTime"] != nil {
            self.gmtStoppedTime = dict["GmtStoppedTime"] as! String
        }
        if dict.keys.contains("GmtSubmittedTime") && dict["GmtSubmittedTime"] != nil {
            self.gmtSubmittedTime = dict["GmtSubmittedTime"] as! String
        }
        if dict.keys.contains("GmtSucceedTime") && dict["GmtSucceedTime"] != nil {
            self.gmtSucceedTime = dict["GmtSucceedTime"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
        if dict.keys.contains("DebuggerJobIssue") && dict["DebuggerJobIssue"] != nil {
            self.debuggerJobIssue = dict["DebuggerJobIssue"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("JobDebuggerIssueId") && dict["JobDebuggerIssueId"] != nil {
            self.jobDebuggerIssueId = dict["JobDebuggerIssueId"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("ReasonCode") && dict["ReasonCode"] != nil {
            self.reasonCode = dict["ReasonCode"] as! String
        }
        if dict.keys.contains("ReasonMessage") && dict["ReasonMessage"] != nil {
            self.reasonMessage = dict["ReasonMessage"] as! String
        }
        if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
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
        if dict.keys.contains("DebuggerConfigContent") && dict["DebuggerConfigContent"] != nil {
            self.debuggerConfigContent = dict["DebuggerConfigContent"] as! String
        }
        if dict.keys.contains("DebuggerJobIssues") && dict["DebuggerJobIssues"] != nil {
            self.debuggerJobIssues = dict["DebuggerJobIssues"] as! String
        }
        if dict.keys.contains("DebuggerJobStatus") && dict["DebuggerJobStatus"] != nil {
            self.debuggerJobStatus = dict["DebuggerJobStatus"] as! String
        }
        if dict.keys.contains("DebuggerReportURL") && dict["DebuggerReportURL"] != nil {
            self.debuggerReportURL = dict["DebuggerReportURL"] as! String
        }
        if dict.keys.contains("JobDisplayName") && dict["JobDisplayName"] != nil {
            self.jobDisplayName = dict["JobDisplayName"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JobUserId") && dict["JobUserId"] != nil {
            self.jobUserId = dict["JobUserId"] as! String
        }
    }
}

public class EcsSpec : Tea.TeaModel {
    public var acceleratorType: String?

    public var cpu: Int32?

    public var gpu: Int32?

    public var gpuType: String?

    public var instanceType: String?

    public var isAvailable: Bool?

    public var memory: Int32?

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
        if self.acceleratorType != nil {
            map["AcceleratorType"] = self.acceleratorType!
        }
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorType") && dict["AcceleratorType"] != nil {
            self.acceleratorType = dict["AcceleratorType"] as! String
        }
        if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
            self.cpu = dict["Cpu"] as! Int32
        }
        if dict.keys.contains("Gpu") && dict["Gpu"] != nil {
            self.gpu = dict["Gpu"] as! Int32
        }
        if dict.keys.contains("GpuType") && dict["GpuType"] != nil {
            self.gpuType = dict["GpuType"] as! String
        }
        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("IsAvailable") && dict["IsAvailable"] != nil {
            self.isAvailable = dict["IsAvailable"] as! Bool
        }
        if dict.keys.contains("Memory") && dict["Memory"] != nil {
            self.memory = dict["Memory"] as! Int32
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
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
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
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
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("PodId") && dict["PodId"] != nil {
            self.podId = dict["PodId"] as! String
        }
        if dict.keys.contains("PodUid") && dict["PodUid"] != nil {
            self.podUid = dict["PodUid"] as! String
        }
        if dict.keys.contains("Time") && dict["Time"] != nil {
            self.time = dict["Time"] as! String
        }
    }
}

public class ExtraPodSpec : Tea.TeaModel {
    public var initContainers: [ContainerSpec]?

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
        if dict.keys.contains("InitContainers") && dict["InitContainers"] != nil {
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
        if dict.keys.contains("PodAnnotations") && dict["PodAnnotations"] != nil {
            self.podAnnotations = dict["PodAnnotations"] as! [String: String]
        }
        if dict.keys.contains("PodLabels") && dict["PodLabels"] != nil {
            self.podLabels = dict["PodLabels"] as! [String: String]
        }
        if dict.keys.contains("SharedVolumeMountPaths") && dict["SharedVolumeMountPaths"] != nil {
            self.sharedVolumeMountPaths = dict["SharedVolumeMountPaths"] as! [String]
        }
        if dict.keys.contains("SideCarContainers") && dict["SideCarContainers"] != nil {
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
        if dict.keys.contains("ClusterID") && dict["ClusterID"] != nil {
            self.clusterID = dict["ClusterID"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("CrossClusters") && dict["CrossClusters"] != nil {
            self.crossClusters = dict["CrossClusters"] as! Bool
        }
        if dict.keys.contains("EnableFreeResource") && dict["EnableFreeResource"] != nil {
            self.enableFreeResource = dict["EnableFreeResource"] as! Bool
        }
        if dict.keys.contains("FreeResourceClusterControlId") && dict["FreeResourceClusterControlId"] != nil {
            self.freeResourceClusterControlId = dict["FreeResourceClusterControlId"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") && dict["GmtModifyTime"] != nil {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
        }
        if dict.keys.contains("RegionID") && dict["RegionID"] != nil {
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
        if dict.keys.contains("Amount") && dict["Amount"] != nil {
            self.amount = dict["Amount"] as! Int32
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
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
        if dict.keys.contains("AvailableNumber") && dict["AvailableNumber"] != nil {
            self.availableNumber = dict["AvailableNumber"] as! Int64
        }
        if dict.keys.contains("ClusterID") && dict["ClusterID"] != nil {
            self.clusterID = dict["ClusterID"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("FreeResourceId") && dict["FreeResourceId"] != nil {
            self.freeResourceId = dict["FreeResourceId"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") && dict["GmtModifyTime"] != nil {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
        }
        if dict.keys.contains("RegionID") && dict["RegionID"] != nil {
            self.regionID = dict["RegionID"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
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
        if dict.keys.contains("GPU") && dict["GPU"] != nil {
            self.GPU = dict["GPU"] as! String
        }
        if dict.keys.contains("GPUType") && dict["GPUType"] != nil {
            self.GPUType = dict["GPUType"] as! String
        }
        if dict.keys.contains("GPUTypeFullName") && dict["GPUTypeFullName"] != nil {
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
        if dict.keys.contains("Auth") && dict["Auth"] != nil {
            self.auth = dict["Auth"] as! String
        }
        if dict.keys.contains("DockerRegistry") && dict["DockerRegistry"] != nil {
            self.dockerRegistry = dict["DockerRegistry"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
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
        if dict.keys.contains("AcceleratorType") && dict["AcceleratorType"] != nil {
            self.acceleratorType = dict["AcceleratorType"] as! String
        }
        if dict.keys.contains("AuthorId") && dict["AuthorId"] != nil {
            self.authorId = dict["AuthorId"] as! String
        }
        if dict.keys.contains("Framework") && dict["Framework"] != nil {
            self.framework = dict["Framework"] as! String
        }
        if dict.keys.contains("ImageProviderType") && dict["ImageProviderType"] != nil {
            self.imageProviderType = dict["ImageProviderType"] as! String
        }
        if dict.keys.contains("ImageTag") && dict["ImageTag"] != nil {
            self.imageTag = dict["ImageTag"] as! String
        }
        if dict.keys.contains("ImageUrl") && dict["ImageUrl"] != nil {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("ImageUrlVpc") && dict["ImageUrlVpc"] != nil {
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
        if dict.keys.contains("DebuggerConfigContent") && dict["DebuggerConfigContent"] != nil {
            self.debuggerConfigContent = dict["DebuggerConfigContent"] as! String
        }
        if dict.keys.contains("DebuggerConfigId") && dict["DebuggerConfigId"] != nil {
            self.debuggerConfigId = dict["DebuggerConfigId"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
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
        if dict.keys.contains("AIMasterDockerImage") && dict["AIMasterDockerImage"] != nil {
            self.AIMasterDockerImage = dict["AIMasterDockerImage"] as! String
        }
        if dict.keys.contains("AIMasterType") && dict["AIMasterType"] != nil {
            self.AIMasterType = dict["AIMasterType"] as! String
        }
        if dict.keys.contains("EDPMaxParallelism") && dict["EDPMaxParallelism"] != nil {
            self.EDPMaxParallelism = dict["EDPMaxParallelism"] as! Int32
        }
        if dict.keys.contains("EDPMinParallelism") && dict["EDPMinParallelism"] != nil {
            self.EDPMinParallelism = dict["EDPMinParallelism"] as! Int32
        }
        if dict.keys.contains("ElasticStrategy") && dict["ElasticStrategy"] != nil {
            self.elasticStrategy = dict["ElasticStrategy"] as! String
        }
        if dict.keys.contains("EnableAIMaster") && dict["EnableAIMaster"] != nil {
            self.enableAIMaster = dict["EnableAIMaster"] as! Bool
        }
        if dict.keys.contains("EnableEDP") && dict["EnableEDP"] != nil {
            self.enableEDP = dict["EnableEDP"] as! Bool
        }
        if dict.keys.contains("EnableElasticTraining") && dict["EnableElasticTraining"] != nil {
            self.enableElasticTraining = dict["EnableElasticTraining"] as! Bool
        }
        if dict.keys.contains("EnablePsJobElasticPS") && dict["EnablePsJobElasticPS"] != nil {
            self.enablePsJobElasticPS = dict["EnablePsJobElasticPS"] as! Bool
        }
        if dict.keys.contains("EnablePsJobElasticWorker") && dict["EnablePsJobElasticWorker"] != nil {
            self.enablePsJobElasticWorker = dict["EnablePsJobElasticWorker"] as! Bool
        }
        if dict.keys.contains("EnablePsResourceEstimate") && dict["EnablePsResourceEstimate"] != nil {
            self.enablePsResourceEstimate = dict["EnablePsResourceEstimate"] as! Bool
        }
        if dict.keys.contains("MaxParallelism") && dict["MaxParallelism"] != nil {
            self.maxParallelism = dict["MaxParallelism"] as! Int32
        }
        if dict.keys.contains("MinParallelism") && dict["MinParallelism"] != nil {
            self.minParallelism = dict["MinParallelism"] as! Int32
        }
        if dict.keys.contains("PSMaxParallelism") && dict["PSMaxParallelism"] != nil {
            self.PSMaxParallelism = dict["PSMaxParallelism"] as! Int32
        }
        if dict.keys.contains("PSMinParallelism") && dict["PSMinParallelism"] != nil {
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
            if dict.keys.contains("Branch") && dict["Branch"] != nil {
                self.branch = dict["Branch"] as! String
            }
            if dict.keys.contains("CodeSourceId") && dict["CodeSourceId"] != nil {
                self.codeSourceId = dict["CodeSourceId"] as! String
            }
            if dict.keys.contains("Commit") && dict["Commit"] != nil {
                self.commit = dict["Commit"] as! String
            }
            if dict.keys.contains("MountPath") && dict["MountPath"] != nil {
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
            if dict.keys.contains("DataSourceId") && dict["DataSourceId"] != nil {
                self.dataSourceId = dict["DataSourceId"] as! String
            }
            if dict.keys.contains("MountPath") && dict["MountPath"] != nil {
                self.mountPath = dict["MountPath"] as! String
            }
        }
    }
    public var codeSource: JobItem.CodeSource?

    public var dataSources: [JobItem.DataSources]?

    public var displayName: String?

    public var duration: Int64?

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

    public var priority: Int32?

    public var reasonCode: String?

    public var reasonMessage: String?

    public var resourceId: String?

    public var resourceLevel: String?

    public var resourceName: String?

    public var resourceType: String?

    public var settings: JobSettings?

    public var status: String?

    public var subStatus: String?

    public var thirdpartyLibDir: String?

    public var thirdpartyLibs: [String]?

    public var useOversoldResource: Bool?

    public var userCommand: String?

    public var userId: String?

    public var username: String?

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
        try self.settings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.codeSource != nil {
            map["CodeSource"] = self.codeSource?.toMap()
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
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.reasonCode != nil {
            map["ReasonCode"] = self.reasonCode!
        }
        if self.reasonMessage != nil {
            map["ReasonMessage"] = self.reasonMessage!
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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.settings != nil {
            map["Settings"] = self.settings?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subStatus != nil {
            map["SubStatus"] = self.subStatus!
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
        if self.username != nil {
            map["Username"] = self.username!
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
        if dict.keys.contains("CodeSource") && dict["CodeSource"] != nil {
            var model = JobItem.CodeSource()
            model.fromMap(dict["CodeSource"] as! [String: Any])
            self.codeSource = model
        }
        if dict.keys.contains("DataSources") && dict["DataSources"] != nil {
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
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("EnabledDebugger") && dict["EnabledDebugger"] != nil {
            self.enabledDebugger = dict["EnabledDebugger"] as! Bool
        }
        if dict.keys.contains("Envs") && dict["Envs"] != nil {
            self.envs = dict["Envs"] as! [String: String]
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtFailedTime") && dict["GmtFailedTime"] != nil {
            self.gmtFailedTime = dict["GmtFailedTime"] as! String
        }
        if dict.keys.contains("GmtFinishTime") && dict["GmtFinishTime"] != nil {
            self.gmtFinishTime = dict["GmtFinishTime"] as! String
        }
        if dict.keys.contains("GmtRunningTime") && dict["GmtRunningTime"] != nil {
            self.gmtRunningTime = dict["GmtRunningTime"] as! String
        }
        if dict.keys.contains("GmtStoppedTime") && dict["GmtStoppedTime"] != nil {
            self.gmtStoppedTime = dict["GmtStoppedTime"] as! String
        }
        if dict.keys.contains("GmtSubmittedTime") && dict["GmtSubmittedTime"] != nil {
            self.gmtSubmittedTime = dict["GmtSubmittedTime"] as! String
        }
        if dict.keys.contains("GmtSuccessedTime") && dict["GmtSuccessedTime"] != nil {
            self.gmtSuccessedTime = dict["GmtSuccessedTime"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JobSpecs") && dict["JobSpecs"] != nil {
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
        if dict.keys.contains("JobType") && dict["JobType"] != nil {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ReasonCode") && dict["ReasonCode"] != nil {
            self.reasonCode = dict["ReasonCode"] as! String
        }
        if dict.keys.contains("ReasonMessage") && dict["ReasonMessage"] != nil {
            self.reasonMessage = dict["ReasonMessage"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceLevel") && dict["ResourceLevel"] != nil {
            self.resourceLevel = dict["ResourceLevel"] as! String
        }
        if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Settings") && dict["Settings"] != nil {
            var model = JobSettings()
            model.fromMap(dict["Settings"] as! [String: Any])
            self.settings = model
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SubStatus") && dict["SubStatus"] != nil {
            self.subStatus = dict["SubStatus"] as! String
        }
        if dict.keys.contains("ThirdpartyLibDir") && dict["ThirdpartyLibDir"] != nil {
            self.thirdpartyLibDir = dict["ThirdpartyLibDir"] as! String
        }
        if dict.keys.contains("ThirdpartyLibs") && dict["ThirdpartyLibs"] != nil {
            self.thirdpartyLibs = dict["ThirdpartyLibs"] as! [String]
        }
        if dict.keys.contains("UseOversoldResource") && dict["UseOversoldResource"] != nil {
            self.useOversoldResource = dict["UseOversoldResource"] as! Bool
        }
        if dict.keys.contains("UserCommand") && dict["UserCommand"] != nil {
            self.userCommand = dict["UserCommand"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
            self.workspaceName = dict["WorkspaceName"] as! String
        }
    }
}

public class JobSettings : Tea.TeaModel {
    public var advancedSettings: [String: Any]?

    public var businessUserId: String?

    public var caller: String?

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
        if dict.keys.contains("AdvancedSettings") && dict["AdvancedSettings"] != nil {
            self.advancedSettings = dict["AdvancedSettings"] as! [String: Any]
        }
        if dict.keys.contains("BusinessUserId") && dict["BusinessUserId"] != nil {
            self.businessUserId = dict["BusinessUserId"] as! String
        }
        if dict.keys.contains("Caller") && dict["Caller"] != nil {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("Driver") && dict["Driver"] != nil {
            self.driver = dict["Driver"] as! String
        }
        if dict.keys.contains("EnableErrorMonitoringInAIMaster") && dict["EnableErrorMonitoringInAIMaster"] != nil {
            self.enableErrorMonitoringInAIMaster = dict["EnableErrorMonitoringInAIMaster"] as! Bool
        }
        if dict.keys.contains("EnableOssAppend") && dict["EnableOssAppend"] != nil {
            self.enableOssAppend = dict["EnableOssAppend"] as! Bool
        }
        if dict.keys.contains("EnableRDMA") && dict["EnableRDMA"] != nil {
            self.enableRDMA = dict["EnableRDMA"] as! Bool
        }
        if dict.keys.contains("EnableSanityCheck") && dict["EnableSanityCheck"] != nil {
            self.enableSanityCheck = dict["EnableSanityCheck"] as! Bool
        }
        if dict.keys.contains("EnableTideResource") && dict["EnableTideResource"] != nil {
            self.enableTideResource = dict["EnableTideResource"] as! Bool
        }
        if dict.keys.contains("ErrorMonitoringArgs") && dict["ErrorMonitoringArgs"] != nil {
            self.errorMonitoringArgs = dict["ErrorMonitoringArgs"] as! String
        }
        if dict.keys.contains("JobReservedMinutes") && dict["JobReservedMinutes"] != nil {
            self.jobReservedMinutes = dict["JobReservedMinutes"] as! Int32
        }
        if dict.keys.contains("JobReservedPolicy") && dict["JobReservedPolicy"] != nil {
            self.jobReservedPolicy = dict["JobReservedPolicy"] as! String
        }
        if dict.keys.contains("OversoldType") && dict["OversoldType"] != nil {
            self.oversoldType = dict["OversoldType"] as! String
        }
        if dict.keys.contains("PipelineId") && dict["PipelineId"] != nil {
            self.pipelineId = dict["PipelineId"] as! String
        }
        if dict.keys.contains("SanityCheckArgs") && dict["SanityCheckArgs"] != nil {
            self.sanityCheckArgs = dict["SanityCheckArgs"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! [String: String]
        }
    }
}

public class JobSpec : Tea.TeaModel {
    public var ecsSpec: String?

    public var extraPodSpec: ExtraPodSpec?

    public var image: String?

    public var imageConfig: ImageConfig?

    public var podCount: Int64?

    public var resourceConfig: ResourceConfig?

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
        try self.extraPodSpec?.validate()
        try self.imageConfig?.validate()
        try self.resourceConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.useSpotInstance != nil {
            map["UseSpotInstance"] = self.useSpotInstance!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EcsSpec") && dict["EcsSpec"] != nil {
            self.ecsSpec = dict["EcsSpec"] as! String
        }
        if dict.keys.contains("ExtraPodSpec") && dict["ExtraPodSpec"] != nil {
            var model = ExtraPodSpec()
            model.fromMap(dict["ExtraPodSpec"] as! [String: Any])
            self.extraPodSpec = model
        }
        if dict.keys.contains("Image") && dict["Image"] != nil {
            self.image = dict["Image"] as! String
        }
        if dict.keys.contains("ImageConfig") && dict["ImageConfig"] != nil {
            var model = ImageConfig()
            model.fromMap(dict["ImageConfig"] as! [String: Any])
            self.imageConfig = model
        }
        if dict.keys.contains("PodCount") && dict["PodCount"] != nil {
            self.podCount = dict["PodCount"] as! Int64
        }
        if dict.keys.contains("ResourceConfig") && dict["ResourceConfig"] != nil {
            var model = ResourceConfig()
            model.fromMap(dict["ResourceConfig"] as! [String: Any])
            self.resourceConfig = model
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UseSpotInstance") && dict["UseSpotInstance"] != nil {
            self.useSpotInstance = dict["UseSpotInstance"] as! Bool
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
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("PodId") && dict["PodId"] != nil {
            self.podId = dict["PodId"] as! String
        }
        if dict.keys.contains("PodUid") && dict["PodUid"] != nil {
            self.podUid = dict["PodUid"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Time") && dict["Time"] != nil {
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
        if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
            self.memberId = dict["MemberId"] as! String
        }
        if dict.keys.contains("MemberType") && dict["MemberType"] != nil {
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
        if dict.keys.contains("Time") && dict["Time"] != nil {
            self.time = dict["Time"] as! Int64
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
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
        if dict.keys.contains("Metrics") && dict["Metrics"] != nil {
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
        if dict.keys.contains("NodeName") && dict["NodeName"] != nil {
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
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtFinishTime") && dict["GmtFinishTime"] != nil {
            self.gmtFinishTime = dict["GmtFinishTime"] as! String
        }
        if dict.keys.contains("GmtStartTime") && dict["GmtStartTime"] != nil {
            self.gmtStartTime = dict["GmtStartTime"] as! String
        }
        if dict.keys.contains("HistoryPods") && dict["HistoryPods"] != nil {
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
        if dict.keys.contains("Ip") && dict["Ip"] != nil {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("PodId") && dict["PodId"] != nil {
            self.podId = dict["PodId"] as! String
        }
        if dict.keys.contains("PodUid") && dict["PodUid"] != nil {
            self.podUid = dict["PodUid"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("Metrics") && dict["Metrics"] != nil {
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
        if dict.keys.contains("PodId") && dict["PodId"] != nil {
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("QuotaConfig") && dict["QuotaConfig"] != nil {
            var model = QuotaConfig()
            model.fromMap(dict["QuotaConfig"] as! [String: Any])
            self.quotaConfig = model
        }
        if dict.keys.contains("QuotaId") && dict["QuotaId"] != nil {
            self.quotaId = dict["QuotaId"] as! String
        }
        if dict.keys.contains("QuotaName") && dict["QuotaName"] != nil {
            self.quotaName = dict["QuotaName"] as! String
        }
        if dict.keys.contains("QuotaType") && dict["QuotaType"] != nil {
            self.quotaType = dict["QuotaType"] as! String
        }
        if dict.keys.contains("TotalQuota") && dict["TotalQuota"] != nil {
            var model = QuotaDetail()
            model.fromMap(dict["TotalQuota"] as! [String: Any])
            self.totalQuota = model
        }
        if dict.keys.contains("TotalTideQuota") && dict["TotalTideQuota"] != nil {
            var model = QuotaDetail()
            model.fromMap(dict["TotalTideQuota"] as! [String: Any])
            self.totalTideQuota = model
        }
        if dict.keys.contains("UsedQuota") && dict["UsedQuota"] != nil {
            var model = QuotaDetail()
            model.fromMap(dict["UsedQuota"] as! [String: Any])
            self.usedQuota = model
        }
        if dict.keys.contains("UsedTideQuota") && dict["UsedTideQuota"] != nil {
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
        if dict.keys.contains("AllowedMaxPriority") && dict["AllowedMaxPriority"] != nil {
            self.allowedMaxPriority = dict["AllowedMaxPriority"] as! Int32
        }
        if dict.keys.contains("EnableDLC") && dict["EnableDLC"] != nil {
            self.enableDLC = dict["EnableDLC"] as! Bool
        }
        if dict.keys.contains("EnableDSW") && dict["EnableDSW"] != nil {
            self.enableDSW = dict["EnableDSW"] as! Bool
        }
        if dict.keys.contains("EnableTideResource") && dict["EnableTideResource"] != nil {
            self.enableTideResource = dict["EnableTideResource"] as! Bool
        }
        if dict.keys.contains("ResourceLevel") && dict["ResourceLevel"] != nil {
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
        if dict.keys.contains("CPU") && dict["CPU"] != nil {
            self.CPU = dict["CPU"] as! String
        }
        if dict.keys.contains("GPU") && dict["GPU"] != nil {
            self.GPU = dict["GPU"] as! String
        }
        if dict.keys.contains("GPUDetails") && dict["GPUDetails"] != nil {
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
        if dict.keys.contains("GPUType") && dict["GPUType"] != nil {
            self.GPUType = dict["GPUType"] as! String
        }
        if dict.keys.contains("GPUTypeFullName") && dict["GPUTypeFullName"] != nil {
            self.GPUTypeFullName = dict["GPUTypeFullName"] as! String
        }
        if dict.keys.contains("Memory") && dict["Memory"] != nil {
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
        if dict.keys.contains("CPU") && dict["CPU"] != nil {
            self.CPU = dict["CPU"] as! String
        }
        if dict.keys.contains("GPU") && dict["GPU"] != nil {
            self.GPU = dict["GPU"] as! String
        }
        if dict.keys.contains("GPUType") && dict["GPUType"] != nil {
            self.GPUType = dict["GPUType"] as! String
        }
        if dict.keys.contains("Memory") && dict["Memory"] != nil {
            self.memory = dict["Memory"] as! String
        }
        if dict.keys.contains("SharedMemory") && dict["SharedMemory"] != nil {
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
        if dict.keys.contains("Limits") && dict["Limits"] != nil {
            self.limits = dict["Limits"] as! [String: String]
        }
        if dict.keys.contains("Requests") && dict["Requests"] != nil {
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
        if dict.keys.contains("CPU") && dict["CPU"] != nil {
            self.CPU = dict["CPU"] as! String
        }
        if dict.keys.contains("GPU") && dict["GPU"] != nil {
            self.GPU = dict["GPU"] as! String
        }
        if dict.keys.contains("Memory") && dict["Memory"] != nil {
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
        if dict.keys.contains("CheckNumber") && dict["CheckNumber"] != nil {
            self.checkNumber = dict["CheckNumber"] as! Int32
        }
        if dict.keys.contains("FinishedAt") && dict["FinishedAt"] != nil {
            self.finishedAt = dict["FinishedAt"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Phase") && dict["Phase"] != nil {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("StartedAt") && dict["StartedAt"] != nil {
            self.startedAt = dict["StartedAt"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("CacheWorkerNum") && dict["CacheWorkerNum"] != nil {
            self.cacheWorkerNum = dict["CacheWorkerNum"] as! Int64
        }
        if dict.keys.contains("CacheWorkerSize") && dict["CacheWorkerSize"] != nil {
            self.cacheWorkerSize = dict["CacheWorkerSize"] as! Int64
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! String
        }
        if dict.keys.contains("Endpoint") && dict["Endpoint"] != nil {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") && dict["GmtModifyTime"] != nil {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
        }
        if dict.keys.contains("MountPath") && dict["MountPath"] != nil {
            self.mountPath = dict["MountPath"] as! String
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("SmartCacheId") && dict["SmartCacheId"] != nil {
            self.smartCacheId = dict["SmartCacheId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ReasonCode") && dict["ReasonCode"] != nil {
            self.reasonCode = dict["ReasonCode"] as! String
        }
        if dict.keys.contains("ReasonMessage") && dict["ReasonMessage"] != nil {
            self.reasonMessage = dict["ReasonMessage"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class Tensorboard : Tea.TeaModel {
    public var dataSourceId: String?

    public var displayName: String?

    public var duration: String?

    public var gmtCreateTime: String?

    public var gmtModifyTime: String?

    public var jobId: String?

    public var reasonCode: String?

    public var reasonMessage: String?

    public var requestId: String?

    public var status: String?

    public var summaryPath: String?

    public var tensorboardId: String?

    public var tensorboardUrl: String?

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
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifyTime != nil {
            map["GmtModifyTime"] = self.gmtModifyTime!
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.summaryPath != nil {
            map["SummaryPath"] = self.summaryPath!
        }
        if self.tensorboardId != nil {
            map["TensorboardId"] = self.tensorboardId!
        }
        if self.tensorboardUrl != nil {
            map["TensorboardUrl"] = self.tensorboardUrl!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSourceId") && dict["DataSourceId"] != nil {
            self.dataSourceId = dict["DataSourceId"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") && dict["GmtModifyTime"] != nil {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("ReasonCode") && dict["ReasonCode"] != nil {
            self.reasonCode = dict["ReasonCode"] as! String
        }
        if dict.keys.contains("ReasonMessage") && dict["ReasonMessage"] != nil {
            self.reasonMessage = dict["ReasonMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SummaryPath") && dict["SummaryPath"] != nil {
            self.summaryPath = dict["SummaryPath"] as! String
        }
        if dict.keys.contains("TensorboardId") && dict["TensorboardId"] != nil {
            self.tensorboardId = dict["TensorboardId"] as! String
        }
        if dict.keys.contains("TensorboardUrl") && dict["TensorboardUrl"] != nil {
            self.tensorboardUrl = dict["TensorboardUrl"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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
        if dict.keys.contains("Creator") && dict["Creator"] != nil {
            self.creator = dict["Creator"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") && dict["GmtModifyTime"] != nil {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
        }
        if dict.keys.contains("Members") && dict["Members"] != nil {
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
        if dict.keys.contains("Quotas") && dict["Quotas"] != nil {
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
        if dict.keys.contains("TotalResources") && dict["TotalResources"] != nil {
            var model = Resources()
            model.fromMap(dict["TotalResources"] as! [String: Any])
            self.totalResources = model
        }
        if dict.keys.contains("WorkspaceAdmins") && dict["WorkspaceAdmins"] != nil {
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
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
            if dict.keys.contains("Branch") && dict["Branch"] != nil {
                self.branch = dict["Branch"] as! String
            }
            if dict.keys.contains("CodeSourceId") && dict["CodeSourceId"] != nil {
                self.codeSourceId = dict["CodeSourceId"] as! String
            }
            if dict.keys.contains("Commit") && dict["Commit"] != nil {
                self.commit = dict["Commit"] as! String
            }
            if dict.keys.contains("MountPath") && dict["MountPath"] != nil {
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
            if dict.keys.contains("DataSourceId") && dict["DataSourceId"] != nil {
                self.dataSourceId = dict["DataSourceId"] as! String
            }
            if dict.keys.contains("MountPath") && dict["MountPath"] != nil {
                self.mountPath = dict["MountPath"] as! String
            }
            if dict.keys.contains("Uri") && dict["Uri"] != nil {
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
            if dict.keys.contains("DefaultRoute") && dict["DefaultRoute"] != nil {
                self.defaultRoute = dict["DefaultRoute"] as! String
            }
            if dict.keys.contains("ExtendedCIDRs") && dict["ExtendedCIDRs"] != nil {
                self.extendedCIDRs = dict["ExtendedCIDRs"] as! [String]
            }
            if dict.keys.contains("SecurityGroupId") && dict["SecurityGroupId"] != nil {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("SwitchId") && dict["SwitchId"] != nil {
                self.switchId = dict["SwitchId"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var codeSource: CreateJobRequest.CodeSource?

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
        try self.elasticSpec?.validate()
        try self.settings?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.codeSource != nil {
            map["CodeSource"] = self.codeSource?.toMap()
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
        if dict.keys.contains("CodeSource") && dict["CodeSource"] != nil {
            var model = CreateJobRequest.CodeSource()
            model.fromMap(dict["CodeSource"] as! [String: Any])
            self.codeSource = model
        }
        if dict.keys.contains("DataSources") && dict["DataSources"] != nil {
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
        if dict.keys.contains("DebuggerConfigContent") && dict["DebuggerConfigContent"] != nil {
            self.debuggerConfigContent = dict["DebuggerConfigContent"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("ElasticSpec") && dict["ElasticSpec"] != nil {
            var model = JobElasticSpec()
            model.fromMap(dict["ElasticSpec"] as! [String: Any])
            self.elasticSpec = model
        }
        if dict.keys.contains("Envs") && dict["Envs"] != nil {
            self.envs = dict["Envs"] as! [String: String]
        }
        if dict.keys.contains("JobMaxRunningTimeMinutes") && dict["JobMaxRunningTimeMinutes"] != nil {
            self.jobMaxRunningTimeMinutes = dict["JobMaxRunningTimeMinutes"] as! Int64
        }
        if dict.keys.contains("JobSpecs") && dict["JobSpecs"] != nil {
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
        if dict.keys.contains("JobType") && dict["JobType"] != nil {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("Settings") && dict["Settings"] != nil {
            var model = JobSettings()
            model.fromMap(dict["Settings"] as! [String: Any])
            self.settings = model
        }
        if dict.keys.contains("SuccessPolicy") && dict["SuccessPolicy"] != nil {
            self.successPolicy = dict["SuccessPolicy"] as! String
        }
        if dict.keys.contains("ThirdpartyLibDir") && dict["ThirdpartyLibDir"] != nil {
            self.thirdpartyLibDir = dict["ThirdpartyLibDir"] as! String
        }
        if dict.keys.contains("ThirdpartyLibs") && dict["ThirdpartyLibs"] != nil {
            self.thirdpartyLibs = dict["ThirdpartyLibs"] as! [String]
        }
        if dict.keys.contains("UserCommand") && dict["UserCommand"] != nil {
            self.userCommand = dict["UserCommand"] as! String
        }
        if dict.keys.contains("UserVpc") && dict["UserVpc"] != nil {
            var model = CreateJobRequest.UserVpc()
            model.fromMap(dict["UserVpc"] as! [String: Any])
            self.userVpc = model
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
            var model = CreateJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTensorboardRequest : Tea.TeaModel {
    public var cpu: Int64?

    public var dataSourceId: String?

    public var dataSourceType: String?

    public var dataSources: [DataSourceItem]?

    public var displayName: String?

    public var jobId: String?

    public var maxRunningTimeMinutes: Int64?

    public var memory: Int64?

    public var options: String?

    public var sourceId: String?

    public var sourceType: String?

    public var summaryPath: String?

    public var summaryRelativePath: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
            self.cpu = dict["Cpu"] as! Int64
        }
        if dict.keys.contains("DataSourceId") && dict["DataSourceId"] != nil {
            self.dataSourceId = dict["DataSourceId"] as! String
        }
        if dict.keys.contains("DataSourceType") && dict["DataSourceType"] != nil {
            self.dataSourceType = dict["DataSourceType"] as! String
        }
        if dict.keys.contains("DataSources") && dict["DataSources"] != nil {
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
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("MaxRunningTimeMinutes") && dict["MaxRunningTimeMinutes"] != nil {
            self.maxRunningTimeMinutes = dict["MaxRunningTimeMinutes"] as! Int64
        }
        if dict.keys.contains("Memory") && dict["Memory"] != nil {
            self.memory = dict["Memory"] as! Int64
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SummaryPath") && dict["SummaryPath"] != nil {
            self.summaryPath = dict["SummaryPath"] as! String
        }
        if dict.keys.contains("SummaryRelativePath") && dict["SummaryRelativePath"] != nil {
            self.summaryRelativePath = dict["SummaryRelativePath"] as! String
        }
        if dict.keys.contains("Uri") && dict["Uri"] != nil {
            self.uri = dict["Uri"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
        if dict.keys.contains("DataSourceId") && dict["DataSourceId"] != nil {
            self.dataSourceId = dict["DataSourceId"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TensorboardId") && dict["TensorboardId"] != nil {
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
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TensorboardId") && dict["TensorboardId"] != nil {
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
        if dict.keys.contains("NeedDetail") && dict["NeedDetail"] != nil {
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
            if dict.keys.contains("Branch") && dict["Branch"] != nil {
                self.branch = dict["Branch"] as! String
            }
            if dict.keys.contains("CodeSourceId") && dict["CodeSourceId"] != nil {
                self.codeSourceId = dict["CodeSourceId"] as! String
            }
            if dict.keys.contains("Commit") && dict["Commit"] != nil {
                self.commit = dict["Commit"] as! String
            }
            if dict.keys.contains("MountPath") && dict["MountPath"] != nil {
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
            if dict.keys.contains("DataSourceId") && dict["DataSourceId"] != nil {
                self.dataSourceId = dict["DataSourceId"] as! String
            }
            if dict.keys.contains("MountPath") && dict["MountPath"] != nil {
                self.mountPath = dict["MountPath"] as! String
            }
            if dict.keys.contains("Uri") && dict["Uri"] != nil {
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
                if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                    self.gmtCreateTime = dict["GmtCreateTime"] as! String
                }
                if dict.keys.contains("GmtFinishTime") && dict["GmtFinishTime"] != nil {
                    self.gmtFinishTime = dict["GmtFinishTime"] as! String
                }
                if dict.keys.contains("GmtStartTime") && dict["GmtStartTime"] != nil {
                    self.gmtStartTime = dict["GmtStartTime"] as! String
                }
                if dict.keys.contains("Ip") && dict["Ip"] != nil {
                    self.ip = dict["Ip"] as! String
                }
                if dict.keys.contains("PodId") && dict["PodId"] != nil {
                    self.podId = dict["PodId"] as! String
                }
                if dict.keys.contains("PodUid") && dict["PodUid"] != nil {
                    self.podUid = dict["PodUid"] as! String
                }
                if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SubStatus") && dict["SubStatus"] != nil {
                    self.subStatus = dict["SubStatus"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
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
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtFinishTime") && dict["GmtFinishTime"] != nil {
                self.gmtFinishTime = dict["GmtFinishTime"] as! String
            }
            if dict.keys.contains("GmtStartTime") && dict["GmtStartTime"] != nil {
                self.gmtStartTime = dict["GmtStartTime"] as! String
            }
            if dict.keys.contains("HistoryPods") && dict["HistoryPods"] != nil {
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
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("PodId") && dict["PodId"] != nil {
                self.podId = dict["PodId"] as! String
            }
            if dict.keys.contains("PodUid") && dict["PodUid"] != nil {
                self.podUid = dict["PodUid"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubStatus") && dict["SubStatus"] != nil {
                self.subStatus = dict["SubStatus"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var clusterId: String?

    public var codeSource: GetJobResponseBody.CodeSource?

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
        try self.elasticSpec?.validate()
        try self.settings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.codeSource != nil {
            map["CodeSource"] = self.codeSource?.toMap()
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CodeSource") && dict["CodeSource"] != nil {
            var model = GetJobResponseBody.CodeSource()
            model.fromMap(dict["CodeSource"] as! [String: Any])
            self.codeSource = model
        }
        if dict.keys.contains("DataSources") && dict["DataSources"] != nil {
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
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("ElasticSpec") && dict["ElasticSpec"] != nil {
            var model = JobElasticSpec()
            model.fromMap(dict["ElasticSpec"] as! [String: Any])
            self.elasticSpec = model
        }
        if dict.keys.contains("EnabledDebugger") && dict["EnabledDebugger"] != nil {
            self.enabledDebugger = dict["EnabledDebugger"] as! Bool
        }
        if dict.keys.contains("Envs") && dict["Envs"] != nil {
            self.envs = dict["Envs"] as! [String: String]
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtFailedTime") && dict["GmtFailedTime"] != nil {
            self.gmtFailedTime = dict["GmtFailedTime"] as! String
        }
        if dict.keys.contains("GmtFinishTime") && dict["GmtFinishTime"] != nil {
            self.gmtFinishTime = dict["GmtFinishTime"] as! String
        }
        if dict.keys.contains("GmtRunningTime") && dict["GmtRunningTime"] != nil {
            self.gmtRunningTime = dict["GmtRunningTime"] as! String
        }
        if dict.keys.contains("GmtStoppedTime") && dict["GmtStoppedTime"] != nil {
            self.gmtStoppedTime = dict["GmtStoppedTime"] as! String
        }
        if dict.keys.contains("GmtSubmittedTime") && dict["GmtSubmittedTime"] != nil {
            self.gmtSubmittedTime = dict["GmtSubmittedTime"] as! String
        }
        if dict.keys.contains("GmtSuccessedTime") && dict["GmtSuccessedTime"] != nil {
            self.gmtSuccessedTime = dict["GmtSuccessedTime"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JobSpecs") && dict["JobSpecs"] != nil {
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
        if dict.keys.contains("JobType") && dict["JobType"] != nil {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("Pods") && dict["Pods"] != nil {
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
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ReasonCode") && dict["ReasonCode"] != nil {
            self.reasonCode = dict["ReasonCode"] as! String
        }
        if dict.keys.contains("ReasonMessage") && dict["ReasonMessage"] != nil {
            self.reasonMessage = dict["ReasonMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceLevel") && dict["ResourceLevel"] != nil {
            self.resourceLevel = dict["ResourceLevel"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("RestartTimes") && dict["RestartTimes"] != nil {
            self.restartTimes = dict["RestartTimes"] as! String
        }
        if dict.keys.contains("Settings") && dict["Settings"] != nil {
            var model = JobSettings()
            model.fromMap(dict["Settings"] as! [String: Any])
            self.settings = model
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StatusHistory") && dict["StatusHistory"] != nil {
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
        if dict.keys.contains("SubStatus") && dict["SubStatus"] != nil {
            self.subStatus = dict["SubStatus"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("ThirdpartyLibDir") && dict["ThirdpartyLibDir"] != nil {
            self.thirdpartyLibDir = dict["ThirdpartyLibDir"] as! String
        }
        if dict.keys.contains("ThirdpartyLibs") && dict["ThirdpartyLibs"] != nil {
            self.thirdpartyLibs = dict["ThirdpartyLibs"] as! [String]
        }
        if dict.keys.contains("UserCommand") && dict["UserCommand"] != nil {
            self.userCommand = dict["UserCommand"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("MaxEventsNum") && dict["MaxEventsNum"] != nil {
            self.maxEventsNum = dict["MaxEventsNum"] as! Int32
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
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
        if dict.keys.contains("Events") && dict["Events"] != nil {
            self.events = dict["Events"] as! [String]
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("MetricType") && dict["MetricType"] != nil {
            self.metricType = dict["MetricType"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TimeStep") && dict["TimeStep"] != nil {
            self.timeStep = dict["TimeStep"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
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
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("PodMetrics") && dict["PodMetrics"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("SanityCheckNumber") && dict["SanityCheckNumber"] != nil {
            self.sanityCheckNumber = dict["SanityCheckNumber"] as! Int32
        }
        if dict.keys.contains("SanityCheckPhase") && dict["SanityCheckPhase"] != nil {
            self.sanityCheckPhase = dict["SanityCheckPhase"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
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
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestID") && dict["RequestID"] != nil {
            self.requestID = dict["RequestID"] as! String
        }
        if dict.keys.contains("SanityCheckResult") && dict["SanityCheckResult"] != nil {
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
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("MaxEventsNum") && dict["MaxEventsNum"] != nil {
            self.maxEventsNum = dict["MaxEventsNum"] as! Int32
        }
        if dict.keys.contains("PodUid") && dict["PodUid"] != nil {
            self.podUid = dict["PodUid"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
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
        if dict.keys.contains("Events") && dict["Events"] != nil {
            self.events = dict["Events"] as! [String]
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("PodId") && dict["PodId"] != nil {
            self.podId = dict["PodId"] as! String
        }
        if dict.keys.contains("PodUid") && dict["PodUid"] != nil {
            self.podUid = dict["PodUid"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("DownloadToFile") && dict["DownloadToFile"] != nil {
            self.downloadToFile = dict["DownloadToFile"] as! Bool
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("MaxLines") && dict["MaxLines"] != nil {
            self.maxLines = dict["MaxLines"] as! Int32
        }
        if dict.keys.contains("PodUid") && dict["PodUid"] != nil {
            self.podUid = dict["PodUid"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
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
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("Logs") && dict["Logs"] != nil {
            self.logs = dict["Logs"] as! [String]
        }
        if dict.keys.contains("PodId") && dict["PodId"] != nil {
            self.podId = dict["PodId"] as! String
        }
        if dict.keys.contains("PodUid") && dict["PodUid"] != nil {
            self.podUid = dict["PodUid"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("JodId") && dict["JodId"] != nil {
            self.jodId = dict["JodId"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
        if dict.keys.contains("ExpireTimeSeconds") && dict["ExpireTimeSeconds"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TensorboardSharedUrl") && dict["TensorboardSharedUrl"] != nil {
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
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! Int64
        }
        if dict.keys.contains("TargetId") && dict["TargetId"] != nil {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
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
        if dict.keys.contains("IsShared") && dict["IsShared"] != nil {
            self.isShared = dict["IsShared"] as! Bool
        }
        if dict.keys.contains("PodUid") && dict["PodUid"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WebTerminalUrl") && dict["WebTerminalUrl"] != nil {
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
        if dict.keys.contains("AcceleratorType") && dict["AcceleratorType"] != nil {
            self.acceleratorType = dict["AcceleratorType"] as! String
        }
        if dict.keys.contains("InstanceTypes") && dict["InstanceTypes"] != nil {
            self.instanceTypes = dict["InstanceTypes"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
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
        if dict.keys.contains("EcsSpecs") && dict["EcsSpecs"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("Order") && dict["Order"] != nil {
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
        if dict.keys.contains("RequestID") && dict["RequestID"] != nil {
            self.requestID = dict["RequestID"] as! String
        }
        if dict.keys.contains("SanityCheckResults") && dict["SanityCheckResults"] != nil {
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
            var model = ListJobSanityCheckResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJobsRequest : Tea.TeaModel {
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
        if dict.keys.contains("BusinessUserId") && dict["BusinessUserId"] != nil {
            self.businessUserId = dict["BusinessUserId"] as! String
        }
        if dict.keys.contains("Caller") && dict["Caller"] != nil {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FromAllWorkspaces") && dict["FromAllWorkspaces"] != nil {
            self.fromAllWorkspaces = dict["FromAllWorkspaces"] as! Bool
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JobType") && dict["JobType"] != nil {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PipelineId") && dict["PipelineId"] != nil {
            self.pipelineId = dict["PipelineId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ShowOwn") && dict["ShowOwn"] != nil {
            self.showOwn = dict["ShowOwn"] as! Bool
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! [String: String]
        }
        if dict.keys.contains("UserIdForFilter") && dict["UserIdForFilter"] != nil {
            self.userIdForFilter = dict["UserIdForFilter"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListJobsShrinkRequest : Tea.TeaModel {
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
        if dict.keys.contains("BusinessUserId") && dict["BusinessUserId"] != nil {
            self.businessUserId = dict["BusinessUserId"] as! String
        }
        if dict.keys.contains("Caller") && dict["Caller"] != nil {
            self.caller = dict["Caller"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FromAllWorkspaces") && dict["FromAllWorkspaces"] != nil {
            self.fromAllWorkspaces = dict["FromAllWorkspaces"] as! Bool
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JobType") && dict["JobType"] != nil {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PipelineId") && dict["PipelineId"] != nil {
            self.pipelineId = dict["PipelineId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ShowOwn") && dict["ShowOwn"] != nil {
            self.showOwn = dict["ShowOwn"] as! Bool
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("UserIdForFilter") && dict["UserIdForFilter"] != nil {
            self.userIdForFilter = dict["UserIdForFilter"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
        if dict.keys.contains("Jobs") && dict["Jobs"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
            var model = ListJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTensorboardsRequest : Tea.TeaModel {
    public var displayName: String?

    public var endTime: String?

    public var jobId: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var showOwn: Bool?

    public var sortBy: String?

    public var sourceId: String?

    public var sourceType: String?

    public var startTime: String?

    public var status: String?

    public var tensorboardId: String?

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
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ShowOwn") && dict["ShowOwn"] != nil {
            self.showOwn = dict["ShowOwn"] as! Bool
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TensorboardId") && dict["TensorboardId"] != nil {
            self.tensorboardId = dict["TensorboardId"] as! String
        }
        if dict.keys.contains("Verbose") && dict["Verbose"] != nil {
            self.verbose = dict["Verbose"] as! Bool
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tensorboards") && dict["Tensorboards"] != nil {
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TensorboardId") && dict["TensorboardId"] != nil {
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
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TensorboardId") && dict["TensorboardId"] != nil {
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
            var model = StopTensorboardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateJobRequest : Tea.TeaModel {
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
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
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
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
            var model = UpdateJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTensorboardRequest : Tea.TeaModel {
    public var maxRunningTimeMinutes: Int64?

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
        if self.maxRunningTimeMinutes != nil {
            map["MaxRunningTimeMinutes"] = self.maxRunningTimeMinutes!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxRunningTimeMinutes") && dict["MaxRunningTimeMinutes"] != nil {
            self.maxRunningTimeMinutes = dict["MaxRunningTimeMinutes"] as! Int64
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TensorboardId") && dict["TensorboardId"] != nil {
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
            var model = UpdateTensorboardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
