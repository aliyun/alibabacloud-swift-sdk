import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Artifact : Tea.TeaModel {
    public var jarArtifact: JarArtifact?

    public var kind: String?

    public var pythonArtifact: PythonArtifact?

    public var sqlArtifact: SqlArtifact?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.jarArtifact?.validate()
        try self.pythonArtifact?.validate()
        try self.sqlArtifact?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jarArtifact != nil {
            map["jarArtifact"] = self.jarArtifact?.toMap()
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.pythonArtifact != nil {
            map["pythonArtifact"] = self.pythonArtifact?.toMap()
        }
        if self.sqlArtifact != nil {
            map["sqlArtifact"] = self.sqlArtifact?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("jarArtifact") && dict["jarArtifact"] != nil {
            var model = JarArtifact()
            model.fromMap(dict["jarArtifact"] as! [String: Any])
            self.jarArtifact = model
        }
        if dict.keys.contains("kind") && dict["kind"] != nil {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("pythonArtifact") && dict["pythonArtifact"] != nil {
            var model = PythonArtifact()
            model.fromMap(dict["pythonArtifact"] as! [String: Any])
            self.pythonArtifact = model
        }
        if dict.keys.contains("sqlArtifact") && dict["sqlArtifact"] != nil {
            var model = SqlArtifact()
            model.fromMap(dict["sqlArtifact"] as! [String: Any])
            self.sqlArtifact = model
        }
    }
}

public class AsyncResourcePlanOperationResult : Tea.TeaModel {
    public var message: String?

    public var plan: String?

    public var ticketStatus: String?

    public override init() {
        super.init()
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
        if self.plan != nil {
            map["plan"] = self.plan!
        }
        if self.ticketStatus != nil {
            map["ticketStatus"] = self.ticketStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("plan") && dict["plan"] != nil {
            self.plan = dict["plan"] as! String
        }
        if dict.keys.contains("ticketStatus") && dict["ticketStatus"] != nil {
            self.ticketStatus = dict["ticketStatus"] as! String
        }
    }
}

public class BasicResourceSetting : Tea.TeaModel {
    public var jobmanagerResourceSettingSpec: BasicResourceSettingSpec?

    public var parallelism: Int64?

    public var taskmanagerResourceSettingSpec: BasicResourceSettingSpec?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.jobmanagerResourceSettingSpec?.validate()
        try self.taskmanagerResourceSettingSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobmanagerResourceSettingSpec != nil {
            map["jobmanagerResourceSettingSpec"] = self.jobmanagerResourceSettingSpec?.toMap()
        }
        if self.parallelism != nil {
            map["parallelism"] = self.parallelism!
        }
        if self.taskmanagerResourceSettingSpec != nil {
            map["taskmanagerResourceSettingSpec"] = self.taskmanagerResourceSettingSpec?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("jobmanagerResourceSettingSpec") && dict["jobmanagerResourceSettingSpec"] != nil {
            var model = BasicResourceSettingSpec()
            model.fromMap(dict["jobmanagerResourceSettingSpec"] as! [String: Any])
            self.jobmanagerResourceSettingSpec = model
        }
        if dict.keys.contains("parallelism") && dict["parallelism"] != nil {
            self.parallelism = dict["parallelism"] as! Int64
        }
        if dict.keys.contains("taskmanagerResourceSettingSpec") && dict["taskmanagerResourceSettingSpec"] != nil {
            var model = BasicResourceSettingSpec()
            model.fromMap(dict["taskmanagerResourceSettingSpec"] as! [String: Any])
            self.taskmanagerResourceSettingSpec = model
        }
    }
}

public class BasicResourceSettingSpec : Tea.TeaModel {
    public var cpu: Double?

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
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.memory != nil {
            map["memory"] = self.memory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cpu") && dict["cpu"] != nil {
            self.cpu = dict["cpu"] as! Double
        }
        if dict.keys.contains("memory") && dict["memory"] != nil {
            self.memory = dict["memory"] as! String
        }
    }
}

public class BatchResourceSetting : Tea.TeaModel {
    public var basicResourceSetting: BasicResourceSetting?

    public var maxSlot: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.basicResourceSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.basicResourceSetting != nil {
            map["basicResourceSetting"] = self.basicResourceSetting?.toMap()
        }
        if self.maxSlot != nil {
            map["maxSlot"] = self.maxSlot!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("basicResourceSetting") && dict["basicResourceSetting"] != nil {
            var model = BasicResourceSetting()
            model.fromMap(dict["basicResourceSetting"] as! [String: Any])
            self.basicResourceSetting = model
        }
        if dict.keys.contains("maxSlot") && dict["maxSlot"] != nil {
            self.maxSlot = dict["maxSlot"] as! Int64
        }
    }
}

public class BriefDeploymentTarget : Tea.TeaModel {
    public var mode: String?

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
        if self.mode != nil {
            map["mode"] = self.mode!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("mode") && dict["mode"] != nil {
            self.mode = dict["mode"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
    }
}

public class BriefResourceSetting : Tea.TeaModel {
    public var batchResourceSetting: BatchResourceSetting?

    public var flinkConf: [String: Any]?

    public var streamingResourceSetting: StreamingResourceSetting?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.batchResourceSetting?.validate()
        try self.streamingResourceSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchResourceSetting != nil {
            map["batchResourceSetting"] = self.batchResourceSetting?.toMap()
        }
        if self.flinkConf != nil {
            map["flinkConf"] = self.flinkConf!
        }
        if self.streamingResourceSetting != nil {
            map["streamingResourceSetting"] = self.streamingResourceSetting?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("batchResourceSetting") && dict["batchResourceSetting"] != nil {
            var model = BatchResourceSetting()
            model.fromMap(dict["batchResourceSetting"] as! [String: Any])
            self.batchResourceSetting = model
        }
        if dict.keys.contains("flinkConf") && dict["flinkConf"] != nil {
            self.flinkConf = dict["flinkConf"] as! [String: Any]
        }
        if dict.keys.contains("streamingResourceSetting") && dict["streamingResourceSetting"] != nil {
            var model = StreamingResourceSetting()
            model.fromMap(dict["streamingResourceSetting"] as! [String: Any])
            self.streamingResourceSetting = model
        }
    }
}

public class Deployment : Tea.TeaModel {
    public var artifact: Artifact?

    public var batchResourceSetting: BatchResourceSetting?

    public var creator: String?

    public var creatorName: String?

    public var deploymentHasChanged: Bool?

    public var deploymentId: String?

    public var deploymentTarget: BriefDeploymentTarget?

    public var description_: String?

    public var engineVersion: String?

    public var executionMode: String?

    public var flinkConf: [String: Any]?

    public var jobSummary: JobSummary?

    public var logging: Logging?

    public var modifier: String?

    public var modifierName: String?

    public var name: String?

    public var namespace: String?

    public var streamingResourceSetting: StreamingResourceSetting?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.artifact?.validate()
        try self.batchResourceSetting?.validate()
        try self.deploymentTarget?.validate()
        try self.jobSummary?.validate()
        try self.logging?.validate()
        try self.streamingResourceSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifact != nil {
            map["artifact"] = self.artifact?.toMap()
        }
        if self.batchResourceSetting != nil {
            map["batchResourceSetting"] = self.batchResourceSetting?.toMap()
        }
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.creatorName != nil {
            map["creatorName"] = self.creatorName!
        }
        if self.deploymentHasChanged != nil {
            map["deploymentHasChanged"] = self.deploymentHasChanged!
        }
        if self.deploymentId != nil {
            map["deploymentId"] = self.deploymentId!
        }
        if self.deploymentTarget != nil {
            map["deploymentTarget"] = self.deploymentTarget?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.engineVersion != nil {
            map["engineVersion"] = self.engineVersion!
        }
        if self.executionMode != nil {
            map["executionMode"] = self.executionMode!
        }
        if self.flinkConf != nil {
            map["flinkConf"] = self.flinkConf!
        }
        if self.jobSummary != nil {
            map["jobSummary"] = self.jobSummary?.toMap()
        }
        if self.logging != nil {
            map["logging"] = self.logging?.toMap()
        }
        if self.modifier != nil {
            map["modifier"] = self.modifier!
        }
        if self.modifierName != nil {
            map["modifierName"] = self.modifierName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.streamingResourceSetting != nil {
            map["streamingResourceSetting"] = self.streamingResourceSetting?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("artifact") && dict["artifact"] != nil {
            var model = Artifact()
            model.fromMap(dict["artifact"] as! [String: Any])
            self.artifact = model
        }
        if dict.keys.contains("batchResourceSetting") && dict["batchResourceSetting"] != nil {
            var model = BatchResourceSetting()
            model.fromMap(dict["batchResourceSetting"] as! [String: Any])
            self.batchResourceSetting = model
        }
        if dict.keys.contains("creator") && dict["creator"] != nil {
            self.creator = dict["creator"] as! String
        }
        if dict.keys.contains("creatorName") && dict["creatorName"] != nil {
            self.creatorName = dict["creatorName"] as! String
        }
        if dict.keys.contains("deploymentHasChanged") && dict["deploymentHasChanged"] != nil {
            self.deploymentHasChanged = dict["deploymentHasChanged"] as! Bool
        }
        if dict.keys.contains("deploymentId") && dict["deploymentId"] != nil {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("deploymentTarget") && dict["deploymentTarget"] != nil {
            var model = BriefDeploymentTarget()
            model.fromMap(dict["deploymentTarget"] as! [String: Any])
            self.deploymentTarget = model
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("engineVersion") && dict["engineVersion"] != nil {
            self.engineVersion = dict["engineVersion"] as! String
        }
        if dict.keys.contains("executionMode") && dict["executionMode"] != nil {
            self.executionMode = dict["executionMode"] as! String
        }
        if dict.keys.contains("flinkConf") && dict["flinkConf"] != nil {
            self.flinkConf = dict["flinkConf"] as! [String: Any]
        }
        if dict.keys.contains("jobSummary") && dict["jobSummary"] != nil {
            var model = JobSummary()
            model.fromMap(dict["jobSummary"] as! [String: Any])
            self.jobSummary = model
        }
        if dict.keys.contains("logging") && dict["logging"] != nil {
            var model = Logging()
            model.fromMap(dict["logging"] as! [String: Any])
            self.logging = model
        }
        if dict.keys.contains("modifier") && dict["modifier"] != nil {
            self.modifier = dict["modifier"] as! String
        }
        if dict.keys.contains("modifierName") && dict["modifierName"] != nil {
            self.modifierName = dict["modifierName"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("namespace") && dict["namespace"] != nil {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("streamingResourceSetting") && dict["streamingResourceSetting"] != nil {
            var model = StreamingResourceSetting()
            model.fromMap(dict["streamingResourceSetting"] as! [String: Any])
            self.streamingResourceSetting = model
        }
    }
}

public class DeploymentRestoreStrategy : Tea.TeaModel {
    public var allowNonRestoredState: Bool?

    public var jobStartTimeInMs: Int64?

    public var kind: String?

    public var savepointId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowNonRestoredState != nil {
            map["allowNonRestoredState"] = self.allowNonRestoredState!
        }
        if self.jobStartTimeInMs != nil {
            map["jobStartTimeInMs"] = self.jobStartTimeInMs!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.savepointId != nil {
            map["savepointId"] = self.savepointId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("allowNonRestoredState") && dict["allowNonRestoredState"] != nil {
            self.allowNonRestoredState = dict["allowNonRestoredState"] as! Bool
        }
        if dict.keys.contains("jobStartTimeInMs") && dict["jobStartTimeInMs"] != nil {
            self.jobStartTimeInMs = dict["jobStartTimeInMs"] as! Int64
        }
        if dict.keys.contains("kind") && dict["kind"] != nil {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("savepointId") && dict["savepointId"] != nil {
            self.savepointId = dict["savepointId"] as! String
        }
    }
}

public class DeploymentTarget : Tea.TeaModel {
    public var name: String?

    public var namespace: String?

    public override init() {
        super.init()
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
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("namespace") && dict["namespace"] != nil {
            self.namespace = dict["namespace"] as! String
        }
    }
}

public class EngineVersionMetadata : Tea.TeaModel {
    public var engineVersion: String?

    public var features: EngineVersionSupportedFeatures?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.features?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.engineVersion != nil {
            map["engineVersion"] = self.engineVersion!
        }
        if self.features != nil {
            map["features"] = self.features?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("engineVersion") && dict["engineVersion"] != nil {
            self.engineVersion = dict["engineVersion"] as! String
        }
        if dict.keys.contains("features") && dict["features"] != nil {
            var model = EngineVersionSupportedFeatures()
            model.fromMap(dict["features"] as! [String: Any])
            self.features = model
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
    }
}

public class EngineVersionMetadataIndex : Tea.TeaModel {
    public var defaultEngineVersion: String?

    public var engineVersionMetadata: [EngineVersionMetadata]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultEngineVersion != nil {
            map["defaultEngineVersion"] = self.defaultEngineVersion!
        }
        if self.engineVersionMetadata != nil {
            var tmp : [Any] = []
            for k in self.engineVersionMetadata! {
                tmp.append(k.toMap())
            }
            map["engineVersionMetadata"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("defaultEngineVersion") && dict["defaultEngineVersion"] != nil {
            self.defaultEngineVersion = dict["defaultEngineVersion"] as! String
        }
        if dict.keys.contains("engineVersionMetadata") && dict["engineVersionMetadata"] != nil {
            var tmp : [EngineVersionMetadata] = []
            for v in dict["engineVersionMetadata"] as! [Any] {
                var model = EngineVersionMetadata()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.engineVersionMetadata = tmp
        }
    }
}

public class EngineVersionSupportedFeatures : Tea.TeaModel {
    public var supportNativeSavepoint: Bool?

    public var useForSqlDeployments: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.supportNativeSavepoint != nil {
            map["supportNativeSavepoint"] = self.supportNativeSavepoint!
        }
        if self.useForSqlDeployments != nil {
            map["useForSqlDeployments"] = self.useForSqlDeployments!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("supportNativeSavepoint") && dict["supportNativeSavepoint"] != nil {
            self.supportNativeSavepoint = dict["supportNativeSavepoint"] as! Bool
        }
        if dict.keys.contains("useForSqlDeployments") && dict["useForSqlDeployments"] != nil {
            self.useForSqlDeployments = dict["useForSqlDeployments"] as! Bool
        }
    }
}

public class ExpertResourceSetting : Tea.TeaModel {
    public var jobmanagerResourceSettingSpec: BasicResourceSettingSpec?

    public var resourcePlan: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.jobmanagerResourceSettingSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobmanagerResourceSettingSpec != nil {
            map["jobmanagerResourceSettingSpec"] = self.jobmanagerResourceSettingSpec?.toMap()
        }
        if self.resourcePlan != nil {
            map["resourcePlan"] = self.resourcePlan!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("jobmanagerResourceSettingSpec") && dict["jobmanagerResourceSettingSpec"] != nil {
            var model = BasicResourceSettingSpec()
            model.fromMap(dict["jobmanagerResourceSettingSpec"] as! [String: Any])
            self.jobmanagerResourceSettingSpec = model
        }
        if dict.keys.contains("resourcePlan") && dict["resourcePlan"] != nil {
            self.resourcePlan = dict["resourcePlan"] as! String
        }
    }
}

public class JarArtifact : Tea.TeaModel {
    public var additionalDependencies: [String]?

    public var entryClass: String?

    public var jarUri: String?

    public var mainArgs: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalDependencies != nil {
            map["additionalDependencies"] = self.additionalDependencies!
        }
        if self.entryClass != nil {
            map["entryClass"] = self.entryClass!
        }
        if self.jarUri != nil {
            map["jarUri"] = self.jarUri!
        }
        if self.mainArgs != nil {
            map["mainArgs"] = self.mainArgs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("additionalDependencies") && dict["additionalDependencies"] != nil {
            self.additionalDependencies = dict["additionalDependencies"] as! [String]
        }
        if dict.keys.contains("entryClass") && dict["entryClass"] != nil {
            self.entryClass = dict["entryClass"] as! String
        }
        if dict.keys.contains("jarUri") && dict["jarUri"] != nil {
            self.jarUri = dict["jarUri"] as! String
        }
        if dict.keys.contains("mainArgs") && dict["mainArgs"] != nil {
            self.mainArgs = dict["mainArgs"] as! String
        }
    }
}

public class Job : Tea.TeaModel {
    public var artifact: Artifact?

    public var batchResourceSetting: BatchResourceSetting?

    public var creator: String?

    public var creatorName: String?

    public var deploymentId: String?

    public var deploymentName: String?

    public var endTime: Int64?

    public var engineVersion: String?

    public var executionMode: String?

    public var flinkConf: [String: Any]?

    public var jobId: String?

    public var logging: Logging?

    public var metric: JobMetric?

    public var modifier: String?

    public var modifierName: String?

    public var namespace: String?

    public var restoreStrategy: DeploymentRestoreStrategy?

    public var sessionClusterName: String?

    public var startTime: Int64?

    public var status: JobStatus?

    public var streamingResourceSetting: StreamingResourceSetting?

    public var userFlinkConf: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.artifact?.validate()
        try self.batchResourceSetting?.validate()
        try self.logging?.validate()
        try self.metric?.validate()
        try self.restoreStrategy?.validate()
        try self.status?.validate()
        try self.streamingResourceSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifact != nil {
            map["artifact"] = self.artifact?.toMap()
        }
        if self.batchResourceSetting != nil {
            map["batchResourceSetting"] = self.batchResourceSetting?.toMap()
        }
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.creatorName != nil {
            map["creatorName"] = self.creatorName!
        }
        if self.deploymentId != nil {
            map["deploymentId"] = self.deploymentId!
        }
        if self.deploymentName != nil {
            map["deploymentName"] = self.deploymentName!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.engineVersion != nil {
            map["engineVersion"] = self.engineVersion!
        }
        if self.executionMode != nil {
            map["executionMode"] = self.executionMode!
        }
        if self.flinkConf != nil {
            map["flinkConf"] = self.flinkConf!
        }
        if self.jobId != nil {
            map["jobId"] = self.jobId!
        }
        if self.logging != nil {
            map["logging"] = self.logging?.toMap()
        }
        if self.metric != nil {
            map["metric"] = self.metric?.toMap()
        }
        if self.modifier != nil {
            map["modifier"] = self.modifier!
        }
        if self.modifierName != nil {
            map["modifierName"] = self.modifierName!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.restoreStrategy != nil {
            map["restoreStrategy"] = self.restoreStrategy?.toMap()
        }
        if self.sessionClusterName != nil {
            map["sessionClusterName"] = self.sessionClusterName!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.streamingResourceSetting != nil {
            map["streamingResourceSetting"] = self.streamingResourceSetting?.toMap()
        }
        if self.userFlinkConf != nil {
            map["userFlinkConf"] = self.userFlinkConf!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("artifact") && dict["artifact"] != nil {
            var model = Artifact()
            model.fromMap(dict["artifact"] as! [String: Any])
            self.artifact = model
        }
        if dict.keys.contains("batchResourceSetting") && dict["batchResourceSetting"] != nil {
            var model = BatchResourceSetting()
            model.fromMap(dict["batchResourceSetting"] as! [String: Any])
            self.batchResourceSetting = model
        }
        if dict.keys.contains("creator") && dict["creator"] != nil {
            self.creator = dict["creator"] as! String
        }
        if dict.keys.contains("creatorName") && dict["creatorName"] != nil {
            self.creatorName = dict["creatorName"] as! String
        }
        if dict.keys.contains("deploymentId") && dict["deploymentId"] != nil {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("deploymentName") && dict["deploymentName"] != nil {
            self.deploymentName = dict["deploymentName"] as! String
        }
        if dict.keys.contains("endTime") && dict["endTime"] != nil {
            self.endTime = dict["endTime"] as! Int64
        }
        if dict.keys.contains("engineVersion") && dict["engineVersion"] != nil {
            self.engineVersion = dict["engineVersion"] as! String
        }
        if dict.keys.contains("executionMode") && dict["executionMode"] != nil {
            self.executionMode = dict["executionMode"] as! String
        }
        if dict.keys.contains("flinkConf") && dict["flinkConf"] != nil {
            self.flinkConf = dict["flinkConf"] as! [String: Any]
        }
        if dict.keys.contains("jobId") && dict["jobId"] != nil {
            self.jobId = dict["jobId"] as! String
        }
        if dict.keys.contains("logging") && dict["logging"] != nil {
            var model = Logging()
            model.fromMap(dict["logging"] as! [String: Any])
            self.logging = model
        }
        if dict.keys.contains("metric") && dict["metric"] != nil {
            var model = JobMetric()
            model.fromMap(dict["metric"] as! [String: Any])
            self.metric = model
        }
        if dict.keys.contains("modifier") && dict["modifier"] != nil {
            self.modifier = dict["modifier"] as! String
        }
        if dict.keys.contains("modifierName") && dict["modifierName"] != nil {
            self.modifierName = dict["modifierName"] as! String
        }
        if dict.keys.contains("namespace") && dict["namespace"] != nil {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("restoreStrategy") && dict["restoreStrategy"] != nil {
            var model = DeploymentRestoreStrategy()
            model.fromMap(dict["restoreStrategy"] as! [String: Any])
            self.restoreStrategy = model
        }
        if dict.keys.contains("sessionClusterName") && dict["sessionClusterName"] != nil {
            self.sessionClusterName = dict["sessionClusterName"] as! String
        }
        if dict.keys.contains("startTime") && dict["startTime"] != nil {
            self.startTime = dict["startTime"] as! Int64
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            var model = JobStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("streamingResourceSetting") && dict["streamingResourceSetting"] != nil {
            var model = StreamingResourceSetting()
            model.fromMap(dict["streamingResourceSetting"] as! [String: Any])
            self.streamingResourceSetting = model
        }
        if dict.keys.contains("userFlinkConf") && dict["userFlinkConf"] != nil {
            self.userFlinkConf = dict["userFlinkConf"] as! [String: Any]
        }
    }
}

public class JobFailure : Tea.TeaModel {
    public var failedAt: Int64?

    public var message: String?

    public var reason: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failedAt != nil {
            map["failedAt"] = self.failedAt!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.reason != nil {
            map["reason"] = self.reason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("failedAt") && dict["failedAt"] != nil {
            self.failedAt = dict["failedAt"] as! Int64
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("reason") && dict["reason"] != nil {
            self.reason = dict["reason"] as! String
        }
    }
}

public class JobMetric : Tea.TeaModel {
    public var totalCpu: Double?

    public var totalMemoryByte: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.totalCpu != nil {
            map["totalCpu"] = self.totalCpu!
        }
        if self.totalMemoryByte != nil {
            map["totalMemoryByte"] = self.totalMemoryByte!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("totalCpu") && dict["totalCpu"] != nil {
            self.totalCpu = dict["totalCpu"] as! Double
        }
        if dict.keys.contains("totalMemoryByte") && dict["totalMemoryByte"] != nil {
            self.totalMemoryByte = dict["totalMemoryByte"] as! Int64
        }
    }
}

public class JobStartParameters : Tea.TeaModel {
    public var deploymentId: String?

    public var restoreStrategy: DeploymentRestoreStrategy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.restoreStrategy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deploymentId != nil {
            map["deploymentId"] = self.deploymentId!
        }
        if self.restoreStrategy != nil {
            map["restoreStrategy"] = self.restoreStrategy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deploymentId") && dict["deploymentId"] != nil {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("restoreStrategy") && dict["restoreStrategy"] != nil {
            var model = DeploymentRestoreStrategy()
            model.fromMap(dict["restoreStrategy"] as! [String: Any])
            self.restoreStrategy = model
        }
    }
}

public class JobStatus : Tea.TeaModel {
    public var currentJobStatus: String?

    public var failure: JobFailure?

    public var running: JobStatusRunning?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.failure?.validate()
        try self.running?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentJobStatus != nil {
            map["currentJobStatus"] = self.currentJobStatus!
        }
        if self.failure != nil {
            map["failure"] = self.failure?.toMap()
        }
        if self.running != nil {
            map["running"] = self.running?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("currentJobStatus") && dict["currentJobStatus"] != nil {
            self.currentJobStatus = dict["currentJobStatus"] as! String
        }
        if dict.keys.contains("failure") && dict["failure"] != nil {
            var model = JobFailure()
            model.fromMap(dict["failure"] as! [String: Any])
            self.failure = model
        }
        if dict.keys.contains("running") && dict["running"] != nil {
            var model = JobStatusRunning()
            model.fromMap(dict["running"] as! [String: Any])
            self.running = model
        }
    }
}

public class JobStatusRunning : Tea.TeaModel {
    public var observedFlinkJobRestarts: Int64?

    public var observedFlinkJobStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.observedFlinkJobRestarts != nil {
            map["observedFlinkJobRestarts"] = self.observedFlinkJobRestarts!
        }
        if self.observedFlinkJobStatus != nil {
            map["observedFlinkJobStatus"] = self.observedFlinkJobStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("observedFlinkJobRestarts") && dict["observedFlinkJobRestarts"] != nil {
            self.observedFlinkJobRestarts = dict["observedFlinkJobRestarts"] as! Int64
        }
        if dict.keys.contains("observedFlinkJobStatus") && dict["observedFlinkJobStatus"] != nil {
            self.observedFlinkJobStatus = dict["observedFlinkJobStatus"] as! String
        }
    }
}

public class JobSummary : Tea.TeaModel {
    public var cancelled: Int32?

    public var cancelling: Int32?

    public var failed: Int32?

    public var finished: Int32?

    public var running: Int32?

    public var starting: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cancelled != nil {
            map["cancelled"] = self.cancelled!
        }
        if self.cancelling != nil {
            map["cancelling"] = self.cancelling!
        }
        if self.failed != nil {
            map["failed"] = self.failed!
        }
        if self.finished != nil {
            map["finished"] = self.finished!
        }
        if self.running != nil {
            map["running"] = self.running!
        }
        if self.starting != nil {
            map["starting"] = self.starting!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cancelled") && dict["cancelled"] != nil {
            self.cancelled = dict["cancelled"] as! Int32
        }
        if dict.keys.contains("cancelling") && dict["cancelling"] != nil {
            self.cancelling = dict["cancelling"] as! Int32
        }
        if dict.keys.contains("failed") && dict["failed"] != nil {
            self.failed = dict["failed"] as! Int32
        }
        if dict.keys.contains("finished") && dict["finished"] != nil {
            self.finished = dict["finished"] as! Int32
        }
        if dict.keys.contains("running") && dict["running"] != nil {
            self.running = dict["running"] as! Int32
        }
        if dict.keys.contains("starting") && dict["starting"] != nil {
            self.starting = dict["starting"] as! Int32
        }
    }
}

public class Log4jLogger : Tea.TeaModel {
    public var loggerLevel: String?

    public var loggerName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loggerLevel != nil {
            map["loggerLevel"] = self.loggerLevel!
        }
        if self.loggerName != nil {
            map["loggerName"] = self.loggerName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("loggerLevel") && dict["loggerLevel"] != nil {
            self.loggerLevel = dict["loggerLevel"] as! String
        }
        if dict.keys.contains("loggerName") && dict["loggerName"] != nil {
            self.loggerName = dict["loggerName"] as! String
        }
    }
}

public class LogReservePolicy : Tea.TeaModel {
    public var expirationDays: Int64?

    public var openHistory: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expirationDays != nil {
            map["expirationDays"] = self.expirationDays!
        }
        if self.openHistory != nil {
            map["openHistory"] = self.openHistory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("expirationDays") && dict["expirationDays"] != nil {
            self.expirationDays = dict["expirationDays"] as! Int64
        }
        if dict.keys.contains("openHistory") && dict["openHistory"] != nil {
            self.openHistory = dict["openHistory"] as! Bool
        }
    }
}

public class Logging : Tea.TeaModel {
    public var log4j2ConfigurationTemplate: String?

    public var log4jLoggers: [Log4jLogger]?

    public var logReservePolicy: LogReservePolicy?

    public var loggingProfile: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.logReservePolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.log4j2ConfigurationTemplate != nil {
            map["log4j2ConfigurationTemplate"] = self.log4j2ConfigurationTemplate!
        }
        if self.log4jLoggers != nil {
            var tmp : [Any] = []
            for k in self.log4jLoggers! {
                tmp.append(k.toMap())
            }
            map["log4jLoggers"] = tmp
        }
        if self.logReservePolicy != nil {
            map["logReservePolicy"] = self.logReservePolicy?.toMap()
        }
        if self.loggingProfile != nil {
            map["loggingProfile"] = self.loggingProfile!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("log4j2ConfigurationTemplate") && dict["log4j2ConfigurationTemplate"] != nil {
            self.log4j2ConfigurationTemplate = dict["log4j2ConfigurationTemplate"] as! String
        }
        if dict.keys.contains("log4jLoggers") && dict["log4jLoggers"] != nil {
            var tmp : [Log4jLogger] = []
            for v in dict["log4jLoggers"] as! [Any] {
                var model = Log4jLogger()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.log4jLoggers = tmp
        }
        if dict.keys.contains("logReservePolicy") && dict["logReservePolicy"] != nil {
            var model = LogReservePolicy()
            model.fromMap(dict["logReservePolicy"] as! [String: Any])
            self.logReservePolicy = model
        }
        if dict.keys.contains("loggingProfile") && dict["loggingProfile"] != nil {
            self.loggingProfile = dict["loggingProfile"] as! String
        }
    }
}

public class PythonArtifact : Tea.TeaModel {
    public var additionalDependencies: [String]?

    public var additionalPythonArchives: [String]?

    public var additionalPythonLibraries: [String]?

    public var entryModule: String?

    public var mainArgs: String?

    public var pythonArtifactUri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalDependencies != nil {
            map["additionalDependencies"] = self.additionalDependencies!
        }
        if self.additionalPythonArchives != nil {
            map["additionalPythonArchives"] = self.additionalPythonArchives!
        }
        if self.additionalPythonLibraries != nil {
            map["additionalPythonLibraries"] = self.additionalPythonLibraries!
        }
        if self.entryModule != nil {
            map["entryModule"] = self.entryModule!
        }
        if self.mainArgs != nil {
            map["mainArgs"] = self.mainArgs!
        }
        if self.pythonArtifactUri != nil {
            map["pythonArtifactUri"] = self.pythonArtifactUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("additionalDependencies") && dict["additionalDependencies"] != nil {
            self.additionalDependencies = dict["additionalDependencies"] as! [String]
        }
        if dict.keys.contains("additionalPythonArchives") && dict["additionalPythonArchives"] != nil {
            self.additionalPythonArchives = dict["additionalPythonArchives"] as! [String]
        }
        if dict.keys.contains("additionalPythonLibraries") && dict["additionalPythonLibraries"] != nil {
            self.additionalPythonLibraries = dict["additionalPythonLibraries"] as! [String]
        }
        if dict.keys.contains("entryModule") && dict["entryModule"] != nil {
            self.entryModule = dict["entryModule"] as! String
        }
        if dict.keys.contains("mainArgs") && dict["mainArgs"] != nil {
            self.mainArgs = dict["mainArgs"] as! String
        }
        if dict.keys.contains("pythonArtifactUri") && dict["pythonArtifactUri"] != nil {
            self.pythonArtifactUri = dict["pythonArtifactUri"] as! String
        }
    }
}

public class Savepoint : Tea.TeaModel {
    public var createdAt: Int64?

    public var deploymentId: String?

    public var description_: String?

    public var jobId: String?

    public var modifiedAt: Int64?

    public var namespace: String?

    public var nativeFormat: Bool?

    public var savepointId: String?

    public var savepointLocation: String?

    public var savepointOrigin: String?

    public var status: SavepointStatus?

    public var stopWithDrainEnabled: Bool?

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
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.deploymentId != nil {
            map["deploymentId"] = self.deploymentId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.jobId != nil {
            map["jobId"] = self.jobId!
        }
        if self.modifiedAt != nil {
            map["modifiedAt"] = self.modifiedAt!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.nativeFormat != nil {
            map["nativeFormat"] = self.nativeFormat!
        }
        if self.savepointId != nil {
            map["savepointId"] = self.savepointId!
        }
        if self.savepointLocation != nil {
            map["savepointLocation"] = self.savepointLocation!
        }
        if self.savepointOrigin != nil {
            map["savepointOrigin"] = self.savepointOrigin!
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.stopWithDrainEnabled != nil {
            map["stopWithDrainEnabled"] = self.stopWithDrainEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdAt") && dict["createdAt"] != nil {
            self.createdAt = dict["createdAt"] as! Int64
        }
        if dict.keys.contains("deploymentId") && dict["deploymentId"] != nil {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("jobId") && dict["jobId"] != nil {
            self.jobId = dict["jobId"] as! String
        }
        if dict.keys.contains("modifiedAt") && dict["modifiedAt"] != nil {
            self.modifiedAt = dict["modifiedAt"] as! Int64
        }
        if dict.keys.contains("namespace") && dict["namespace"] != nil {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("nativeFormat") && dict["nativeFormat"] != nil {
            self.nativeFormat = dict["nativeFormat"] as! Bool
        }
        if dict.keys.contains("savepointId") && dict["savepointId"] != nil {
            self.savepointId = dict["savepointId"] as! String
        }
        if dict.keys.contains("savepointLocation") && dict["savepointLocation"] != nil {
            self.savepointLocation = dict["savepointLocation"] as! String
        }
        if dict.keys.contains("savepointOrigin") && dict["savepointOrigin"] != nil {
            self.savepointOrigin = dict["savepointOrigin"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            var model = SavepointStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("stopWithDrainEnabled") && dict["stopWithDrainEnabled"] != nil {
            self.stopWithDrainEnabled = dict["stopWithDrainEnabled"] as! Bool
        }
    }
}

public class SavepointFailure : Tea.TeaModel {
    public var failedAt: Int64?

    public var message: String?

    public var reason: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failedAt != nil {
            map["failedAt"] = self.failedAt!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.reason != nil {
            map["reason"] = self.reason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("failedAt") && dict["failedAt"] != nil {
            self.failedAt = dict["failedAt"] as! Int64
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("reason") && dict["reason"] != nil {
            self.reason = dict["reason"] as! String
        }
    }
}

public class SavepointStatus : Tea.TeaModel {
    public var failure: SavepointFailure?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.failure?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failure != nil {
            map["failure"] = self.failure?.toMap()
        }
        if self.state != nil {
            map["state"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("failure") && dict["failure"] != nil {
            var model = SavepointFailure()
            model.fromMap(dict["failure"] as! [String: Any])
            self.failure = model
        }
        if dict.keys.contains("state") && dict["state"] != nil {
            self.state = dict["state"] as! String
        }
    }
}

public class SqlArtifact : Tea.TeaModel {
    public var additionalDependencies: [String]?

    public var sqlScript: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalDependencies != nil {
            map["additionalDependencies"] = self.additionalDependencies!
        }
        if self.sqlScript != nil {
            map["sqlScript"] = self.sqlScript!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("additionalDependencies") && dict["additionalDependencies"] != nil {
            self.additionalDependencies = dict["additionalDependencies"] as! [String]
        }
        if dict.keys.contains("sqlScript") && dict["sqlScript"] != nil {
            self.sqlScript = dict["sqlScript"] as! String
        }
    }
}

public class StartJobRequestBody : Tea.TeaModel {
    public var deploymentId: String?

    public var resourceSettingSpec: BriefResourceSetting?

    public var restoreStrategy: DeploymentRestoreStrategy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceSettingSpec?.validate()
        try self.restoreStrategy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deploymentId != nil {
            map["deploymentId"] = self.deploymentId!
        }
        if self.resourceSettingSpec != nil {
            map["resourceSettingSpec"] = self.resourceSettingSpec?.toMap()
        }
        if self.restoreStrategy != nil {
            map["restoreStrategy"] = self.restoreStrategy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deploymentId") && dict["deploymentId"] != nil {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("resourceSettingSpec") && dict["resourceSettingSpec"] != nil {
            var model = BriefResourceSetting()
            model.fromMap(dict["resourceSettingSpec"] as! [String: Any])
            self.resourceSettingSpec = model
        }
        if dict.keys.contains("restoreStrategy") && dict["restoreStrategy"] != nil {
            var model = DeploymentRestoreStrategy()
            model.fromMap(dict["restoreStrategy"] as! [String: Any])
            self.restoreStrategy = model
        }
    }
}

public class StopJobRequestBody : Tea.TeaModel {
    public var stopStrategy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.stopStrategy != nil {
            map["stopStrategy"] = self.stopStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("stopStrategy") && dict["stopStrategy"] != nil {
            self.stopStrategy = dict["stopStrategy"] as! String
        }
    }
}

public class StreamingResourceSetting : Tea.TeaModel {
    public var basicResourceSetting: BasicResourceSetting?

    public var expertResourceSetting: ExpertResourceSetting?

    public var resourceSettingMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.basicResourceSetting?.validate()
        try self.expertResourceSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.basicResourceSetting != nil {
            map["basicResourceSetting"] = self.basicResourceSetting?.toMap()
        }
        if self.expertResourceSetting != nil {
            map["expertResourceSetting"] = self.expertResourceSetting?.toMap()
        }
        if self.resourceSettingMode != nil {
            map["resourceSettingMode"] = self.resourceSettingMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("basicResourceSetting") && dict["basicResourceSetting"] != nil {
            var model = BasicResourceSetting()
            model.fromMap(dict["basicResourceSetting"] as! [String: Any])
            self.basicResourceSetting = model
        }
        if dict.keys.contains("expertResourceSetting") && dict["expertResourceSetting"] != nil {
            var model = ExpertResourceSetting()
            model.fromMap(dict["expertResourceSetting"] as! [String: Any])
            self.expertResourceSetting = model
        }
        if dict.keys.contains("resourceSettingMode") && dict["resourceSettingMode"] != nil {
            self.resourceSettingMode = dict["resourceSettingMode"] as! String
        }
    }
}

public class Variable : Tea.TeaModel {
    public var description_: String?

    public var kind: String?

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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("kind") && dict["kind"] != nil {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("value") && dict["value"] != nil {
            self.value = dict["value"] as! String
        }
    }
}

public class CreateDeploymentHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class CreateDeploymentRequest : Tea.TeaModel {
    public var body: Deployment?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = Deployment()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDeploymentResponseBody : Tea.TeaModel {
    public var data: Deployment?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = Deployment()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateDeploymentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeploymentResponseBody?

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
            var model = CreateDeploymentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSavepointHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class CreateSavepointRequest : Tea.TeaModel {
    public var deploymentId: String?

    public var description_: String?

    public var nativeFormat: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deploymentId != nil {
            map["deploymentId"] = self.deploymentId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.nativeFormat != nil {
            map["nativeFormat"] = self.nativeFormat!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deploymentId") && dict["deploymentId"] != nil {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("nativeFormat") && dict["nativeFormat"] != nil {
            self.nativeFormat = dict["nativeFormat"] as! Bool
        }
    }
}

public class CreateSavepointResponseBody : Tea.TeaModel {
    public var data: Savepoint?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = Savepoint()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateSavepointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSavepointResponseBody?

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
            var model = CreateSavepointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVariableHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class CreateVariableRequest : Tea.TeaModel {
    public var body: Variable?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = Variable()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVariableResponseBody : Tea.TeaModel {
    public var data: Variable?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = Variable()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateVariableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVariableResponseBody?

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
            var model = CreateVariableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDeploymentHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class DeleteDeploymentResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeleteDeploymentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDeploymentResponseBody?

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
            var model = DeleteDeploymentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteJobHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class DeleteJobResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
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

public class DeleteSavepointHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class DeleteSavepointResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeleteSavepointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSavepointResponseBody?

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
            var model = DeleteSavepointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVariableHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class DeleteVariableResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeleteVariableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVariableResponseBody?

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
            var model = DeleteVariableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FlinkApiProxyHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class FlinkApiProxyRequest : Tea.TeaModel {
    public var flinkApiPath: String?

    public var namespace: String?

    public var resourceId: String?

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
        if self.flinkApiPath != nil {
            map["flinkApiPath"] = self.flinkApiPath!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("flinkApiPath") && dict["flinkApiPath"] != nil {
            self.flinkApiPath = dict["flinkApiPath"] as! String
        }
        if dict.keys.contains("namespace") && dict["namespace"] != nil {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("resourceId") && dict["resourceId"] != nil {
            self.resourceId = dict["resourceId"] as! String
        }
        if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
            self.resourceType = dict["resourceType"] as! String
        }
    }
}

public class FlinkApiProxyResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class FlinkApiProxyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FlinkApiProxyResponseBody?

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
            var model = FlinkApiProxyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateResourcePlanWithFlinkConfAsyncHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class GenerateResourcePlanWithFlinkConfAsyncRequest : Tea.TeaModel {
    public var body: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! [String: Any]
        }
    }
}

public class GenerateResourcePlanWithFlinkConfAsyncResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var ticketId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ticketId != nil {
                map["ticketId"] = self.ticketId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ticketId") && dict["ticketId"] != nil {
                self.ticketId = dict["ticketId"] as! String
            }
        }
    }
    public var data: GenerateResourcePlanWithFlinkConfAsyncResponseBody.Data?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GenerateResourcePlanWithFlinkConfAsyncResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GenerateResourcePlanWithFlinkConfAsyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateResourcePlanWithFlinkConfAsyncResponseBody?

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
            var model = GenerateResourcePlanWithFlinkConfAsyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeploymentHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class GetDeploymentResponseBody : Tea.TeaModel {
    public var data: Deployment?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = Deployment()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetDeploymentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeploymentResponseBody?

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
            var model = GetDeploymentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGenerateResourcePlanResultHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class GetGenerateResourcePlanResultResponseBody : Tea.TeaModel {
    public var data: AsyncResourcePlanOperationResult?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = AsyncResourcePlanOperationResult()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetGenerateResourcePlanResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGenerateResourcePlanResultResponseBody?

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
            var model = GetGenerateResourcePlanResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetJobHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class GetJobResponseBody : Tea.TeaModel {
    public var data: Job?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = Job()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
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

public class GetSavepointHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class GetSavepointResponseBody : Tea.TeaModel {
    public var data: Savepoint?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = Savepoint()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetSavepointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSavepointResponseBody?

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
            var model = GetSavepointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeploymentTargetsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class ListDeploymentTargetsRequest : Tea.TeaModel {
    public var pageIndex: Int32?

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
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageIndex") && dict["pageIndex"] != nil {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListDeploymentTargetsResponseBody : Tea.TeaModel {
    public var data: [DeploymentTarget]?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalSize != nil {
            map["totalSize"] = self.totalSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [DeploymentTarget] = []
            for v in dict["data"] as! [Any] {
                var model = DeploymentTarget()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("pageIndex") && dict["pageIndex"] != nil {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalSize") && dict["totalSize"] != nil {
            self.totalSize = dict["totalSize"] as! Int32
        }
    }
}

public class ListDeploymentTargetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeploymentTargetsResponseBody?

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
            var model = ListDeploymentTargetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeploymentsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class ListDeploymentsRequest : Tea.TeaModel {
    public var executionMode: String?

    public var name: String?

    public var pageIndex: Int32?

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
        if self.executionMode != nil {
            map["executionMode"] = self.executionMode!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("executionMode") && dict["executionMode"] != nil {
            self.executionMode = dict["executionMode"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageIndex") && dict["pageIndex"] != nil {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListDeploymentsResponseBody : Tea.TeaModel {
    public var data: [Deployment]?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalSize != nil {
            map["totalSize"] = self.totalSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [Deployment] = []
            for v in dict["data"] as! [Any] {
                var model = Deployment()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("pageIndex") && dict["pageIndex"] != nil {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalSize") && dict["totalSize"] != nil {
            self.totalSize = dict["totalSize"] as! Int32
        }
    }
}

public class ListDeploymentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeploymentsResponseBody?

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
            var model = ListDeploymentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEngineVersionMetadataHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class ListEngineVersionMetadataResponseBody : Tea.TeaModel {
    public var data: EngineVersionMetadataIndex?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = EngineVersionMetadataIndex()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListEngineVersionMetadataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEngineVersionMetadataResponseBody?

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
            var model = ListEngineVersionMetadataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJobsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class ListJobsRequest : Tea.TeaModel {
    public var deploymentId: String?

    public var pageIndex: Int32?

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
        if self.deploymentId != nil {
            map["deploymentId"] = self.deploymentId!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deploymentId") && dict["deploymentId"] != nil {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("pageIndex") && dict["pageIndex"] != nil {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListJobsResponseBody : Tea.TeaModel {
    public var data: [Job]?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalSize != nil {
            map["totalSize"] = self.totalSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [Job] = []
            for v in dict["data"] as! [Any] {
                var model = Job()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("pageIndex") && dict["pageIndex"] != nil {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalSize") && dict["totalSize"] != nil {
            self.totalSize = dict["totalSize"] as! Int32
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

public class ListSavepointsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class ListSavepointsRequest : Tea.TeaModel {
    public var deploymentId: String?

    public var jobId: String?

    public var pageIndex: Int32?

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
        if self.deploymentId != nil {
            map["deploymentId"] = self.deploymentId!
        }
        if self.jobId != nil {
            map["jobId"] = self.jobId!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deploymentId") && dict["deploymentId"] != nil {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("jobId") && dict["jobId"] != nil {
            self.jobId = dict["jobId"] as! String
        }
        if dict.keys.contains("pageIndex") && dict["pageIndex"] != nil {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListSavepointsResponseBody : Tea.TeaModel {
    public var data: [Savepoint]?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalSize != nil {
            map["totalSize"] = self.totalSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [Savepoint] = []
            for v in dict["data"] as! [Any] {
                var model = Savepoint()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("pageIndex") && dict["pageIndex"] != nil {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalSize") && dict["totalSize"] != nil {
            self.totalSize = dict["totalSize"] as! Int32
        }
    }
}

public class ListSavepointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSavepointsResponseBody?

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
            var model = ListSavepointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVariablesHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class ListVariablesRequest : Tea.TeaModel {
    public var pageIndex: Int32?

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
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageIndex") && dict["pageIndex"] != nil {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListVariablesResponseBody : Tea.TeaModel {
    public var data: [Variable]?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalSize != nil {
            map["totalSize"] = self.totalSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [Variable] = []
            for v in dict["data"] as! [Any] {
                var model = Variable()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("pageIndex") && dict["pageIndex"] != nil {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalSize") && dict["totalSize"] != nil {
            self.totalSize = dict["totalSize"] as! Int32
        }
    }
}

public class ListVariablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVariablesResponseBody?

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
            var model = ListVariablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartJobHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class StartJobRequest : Tea.TeaModel {
    public var body: StartJobRequestBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = StartJobRequestBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartJobResponseBody : Tea.TeaModel {
    public var data: Job?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = Job()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class StartJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartJobResponseBody?

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
            var model = StartJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartJobWithParamsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class StartJobWithParamsRequest : Tea.TeaModel {
    public var body: JobStartParameters?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = JobStartParameters()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartJobWithParamsResponseBody : Tea.TeaModel {
    public var data: Job?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = Job()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class StartJobWithParamsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartJobWithParamsResponseBody?

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
            var model = StartJobWithParamsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopJobHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class StopJobRequest : Tea.TeaModel {
    public var body: StopJobRequestBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = StopJobRequestBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopJobResponseBody : Tea.TeaModel {
    public var data: Job?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = Job()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
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

public class UpdateDeploymentHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") && dict["workspace"] != nil {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class UpdateDeploymentRequest : Tea.TeaModel {
    public var body: Deployment?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = Deployment()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDeploymentResponseBody : Tea.TeaModel {
    public var data: Deployment?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: Int32?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = Deployment()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") && dict["httpCode"] != nil {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdateDeploymentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDeploymentResponseBody?

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
            var model = UpdateDeploymentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
