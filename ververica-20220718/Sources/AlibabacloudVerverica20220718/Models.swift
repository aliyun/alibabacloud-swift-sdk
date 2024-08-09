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
        if dict.keys.contains("jarArtifact") {
            var model = JarArtifact()
            model.fromMap(dict["jarArtifact"] as! [String: Any])
            self.jarArtifact = model
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("pythonArtifact") {
            var model = PythonArtifact()
            model.fromMap(dict["pythonArtifact"] as! [String: Any])
            self.pythonArtifact = model
        }
        if dict.keys.contains("sqlArtifact") {
            var model = SqlArtifact()
            model.fromMap(dict["sqlArtifact"] as! [String: Any])
            self.sqlArtifact = model
        }
    }
}

public class AsyncDraftDeployResult : Tea.TeaModel {
    public var artifactValidationDetail: ValidateStatementResult?

    public var deploymentId: String?

    public var message: String?

    public var success: Bool?

    public var ticketStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.artifactValidationDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactValidationDetail != nil {
            map["artifactValidationDetail"] = self.artifactValidationDetail?.toMap()
        }
        if self.deploymentId != nil {
            map["deploymentId"] = self.deploymentId!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.ticketStatus != nil {
            map["ticketStatus"] = self.ticketStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("artifactValidationDetail") {
            var model = ValidateStatementResult()
            model.fromMap(dict["artifactValidationDetail"] as! [String: Any])
            self.artifactValidationDetail = model
        }
        if dict.keys.contains("deploymentId") {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("ticketStatus") {
            self.ticketStatus = dict["ticketStatus"] as! String
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
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("plan") {
            self.plan = dict["plan"] as! String
        }
        if dict.keys.contains("ticketStatus") {
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
        if dict.keys.contains("jobmanagerResourceSettingSpec") {
            var model = BasicResourceSettingSpec()
            model.fromMap(dict["jobmanagerResourceSettingSpec"] as! [String: Any])
            self.jobmanagerResourceSettingSpec = model
        }
        if dict.keys.contains("parallelism") {
            self.parallelism = dict["parallelism"] as! Int64
        }
        if dict.keys.contains("taskmanagerResourceSettingSpec") {
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
        if dict.keys.contains("cpu") {
            self.cpu = dict["cpu"] as! Double
        }
        if dict.keys.contains("memory") {
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
        if dict.keys.contains("basicResourceSetting") {
            var model = BasicResourceSetting()
            model.fromMap(dict["basicResourceSetting"] as! [String: Any])
            self.basicResourceSetting = model
        }
        if dict.keys.contains("maxSlot") {
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
        if dict.keys.contains("mode") {
            self.mode = dict["mode"] as! String
        }
        if dict.keys.contains("name") {
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
        if dict.keys.contains("batchResourceSetting") {
            var model = BatchResourceSetting()
            model.fromMap(dict["batchResourceSetting"] as! [String: Any])
            self.batchResourceSetting = model
        }
        if dict.keys.contains("flinkConf") {
            self.flinkConf = dict["flinkConf"] as! [String: Any]
        }
        if dict.keys.contains("streamingResourceSetting") {
            var model = StreamingResourceSetting()
            model.fromMap(dict["streamingResourceSetting"] as! [String: Any])
            self.streamingResourceSetting = model
        }
    }
}

public class Catalog : Tea.TeaModel {
    public var name: String?

    public var properties: [String: Any]?

    public override init() {
        super.init()
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
        if self.properties != nil {
            map["properties"] = self.properties!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("properties") {
            self.properties = dict["properties"] as! [String: Any]
        }
    }
}

public class Connector : Tea.TeaModel {
    public var creator: String?

    public var creatorName: String?

    public var dependencies: [String]?

    public var lookup: Bool?

    public var modifier: String?

    public var modifierName: String?

    public var name: String?

    public var properties: [Property]?

    public var sink: Bool?

    public var source: Bool?

    public var supportedFormats: [String]?

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
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.creatorName != nil {
            map["creatorName"] = self.creatorName!
        }
        if self.dependencies != nil {
            map["dependencies"] = self.dependencies!
        }
        if self.lookup != nil {
            map["lookup"] = self.lookup!
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
        if self.properties != nil {
            var tmp : [Any] = []
            for k in self.properties! {
                tmp.append(k.toMap())
            }
            map["properties"] = tmp
        }
        if self.sink != nil {
            map["sink"] = self.sink!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.supportedFormats != nil {
            map["supportedFormats"] = self.supportedFormats!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("creator") {
            self.creator = dict["creator"] as! String
        }
        if dict.keys.contains("creatorName") {
            self.creatorName = dict["creatorName"] as! String
        }
        if dict.keys.contains("dependencies") {
            self.dependencies = dict["dependencies"] as! [String]
        }
        if dict.keys.contains("lookup") {
            self.lookup = dict["lookup"] as! Bool
        }
        if dict.keys.contains("modifier") {
            self.modifier = dict["modifier"] as! String
        }
        if dict.keys.contains("modifierName") {
            self.modifierName = dict["modifierName"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("properties") {
            var tmp : [Property] = []
            for v in dict["properties"] as! [Any] {
                var model = Property()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.properties = tmp
        }
        if dict.keys.contains("sink") {
            self.sink = dict["sink"] as! Bool
        }
        if dict.keys.contains("source") {
            self.source = dict["source"] as! Bool
        }
        if dict.keys.contains("supportedFormats") {
            self.supportedFormats = dict["supportedFormats"] as! [String]
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class CreateUdfArtifactResult : Tea.TeaModel {
    public var collidingClasses: [UdfClass]?

    public var createSuccess: Bool?

    public var message: String?

    public var udfArtifact: UdfArtifact?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.udfArtifact?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collidingClasses != nil {
            var tmp : [Any] = []
            for k in self.collidingClasses! {
                tmp.append(k.toMap())
            }
            map["collidingClasses"] = tmp
        }
        if self.createSuccess != nil {
            map["createSuccess"] = self.createSuccess!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.udfArtifact != nil {
            map["udfArtifact"] = self.udfArtifact?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("collidingClasses") {
            var tmp : [UdfClass] = []
            for v in dict["collidingClasses"] as! [Any] {
                var model = UdfClass()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.collidingClasses = tmp
        }
        if dict.keys.contains("createSuccess") {
            self.createSuccess = dict["createSuccess"] as! Bool
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("udfArtifact") {
            var model = UdfArtifact()
            model.fromMap(dict["udfArtifact"] as! [String: Any])
            self.udfArtifact = model
        }
    }
}

public class Database : Tea.TeaModel {
    public var comment: String?

    public var name: String?

    public var properties: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["comment"] = self.comment!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.properties != nil {
            map["properties"] = self.properties!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("comment") {
            self.comment = dict["comment"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("properties") {
            self.properties = dict["properties"] as! [String: Any]
        }
    }
}

public class DeleteUdfArtifactResult : Tea.TeaModel {
    public var deleteSuccess: Bool?

    public var message: String?

    public var referencedClasses: [UdfClass]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleteSuccess != nil {
            map["deleteSuccess"] = self.deleteSuccess!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.referencedClasses != nil {
            var tmp : [Any] = []
            for k in self.referencedClasses! {
                tmp.append(k.toMap())
            }
            map["referencedClasses"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deleteSuccess") {
            self.deleteSuccess = dict["deleteSuccess"] as! Bool
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("referencedClasses") {
            var tmp : [UdfClass] = []
            for v in dict["referencedClasses"] as! [Any] {
                var model = UdfClass()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.referencedClasses = tmp
        }
    }
}

public class Deployment : Tea.TeaModel {
    public var artifact: Artifact?

    public var batchResourceSetting: BatchResourceSetting?

    public var createdAt: String?

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

    public var labels: [String: Any]?

    public var localVariables: [LocalVariable]?

    public var logging: Logging?

    public var modifiedAt: String?

    public var modifier: String?

    public var modifierName: String?

    public var name: String?

    public var namespace: String?

    public var referencedDeploymentDraftId: String?

    public var streamingResourceSetting: StreamingResourceSetting?

    public var workspace: String?

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
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
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
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.localVariables != nil {
            var tmp : [Any] = []
            for k in self.localVariables! {
                tmp.append(k.toMap())
            }
            map["localVariables"] = tmp
        }
        if self.logging != nil {
            map["logging"] = self.logging?.toMap()
        }
        if self.modifiedAt != nil {
            map["modifiedAt"] = self.modifiedAt!
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
        if self.referencedDeploymentDraftId != nil {
            map["referencedDeploymentDraftId"] = self.referencedDeploymentDraftId!
        }
        if self.streamingResourceSetting != nil {
            map["streamingResourceSetting"] = self.streamingResourceSetting?.toMap()
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("artifact") {
            var model = Artifact()
            model.fromMap(dict["artifact"] as! [String: Any])
            self.artifact = model
        }
        if dict.keys.contains("batchResourceSetting") {
            var model = BatchResourceSetting()
            model.fromMap(dict["batchResourceSetting"] as! [String: Any])
            self.batchResourceSetting = model
        }
        if dict.keys.contains("createdAt") {
            self.createdAt = dict["createdAt"] as! String
        }
        if dict.keys.contains("creator") {
            self.creator = dict["creator"] as! String
        }
        if dict.keys.contains("creatorName") {
            self.creatorName = dict["creatorName"] as! String
        }
        if dict.keys.contains("deploymentHasChanged") {
            self.deploymentHasChanged = dict["deploymentHasChanged"] as! Bool
        }
        if dict.keys.contains("deploymentId") {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("deploymentTarget") {
            var model = BriefDeploymentTarget()
            model.fromMap(dict["deploymentTarget"] as! [String: Any])
            self.deploymentTarget = model
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("engineVersion") {
            self.engineVersion = dict["engineVersion"] as! String
        }
        if dict.keys.contains("executionMode") {
            self.executionMode = dict["executionMode"] as! String
        }
        if dict.keys.contains("flinkConf") {
            self.flinkConf = dict["flinkConf"] as! [String: Any]
        }
        if dict.keys.contains("jobSummary") {
            var model = JobSummary()
            model.fromMap(dict["jobSummary"] as! [String: Any])
            self.jobSummary = model
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: Any]
        }
        if dict.keys.contains("localVariables") {
            var tmp : [LocalVariable] = []
            for v in dict["localVariables"] as! [Any] {
                var model = LocalVariable()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.localVariables = tmp
        }
        if dict.keys.contains("logging") {
            var model = Logging()
            model.fromMap(dict["logging"] as! [String: Any])
            self.logging = model
        }
        if dict.keys.contains("modifiedAt") {
            self.modifiedAt = dict["modifiedAt"] as! String
        }
        if dict.keys.contains("modifier") {
            self.modifier = dict["modifier"] as! String
        }
        if dict.keys.contains("modifierName") {
            self.modifierName = dict["modifierName"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("referencedDeploymentDraftId") {
            self.referencedDeploymentDraftId = dict["referencedDeploymentDraftId"] as! String
        }
        if dict.keys.contains("streamingResourceSetting") {
            var model = StreamingResourceSetting()
            model.fromMap(dict["streamingResourceSetting"] as! [String: Any])
            self.streamingResourceSetting = model
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class DeploymentDraft : Tea.TeaModel {
    public var artifact: Artifact?

    public var createdAt: Int64?

    public var creator: String?

    public var creatorName: String?

    public var deploymentDraftId: String?

    public var engineVersion: String?

    public var executionMode: String?

    public var labels: [String: Any]?

    public var localVariables: [LocalVariable]?

    public var lock: Lock?

    public var modifiedAt: Int64?

    public var modifier: String?

    public var modifierName: String?

    public var name: String?

    public var namespace: String?

    public var parentId: String?

    public var referencedDeploymentId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.artifact?.validate()
        try self.lock?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifact != nil {
            map["artifact"] = self.artifact?.toMap()
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.creatorName != nil {
            map["creatorName"] = self.creatorName!
        }
        if self.deploymentDraftId != nil {
            map["deploymentDraftId"] = self.deploymentDraftId!
        }
        if self.engineVersion != nil {
            map["engineVersion"] = self.engineVersion!
        }
        if self.executionMode != nil {
            map["executionMode"] = self.executionMode!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.localVariables != nil {
            var tmp : [Any] = []
            for k in self.localVariables! {
                tmp.append(k.toMap())
            }
            map["localVariables"] = tmp
        }
        if self.lock != nil {
            map["lock"] = self.lock?.toMap()
        }
        if self.modifiedAt != nil {
            map["modifiedAt"] = self.modifiedAt!
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
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        if self.referencedDeploymentId != nil {
            map["referencedDeploymentId"] = self.referencedDeploymentId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("artifact") {
            var model = Artifact()
            model.fromMap(dict["artifact"] as! [String: Any])
            self.artifact = model
        }
        if dict.keys.contains("createdAt") {
            self.createdAt = dict["createdAt"] as! Int64
        }
        if dict.keys.contains("creator") {
            self.creator = dict["creator"] as! String
        }
        if dict.keys.contains("creatorName") {
            self.creatorName = dict["creatorName"] as! String
        }
        if dict.keys.contains("deploymentDraftId") {
            self.deploymentDraftId = dict["deploymentDraftId"] as! String
        }
        if dict.keys.contains("engineVersion") {
            self.engineVersion = dict["engineVersion"] as! String
        }
        if dict.keys.contains("executionMode") {
            self.executionMode = dict["executionMode"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: Any]
        }
        if dict.keys.contains("localVariables") {
            var tmp : [LocalVariable] = []
            for v in dict["localVariables"] as! [Any] {
                var model = LocalVariable()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.localVariables = tmp
        }
        if dict.keys.contains("lock") {
            var model = Lock()
            model.fromMap(dict["lock"] as! [String: Any])
            self.lock = model
        }
        if dict.keys.contains("modifiedAt") {
            self.modifiedAt = dict["modifiedAt"] as! Int64
        }
        if dict.keys.contains("modifier") {
            self.modifier = dict["modifier"] as! String
        }
        if dict.keys.contains("modifierName") {
            self.modifierName = dict["modifierName"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("parentId") {
            self.parentId = dict["parentId"] as! String
        }
        if dict.keys.contains("referencedDeploymentId") {
            self.referencedDeploymentId = dict["referencedDeploymentId"] as! String
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
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
        if dict.keys.contains("allowNonRestoredState") {
            self.allowNonRestoredState = dict["allowNonRestoredState"] as! Bool
        }
        if dict.keys.contains("jobStartTimeInMs") {
            self.jobStartTimeInMs = dict["jobStartTimeInMs"] as! Int64
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("savepointId") {
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
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
    }
}

public class DraftDeployParams : Tea.TeaModel {
    public var deploymentDraftId: String?

    public var deploymentTarget: BriefDeploymentTarget?

    public var skipValidate: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deploymentTarget?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deploymentDraftId != nil {
            map["deploymentDraftId"] = self.deploymentDraftId!
        }
        if self.deploymentTarget != nil {
            map["deploymentTarget"] = self.deploymentTarget?.toMap()
        }
        if self.skipValidate != nil {
            map["skipValidate"] = self.skipValidate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deploymentDraftId") {
            self.deploymentDraftId = dict["deploymentDraftId"] as! String
        }
        if dict.keys.contains("deploymentTarget") {
            var model = BriefDeploymentTarget()
            model.fromMap(dict["deploymentTarget"] as! [String: Any])
            self.deploymentTarget = model
        }
        if dict.keys.contains("skipValidate") {
            self.skipValidate = dict["skipValidate"] as! Bool
        }
    }
}

public class DraftDeployResult : Tea.TeaModel {
    public var artifactValidationDetail: ValidateStatementResult?

    public var deploymentId: String?

    public var message: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.artifactValidationDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactValidationDetail != nil {
            map["artifactValidationDetail"] = self.artifactValidationDetail?.toMap()
        }
        if self.deploymentId != nil {
            map["deploymentId"] = self.deploymentId!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("artifactValidationDetail") {
            var model = ValidateStatementResult()
            model.fromMap(dict["artifactValidationDetail"] as! [String: Any])
            self.artifactValidationDetail = model
        }
        if dict.keys.contains("deploymentId") {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class Edge : Tea.TeaModel {
    public var columnLineage: [Relation]?

    public var tableLineage: [Relation]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnLineage != nil {
            var tmp : [Any] = []
            for k in self.columnLineage! {
                tmp.append(k.toMap())
            }
            map["columnLineage"] = tmp
        }
        if self.tableLineage != nil {
            var tmp : [Any] = []
            for k in self.tableLineage! {
                tmp.append(k.toMap())
            }
            map["tableLineage"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("columnLineage") {
            var tmp : [Relation] = []
            for v in dict["columnLineage"] as! [Any] {
                var model = Relation()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.columnLineage = tmp
        }
        if dict.keys.contains("tableLineage") {
            var tmp : [Relation] = []
            for v in dict["tableLineage"] as! [Any] {
                var model = Relation()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tableLineage = tmp
        }
    }
}

public class EditableNamespace : Tea.TeaModel {
    public var namespace: String?

    public var role: String?

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
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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
        if dict.keys.contains("engineVersion") {
            self.engineVersion = dict["engineVersion"] as! String
        }
        if dict.keys.contains("features") {
            var model = EngineVersionSupportedFeatures()
            model.fromMap(dict["features"] as! [String: Any])
            self.features = model
        }
        if dict.keys.contains("status") {
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
        if dict.keys.contains("defaultEngineVersion") {
            self.defaultEngineVersion = dict["defaultEngineVersion"] as! String
        }
        if dict.keys.contains("engineVersionMetadata") {
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
        if dict.keys.contains("supportNativeSavepoint") {
            self.supportNativeSavepoint = dict["supportNativeSavepoint"] as! Bool
        }
        if dict.keys.contains("useForSqlDeployments") {
            self.useForSqlDeployments = dict["useForSqlDeployments"] as! Bool
        }
    }
}

public class ErrorDetails : Tea.TeaModel {
    public var columnNumber: String?

    public var endColumnNumber: String?

    public var endLineNumber: String?

    public var invalidflinkConf: [String]?

    public var lineNumber: String?

    public var message: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnNumber != nil {
            map["columnNumber"] = self.columnNumber!
        }
        if self.endColumnNumber != nil {
            map["endColumnNumber"] = self.endColumnNumber!
        }
        if self.endLineNumber != nil {
            map["endLineNumber"] = self.endLineNumber!
        }
        if self.invalidflinkConf != nil {
            map["invalidflinkConf"] = self.invalidflinkConf!
        }
        if self.lineNumber != nil {
            map["lineNumber"] = self.lineNumber!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("columnNumber") {
            self.columnNumber = dict["columnNumber"] as! String
        }
        if dict.keys.contains("endColumnNumber") {
            self.endColumnNumber = dict["endColumnNumber"] as! String
        }
        if dict.keys.contains("endLineNumber") {
            self.endLineNumber = dict["endLineNumber"] as! String
        }
        if dict.keys.contains("invalidflinkConf") {
            self.invalidflinkConf = dict["invalidflinkConf"] as! [String]
        }
        if dict.keys.contains("lineNumber") {
            self.lineNumber = dict["lineNumber"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
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
        if dict.keys.contains("jobmanagerResourceSettingSpec") {
            var model = BasicResourceSettingSpec()
            model.fromMap(dict["jobmanagerResourceSettingSpec"] as! [String: Any])
            self.jobmanagerResourceSettingSpec = model
        }
        if dict.keys.contains("resourcePlan") {
            self.resourcePlan = dict["resourcePlan"] as! String
        }
    }
}

public class Folder : Tea.TeaModel {
    public var createdAt: Int64?

    public var folderId: String?

    public var modifiedAt: Int64?

    public var name: String?

    public var namespace: String?

    public var parentId: String?

    public var subFolder: [SubFolder]?

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
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.folderId != nil {
            map["folderId"] = self.folderId!
        }
        if self.modifiedAt != nil {
            map["modifiedAt"] = self.modifiedAt!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        if self.subFolder != nil {
            var tmp : [Any] = []
            for k in self.subFolder! {
                tmp.append(k.toMap())
            }
            map["subFolder"] = tmp
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdAt") {
            self.createdAt = dict["createdAt"] as! Int64
        }
        if dict.keys.contains("folderId") {
            self.folderId = dict["folderId"] as! String
        }
        if dict.keys.contains("modifiedAt") {
            self.modifiedAt = dict["modifiedAt"] as! Int64
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("parentId") {
            self.parentId = dict["parentId"] as! String
        }
        if dict.keys.contains("subFolder") {
            var tmp : [SubFolder] = []
            for v in dict["subFolder"] as! [Any] {
                var model = SubFolder()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subFolder = tmp
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class GetLineageInfoParams : Tea.TeaModel {
    public var depth: Int64?

    public var direction: String?

    public var id: String?

    public var idType: String?

    public var isColumnLevel: Bool?

    public var isTemporary: Bool?

    public var namespace: String?

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
        if self.depth != nil {
            map["depth"] = self.depth!
        }
        if self.direction != nil {
            map["direction"] = self.direction!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.idType != nil {
            map["idType"] = self.idType!
        }
        if self.isColumnLevel != nil {
            map["isColumnLevel"] = self.isColumnLevel!
        }
        if self.isTemporary != nil {
            map["isTemporary"] = self.isTemporary!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("depth") {
            self.depth = dict["depth"] as! Int64
        }
        if dict.keys.contains("direction") {
            self.direction = dict["direction"] as! String
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("idType") {
            self.idType = dict["idType"] as! String
        }
        if dict.keys.contains("isColumnLevel") {
            self.isColumnLevel = dict["isColumnLevel"] as! Bool
        }
        if dict.keys.contains("isTemporary") {
            self.isTemporary = dict["isTemporary"] as! Bool
        }
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class HotUpdateJobFailureInfo : Tea.TeaModel {
    public var failureSeverity: String?

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
        if self.failureSeverity != nil {
            map["failureSeverity"] = self.failureSeverity!
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
        if dict.keys.contains("failureSeverity") {
            self.failureSeverity = dict["failureSeverity"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("reason") {
            self.reason = dict["reason"] as! String
        }
    }
}

public class HotUpdateJobParams : Tea.TeaModel {
    public var rescaleJobParam: RescaleJobParam?

    public var updateJobConfigParam: UpdateJobConfigParam?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rescaleJobParam?.validate()
        try self.updateJobConfigParam?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.rescaleJobParam != nil {
            map["rescaleJobParam"] = self.rescaleJobParam?.toMap()
        }
        if self.updateJobConfigParam != nil {
            map["updateJobConfigParam"] = self.updateJobConfigParam?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("rescaleJobParam") {
            var model = RescaleJobParam()
            model.fromMap(dict["rescaleJobParam"] as! [String: Any])
            self.rescaleJobParam = model
        }
        if dict.keys.contains("updateJobConfigParam") {
            var model = UpdateJobConfigParam()
            model.fromMap(dict["updateJobConfigParam"] as! [String: Any])
            self.updateJobConfigParam = model
        }
    }
}

public class HotUpdateJobResult : Tea.TeaModel {
    public var hotUpdateParams: HotUpdateJobParams?

    public var jobHotUpdateId: String?

    public var jobId: String?

    public var status: HotUpdateJobStatus?

    public var targetResourceSetting: BriefResourceSetting?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.hotUpdateParams?.validate()
        try self.status?.validate()
        try self.targetResourceSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hotUpdateParams != nil {
            map["hotUpdateParams"] = self.hotUpdateParams?.toMap()
        }
        if self.jobHotUpdateId != nil {
            map["jobHotUpdateId"] = self.jobHotUpdateId!
        }
        if self.jobId != nil {
            map["jobId"] = self.jobId!
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.targetResourceSetting != nil {
            map["targetResourceSetting"] = self.targetResourceSetting?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("hotUpdateParams") {
            var model = HotUpdateJobParams()
            model.fromMap(dict["hotUpdateParams"] as! [String: Any])
            self.hotUpdateParams = model
        }
        if dict.keys.contains("jobHotUpdateId") {
            self.jobHotUpdateId = dict["jobHotUpdateId"] as! String
        }
        if dict.keys.contains("jobId") {
            self.jobId = dict["jobId"] as! String
        }
        if dict.keys.contains("status") {
            var model = HotUpdateJobStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("targetResourceSetting") {
            var model = BriefResourceSetting()
            model.fromMap(dict["targetResourceSetting"] as! [String: Any])
            self.targetResourceSetting = model
        }
    }
}

public class HotUpdateJobStatus : Tea.TeaModel {
    public var failure: HotUpdateJobFailureInfo?

    public var requestId: String?

    public var status: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("failure") {
            var model = HotUpdateJobFailureInfo()
            model.fromMap(dict["failure"] as! [String: Any])
            self.failure = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
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
        if dict.keys.contains("additionalDependencies") {
            self.additionalDependencies = dict["additionalDependencies"] as! [String]
        }
        if dict.keys.contains("entryClass") {
            self.entryClass = dict["entryClass"] as! String
        }
        if dict.keys.contains("jarUri") {
            self.jarUri = dict["jarUri"] as! String
        }
        if dict.keys.contains("mainArgs") {
            self.mainArgs = dict["mainArgs"] as! String
        }
    }
}

public class Job : Tea.TeaModel {
    public var artifact: Artifact?

    public var batchResourceSetting: BatchResourceSetting?

    public var createdAt: String?

    public var creator: String?

    public var creatorName: String?

    public var deploymentId: String?

    public var deploymentName: String?

    public var endTime: Int64?

    public var engineVersion: String?

    public var executionMode: String?

    public var flinkConf: [String: Any]?

    public var jobId: String?

    public var localVariables: [LocalVariable]?

    public var logging: Logging?

    public var metric: JobMetric?

    public var modifiedAt: String?

    public var modifier: String?

    public var modifierName: String?

    public var namespace: String?

    public var restoreStrategy: DeploymentRestoreStrategy?

    public var sessionClusterName: String?

    public var startTime: Int64?

    public var status: JobStatus?

    public var streamingResourceSetting: StreamingResourceSetting?

    public var userFlinkConf: [String: Any]?

    public var workspace: String?

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
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
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
        if self.localVariables != nil {
            var tmp : [Any] = []
            for k in self.localVariables! {
                tmp.append(k.toMap())
            }
            map["localVariables"] = tmp
        }
        if self.logging != nil {
            map["logging"] = self.logging?.toMap()
        }
        if self.metric != nil {
            map["metric"] = self.metric?.toMap()
        }
        if self.modifiedAt != nil {
            map["modifiedAt"] = self.modifiedAt!
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
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("artifact") {
            var model = Artifact()
            model.fromMap(dict["artifact"] as! [String: Any])
            self.artifact = model
        }
        if dict.keys.contains("batchResourceSetting") {
            var model = BatchResourceSetting()
            model.fromMap(dict["batchResourceSetting"] as! [String: Any])
            self.batchResourceSetting = model
        }
        if dict.keys.contains("createdAt") {
            self.createdAt = dict["createdAt"] as! String
        }
        if dict.keys.contains("creator") {
            self.creator = dict["creator"] as! String
        }
        if dict.keys.contains("creatorName") {
            self.creatorName = dict["creatorName"] as! String
        }
        if dict.keys.contains("deploymentId") {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("deploymentName") {
            self.deploymentName = dict["deploymentName"] as! String
        }
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! Int64
        }
        if dict.keys.contains("engineVersion") {
            self.engineVersion = dict["engineVersion"] as! String
        }
        if dict.keys.contains("executionMode") {
            self.executionMode = dict["executionMode"] as! String
        }
        if dict.keys.contains("flinkConf") {
            self.flinkConf = dict["flinkConf"] as! [String: Any]
        }
        if dict.keys.contains("jobId") {
            self.jobId = dict["jobId"] as! String
        }
        if dict.keys.contains("localVariables") {
            var tmp : [LocalVariable] = []
            for v in dict["localVariables"] as! [Any] {
                var model = LocalVariable()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.localVariables = tmp
        }
        if dict.keys.contains("logging") {
            var model = Logging()
            model.fromMap(dict["logging"] as! [String: Any])
            self.logging = model
        }
        if dict.keys.contains("metric") {
            var model = JobMetric()
            model.fromMap(dict["metric"] as! [String: Any])
            self.metric = model
        }
        if dict.keys.contains("modifiedAt") {
            self.modifiedAt = dict["modifiedAt"] as! String
        }
        if dict.keys.contains("modifier") {
            self.modifier = dict["modifier"] as! String
        }
        if dict.keys.contains("modifierName") {
            self.modifierName = dict["modifierName"] as! String
        }
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("restoreStrategy") {
            var model = DeploymentRestoreStrategy()
            model.fromMap(dict["restoreStrategy"] as! [String: Any])
            self.restoreStrategy = model
        }
        if dict.keys.contains("sessionClusterName") {
            self.sessionClusterName = dict["sessionClusterName"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! Int64
        }
        if dict.keys.contains("status") {
            var model = JobStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("streamingResourceSetting") {
            var model = StreamingResourceSetting()
            model.fromMap(dict["streamingResourceSetting"] as! [String: Any])
            self.streamingResourceSetting = model
        }
        if dict.keys.contains("userFlinkConf") {
            self.userFlinkConf = dict["userFlinkConf"] as! [String: Any]
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
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
        if dict.keys.contains("failedAt") {
            self.failedAt = dict["failedAt"] as! Int64
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("reason") {
            self.reason = dict["reason"] as! String
        }
    }
}

public class JobInfo : Tea.TeaModel {
    public var id: String?

    public var properties: [String: Any]?

    public override init() {
        super.init()
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
            map["id"] = self.id!
        }
        if self.properties != nil {
            map["properties"] = self.properties!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("properties") {
            self.properties = dict["properties"] as! [String: Any]
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
        if dict.keys.contains("totalCpu") {
            self.totalCpu = dict["totalCpu"] as! Double
        }
        if dict.keys.contains("totalMemoryByte") {
            self.totalMemoryByte = dict["totalMemoryByte"] as! Int64
        }
    }
}

public class JobStartParameters : Tea.TeaModel {
    public var deploymentId: String?

    public var localVariables: [LocalVariable]?

    public var resourceQueueName: String?

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
        if self.localVariables != nil {
            var tmp : [Any] = []
            for k in self.localVariables! {
                tmp.append(k.toMap())
            }
            map["localVariables"] = tmp
        }
        if self.resourceQueueName != nil {
            map["resourceQueueName"] = self.resourceQueueName!
        }
        if self.restoreStrategy != nil {
            map["restoreStrategy"] = self.restoreStrategy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deploymentId") {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("localVariables") {
            var tmp : [LocalVariable] = []
            for v in dict["localVariables"] as! [Any] {
                var model = LocalVariable()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.localVariables = tmp
        }
        if dict.keys.contains("resourceQueueName") {
            self.resourceQueueName = dict["resourceQueueName"] as! String
        }
        if dict.keys.contains("restoreStrategy") {
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
        if dict.keys.contains("currentJobStatus") {
            self.currentJobStatus = dict["currentJobStatus"] as! String
        }
        if dict.keys.contains("failure") {
            var model = JobFailure()
            model.fromMap(dict["failure"] as! [String: Any])
            self.failure = model
        }
        if dict.keys.contains("running") {
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
        if dict.keys.contains("observedFlinkJobRestarts") {
            self.observedFlinkJobRestarts = dict["observedFlinkJobRestarts"] as! Int64
        }
        if dict.keys.contains("observedFlinkJobStatus") {
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
        if dict.keys.contains("cancelled") {
            self.cancelled = dict["cancelled"] as! Int32
        }
        if dict.keys.contains("cancelling") {
            self.cancelling = dict["cancelling"] as! Int32
        }
        if dict.keys.contains("failed") {
            self.failed = dict["failed"] as! Int32
        }
        if dict.keys.contains("finished") {
            self.finished = dict["finished"] as! Int32
        }
        if dict.keys.contains("running") {
            self.running = dict["running"] as! Int32
        }
        if dict.keys.contains("starting") {
            self.starting = dict["starting"] as! Int32
        }
    }
}

public class LineageColumn : Tea.TeaModel {
    public var columnName: String?

    public var columnNativeType: String?

    public var columnType: String?

    public var createdAt: Int64?

    public var creator: String?

    public var description_: String?

    public var id: String?

    public var modifiedAt: Int64?

    public var modifier: String?

    public var nullable: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnName != nil {
            map["columnName"] = self.columnName!
        }
        if self.columnNativeType != nil {
            map["columnNativeType"] = self.columnNativeType!
        }
        if self.columnType != nil {
            map["columnType"] = self.columnType!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.modifiedAt != nil {
            map["modifiedAt"] = self.modifiedAt!
        }
        if self.modifier != nil {
            map["modifier"] = self.modifier!
        }
        if self.nullable != nil {
            map["nullable"] = self.nullable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("columnName") {
            self.columnName = dict["columnName"] as! String
        }
        if dict.keys.contains("columnNativeType") {
            self.columnNativeType = dict["columnNativeType"] as! String
        }
        if dict.keys.contains("columnType") {
            self.columnType = dict["columnType"] as! String
        }
        if dict.keys.contains("createdAt") {
            self.createdAt = dict["createdAt"] as! Int64
        }
        if dict.keys.contains("creator") {
            self.creator = dict["creator"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("modifiedAt") {
            self.modifiedAt = dict["modifiedAt"] as! Int64
        }
        if dict.keys.contains("modifier") {
            self.modifier = dict["modifier"] as! String
        }
        if dict.keys.contains("nullable") {
            self.nullable = dict["nullable"] as! Bool
        }
    }
}

public class LineageInfo : Tea.TeaModel {
    public var edges: Edge?

    public var jobInfos: [JobInfo]?

    public var nodes: [Node]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.edges?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.edges != nil {
            map["edges"] = self.edges?.toMap()
        }
        if self.jobInfos != nil {
            var tmp : [Any] = []
            for k in self.jobInfos! {
                tmp.append(k.toMap())
            }
            map["jobInfos"] = tmp
        }
        if self.nodes != nil {
            var tmp : [Any] = []
            for k in self.nodes! {
                tmp.append(k.toMap())
            }
            map["nodes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("edges") {
            var model = Edge()
            model.fromMap(dict["edges"] as! [String: Any])
            self.edges = model
        }
        if dict.keys.contains("jobInfos") {
            var tmp : [JobInfo] = []
            for v in dict["jobInfos"] as! [Any] {
                var model = JobInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobInfos = tmp
        }
        if dict.keys.contains("nodes") {
            var tmp : [Node] = []
            for v in dict["nodes"] as! [Any] {
                var model = Node()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodes = tmp
        }
    }
}

public class LineageTable : Tea.TeaModel {
    public var columns: [LineageColumn]?

    public var id: String?

    public var properties: [String: Any]?

    public var tableName: String?

    public var with: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columns != nil {
            var tmp : [Any] = []
            for k in self.columns! {
                tmp.append(k.toMap())
            }
            map["columns"] = tmp
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.properties != nil {
            map["properties"] = self.properties!
        }
        if self.tableName != nil {
            map["tableName"] = self.tableName!
        }
        if self.with != nil {
            map["with"] = self.with!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("columns") {
            var tmp : [LineageColumn] = []
            for v in dict["columns"] as! [Any] {
                var model = LineageColumn()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.columns = tmp
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("properties") {
            self.properties = dict["properties"] as! [String: Any]
        }
        if dict.keys.contains("tableName") {
            self.tableName = dict["tableName"] as! String
        }
        if dict.keys.contains("with") {
            self.with = dict["with"] as! [String: Any]
        }
    }
}

public class LocalVariable : Tea.TeaModel {
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
            map["name"] = self.name!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
        }
    }
}

public class Lock : Tea.TeaModel {
    public var holderId: String?

    public var holderName: String?

    public var id: String?

    public var namespace: String?

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
        if self.holderId != nil {
            map["holderId"] = self.holderId!
        }
        if self.holderName != nil {
            map["holderName"] = self.holderName!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("holderId") {
            self.holderId = dict["holderId"] as! String
        }
        if dict.keys.contains("holderName") {
            self.holderName = dict["holderName"] as! String
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
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
        if dict.keys.contains("loggerLevel") {
            self.loggerLevel = dict["loggerLevel"] as! String
        }
        if dict.keys.contains("loggerName") {
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
        if dict.keys.contains("expirationDays") {
            self.expirationDays = dict["expirationDays"] as! Int64
        }
        if dict.keys.contains("openHistory") {
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
        if dict.keys.contains("log4j2ConfigurationTemplate") {
            self.log4j2ConfigurationTemplate = dict["log4j2ConfigurationTemplate"] as! String
        }
        if dict.keys.contains("log4jLoggers") {
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
        if dict.keys.contains("logReservePolicy") {
            var model = LogReservePolicy()
            model.fromMap(dict["logReservePolicy"] as! [String: Any])
            self.logReservePolicy = model
        }
        if dict.keys.contains("loggingProfile") {
            self.loggingProfile = dict["loggingProfile"] as! String
        }
    }
}

public class Member : Tea.TeaModel {
    public var member: String?

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
        if self.member != nil {
            map["member"] = self.member!
        }
        if self.role != nil {
            map["role"] = self.role!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("member") {
            self.member = dict["member"] as! String
        }
        if dict.keys.contains("role") {
            self.role = dict["role"] as! String
        }
    }
}

public class MetadataInfo : Tea.TeaModel {
    public var key: String?

    public var virtual: Bool?

    public override init() {
        super.init()
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
            map["key"] = self.key!
        }
        if self.virtual != nil {
            map["virtual"] = self.virtual!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("key") {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("virtual") {
            self.virtual = dict["virtual"] as! Bool
        }
    }
}

public class Node : Tea.TeaModel {
    public var catalogName: String?

    public var connector: String?

    public var databaseName: String?

    public var id: String?

    public var isTemporary: Bool?

    public var tables: [LineageTable]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogName != nil {
            map["catalogName"] = self.catalogName!
        }
        if self.connector != nil {
            map["connector"] = self.connector!
        }
        if self.databaseName != nil {
            map["databaseName"] = self.databaseName!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.isTemporary != nil {
            map["isTemporary"] = self.isTemporary!
        }
        if self.tables != nil {
            var tmp : [Any] = []
            for k in self.tables! {
                tmp.append(k.toMap())
            }
            map["tables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("catalogName") {
            self.catalogName = dict["catalogName"] as! String
        }
        if dict.keys.contains("connector") {
            self.connector = dict["connector"] as! String
        }
        if dict.keys.contains("databaseName") {
            self.databaseName = dict["databaseName"] as! String
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("isTemporary") {
            self.isTemporary = dict["isTemporary"] as! Bool
        }
        if dict.keys.contains("tables") {
            var tmp : [LineageTable] = []
            for v in dict["tables"] as! [Any] {
                var model = LineageTable()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tables = tmp
        }
    }
}

public class PrimaryKey : Tea.TeaModel {
    public var columns: [String]?

    public var constraintName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columns != nil {
            map["columns"] = self.columns!
        }
        if self.constraintName != nil {
            map["constraintName"] = self.constraintName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("columns") {
            self.columns = dict["columns"] as! [String]
        }
        if dict.keys.contains("constraintName") {
            self.constraintName = dict["constraintName"] as! String
        }
    }
}

public class Property : Tea.TeaModel {
    public var defaultValue: String?

    public var definesFormat: Bool?

    public var description_: String?

    public var key: String?

    public var required_: Bool?

    public var sensitive: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultValue != nil {
            map["defaultValue"] = self.defaultValue!
        }
        if self.definesFormat != nil {
            map["definesFormat"] = self.definesFormat!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.required_ != nil {
            map["required"] = self.required_!
        }
        if self.sensitive != nil {
            map["sensitive"] = self.sensitive!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("defaultValue") {
            self.defaultValue = dict["defaultValue"] as! String
        }
        if dict.keys.contains("definesFormat") {
            self.definesFormat = dict["definesFormat"] as! Bool
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("key") {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("required") {
            self.required_ = dict["required"] as! Bool
        }
        if dict.keys.contains("sensitive") {
            self.sensitive = dict["sensitive"] as! Bool
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
        if dict.keys.contains("additionalDependencies") {
            self.additionalDependencies = dict["additionalDependencies"] as! [String]
        }
        if dict.keys.contains("additionalPythonArchives") {
            self.additionalPythonArchives = dict["additionalPythonArchives"] as! [String]
        }
        if dict.keys.contains("additionalPythonLibraries") {
            self.additionalPythonLibraries = dict["additionalPythonLibraries"] as! [String]
        }
        if dict.keys.contains("entryModule") {
            self.entryModule = dict["entryModule"] as! String
        }
        if dict.keys.contains("mainArgs") {
            self.mainArgs = dict["mainArgs"] as! String
        }
        if dict.keys.contains("pythonArtifactUri") {
            self.pythonArtifactUri = dict["pythonArtifactUri"] as! String
        }
    }
}

public class Relation : Tea.TeaModel {
    public var destination: String?

    public var jobId: String?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destination != nil {
            map["destination"] = self.destination!
        }
        if self.jobId != nil {
            map["jobId"] = self.jobId!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("destination") {
            self.destination = dict["destination"] as! String
        }
        if dict.keys.contains("jobId") {
            self.jobId = dict["jobId"] as! String
        }
        if dict.keys.contains("source") {
            self.source = dict["source"] as! String
        }
    }
}

public class RescaleJobParam : Tea.TeaModel {
    public var jobParallelism: Int64?

    public var vertexParallelism: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobParallelism != nil {
            map["jobParallelism"] = self.jobParallelism!
        }
        if self.vertexParallelism != nil {
            map["vertexParallelism"] = self.vertexParallelism!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("jobParallelism") {
            self.jobParallelism = dict["jobParallelism"] as! Int64
        }
        if dict.keys.contains("vertexParallelism") {
            self.vertexParallelism = dict["vertexParallelism"] as! [String: Any]
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
        if dict.keys.contains("createdAt") {
            self.createdAt = dict["createdAt"] as! Int64
        }
        if dict.keys.contains("deploymentId") {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("jobId") {
            self.jobId = dict["jobId"] as! String
        }
        if dict.keys.contains("modifiedAt") {
            self.modifiedAt = dict["modifiedAt"] as! Int64
        }
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("nativeFormat") {
            self.nativeFormat = dict["nativeFormat"] as! Bool
        }
        if dict.keys.contains("savepointId") {
            self.savepointId = dict["savepointId"] as! String
        }
        if dict.keys.contains("savepointLocation") {
            self.savepointLocation = dict["savepointLocation"] as! String
        }
        if dict.keys.contains("savepointOrigin") {
            self.savepointOrigin = dict["savepointOrigin"] as! String
        }
        if dict.keys.contains("status") {
            var model = SavepointStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("stopWithDrainEnabled") {
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
        if dict.keys.contains("failedAt") {
            self.failedAt = dict["failedAt"] as! Int64
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("reason") {
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
        if dict.keys.contains("failure") {
            var model = SavepointFailure()
            model.fromMap(dict["failure"] as! [String: Any])
            self.failure = model
        }
        if dict.keys.contains("state") {
            self.state = dict["state"] as! String
        }
    }
}

public class Schema : Tea.TeaModel {
    public var columns: [TableColumn]?

    public var primaryKey: [PrimaryKey]?

    public var watermarkSpecs: [WatermarkSpec]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columns != nil {
            var tmp : [Any] = []
            for k in self.columns! {
                tmp.append(k.toMap())
            }
            map["columns"] = tmp
        }
        if self.primaryKey != nil {
            var tmp : [Any] = []
            for k in self.primaryKey! {
                tmp.append(k.toMap())
            }
            map["primaryKey"] = tmp
        }
        if self.watermarkSpecs != nil {
            var tmp : [Any] = []
            for k in self.watermarkSpecs! {
                tmp.append(k.toMap())
            }
            map["watermarkSpecs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("columns") {
            var tmp : [TableColumn] = []
            for v in dict["columns"] as! [Any] {
                var model = TableColumn()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.columns = tmp
        }
        if dict.keys.contains("primaryKey") {
            var tmp : [PrimaryKey] = []
            for v in dict["primaryKey"] as! [Any] {
                var model = PrimaryKey()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.primaryKey = tmp
        }
        if dict.keys.contains("watermarkSpecs") {
            var tmp : [WatermarkSpec] = []
            for v in dict["watermarkSpecs"] as! [Any] {
                var model = WatermarkSpec()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.watermarkSpecs = tmp
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
        if dict.keys.contains("additionalDependencies") {
            self.additionalDependencies = dict["additionalDependencies"] as! [String]
        }
        if dict.keys.contains("sqlScript") {
            self.sqlScript = dict["sqlScript"] as! String
        }
    }
}

public class SqlStatementExecuteResult : Tea.TeaModel {
    public var errorDetails: ErrorDetails?

    public var executeSuccess: Bool?

    public var statement: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetails?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorDetails != nil {
            map["errorDetails"] = self.errorDetails?.toMap()
        }
        if self.executeSuccess != nil {
            map["executeSuccess"] = self.executeSuccess!
        }
        if self.statement != nil {
            map["statement"] = self.statement!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorDetails") {
            var model = ErrorDetails()
            model.fromMap(dict["errorDetails"] as! [String: Any])
            self.errorDetails = model
        }
        if dict.keys.contains("executeSuccess") {
            self.executeSuccess = dict["executeSuccess"] as! Bool
        }
        if dict.keys.contains("statement") {
            self.statement = dict["statement"] as! String
        }
    }
}

public class SqlStatementValidationResult : Tea.TeaModel {
    public var errorDetails: ErrorDetails?

    public var message: String?

    public var success: Bool?

    public var validationResult: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetails?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorDetails != nil {
            map["errorDetails"] = self.errorDetails?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.validationResult != nil {
            map["validationResult"] = self.validationResult!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorDetails") {
            var model = ErrorDetails()
            model.fromMap(dict["errorDetails"] as! [String: Any])
            self.errorDetails = model
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("validationResult") {
            self.validationResult = dict["validationResult"] as! String
        }
    }
}

public class SqlStatementWithContext : Tea.TeaModel {
    public var additionalDependencies: [String]?

    public var batchMode: Bool?

    public var flinkConfiguration: [String: Any]?

    public var statement: String?

    public var versionName: String?

    public override init() {
        super.init()
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
        if self.batchMode != nil {
            map["batchMode"] = self.batchMode!
        }
        if self.flinkConfiguration != nil {
            map["flinkConfiguration"] = self.flinkConfiguration!
        }
        if self.statement != nil {
            map["statement"] = self.statement!
        }
        if self.versionName != nil {
            map["versionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("additionalDependencies") {
            self.additionalDependencies = dict["additionalDependencies"] as! [String]
        }
        if dict.keys.contains("batchMode") {
            self.batchMode = dict["batchMode"] as! Bool
        }
        if dict.keys.contains("flinkConfiguration") {
            self.flinkConfiguration = dict["flinkConfiguration"] as! [String: Any]
        }
        if dict.keys.contains("statement") {
            self.statement = dict["statement"] as! String
        }
        if dict.keys.contains("versionName") {
            self.versionName = dict["versionName"] as! String
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
        if dict.keys.contains("deploymentId") {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("resourceSettingSpec") {
            var model = BriefResourceSetting()
            model.fromMap(dict["resourceSettingSpec"] as! [String: Any])
            self.resourceSettingSpec = model
        }
        if dict.keys.contains("restoreStrategy") {
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
        if dict.keys.contains("stopStrategy") {
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
        if dict.keys.contains("basicResourceSetting") {
            var model = BasicResourceSetting()
            model.fromMap(dict["basicResourceSetting"] as! [String: Any])
            self.basicResourceSetting = model
        }
        if dict.keys.contains("expertResourceSetting") {
            var model = ExpertResourceSetting()
            model.fromMap(dict["expertResourceSetting"] as! [String: Any])
            self.expertResourceSetting = model
        }
        if dict.keys.contains("resourceSettingMode") {
            self.resourceSettingMode = dict["resourceSettingMode"] as! String
        }
    }
}

public class SubFolder : Tea.TeaModel {
    public var folderId: String?

    public var name: String?

    public var parentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.folderId != nil {
            map["folderId"] = self.folderId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("folderId") {
            self.folderId = dict["folderId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("parentId") {
            self.parentId = dict["parentId"] as! String
        }
    }
}

public class Table : Tea.TeaModel {
    public var comment: String?

    public var name: String?

    public var partitionKeys: [String]?

    public var properties: [String: Any]?

    public var schema: Schema?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.schema?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["comment"] = self.comment!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.partitionKeys != nil {
            map["partitionKeys"] = self.partitionKeys!
        }
        if self.properties != nil {
            map["properties"] = self.properties!
        }
        if self.schema != nil {
            map["schema"] = self.schema?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("comment") {
            self.comment = dict["comment"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("partitionKeys") {
            self.partitionKeys = dict["partitionKeys"] as! [String]
        }
        if dict.keys.contains("properties") {
            self.properties = dict["properties"] as! [String: Any]
        }
        if dict.keys.contains("schema") {
            var model = Schema()
            model.fromMap(dict["schema"] as! [String: Any])
            self.schema = model
        }
    }
}

public class TableColumn : Tea.TeaModel {
    public var expression: String?

    public var metadataInfo: MetadataInfo?

    public var name: String?

    public var nullable: Bool?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metadataInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expression != nil {
            map["expression"] = self.expression!
        }
        if self.metadataInfo != nil {
            map["metadataInfo"] = self.metadataInfo?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nullable != nil {
            map["nullable"] = self.nullable!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("expression") {
            self.expression = dict["expression"] as! String
        }
        if dict.keys.contains("metadataInfo") {
            var model = MetadataInfo()
            model.fromMap(dict["metadataInfo"] as! [String: Any])
            self.metadataInfo = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nullable") {
            self.nullable = dict["nullable"] as! Bool
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class TableMeta : Tea.TeaModel {
    public var catalogName: String?

    public var databaseName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogName != nil {
            map["catalogName"] = self.catalogName!
        }
        if self.databaseName != nil {
            map["databaseName"] = self.databaseName!
        }
        if self.tableName != nil {
            map["tableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("catalogName") {
            self.catalogName = dict["catalogName"] as! String
        }
        if dict.keys.contains("databaseName") {
            self.databaseName = dict["databaseName"] as! String
        }
        if dict.keys.contains("tableName") {
            self.tableName = dict["tableName"] as! String
        }
    }
}

public class UdfArtifact : Tea.TeaModel {
    public var artifactType: String?

    public var createdAt: Int64?

    public var creator: String?

    public var dependencyJarUris: [String]?

    public var jarUrl: String?

    public var modifiedAt: Int64?

    public var name: String?

    public var namespace: String?

    public var udfClasses: [UdfClass]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactType != nil {
            map["artifactType"] = self.artifactType!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.dependencyJarUris != nil {
            map["dependencyJarUris"] = self.dependencyJarUris!
        }
        if self.jarUrl != nil {
            map["jarUrl"] = self.jarUrl!
        }
        if self.modifiedAt != nil {
            map["modifiedAt"] = self.modifiedAt!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.udfClasses != nil {
            var tmp : [Any] = []
            for k in self.udfClasses! {
                tmp.append(k.toMap())
            }
            map["udfClasses"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("artifactType") {
            self.artifactType = dict["artifactType"] as! String
        }
        if dict.keys.contains("createdAt") {
            self.createdAt = dict["createdAt"] as! Int64
        }
        if dict.keys.contains("creator") {
            self.creator = dict["creator"] as! String
        }
        if dict.keys.contains("dependencyJarUris") {
            self.dependencyJarUris = dict["dependencyJarUris"] as! [String]
        }
        if dict.keys.contains("jarUrl") {
            self.jarUrl = dict["jarUrl"] as! String
        }
        if dict.keys.contains("modifiedAt") {
            self.modifiedAt = dict["modifiedAt"] as! Int64
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("udfClasses") {
            var tmp : [UdfClass] = []
            for v in dict["udfClasses"] as! [Any] {
                var model = UdfClass()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.udfClasses = tmp
        }
    }
}

public class UdfClass : Tea.TeaModel {
    public var className: String?

    public var classType: String?

    public var functionNames: [String]?

    public var udfArtifactName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.className != nil {
            map["className"] = self.className!
        }
        if self.classType != nil {
            map["classType"] = self.classType!
        }
        if self.functionNames != nil {
            map["functionNames"] = self.functionNames!
        }
        if self.udfArtifactName != nil {
            map["udfArtifactName"] = self.udfArtifactName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("className") {
            self.className = dict["className"] as! String
        }
        if dict.keys.contains("classType") {
            self.classType = dict["classType"] as! String
        }
        if dict.keys.contains("functionNames") {
            self.functionNames = dict["functionNames"] as! [String]
        }
        if dict.keys.contains("udfArtifactName") {
            self.udfArtifactName = dict["udfArtifactName"] as! String
        }
    }
}

public class UdfFunction : Tea.TeaModel {
    public var className: String?

    public var functionName: String?

    public var udfArtifactName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.className != nil {
            map["className"] = self.className!
        }
        if self.functionName != nil {
            map["functionName"] = self.functionName!
        }
        if self.udfArtifactName != nil {
            map["udfArtifactName"] = self.udfArtifactName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("className") {
            self.className = dict["className"] as! String
        }
        if dict.keys.contains("functionName") {
            self.functionName = dict["functionName"] as! String
        }
        if dict.keys.contains("udfArtifactName") {
            self.udfArtifactName = dict["udfArtifactName"] as! String
        }
    }
}

public class UpdateJobConfigParam : Tea.TeaModel {
    public var newFlinkConf: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newFlinkConf != nil {
            map["newFlinkConf"] = self.newFlinkConf!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("newFlinkConf") {
            self.newFlinkConf = dict["newFlinkConf"] as! [String: Any]
        }
    }
}

public class UpdateUdfArtifactResult : Tea.TeaModel {
    public var collidingClasses: [UdfClass]?

    public var message: String?

    public var missingClasses: [UdfClass]?

    public var udfArtifact: UdfArtifact?

    public var updateSuccess: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.udfArtifact?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collidingClasses != nil {
            var tmp : [Any] = []
            for k in self.collidingClasses! {
                tmp.append(k.toMap())
            }
            map["collidingClasses"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.missingClasses != nil {
            var tmp : [Any] = []
            for k in self.missingClasses! {
                tmp.append(k.toMap())
            }
            map["missingClasses"] = tmp
        }
        if self.udfArtifact != nil {
            map["udfArtifact"] = self.udfArtifact?.toMap()
        }
        if self.updateSuccess != nil {
            map["updateSuccess"] = self.updateSuccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("collidingClasses") {
            var tmp : [UdfClass] = []
            for v in dict["collidingClasses"] as! [Any] {
                var model = UdfClass()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.collidingClasses = tmp
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("missingClasses") {
            var tmp : [UdfClass] = []
            for v in dict["missingClasses"] as! [Any] {
                var model = UdfClass()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.missingClasses = tmp
        }
        if dict.keys.contains("udfArtifact") {
            var model = UdfArtifact()
            model.fromMap(dict["udfArtifact"] as! [String: Any])
            self.udfArtifact = model
        }
        if dict.keys.contains("updateSuccess") {
            self.updateSuccess = dict["updateSuccess"] as! Bool
        }
    }
}

public class ValidateStatementResult : Tea.TeaModel {
    public var errorDetails: ValidationErrorDetails?

    public var validationResult: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetails?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorDetails != nil {
            map["errorDetails"] = self.errorDetails?.toMap()
        }
        if self.validationResult != nil {
            map["validationResult"] = self.validationResult!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorDetails") {
            var model = ValidationErrorDetails()
            model.fromMap(dict["errorDetails"] as! [String: Any])
            self.errorDetails = model
        }
        if dict.keys.contains("validationResult") {
            self.validationResult = dict["validationResult"] as! String
        }
    }
}

public class ValidationErrorDetails : Tea.TeaModel {
    public var columnNumber: String?

    public var endColumnNumber: String?

    public var endLineNumber: String?

    public var lineNumber: String?

    public var message: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnNumber != nil {
            map["columnNumber"] = self.columnNumber!
        }
        if self.endColumnNumber != nil {
            map["endColumnNumber"] = self.endColumnNumber!
        }
        if self.endLineNumber != nil {
            map["endLineNumber"] = self.endLineNumber!
        }
        if self.lineNumber != nil {
            map["lineNumber"] = self.lineNumber!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("columnNumber") {
            self.columnNumber = dict["columnNumber"] as! String
        }
        if dict.keys.contains("endColumnNumber") {
            self.endColumnNumber = dict["endColumnNumber"] as! String
        }
        if dict.keys.contains("endLineNumber") {
            self.endLineNumber = dict["endLineNumber"] as! String
        }
        if dict.keys.contains("lineNumber") {
            self.lineNumber = dict["lineNumber"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
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
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
        }
    }
}

public class WatermarkSpec : Tea.TeaModel {
    public var column: String?

    public var watermarkExpression: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.column != nil {
            map["column"] = self.column!
        }
        if self.watermarkExpression != nil {
            map["watermarkExpression"] = self.watermarkExpression!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("column") {
            self.column = dict["column"] as! String
        }
        if dict.keys.contains("watermarkExpression") {
            self.watermarkExpression = dict["watermarkExpression"] as! String
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("body") {
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
        if dict.keys.contains("data") {
            var model = Deployment()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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
            var model = CreateDeploymentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMemberHeaders : Tea.TeaModel {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class CreateMemberRequest : Tea.TeaModel {
    public var body: Member?

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
        if dict.keys.contains("body") {
            var model = Member()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMemberResponseBody : Tea.TeaModel {
    public var data: Member?

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
        if dict.keys.contains("data") {
            var model = Member()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMemberResponseBody?

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
            var model = CreateMemberResponseBody()
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("deploymentId") {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("nativeFormat") {
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
        if dict.keys.contains("data") {
            var model = Savepoint()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("body") {
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
        if dict.keys.contains("data") {
            var model = Variable()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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

public class DeleteMemberHeaders : Tea.TeaModel {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class DeleteMemberResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeleteMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMemberResponseBody?

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
            var model = DeleteMemberResponseBody()
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("flinkApiPath") {
            self.flinkApiPath = dict["flinkApiPath"] as! String
        }
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("resourceId") {
            self.resourceId = dict["resourceId"] as! String
        }
        if dict.keys.contains("resourceType") {
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
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("body") {
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
            if dict.keys.contains("ticketId") {
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
        if dict.keys.contains("data") {
            var model = GenerateResourcePlanWithFlinkConfAsyncResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("data") {
            var model = Deployment()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("data") {
            var model = AsyncResourcePlanOperationResult()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("data") {
            var model = Job()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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

public class GetLatestJobStartLogHeaders : Tea.TeaModel {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class GetLatestJobStartLogResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetLatestJobStartLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLatestJobStartLogResponseBody?

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
            var model = GetLatestJobStartLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMemberHeaders : Tea.TeaModel {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class GetMemberResponseBody : Tea.TeaModel {
    public var data: Member?

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
        if dict.keys.contains("data") {
            var model = Member()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMemberResponseBody?

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
            var model = GetMemberResponseBody()
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("data") {
            var model = Savepoint()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("pageIndex") {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") {
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
        if dict.keys.contains("data") {
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
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("pageIndex") {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalSize") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class ListDeploymentsRequest : Tea.TeaModel {
    public var creator: String?

    public var executionMode: String?

    public var labelKey: String?

    public var labelValueArray: String?

    public var modifier: String?

    public var name: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

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
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.executionMode != nil {
            map["executionMode"] = self.executionMode!
        }
        if self.labelKey != nil {
            map["labelKey"] = self.labelKey!
        }
        if self.labelValueArray != nil {
            map["labelValueArray"] = self.labelValueArray!
        }
        if self.modifier != nil {
            map["modifier"] = self.modifier!
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
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("creator") {
            self.creator = dict["creator"] as! String
        }
        if dict.keys.contains("executionMode") {
            self.executionMode = dict["executionMode"] as! String
        }
        if dict.keys.contains("labelKey") {
            self.labelKey = dict["labelKey"] as! String
        }
        if dict.keys.contains("labelValueArray") {
            self.labelValueArray = dict["labelValueArray"] as! String
        }
        if dict.keys.contains("modifier") {
            self.modifier = dict["modifier"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageIndex") {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
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
        if dict.keys.contains("data") {
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
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("pageIndex") {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalSize") {
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
            var model = ListDeploymentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEditableNamespaceRequest : Tea.TeaModel {
    public var namespace: String?

    public var pageIndex: String?

    public var pageSize: String?

    public var regionId: String?

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
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("pageIndex") {
            self.pageIndex = dict["pageIndex"] as! String
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! String
        }
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("workspaceId") {
            self.workspaceId = dict["workspaceId"] as! String
        }
    }
}

public class ListEditableNamespaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var editableNamespaces: [EditableNamespace]?

        public var pageIndex: String?

        public var pageSize: String?

        public var total: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.editableNamespaces != nil {
                var tmp : [Any] = []
                for k in self.editableNamespaces! {
                    tmp.append(k.toMap())
                }
                map["editableNamespaces"] = tmp
            }
            if self.pageIndex != nil {
                map["pageIndex"] = self.pageIndex!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("editableNamespaces") {
                var tmp : [EditableNamespace] = []
                for v in dict["editableNamespaces"] as! [Any] {
                    var model = EditableNamespace()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.editableNamespaces = tmp
            }
            if dict.keys.contains("pageIndex") {
                self.pageIndex = dict["pageIndex"] as! String
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! String
            }
            if dict.keys.contains("total") {
                self.total = dict["total"] as! String
            }
        }
    }
    public var data: ListEditableNamespaceResponseBody.Data?

    public var httpCode: Int32?

    public var message: String?

    public var reason: String?

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
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.reason != nil {
            map["reason"] = self.reason!
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
        if dict.keys.contains("data") {
            var model = ListEditableNamespaceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("reason") {
            self.reason = dict["reason"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListEditableNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEditableNamespaceResponseBody?

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
            var model = ListEditableNamespaceResponseBody()
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("data") {
            var model = EngineVersionMetadataIndex()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class ListJobsRequest : Tea.TeaModel {
    public var deploymentId: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var sortName: String?

    public override init() {
        super.init()
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
        if self.sortName != nil {
            map["sortName"] = self.sortName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deploymentId") {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("pageIndex") {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("sortName") {
            self.sortName = dict["sortName"] as! String
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
        if dict.keys.contains("data") {
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
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("pageIndex") {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalSize") {
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

public class ListMembersHeaders : Tea.TeaModel {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class ListMembersRequest : Tea.TeaModel {
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
        if dict.keys.contains("pageIndex") {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListMembersResponseBody : Tea.TeaModel {
    public var data: [Member]?

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
        if dict.keys.contains("data") {
            var tmp : [Member] = []
            for v in dict["data"] as! [Any] {
                var model = Member()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("pageIndex") {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalSize") {
            self.totalSize = dict["totalSize"] as! Int32
        }
    }
}

public class ListMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMembersResponseBody?

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
            var model = ListMembersResponseBody()
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("deploymentId") {
            self.deploymentId = dict["deploymentId"] as! String
        }
        if dict.keys.contains("jobId") {
            self.jobId = dict["jobId"] as! String
        }
        if dict.keys.contains("pageIndex") {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") {
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
        if dict.keys.contains("data") {
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
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("pageIndex") {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalSize") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("pageIndex") {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") {
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
        if dict.keys.contains("data") {
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
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("pageIndex") {
            self.pageIndex = dict["pageIndex"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalSize") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("body") {
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
        if dict.keys.contains("data") {
            var model = Job()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("body") {
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
        if dict.keys.contains("data") {
            var model = Job()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("body") {
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
        if dict.keys.contains("data") {
            var model = Job()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
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
        if dict.keys.contains("body") {
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
        if dict.keys.contains("data") {
            var model = Deployment()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
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
            var model = UpdateDeploymentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateMemberHeaders : Tea.TeaModel {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class UpdateMemberRequest : Tea.TeaModel {
    public var body: Member?

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
        if dict.keys.contains("body") {
            var model = Member()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateMemberResponseBody : Tea.TeaModel {
    public var data: Member?

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
        if dict.keys.contains("data") {
            var model = Member()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdateMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMemberResponseBody?

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
            var model = UpdateMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ValidateSqlStatementHeaders : Tea.TeaModel {
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
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("workspace") {
            self.workspace = dict["workspace"] as! String
        }
    }
}

public class ValidateSqlStatementRequest : Tea.TeaModel {
    public var body: SqlStatementWithContext?

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
        if dict.keys.contains("body") {
            var model = SqlStatementWithContext()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ValidateSqlStatementResponseBody : Tea.TeaModel {
    public var data: SqlStatementValidationResult?

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
        if dict.keys.contains("data") {
            var model = SqlStatementValidationResult()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ValidateSqlStatementResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateSqlStatementResponseBody?

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
            var model = ValidateSqlStatementResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
