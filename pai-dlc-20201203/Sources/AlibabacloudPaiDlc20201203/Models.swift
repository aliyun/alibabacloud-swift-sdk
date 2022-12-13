import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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
            self.env = dict["Env"] as! [EnvVar]
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

    public var gpu: Int32?

    public var gpuType: String?

    public var instanceType: String?

    public var isAvailable: Bool?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceleratorType") {
            self.acceleratorType = dict["AcceleratorType"] as! String
        }
        if dict.keys.contains("Cpu") {
            self.cpu = dict["Cpu"] as! Int32
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
        if dict.keys.contains("InitContainers") {
            self.initContainers = dict["InitContainers"] as! [ContainerSpec]
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
            self.sideCarContainers = dict["SideCarContainers"] as! [ContainerSpec]
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
    public var AIMasterType: String?

    public var enableElasticTraining: Bool?

    public var maxParallelism: Int32?

    public var minParallelism: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.AIMasterType != nil {
            map["AIMasterType"] = self.AIMasterType!
        }
        if self.enableElasticTraining != nil {
            map["EnableElasticTraining"] = self.enableElasticTraining!
        }
        if self.maxParallelism != nil {
            map["MaxParallelism"] = self.maxParallelism!
        }
        if self.minParallelism != nil {
            map["MinParallelism"] = self.minParallelism!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AIMasterType") {
            self.AIMasterType = dict["AIMasterType"] as! String
        }
        if dict.keys.contains("EnableElasticTraining") {
            self.enableElasticTraining = dict["EnableElasticTraining"] as! Bool
        }
        if dict.keys.contains("MaxParallelism") {
            self.maxParallelism = dict["MaxParallelism"] as! Int32
        }
        if dict.keys.contains("MinParallelism") {
            self.minParallelism = dict["MinParallelism"] as! Int32
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

    public var settings: JobSettings?

    public var status: String?

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
        if self.settings != nil {
            map["Settings"] = self.settings?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if dict.keys.contains("CodeSource") {
            var model = JobItem.CodeSource()
            model.fromMap(dict["CodeSource"] as! [String: Any])
            self.codeSource = model
        }
        if dict.keys.contains("DataSources") {
            self.dataSources = dict["DataSources"] as! [JobItem.DataSources]
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int64
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
            self.jobSpecs = dict["JobSpecs"] as! [JobSpec]
        }
        if dict.keys.contains("JobType") {
            self.jobType = dict["JobType"] as! String
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
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceLevel") {
            self.resourceLevel = dict["ResourceLevel"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("Settings") {
            var model = JobSettings()
            model.fromMap(dict["Settings"] as! [String: Any])
            self.settings = model
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

public class JobSettings : Tea.TeaModel {
    public var businessUserId: String?

    public var caller: String?

    public var enableErrorMonitoringInAIMaster: Bool?

    public var enableOssAppend: Bool?

    public var enableRDMA: Bool?

    public var enableTideResource: Bool?

    public var errorMonitoringArgs: String?

    public var pipelineId: String?

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
        if self.businessUserId != nil {
            map["BusinessUserId"] = self.businessUserId!
        }
        if self.caller != nil {
            map["Caller"] = self.caller!
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
        if self.enableTideResource != nil {
            map["EnableTideResource"] = self.enableTideResource!
        }
        if self.errorMonitoringArgs != nil {
            map["ErrorMonitoringArgs"] = self.errorMonitoringArgs!
        }
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessUserId") {
            self.businessUserId = dict["BusinessUserId"] as! String
        }
        if dict.keys.contains("Caller") {
            self.caller = dict["Caller"] as! String
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
        if dict.keys.contains("EnableTideResource") {
            self.enableTideResource = dict["EnableTideResource"] as! Bool
        }
        if dict.keys.contains("ErrorMonitoringArgs") {
            self.errorMonitoringArgs = dict["ErrorMonitoringArgs"] as! String
        }
        if dict.keys.contains("PipelineId") {
            self.pipelineId = dict["PipelineId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: String]
        }
    }
}

public class JobSpec : Tea.TeaModel {
    public var ecsSpec: String?

    public var extraPodSpec: ExtraPodSpec?

    public var image: String?

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
        if dict.keys.contains("PodCount") {
            self.podCount = dict["PodCount"] as! Int64
        }
        if dict.keys.contains("ResourceConfig") {
            var model = ResourceConfig()
            model.fromMap(dict["ResourceConfig"] as! [String: Any])
            self.resourceConfig = model
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UseSpotInstance") {
            self.useSpotInstance = dict["UseSpotInstance"] as! Bool
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
            self.metrics = dict["Metrics"] as! [Metric]
        }
        if dict.keys.contains("NodeName") {
            self.nodeName = dict["NodeName"] as! String
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
            self.metrics = dict["Metrics"] as! [Metric]
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
            self.GPUDetails = dict["GPUDetails"] as! [GPUDetail]
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
        if dict.keys.contains("DataSourceId") {
            self.dataSourceId = dict["DataSourceId"] as! String
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
        if dict.keys.contains("GmtModifyTime") {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SummaryPath") {
            self.summaryPath = dict["SummaryPath"] as! String
        }
        if dict.keys.contains("TensorboardId") {
            self.tensorboardId = dict["TensorboardId"] as! String
        }
        if dict.keys.contains("TensorboardUrl") {
            self.tensorboardUrl = dict["TensorboardUrl"] as! String
        }
        if dict.keys.contains("UserId") {
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
            self.members = dict["Members"] as! [Member]
        }
        if dict.keys.contains("Quotas") {
            self.quotas = dict["Quotas"] as! [Quota]
        }
        if dict.keys.contains("TotalResources") {
            var model = Resources()
            model.fromMap(dict["TotalResources"] as! [String: Any])
            self.totalResources = model
        }
        if dict.keys.contains("WorkspaceAdmins") {
            self.workspaceAdmins = dict["WorkspaceAdmins"] as! [Member]
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

        public override init() {
            super.init()
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
    public class UserVpc : Tea.TeaModel {
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
        if dict.keys.contains("CodeSource") {
            var model = CreateJobRequest.CodeSource()
            model.fromMap(dict["CodeSource"] as! [String: Any])
            self.codeSource = model
        }
        if dict.keys.contains("DataSources") {
            self.dataSources = dict["DataSources"] as! [CreateJobRequest.DataSources]
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
            self.jobSpecs = dict["JobSpecs"] as! [JobSpec]
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
            var model = CreateJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTensorboardRequest : Tea.TeaModel {
    public var dataSourceId: String?

    public var dataSourceType: String?

    public var dataSources: [DataSourceItem]?

    public var displayName: String?

    public var jobId: String?

    public var maxRunningTimeMinutes: Int64?

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
        if dict.keys.contains("DataSourceId") {
            self.dataSourceId = dict["DataSourceId"] as! String
        }
        if dict.keys.contains("DataSourceType") {
            self.dataSourceType = dict["DataSourceType"] as! String
        }
        if dict.keys.contains("DataSources") {
            self.dataSources = dict["DataSources"] as! [DataSourceItem]
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
        if dict.keys.contains("Options") {
            self.options = dict["Options"] as! String
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
            var model = DeleteTensorboardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
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

        public override init() {
            super.init()
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
    public class Pods : Tea.TeaModel {
        public class HistoryPods : Tea.TeaModel {
            public var gmtCreateTime: String?

            public var gmtFinishTime: String?

            public var gmtStartTime: String?

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
        public var gmtCreateTime: String?

        public var gmtFinishTime: String?

        public var gmtStartTime: String?

        public var historyPods: [GetJobResponseBody.Pods.HistoryPods]?

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
                self.historyPods = dict["HistoryPods"] as! [GetJobResponseBody.Pods.HistoryPods]
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

    public var settings: JobSettings?

    public var status: String?

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
        if self.settings != nil {
            map["Settings"] = self.settings?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CodeSource") {
            var model = GetJobResponseBody.CodeSource()
            model.fromMap(dict["CodeSource"] as! [String: Any])
            self.codeSource = model
        }
        if dict.keys.contains("DataSources") {
            self.dataSources = dict["DataSources"] as! [GetJobResponseBody.DataSources]
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
            self.jobSpecs = dict["JobSpecs"] as! [JobSpec]
        }
        if dict.keys.contains("JobType") {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("Pods") {
            self.pods = dict["Pods"] as! [GetJobResponseBody.Pods]
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
        if dict.keys.contains("Settings") {
            var model = JobSettings()
            model.fromMap(dict["Settings"] as! [String: Any])
            self.settings = model
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public var requestId: Int32?

    public override init() {
        super.init()
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
            self.requestId = dict["RequestId"] as! Int32
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
            self.podMetrics = dict["PodMetrics"] as! [PodMetric]
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
            var model = GetJobMetricsResponseBody()
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
            var model = GetPodLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTensorboardRequest : Tea.TeaModel {
    public var jodId: String?

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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JodId") {
            self.jodId = dict["JodId"] as! String
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
            var model = Tensorboard()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEcsSpecsRequest : Tea.TeaModel {
    public var acceleratorType: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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
            self.ecsSpecs = dict["EcsSpecs"] as! [EcsSpec]
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
            var model = ListEcsSpecsResponseBody()
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
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
        if dict.keys.contains("WorkspaceId") {
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
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
            self.jobs = dict["Jobs"] as! [JobItem]
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

public class ListTensorboardsRequest : Tea.TeaModel {
    public var displayName: String?

    public var endTime: String?

    public var jobId: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
            self.tensorboards = dict["Tensorboards"] as! [Tensorboard]
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
        if dict.keys.contains("MaxRunningTimeMinutes") {
            self.maxRunningTimeMinutes = dict["MaxRunningTimeMinutes"] as! Int64
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
            var model = UpdateTensorboardResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
