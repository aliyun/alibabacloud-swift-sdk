import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AiModel : Tea.TeaModel {
    public var comment: String?

    public var inputSchema: Schema?

    public var name: String?

    public var options: [String: String]?

    public var outputSchema: Schema?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.inputSchema?.validate()
        try self.outputSchema?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["comment"] = self.comment!
        }
        if self.inputSchema != nil {
            map["inputSchema"] = self.inputSchema?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.options != nil {
            map["options"] = self.options!
        }
        if self.outputSchema != nil {
            map["outputSchema"] = self.outputSchema?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["comment"] as? String {
            self.comment = value
        }
        if let value = dict["inputSchema"] as? [String: Any?] {
            var model = Schema()
            model.fromMap(value)
            self.inputSchema = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["options"] as? [String: String] {
            self.options = value
        }
        if let value = dict["outputSchema"] as? [String: Any?] {
            var model = Schema()
            model.fromMap(value)
            self.outputSchema = model
        }
    }
}

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jarArtifact"] as? [String: Any?] {
            var model = JarArtifact()
            model.fromMap(value)
            self.jarArtifact = model
        }
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["pythonArtifact"] as? [String: Any?] {
            var model = PythonArtifact()
            model.fromMap(value)
            self.pythonArtifact = model
        }
        if let value = dict["sqlArtifact"] as? [String: Any?] {
            var model = SqlArtifact()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["artifactValidationDetail"] as? [String: Any?] {
            var model = ValidateStatementResult()
            model.fromMap(value)
            self.artifactValidationDetail = model
        }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["ticketStatus"] as? String {
            self.ticketStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["plan"] as? String {
            self.plan = value
        }
        if let value = dict["ticketStatus"] as? String {
            self.ticketStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jobmanagerResourceSettingSpec"] as? [String: Any?] {
            var model = BasicResourceSettingSpec()
            model.fromMap(value)
            self.jobmanagerResourceSettingSpec = model
        }
        if let value = dict["parallelism"] as? Int64 {
            self.parallelism = value
        }
        if let value = dict["taskmanagerResourceSettingSpec"] as? [String: Any?] {
            var model = BasicResourceSettingSpec()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["memory"] as? String {
            self.memory = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["basicResourceSetting"] as? [String: Any?] {
            var model = BasicResourceSetting()
            model.fromMap(value)
            self.basicResourceSetting = model
        }
        if let value = dict["maxSlot"] as? Int64 {
            self.maxSlot = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["mode"] as? String {
            self.mode = value
        }
        if let value = dict["name"] as? String {
            self.name = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["batchResourceSetting"] as? [String: Any?] {
            var model = BatchResourceSetting()
            model.fromMap(value)
            self.batchResourceSetting = model
        }
        if let value = dict["flinkConf"] as? [String: Any] {
            self.flinkConf = value
        }
        if let value = dict["streamingResourceSetting"] as? [String: Any?] {
            var model = StreamingResourceSetting()
            model.fromMap(value)
            self.streamingResourceSetting = model
        }
    }
}

public class Catalog : Tea.TeaModel {
    public var extensionConf: [String: String]?

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
        if self.extensionConf != nil {
            map["extensionConf"] = self.extensionConf!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.properties != nil {
            map["properties"] = self.properties!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["extensionConf"] as? [String: String] {
            self.extensionConf = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["properties"] as? [String: Any] {
            self.properties = value
        }
    }
}

public class Cell : Tea.TeaModel {
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
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["value"] as? String {
            self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["creator"] as? String {
            self.creator = value
        }
        if let value = dict["creatorName"] as? String {
            self.creatorName = value
        }
        if let value = dict["dependencies"] as? [String] {
            self.dependencies = value
        }
        if let value = dict["lookup"] as? Bool {
            self.lookup = value
        }
        if let value = dict["modifier"] as? String {
            self.modifier = value
        }
        if let value = dict["modifierName"] as? String {
            self.modifierName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["properties"] as? [Any?] {
            var tmp : [Property] = []
            for v in value {
                if v != nil {
                    var model = Property()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.properties = tmp
        }
        if let value = dict["sink"] as? Bool {
            self.sink = value
        }
        if let value = dict["source"] as? Bool {
            self.source = value
        }
        if let value = dict["supportedFormats"] as? [String] {
            self.supportedFormats = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["collidingClasses"] as? [Any?] {
            var tmp : [UdfClass] = []
            for v in value {
                if v != nil {
                    var model = UdfClass()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.collidingClasses = tmp
        }
        if let value = dict["createSuccess"] as? Bool {
            self.createSuccess = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["udfArtifact"] as? [String: Any?] {
            var model = UdfArtifact()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["comment"] as? String {
            self.comment = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["properties"] as? [String: Any] {
            self.properties = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deleteSuccess"] as? Bool {
            self.deleteSuccess = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["referencedClasses"] as? [Any?] {
            var tmp : [UdfClass] = []
            for v in value {
                if v != nil {
                    var model = UdfClass()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["artifact"] as? [String: Any?] {
            var model = Artifact()
            model.fromMap(value)
            self.artifact = model
        }
        if let value = dict["batchResourceSetting"] as? [String: Any?] {
            var model = BatchResourceSetting()
            model.fromMap(value)
            self.batchResourceSetting = model
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["creator"] as? String {
            self.creator = value
        }
        if let value = dict["creatorName"] as? String {
            self.creatorName = value
        }
        if let value = dict["deploymentHasChanged"] as? Bool {
            self.deploymentHasChanged = value
        }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["deploymentTarget"] as? [String: Any?] {
            var model = BriefDeploymentTarget()
            model.fromMap(value)
            self.deploymentTarget = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["engineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["executionMode"] as? String {
            self.executionMode = value
        }
        if let value = dict["flinkConf"] as? [String: Any] {
            self.flinkConf = value
        }
        if let value = dict["jobSummary"] as? [String: Any?] {
            var model = JobSummary()
            model.fromMap(value)
            self.jobSummary = model
        }
        if let value = dict["labels"] as? [String: Any] {
            self.labels = value
        }
        if let value = dict["localVariables"] as? [Any?] {
            var tmp : [LocalVariable] = []
            for v in value {
                if v != nil {
                    var model = LocalVariable()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.localVariables = tmp
        }
        if let value = dict["logging"] as? [String: Any?] {
            var model = Logging()
            model.fromMap(value)
            self.logging = model
        }
        if let value = dict["modifiedAt"] as? String {
            self.modifiedAt = value
        }
        if let value = dict["modifier"] as? String {
            self.modifier = value
        }
        if let value = dict["modifierName"] as? String {
            self.modifierName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["referencedDeploymentDraftId"] as? String {
            self.referencedDeploymentDraftId = value
        }
        if let value = dict["streamingResourceSetting"] as? [String: Any?] {
            var model = StreamingResourceSetting()
            model.fromMap(value)
            self.streamingResourceSetting = model
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["artifact"] as? [String: Any?] {
            var model = Artifact()
            model.fromMap(value)
            self.artifact = model
        }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["creator"] as? String {
            self.creator = value
        }
        if let value = dict["creatorName"] as? String {
            self.creatorName = value
        }
        if let value = dict["deploymentDraftId"] as? String {
            self.deploymentDraftId = value
        }
        if let value = dict["engineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["executionMode"] as? String {
            self.executionMode = value
        }
        if let value = dict["labels"] as? [String: Any] {
            self.labels = value
        }
        if let value = dict["localVariables"] as? [Any?] {
            var tmp : [LocalVariable] = []
            for v in value {
                if v != nil {
                    var model = LocalVariable()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.localVariables = tmp
        }
        if let value = dict["lock"] as? [String: Any?] {
            var model = Lock()
            model.fromMap(value)
            self.lock = model
        }
        if let value = dict["modifiedAt"] as? Int64 {
            self.modifiedAt = value
        }
        if let value = dict["modifier"] as? String {
            self.modifier = value
        }
        if let value = dict["modifierName"] as? String {
            self.modifierName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["parentId"] as? String {
            self.parentId = value
        }
        if let value = dict["referencedDeploymentId"] as? String {
            self.referencedDeploymentId = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["allowNonRestoredState"] as? Bool {
            self.allowNonRestoredState = value
        }
        if let value = dict["jobStartTimeInMs"] as? Int64 {
            self.jobStartTimeInMs = value
        }
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["savepointId"] as? String {
            self.savepointId = value
        }
    }
}

public class DeploymentTarget : Tea.TeaModel {
    public var name: String?

    public var namespace: String?

    public var quota: ResourceQuota?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.quota != nil {
            map["quota"] = self.quota?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["quota"] as? [String: Any?] {
            var model = ResourceQuota()
            model.fromMap(value)
            self.quota = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deploymentDraftId"] as? String {
            self.deploymentDraftId = value
        }
        if let value = dict["deploymentTarget"] as? [String: Any?] {
            var model = BriefDeploymentTarget()
            model.fromMap(value)
            self.deploymentTarget = model
        }
        if let value = dict["skipValidate"] as? Bool {
            self.skipValidate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["artifactValidationDetail"] as? [String: Any?] {
            var model = ValidateStatementResult()
            model.fromMap(value)
            self.artifactValidationDetail = model
        }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["columnLineage"] as? [Any?] {
            var tmp : [Relation] = []
            for v in value {
                if v != nil {
                    var model = Relation()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.columnLineage = tmp
        }
        if let value = dict["tableLineage"] as? [Any?] {
            var tmp : [Relation] = []
            for v in value {
                if v != nil {
                    var model = Relation()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["engineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["features"] as? [String: Any?] {
            var model = EngineVersionSupportedFeatures()
            model.fromMap(value)
            self.features = model
        }
        if let value = dict["status"] as? String {
            self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["defaultEngineVersion"] as? String {
            self.defaultEngineVersion = value
        }
        if let value = dict["engineVersionMetadata"] as? [Any?] {
            var tmp : [EngineVersionMetadata] = []
            for v in value {
                if v != nil {
                    var model = EngineVersionMetadata()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["supportNativeSavepoint"] as? Bool {
            self.supportNativeSavepoint = value
        }
        if let value = dict["useForSqlDeployments"] as? Bool {
            self.useForSqlDeployments = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["columnNumber"] as? String {
            self.columnNumber = value
        }
        if let value = dict["endColumnNumber"] as? String {
            self.endColumnNumber = value
        }
        if let value = dict["endLineNumber"] as? String {
            self.endLineNumber = value
        }
        if let value = dict["invalidflinkConf"] as? [String] {
            self.invalidflinkConf = value
        }
        if let value = dict["lineNumber"] as? String {
            self.lineNumber = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class Event : Tea.TeaModel {
    public var createdAt: String?

    public var deploymentId: String?

    public var eventId: String?

    public var eventName: String?

    public var jobId: String?

    public var message: String?

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
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.deploymentId != nil {
            map["deploymentId"] = self.deploymentId!
        }
        if self.eventId != nil {
            map["eventId"] = self.eventId!
        }
        if self.eventName != nil {
            map["eventName"] = self.eventName!
        }
        if self.jobId != nil {
            map["jobId"] = self.jobId!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["eventId"] as? String {
            self.eventId = value
        }
        if let value = dict["eventName"] as? String {
            self.eventName = value
        }
        if let value = dict["jobId"] as? String {
            self.jobId = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jobmanagerResourceSettingSpec"] as? [String: Any?] {
            var model = BasicResourceSettingSpec()
            model.fromMap(value)
            self.jobmanagerResourceSettingSpec = model
        }
        if let value = dict["resourcePlan"] as? String {
            self.resourcePlan = value
        }
    }
}

public class FetchResult : Tea.TeaModel {
    public var resultMessage: String?

    public var resultType: String?

    public var tableResults: [TableResult]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resultMessage != nil {
            map["resultMessage"] = self.resultMessage!
        }
        if self.resultType != nil {
            map["resultType"] = self.resultType!
        }
        if self.tableResults != nil {
            var tmp : [Any] = []
            for k in self.tableResults! {
                tmp.append(k.toMap())
            }
            map["tableResults"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resultMessage"] as? String {
            self.resultMessage = value
        }
        if let value = dict["resultType"] as? String {
            self.resultType = value
        }
        if let value = dict["tableResults"] as? [Any?] {
            var tmp : [TableResult] = []
            for v in value {
                if v != nil {
                    var model = TableResult()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tableResults = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
        if let value = dict["modifiedAt"] as? Int64 {
            self.modifiedAt = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["parentId"] as? String {
            self.parentId = value
        }
        if let value = dict["subFolder"] as? [Any?] {
            var tmp : [SubFolder] = []
            for v in value {
                if v != nil {
                    var model = SubFolder()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subFolder = tmp
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class Function : Tea.TeaModel {
    public var className: String?

    public var description_: String?

    public var functionLanguage: String?

    public var functionType: String?

    public var gmtModified: Int64?

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
        if self.className != nil {
            map["className"] = self.className!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.functionLanguage != nil {
            map["functionLanguage"] = self.functionLanguage!
        }
        if self.functionType != nil {
            map["functionType"] = self.functionType!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["className"] as? String {
            self.className = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["functionLanguage"] as? String {
            self.functionLanguage = value
        }
        if let value = dict["functionType"] as? String {
            self.functionType = value
        }
        if let value = dict["gmtModified"] as? Int64 {
            self.gmtModified = value
        }
        if let value = dict["name"] as? String {
            self.name = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["depth"] as? Int64 {
            self.depth = value
        }
        if let value = dict["direction"] as? String {
            self.direction = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["idType"] as? String {
            self.idType = value
        }
        if let value = dict["isColumnLevel"] as? Bool {
            self.isColumnLevel = value
        }
        if let value = dict["isTemporary"] as? Bool {
            self.isTemporary = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["failureSeverity"] as? String {
            self.failureSeverity = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["reason"] as? String {
            self.reason = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["rescaleJobParam"] as? [String: Any?] {
            var model = RescaleJobParam()
            model.fromMap(value)
            self.rescaleJobParam = model
        }
        if let value = dict["updateJobConfigParam"] as? [String: Any?] {
            var model = UpdateJobConfigParam()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["hotUpdateParams"] as? [String: Any?] {
            var model = HotUpdateJobParams()
            model.fromMap(value)
            self.hotUpdateParams = model
        }
        if let value = dict["jobHotUpdateId"] as? String {
            self.jobHotUpdateId = value
        }
        if let value = dict["jobId"] as? String {
            self.jobId = value
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = HotUpdateJobStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["targetResourceSetting"] as? [String: Any?] {
            var model = BriefResourceSetting()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["failure"] as? [String: Any?] {
            var model = HotUpdateJobFailureInfo()
            model.fromMap(value)
            self.failure = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["additionalDependencies"] as? [String] {
            self.additionalDependencies = value
        }
        if let value = dict["entryClass"] as? String {
            self.entryClass = value
        }
        if let value = dict["jarUri"] as? String {
            self.jarUri = value
        }
        if let value = dict["mainArgs"] as? String {
            self.mainArgs = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["artifact"] as? [String: Any?] {
            var model = Artifact()
            model.fromMap(value)
            self.artifact = model
        }
        if let value = dict["batchResourceSetting"] as? [String: Any?] {
            var model = BatchResourceSetting()
            model.fromMap(value)
            self.batchResourceSetting = model
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["creator"] as? String {
            self.creator = value
        }
        if let value = dict["creatorName"] as? String {
            self.creatorName = value
        }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["deploymentName"] as? String {
            self.deploymentName = value
        }
        if let value = dict["endTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["engineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["executionMode"] as? String {
            self.executionMode = value
        }
        if let value = dict["flinkConf"] as? [String: Any] {
            self.flinkConf = value
        }
        if let value = dict["jobId"] as? String {
            self.jobId = value
        }
        if let value = dict["localVariables"] as? [Any?] {
            var tmp : [LocalVariable] = []
            for v in value {
                if v != nil {
                    var model = LocalVariable()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.localVariables = tmp
        }
        if let value = dict["logging"] as? [String: Any?] {
            var model = Logging()
            model.fromMap(value)
            self.logging = model
        }
        if let value = dict["metric"] as? [String: Any?] {
            var model = JobMetric()
            model.fromMap(value)
            self.metric = model
        }
        if let value = dict["modifiedAt"] as? String {
            self.modifiedAt = value
        }
        if let value = dict["modifier"] as? String {
            self.modifier = value
        }
        if let value = dict["modifierName"] as? String {
            self.modifierName = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["restoreStrategy"] as? [String: Any?] {
            var model = DeploymentRestoreStrategy()
            model.fromMap(value)
            self.restoreStrategy = model
        }
        if let value = dict["sessionClusterName"] as? String {
            self.sessionClusterName = value
        }
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = JobStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["streamingResourceSetting"] as? [String: Any?] {
            var model = StreamingResourceSetting()
            model.fromMap(value)
            self.streamingResourceSetting = model
        }
        if let value = dict["userFlinkConf"] as? [String: Any] {
            self.userFlinkConf = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class JobDiagnosis : Tea.TeaModel {
    public var diagnoseId: String?

    public var diagnoseTime: Int64?

    public var namespace: String?

    public var riskLevel: String?

    public var symptoms: JobDiagnosisSymptoms?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.symptoms?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diagnoseId != nil {
            map["diagnoseId"] = self.diagnoseId!
        }
        if self.diagnoseTime != nil {
            map["diagnoseTime"] = self.diagnoseTime!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.riskLevel != nil {
            map["riskLevel"] = self.riskLevel!
        }
        if self.symptoms != nil {
            map["symptoms"] = self.symptoms?.toMap()
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["diagnoseId"] as? String {
            self.diagnoseId = value
        }
        if let value = dict["diagnoseTime"] as? Int64 {
            self.diagnoseTime = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["riskLevel"] as? String {
            self.riskLevel = value
        }
        if let value = dict["symptoms"] as? [String: Any?] {
            var model = JobDiagnosisSymptoms()
            model.fromMap(value)
            self.symptoms = model
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class JobDiagnosisSymptom : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var recommendation: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.recommendation != nil {
            map["recommendation"] = self.recommendation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["recommendation"] as? String {
            self.recommendation = value
        }
    }
}

public class JobDiagnosisSymptoms : Tea.TeaModel {
    public var autopilot: JobDiagnosisSymptom?

    public var others: [JobDiagnosisSymptom]?

    public var runtime: [JobDiagnosisSymptom]?

    public var startup: [JobDiagnosisSymptom]?

    public var state: [JobDiagnosisSymptom]?

    public var troubleshooting: [JobDiagnosisSymptom]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.autopilot?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autopilot != nil {
            map["autopilot"] = self.autopilot?.toMap()
        }
        if self.others != nil {
            var tmp : [Any] = []
            for k in self.others! {
                tmp.append(k.toMap())
            }
            map["others"] = tmp
        }
        if self.runtime != nil {
            var tmp : [Any] = []
            for k in self.runtime! {
                tmp.append(k.toMap())
            }
            map["runtime"] = tmp
        }
        if self.startup != nil {
            var tmp : [Any] = []
            for k in self.startup! {
                tmp.append(k.toMap())
            }
            map["startup"] = tmp
        }
        if self.state != nil {
            var tmp : [Any] = []
            for k in self.state! {
                tmp.append(k.toMap())
            }
            map["state"] = tmp
        }
        if self.troubleshooting != nil {
            var tmp : [Any] = []
            for k in self.troubleshooting! {
                tmp.append(k.toMap())
            }
            map["troubleshooting"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autopilot"] as? [String: Any?] {
            var model = JobDiagnosisSymptom()
            model.fromMap(value)
            self.autopilot = model
        }
        if let value = dict["others"] as? [Any?] {
            var tmp : [JobDiagnosisSymptom] = []
            for v in value {
                if v != nil {
                    var model = JobDiagnosisSymptom()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.others = tmp
        }
        if let value = dict["runtime"] as? [Any?] {
            var tmp : [JobDiagnosisSymptom] = []
            for v in value {
                if v != nil {
                    var model = JobDiagnosisSymptom()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.runtime = tmp
        }
        if let value = dict["startup"] as? [Any?] {
            var tmp : [JobDiagnosisSymptom] = []
            for v in value {
                if v != nil {
                    var model = JobDiagnosisSymptom()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.startup = tmp
        }
        if let value = dict["state"] as? [Any?] {
            var tmp : [JobDiagnosisSymptom] = []
            for v in value {
                if v != nil {
                    var model = JobDiagnosisSymptom()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.state = tmp
        }
        if let value = dict["troubleshooting"] as? [Any?] {
            var tmp : [JobDiagnosisSymptom] = []
            for v in value {
                if v != nil {
                    var model = JobDiagnosisSymptom()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.troubleshooting = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["failedAt"] as? Int64 {
            self.failedAt = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["reason"] as? String {
            self.reason = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["properties"] as? [String: Any] {
            self.properties = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["totalCpu"] as? Double {
            self.totalCpu = value
        }
        if let value = dict["totalMemoryByte"] as? Int64 {
            self.totalMemoryByte = value
        }
    }
}

public class JobStartParameters : Tea.TeaModel {
    public var deploymentId: String?

    public var jobId: String?

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
        if self.resourceQueueName != nil {
            map["resourceQueueName"] = self.resourceQueueName!
        }
        if self.restoreStrategy != nil {
            map["restoreStrategy"] = self.restoreStrategy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["jobId"] as? String {
            self.jobId = value
        }
        if let value = dict["localVariables"] as? [Any?] {
            var tmp : [LocalVariable] = []
            for v in value {
                if v != nil {
                    var model = LocalVariable()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.localVariables = tmp
        }
        if let value = dict["resourceQueueName"] as? String {
            self.resourceQueueName = value
        }
        if let value = dict["restoreStrategy"] as? [String: Any?] {
            var model = DeploymentRestoreStrategy()
            model.fromMap(value)
            self.restoreStrategy = model
        }
    }
}

public class JobStatus : Tea.TeaModel {
    public var currentJobStatus: String?

    public var failure: JobFailure?

    public var healthScore: Int32?

    public var riskLevel: String?

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
        if self.healthScore != nil {
            map["healthScore"] = self.healthScore!
        }
        if self.riskLevel != nil {
            map["riskLevel"] = self.riskLevel!
        }
        if self.running != nil {
            map["running"] = self.running?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["currentJobStatus"] as? String {
            self.currentJobStatus = value
        }
        if let value = dict["failure"] as? [String: Any?] {
            var model = JobFailure()
            model.fromMap(value)
            self.failure = model
        }
        if let value = dict["healthScore"] as? Int32 {
            self.healthScore = value
        }
        if let value = dict["riskLevel"] as? String {
            self.riskLevel = value
        }
        if let value = dict["running"] as? [String: Any?] {
            var model = JobStatusRunning()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["observedFlinkJobRestarts"] as? Int64 {
            self.observedFlinkJobRestarts = value
        }
        if let value = dict["observedFlinkJobStatus"] as? String {
            self.observedFlinkJobStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cancelled"] as? Int32 {
            self.cancelled = value
        }
        if let value = dict["cancelling"] as? Int32 {
            self.cancelling = value
        }
        if let value = dict["failed"] as? Int32 {
            self.failed = value
        }
        if let value = dict["finished"] as? Int32 {
            self.finished = value
        }
        if let value = dict["running"] as? Int32 {
            self.running = value
        }
        if let value = dict["starting"] as? Int32 {
            self.starting = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["columnName"] as? String {
            self.columnName = value
        }
        if let value = dict["columnNativeType"] as? String {
            self.columnNativeType = value
        }
        if let value = dict["columnType"] as? String {
            self.columnType = value
        }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["creator"] as? String {
            self.creator = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["modifiedAt"] as? Int64 {
            self.modifiedAt = value
        }
        if let value = dict["modifier"] as? String {
            self.modifier = value
        }
        if let value = dict["nullable"] as? Bool {
            self.nullable = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["edges"] as? [String: Any?] {
            var model = Edge()
            model.fromMap(value)
            self.edges = model
        }
        if let value = dict["jobInfos"] as? [Any?] {
            var tmp : [JobInfo] = []
            for v in value {
                if v != nil {
                    var model = JobInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobInfos = tmp
        }
        if let value = dict["nodes"] as? [Any?] {
            var tmp : [Node] = []
            for v in value {
                if v != nil {
                    var model = Node()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["columns"] as? [Any?] {
            var tmp : [LineageColumn] = []
            for v in value {
                if v != nil {
                    var model = LineageColumn()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.columns = tmp
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["properties"] as? [String: Any] {
            self.properties = value
        }
        if let value = dict["tableName"] as? String {
            self.tableName = value
        }
        if let value = dict["with"] as? [String: Any] {
            self.with = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["value"] as? String {
            self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["holderId"] as? String {
            self.holderId = value
        }
        if let value = dict["holderName"] as? String {
            self.holderName = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["loggerLevel"] as? String {
            self.loggerLevel = value
        }
        if let value = dict["loggerName"] as? String {
            self.loggerName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["expirationDays"] as? Int64 {
            self.expirationDays = value
        }
        if let value = dict["openHistory"] as? Bool {
            self.openHistory = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["log4j2ConfigurationTemplate"] as? String {
            self.log4j2ConfigurationTemplate = value
        }
        if let value = dict["log4jLoggers"] as? [Any?] {
            var tmp : [Log4jLogger] = []
            for v in value {
                if v != nil {
                    var model = Log4jLogger()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.log4jLoggers = tmp
        }
        if let value = dict["logReservePolicy"] as? [String: Any?] {
            var model = LogReservePolicy()
            model.fromMap(value)
            self.logReservePolicy = model
        }
        if let value = dict["loggingProfile"] as? String {
            self.loggingProfile = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["member"] as? String {
            self.member = value
        }
        if let value = dict["role"] as? String {
            self.role = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["virtual"] as? Bool {
            self.virtual = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["catalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["connector"] as? String {
            self.connector = value
        }
        if let value = dict["databaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["isTemporary"] as? Bool {
            self.isTemporary = value
        }
        if let value = dict["tables"] as? [Any?] {
            var tmp : [LineageTable] = []
            for v in value {
                if v != nil {
                    var model = LineageTable()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tables = tmp
        }
    }
}

public class NodeExecutionContextDTO : Tea.TeaModel {
    public var context: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.context != nil {
            map["context"] = self.context!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["context"] as? [String: String] {
            self.context = value
        }
    }
}

public class NodeExecutionStatusDTO : Tea.TeaModel {
    public var executionId: String?

    public var namespace: String?

    public var resourceId: String?

    public var status: String?

    public var type: String?

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
        if self.executionId != nil {
            map["executionId"] = self.executionId!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["executionId"] as? String {
            self.executionId = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class PeriodicSchedulingPolicy : Tea.TeaModel {
    public var isFinished: Bool?

    public var onlyOnceTriggerTime: Int64?

    public var onlyOnceTriggerTimeIsExpired: Bool?

    public var periodicSchedulingLevel: String?

    public var periodicSchedulingValues: [Int32]?

    public var periodicTriggerTime: Int64?

    public var resourceSetting: BriefResourceSetting?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isFinished != nil {
            map["isFinished"] = self.isFinished!
        }
        if self.onlyOnceTriggerTime != nil {
            map["onlyOnceTriggerTime"] = self.onlyOnceTriggerTime!
        }
        if self.onlyOnceTriggerTimeIsExpired != nil {
            map["onlyOnceTriggerTimeIsExpired"] = self.onlyOnceTriggerTimeIsExpired!
        }
        if self.periodicSchedulingLevel != nil {
            map["periodicSchedulingLevel"] = self.periodicSchedulingLevel!
        }
        if self.periodicSchedulingValues != nil {
            map["periodicSchedulingValues"] = self.periodicSchedulingValues!
        }
        if self.periodicTriggerTime != nil {
            map["periodicTriggerTime"] = self.periodicTriggerTime!
        }
        if self.resourceSetting != nil {
            map["resourceSetting"] = self.resourceSetting?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["isFinished"] as? Bool {
            self.isFinished = value
        }
        if let value = dict["onlyOnceTriggerTime"] as? Int64 {
            self.onlyOnceTriggerTime = value
        }
        if let value = dict["onlyOnceTriggerTimeIsExpired"] as? Bool {
            self.onlyOnceTriggerTimeIsExpired = value
        }
        if let value = dict["periodicSchedulingLevel"] as? String {
            self.periodicSchedulingLevel = value
        }
        if let value = dict["periodicSchedulingValues"] as? [Int32] {
            self.periodicSchedulingValues = value
        }
        if let value = dict["periodicTriggerTime"] as? Int64 {
            self.periodicTriggerTime = value
        }
        if let value = dict["resourceSetting"] as? [String: Any?] {
            var model = BriefResourceSetting()
            model.fromMap(value)
            self.resourceSetting = model
        }
    }
}

public class PrimaryKey : Tea.TeaModel {
    public var columns: [String]?

    public var constraintName: String?

    public var constraintType: String?

    public var enforced: Bool?

    public override init() {
        super.init()
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
        if self.constraintType != nil {
            map["constraintType"] = self.constraintType!
        }
        if self.enforced != nil {
            map["enforced"] = self.enforced!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["columns"] as? [String] {
            self.columns = value
        }
        if let value = dict["constraintName"] as? String {
            self.constraintName = value
        }
        if let value = dict["constraintType"] as? String {
            self.constraintType = value
        }
        if let value = dict["enforced"] as? Bool {
            self.enforced = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["defaultValue"] as? String {
            self.defaultValue = value
        }
        if let value = dict["definesFormat"] as? Bool {
            self.definesFormat = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["required"] as? Bool {
            self.required_ = value
        }
        if let value = dict["sensitive"] as? Bool {
            self.sensitive = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["additionalDependencies"] as? [String] {
            self.additionalDependencies = value
        }
        if let value = dict["additionalPythonArchives"] as? [String] {
            self.additionalPythonArchives = value
        }
        if let value = dict["additionalPythonLibraries"] as? [String] {
            self.additionalPythonLibraries = value
        }
        if let value = dict["entryModule"] as? String {
            self.entryModule = value
        }
        if let value = dict["mainArgs"] as? String {
            self.mainArgs = value
        }
        if let value = dict["pythonArtifactUri"] as? String {
            self.pythonArtifactUri = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["destination"] as? String {
            self.destination = value
        }
        if let value = dict["jobId"] as? String {
            self.jobId = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
    }
}

public class RescaleJobParam : Tea.TeaModel {
    public var jobParallelism: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jobParallelism"] as? Int64 {
            self.jobParallelism = value
        }
    }
}

public class Resource : Tea.TeaModel {
    public var elasticResource: ResourceSpec?

    public var fixedResource: ResourceSpec?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.elasticResource?.validate()
        try self.fixedResource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.elasticResource != nil {
            map["elasticResource"] = self.elasticResource?.toMap()
        }
        if self.fixedResource != nil {
            map["fixedResource"] = self.fixedResource?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["elasticResource"] as? [String: Any?] {
            var model = ResourceSpec()
            model.fromMap(value)
            self.elasticResource = model
        }
        if let value = dict["fixedResource"] as? [String: Any?] {
            var model = ResourceSpec()
            model.fromMap(value)
            self.fixedResource = model
        }
    }
}

public class ResourceQuota : Tea.TeaModel {
    public var limit: ResourceSpec?

    public var request: ResourceSpec?

    public var used: ResourceSpec?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.limit?.validate()
        try self.request?.validate()
        try self.used?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.limit != nil {
            map["limit"] = self.limit?.toMap()
        }
        if self.request != nil {
            map["request"] = self.request?.toMap()
        }
        if self.used != nil {
            map["used"] = self.used?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["limit"] as? [String: Any?] {
            var model = ResourceSpec()
            model.fromMap(value)
            self.limit = model
        }
        if let value = dict["request"] as? [String: Any?] {
            var model = ResourceSpec()
            model.fromMap(value)
            self.request = model
        }
        if let value = dict["used"] as? [String: Any?] {
            var model = ResourceSpec()
            model.fromMap(value)
            self.used = model
        }
    }
}

public class ResourceSpec : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["memory"] as? String {
            self.memory = value
        }
    }
}

public class Row : Tea.TeaModel {
    public var cells: [Cell]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cells != nil {
            var tmp : [Any] = []
            for k in self.cells! {
                tmp.append(k.toMap())
            }
            map["cells"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cells"] as? [Any?] {
            var tmp : [Cell] = []
            for v in value {
                if v != nil {
                    var model = Cell()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cells = tmp
        }
    }
}

public class RowUpdate : Tea.TeaModel {
    public var row: Row?

    public var rowKind: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.row?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.row != nil {
            map["row"] = self.row?.toMap()
        }
        if self.rowKind != nil {
            map["rowKind"] = self.rowKind!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["row"] as? [String: Any?] {
            var model = Row()
            model.fromMap(value)
            self.row = model
        }
        if let value = dict["rowKind"] as? String {
            self.rowKind = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["jobId"] as? String {
            self.jobId = value
        }
        if let value = dict["modifiedAt"] as? Int64 {
            self.modifiedAt = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["nativeFormat"] as? Bool {
            self.nativeFormat = value
        }
        if let value = dict["savepointId"] as? String {
            self.savepointId = value
        }
        if let value = dict["savepointLocation"] as? String {
            self.savepointLocation = value
        }
        if let value = dict["savepointOrigin"] as? String {
            self.savepointOrigin = value
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = SavepointStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["stopWithDrainEnabled"] as? Bool {
            self.stopWithDrainEnabled = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["failedAt"] as? Int64 {
            self.failedAt = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["reason"] as? String {
            self.reason = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["failure"] as? [String: Any?] {
            var model = SavepointFailure()
            model.fromMap(value)
            self.failure = model
        }
        if let value = dict["state"] as? String {
            self.state = value
        }
    }
}

public class ScheduledPlan : Tea.TeaModel {
    public var createdAt: String?

    public var creator: String?

    public var creatorName: String?

    public var deploymentId: String?

    public var modifiedAt: String?

    public var modifier: String?

    public var modifierName: String?

    public var name: String?

    public var namespace: String?

    public var origin: String?

    public var periodicSchedulingPolicies: [PeriodicSchedulingPolicy]?

    public var scheduledPlanId: String?

    public var status: String?

    public var updatedByUser: Bool?

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
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.creatorName != nil {
            map["creatorName"] = self.creatorName!
        }
        if self.deploymentId != nil {
            map["deploymentId"] = self.deploymentId!
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
        if self.origin != nil {
            map["origin"] = self.origin!
        }
        if self.periodicSchedulingPolicies != nil {
            var tmp : [Any] = []
            for k in self.periodicSchedulingPolicies! {
                tmp.append(k.toMap())
            }
            map["periodicSchedulingPolicies"] = tmp
        }
        if self.scheduledPlanId != nil {
            map["scheduledPlanId"] = self.scheduledPlanId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.updatedByUser != nil {
            map["updatedByUser"] = self.updatedByUser!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["creator"] as? String {
            self.creator = value
        }
        if let value = dict["creatorName"] as? String {
            self.creatorName = value
        }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["modifiedAt"] as? String {
            self.modifiedAt = value
        }
        if let value = dict["modifier"] as? String {
            self.modifier = value
        }
        if let value = dict["modifierName"] as? String {
            self.modifierName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["origin"] as? String {
            self.origin = value
        }
        if let value = dict["periodicSchedulingPolicies"] as? [Any?] {
            var tmp : [PeriodicSchedulingPolicy] = []
            for v in value {
                if v != nil {
                    var model = PeriodicSchedulingPolicy()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.periodicSchedulingPolicies = tmp
        }
        if let value = dict["scheduledPlanId"] as? String {
            self.scheduledPlanId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["updatedByUser"] as? Bool {
            self.updatedByUser = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class ScheduledPlanAppliedInfo : Tea.TeaModel {
    public var deploymentId: String?

    public var expectedState: String?

    public var modifiedAt: String?

    public var modifier: String?

    public var modifierName: String?

    public var namespace: String?

    public var scheduledPlanId: String?

    public var scheduledPlanName: String?

    public var statusState: String?

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
        if self.deploymentId != nil {
            map["deploymentId"] = self.deploymentId!
        }
        if self.expectedState != nil {
            map["expectedState"] = self.expectedState!
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
        if self.scheduledPlanId != nil {
            map["scheduledPlanId"] = self.scheduledPlanId!
        }
        if self.scheduledPlanName != nil {
            map["scheduledPlanName"] = self.scheduledPlanName!
        }
        if self.statusState != nil {
            map["statusState"] = self.statusState!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["expectedState"] as? String {
            self.expectedState = value
        }
        if let value = dict["modifiedAt"] as? String {
            self.modifiedAt = value
        }
        if let value = dict["modifier"] as? String {
            self.modifier = value
        }
        if let value = dict["modifierName"] as? String {
            self.modifierName = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["scheduledPlanId"] as? String {
            self.scheduledPlanId = value
        }
        if let value = dict["scheduledPlanName"] as? String {
            self.scheduledPlanName = value
        }
        if let value = dict["statusState"] as? String {
            self.statusState = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class ScheduledPlanExecutedInfo : Tea.TeaModel {
    public var createdAt: String?

    public var creator: String?

    public var creatorName: String?

    public var deploymentId: String?

    public var jobResourceUpgradingId: String?

    public var modifiedAt: String?

    public var modifier: String?

    public var modifierName: String?

    public var name: String?

    public var namespace: String?

    public var origin: String?

    public var originJobId: String?

    public var status: ScheduledPlanExecutedStatus?

    public var workspace: String?

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
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.creatorName != nil {
            map["creatorName"] = self.creatorName!
        }
        if self.deploymentId != nil {
            map["deploymentId"] = self.deploymentId!
        }
        if self.jobResourceUpgradingId != nil {
            map["jobResourceUpgradingId"] = self.jobResourceUpgradingId!
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
        if self.origin != nil {
            map["origin"] = self.origin!
        }
        if self.originJobId != nil {
            map["originJobId"] = self.originJobId!
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["creator"] as? String {
            self.creator = value
        }
        if let value = dict["creatorName"] as? String {
            self.creatorName = value
        }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["jobResourceUpgradingId"] as? String {
            self.jobResourceUpgradingId = value
        }
        if let value = dict["modifiedAt"] as? String {
            self.modifiedAt = value
        }
        if let value = dict["modifier"] as? String {
            self.modifier = value
        }
        if let value = dict["modifierName"] as? String {
            self.modifierName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["origin"] as? String {
            self.origin = value
        }
        if let value = dict["originJobId"] as? String {
            self.originJobId = value
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = ScheduledPlanExecutedStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class ScheduledPlanExecutedStatus : Tea.TeaModel {
    public var restartType: String?

    public var statusState: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.restartType != nil {
            map["restartType"] = self.restartType!
        }
        if self.statusState != nil {
            map["statusState"] = self.statusState!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["restartType"] as? String {
            self.restartType = value
        }
        if let value = dict["statusState"] as? String {
            self.statusState = value
        }
    }
}

public class Schema : Tea.TeaModel {
    public var columns: [TableColumn]?

    public var primaryKey: PrimaryKey?

    public var watermarkSpecs: [WatermarkSpec]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.primaryKey?.validate()
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
            map["primaryKey"] = self.primaryKey?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["columns"] as? [Any?] {
            var tmp : [TableColumn] = []
            for v in value {
                if v != nil {
                    var model = TableColumn()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.columns = tmp
        }
        if let value = dict["primaryKey"] as? [String: Any?] {
            var model = PrimaryKey()
            model.fromMap(value)
            self.primaryKey = model
        }
        if let value = dict["watermarkSpecs"] as? [Any?] {
            var tmp : [WatermarkSpec] = []
            for v in value {
                if v != nil {
                    var model = WatermarkSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.watermarkSpecs = tmp
        }
    }
}

public class SessionCluster : Tea.TeaModel {
    public var basicResourceSetting: BasicResourceSetting?

    public var createdAt: Int64?

    public var creator: String?

    public var creatorName: String?

    public var deploymentTargetName: String?

    public var engineVersion: String?

    public var flinkConf: [String: Any]?

    public var labels: [String: Any]?

    public var logging: Logging?

    public var modifiedAt: Int64?

    public var modifier: String?

    public var modifierName: String?

    public var name: String?

    public var namespace: String?

    public var sessionClusterId: String?

    public var status: SessionClusterStatus?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.basicResourceSetting?.validate()
        try self.logging?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.basicResourceSetting != nil {
            map["basicResourceSetting"] = self.basicResourceSetting?.toMap()
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
        if self.deploymentTargetName != nil {
            map["deploymentTargetName"] = self.deploymentTargetName!
        }
        if self.engineVersion != nil {
            map["engineVersion"] = self.engineVersion!
        }
        if self.flinkConf != nil {
            map["flinkConf"] = self.flinkConf!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
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
        if self.sessionClusterId != nil {
            map["sessionClusterId"] = self.sessionClusterId!
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["basicResourceSetting"] as? [String: Any?] {
            var model = BasicResourceSetting()
            model.fromMap(value)
            self.basicResourceSetting = model
        }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["creator"] as? String {
            self.creator = value
        }
        if let value = dict["creatorName"] as? String {
            self.creatorName = value
        }
        if let value = dict["deploymentTargetName"] as? String {
            self.deploymentTargetName = value
        }
        if let value = dict["engineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["flinkConf"] as? [String: Any] {
            self.flinkConf = value
        }
        if let value = dict["labels"] as? [String: Any] {
            self.labels = value
        }
        if let value = dict["logging"] as? [String: Any?] {
            var model = Logging()
            model.fromMap(value)
            self.logging = model
        }
        if let value = dict["modifiedAt"] as? Int64 {
            self.modifiedAt = value
        }
        if let value = dict["modifier"] as? String {
            self.modifier = value
        }
        if let value = dict["modifierName"] as? String {
            self.modifierName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["sessionClusterId"] as? String {
            self.sessionClusterId = value
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = SessionClusterStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class SessionClusterFailureInfo : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["failedAt"] as? Int64 {
            self.failedAt = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["reason"] as? String {
            self.reason = value
        }
    }
}

public class SessionClusterRunningInfo : Tea.TeaModel {
    public var lastUpdateTime: Int64?

    public var referenceDeploymentIds: [String]?

    public var startedAt: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lastUpdateTime != nil {
            map["lastUpdateTime"] = self.lastUpdateTime!
        }
        if self.referenceDeploymentIds != nil {
            map["referenceDeploymentIds"] = self.referenceDeploymentIds!
        }
        if self.startedAt != nil {
            map["startedAt"] = self.startedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["lastUpdateTime"] as? Int64 {
            self.lastUpdateTime = value
        }
        if let value = dict["referenceDeploymentIds"] as? [String] {
            self.referenceDeploymentIds = value
        }
        if let value = dict["startedAt"] as? Int64 {
            self.startedAt = value
        }
    }
}

public class SessionClusterStatus : Tea.TeaModel {
    public var currentSessionClusterStatus: String?

    public var failure: SessionClusterFailureInfo?

    public var running: SessionClusterRunningInfo?

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
        if self.currentSessionClusterStatus != nil {
            map["currentSessionClusterStatus"] = self.currentSessionClusterStatus!
        }
        if self.failure != nil {
            map["failure"] = self.failure?.toMap()
        }
        if self.running != nil {
            map["running"] = self.running?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["currentSessionClusterStatus"] as? String {
            self.currentSessionClusterStatus = value
        }
        if let value = dict["failure"] as? [String: Any?] {
            var model = SessionClusterFailureInfo()
            model.fromMap(value)
            self.failure = model
        }
        if let value = dict["running"] as? [String: Any?] {
            var model = SessionClusterRunningInfo()
            model.fromMap(value)
            self.running = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["additionalDependencies"] as? [String] {
            self.additionalDependencies = value
        }
        if let value = dict["sqlScript"] as? String {
            self.sqlScript = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorDetails"] as? [String: Any?] {
            var model = ErrorDetails()
            model.fromMap(value)
            self.errorDetails = model
        }
        if let value = dict["executeSuccess"] as? Bool {
            self.executeSuccess = value
        }
        if let value = dict["statement"] as? String {
            self.statement = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorDetails"] as? [String: Any?] {
            var model = ErrorDetails()
            model.fromMap(value)
            self.errorDetails = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["validationResult"] as? String {
            self.validationResult = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["additionalDependencies"] as? [String] {
            self.additionalDependencies = value
        }
        if let value = dict["batchMode"] as? Bool {
            self.batchMode = value
        }
        if let value = dict["flinkConfiguration"] as? [String: Any] {
            self.flinkConfiguration = value
        }
        if let value = dict["statement"] as? String {
            self.statement = value
        }
        if let value = dict["versionName"] as? String {
            self.versionName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["resourceSettingSpec"] as? [String: Any?] {
            var model = BriefResourceSetting()
            model.fromMap(value)
            self.resourceSettingSpec = model
        }
        if let value = dict["restoreStrategy"] as? [String: Any?] {
            var model = DeploymentRestoreStrategy()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["stopStrategy"] as? String {
            self.stopStrategy = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["basicResourceSetting"] as? [String: Any?] {
            var model = BasicResourceSetting()
            model.fromMap(value)
            self.basicResourceSetting = model
        }
        if let value = dict["expertResourceSetting"] as? [String: Any?] {
            var model = ExpertResourceSetting()
            model.fromMap(value)
            self.expertResourceSetting = model
        }
        if let value = dict["resourceSettingMode"] as? String {
            self.resourceSettingMode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["parentId"] as? String {
            self.parentId = value
        }
    }
}

public class SubmitPreview : Tea.TeaModel {
    public var queryName: String?

    public var sessionId: String?

    public var tableSchemas: [TableSchema]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryName != nil {
            map["queryName"] = self.queryName!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.tableSchemas != nil {
            var tmp : [Any] = []
            for k in self.tableSchemas! {
                tmp.append(k.toMap())
            }
            map["tableSchemas"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["queryName"] as? String {
            self.queryName = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["tableSchemas"] as? [Any?] {
            var tmp : [TableSchema] = []
            for v in value {
                if v != nil {
                    var model = TableSchema()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tableSchemas = tmp
        }
    }
}

public class SubmitPreviewResult : Tea.TeaModel {
    public var queryId: String?

    public var sessionId: String?

    public var tableSchemas: [TableSchema]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryId != nil {
            map["queryId"] = self.queryId!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.tableSchemas != nil {
            var tmp : [Any] = []
            for k in self.tableSchemas! {
                tmp.append(k.toMap())
            }
            map["tableSchemas"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["queryId"] as? String {
            self.queryId = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["tableSchemas"] as? [Any?] {
            var tmp : [TableSchema] = []
            for v in value {
                if v != nil {
                    var model = TableSchema()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tableSchemas = tmp
        }
    }
}

public class Table : Tea.TeaModel {
    public var comment: String?

    public var metadata: [String: String]?

    public var name: String?

    public var partitionKeys: [String]?

    public var properties: [String: Any]?

    public var schema: Schema?

    public var tableType: String?

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
        if self.metadata != nil {
            map["metadata"] = self.metadata!
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
        if self.tableType != nil {
            map["tableType"] = self.tableType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["comment"] as? String {
            self.comment = value
        }
        if let value = dict["metadata"] as? [String: String] {
            self.metadata = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["partitionKeys"] as? [String] {
            self.partitionKeys = value
        }
        if let value = dict["properties"] as? [String: Any] {
            self.properties = value
        }
        if let value = dict["schema"] as? [String: Any?] {
            var model = Schema()
            model.fromMap(value)
            self.schema = model
        }
        if let value = dict["tableType"] as? String {
            self.tableType = value
        }
    }
}

public class TableColumn : Tea.TeaModel {
    public var expression: String?

    public var logicalType: String?

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
        if self.logicalType != nil {
            map["logicalType"] = self.logicalType!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["expression"] as? String {
            self.expression = value
        }
        if let value = dict["logicalType"] as? String {
            self.logicalType = value
        }
        if let value = dict["metadataInfo"] as? [String: Any?] {
            var model = MetadataInfo()
            model.fromMap(value)
            self.metadataInfo = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nullable"] as? Bool {
            self.nullable = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["catalogName"] as? String {
            self.catalogName = value
        }
        if let value = dict["databaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["tableName"] as? String {
            self.tableName = value
        }
    }
}

public class TableResult : Tea.TeaModel {
    public var rowUpdates: [RowUpdate]?

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
        if self.rowUpdates != nil {
            var tmp : [Any] = []
            for k in self.rowUpdates! {
                tmp.append(k.toMap())
            }
            map["rowUpdates"] = tmp
        }
        if self.tableName != nil {
            map["tableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["rowUpdates"] as? [Any?] {
            var tmp : [RowUpdate] = []
            for v in value {
                if v != nil {
                    var model = RowUpdate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rowUpdates = tmp
        }
        if let value = dict["tableName"] as? String {
            self.tableName = value
        }
    }
}

public class TableSchema : Tea.TeaModel {
    public var schema: Schema?

    public var tableName: String?

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
        if self.schema != nil {
            map["schema"] = self.schema?.toMap()
        }
        if self.tableName != nil {
            map["tableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["schema"] as? [String: Any?] {
            var model = Schema()
            model.fromMap(value)
            self.schema = model
        }
        if let value = dict["tableName"] as? String {
            self.tableName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["artifactType"] as? String {
            self.artifactType = value
        }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["creator"] as? String {
            self.creator = value
        }
        if let value = dict["dependencyJarUris"] as? [String] {
            self.dependencyJarUris = value
        }
        if let value = dict["jarUrl"] as? String {
            self.jarUrl = value
        }
        if let value = dict["modifiedAt"] as? Int64 {
            self.modifiedAt = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["udfClasses"] as? [Any?] {
            var tmp : [UdfClass] = []
            for v in value {
                if v != nil {
                    var model = UdfClass()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["className"] as? String {
            self.className = value
        }
        if let value = dict["classType"] as? String {
            self.classType = value
        }
        if let value = dict["functionNames"] as? [String] {
            self.functionNames = value
        }
        if let value = dict["udfArtifactName"] as? String {
            self.udfArtifactName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["className"] as? String {
            self.className = value
        }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["udfArtifactName"] as? String {
            self.udfArtifactName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["newFlinkConf"] as? [String: Any] {
            self.newFlinkConf = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["collidingClasses"] as? [Any?] {
            var tmp : [UdfClass] = []
            for v in value {
                if v != nil {
                    var model = UdfClass()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.collidingClasses = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["missingClasses"] as? [Any?] {
            var tmp : [UdfClass] = []
            for v in value {
                if v != nil {
                    var model = UdfClass()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.missingClasses = tmp
        }
        if let value = dict["udfArtifact"] as? [String: Any?] {
            var model = UdfArtifact()
            model.fromMap(value)
            self.udfArtifact = model
        }
        if let value = dict["updateSuccess"] as? Bool {
            self.updateSuccess = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorDetails"] as? [String: Any?] {
            var model = ValidationErrorDetails()
            model.fromMap(value)
            self.errorDetails = model
        }
        if let value = dict["validationResult"] as? String {
            self.validationResult = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["columnNumber"] as? String {
            self.columnNumber = value
        }
        if let value = dict["endColumnNumber"] as? String {
            self.endColumnNumber = value
        }
        if let value = dict["endLineNumber"] as? String {
            self.endLineNumber = value
        }
        if let value = dict["lineNumber"] as? String {
            self.lineNumber = value
        }
        if let value = dict["message"] as? String {
            self.message = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["value"] as? String {
            self.value = value
        }
    }
}

public class WatermarkSpec : Tea.TeaModel {
    public var column: String?

    public var watermarkExpression: String?

    public var watermarkType: String?

    public override init() {
        super.init()
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
        if self.watermarkType != nil {
            map["watermarkType"] = self.watermarkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["column"] as? String {
            self.column = value
        }
        if let value = dict["watermarkExpression"] as? String {
            self.watermarkExpression = value
        }
        if let value = dict["watermarkType"] as? String {
            self.watermarkType = value
        }
    }
}

public class ApplyScheduledPlanHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class ApplyScheduledPlanResponseBody : Tea.TeaModel {
    public var data: ScheduledPlanAppliedInfo?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = ScheduledPlanAppliedInfo()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ApplyScheduledPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyScheduledPlanResponseBody?

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
            var model = ApplyScheduledPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelSqlPreviewHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class CancelSqlPreviewRequest : Tea.TeaModel {
    public var queryId: String?

    public var sessionClusterName: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryId != nil {
            map["queryId"] = self.queryId!
        }
        if self.sessionClusterName != nil {
            map["sessionClusterName"] = self.sessionClusterName!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["queryId"] as? String {
            self.queryId = value
        }
        if let value = dict["sessionClusterName"] as? String {
            self.sessionClusterName = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class CancelSqlPreviewResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CancelSqlPreviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelSqlPreviewResponseBody?

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
            var model = CancelSqlPreviewResponseBody()
            model.fromMap(value)
            self.body = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Deployment()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = Deployment()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDeploymentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDeploymentDraftHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class CreateDeploymentDraftRequest : Tea.TeaModel {
    public var body: DeploymentDraft?

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
            var model = DeploymentDraft()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDeploymentDraftResponseBody : Tea.TeaModel {
    public var data: DeploymentDraft?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = DeploymentDraft()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateDeploymentDraftResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeploymentDraftResponseBody?

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
            var model = CreateDeploymentDraftResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDeploymentTargetHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class CreateDeploymentTargetRequest : Tea.TeaModel {
    public var body: ResourceSpec?

    public var deploymentTargetName: String?

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
        if self.deploymentTargetName != nil {
            map["deploymentTargetName"] = self.deploymentTargetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResourceSpec()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["deploymentTargetName"] as? String {
            self.deploymentTargetName = value
        }
    }
}

public class CreateDeploymentTargetResponseBody : Tea.TeaModel {
    public var data: DeploymentTarget?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = DeploymentTarget()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateDeploymentTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeploymentTargetResponseBody?

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
            var model = CreateDeploymentTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDeploymentTargetV2Headers : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class CreateDeploymentTargetV2Request : Tea.TeaModel {
    public var body: Resource?

    public var deploymentTargetName: String?

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
        if self.deploymentTargetName != nil {
            map["deploymentTargetName"] = self.deploymentTargetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Resource()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["deploymentTargetName"] as? String {
            self.deploymentTargetName = value
        }
    }
}

public class CreateDeploymentTargetV2ResponseBody : Tea.TeaModel {
    public var data: DeploymentTarget?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = DeploymentTarget()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateDeploymentTargetV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeploymentTargetV2ResponseBody?

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
            var model = CreateDeploymentTargetV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFolderHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class CreateFolderRequest : Tea.TeaModel {
    public var body: Folder?

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
            var model = Folder()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFolderResponseBody : Tea.TeaModel {
    public var data: Folder?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = Folder()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateFolderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFolderResponseBody?

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
            var model = CreateFolderResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Member()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = Member()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateMemberResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["nativeFormat"] as? Bool {
            self.nativeFormat = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = Savepoint()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSavepointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateScheduledPlanHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class CreateScheduledPlanRequest : Tea.TeaModel {
    public var body: ScheduledPlan?

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
            var model = ScheduledPlan()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateScheduledPlanResponseBody : Tea.TeaModel {
    public var data: ScheduledPlan?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = ScheduledPlan()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateScheduledPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScheduledPlanResponseBody?

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
            var model = CreateScheduledPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSessionClusterHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class CreateSessionClusterRequest : Tea.TeaModel {
    public var body: SessionCluster?

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
            var model = SessionCluster()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSessionClusterResponseBody : Tea.TeaModel {
    public var data: SessionCluster?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = SessionCluster()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateSessionClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSessionClusterResponseBody?

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
            var model = CreateSessionClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUdfArtifactHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class CreateUdfArtifactRequest : Tea.TeaModel {
    public var body: UdfArtifact?

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
            var model = UdfArtifact()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUdfArtifactResponseBody : Tea.TeaModel {
    public var data: CreateUdfArtifactResult?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateUdfArtifactResult()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateUdfArtifactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUdfArtifactResponseBody?

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
            var model = CreateUdfArtifactResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Variable()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = Variable()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateVariableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCustomConnectorHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class DeleteCustomConnectorResponseBody : Tea.TeaModel {
    public var data: [TableMeta]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [TableMeta] = []
            for v in value {
                if v != nil {
                    var model = TableMeta()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteCustomConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomConnectorResponseBody?

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
            var model = DeleteCustomConnectorResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDeploymentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDeploymentDraftHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class DeleteDeploymentDraftResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteDeploymentDraftResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDeploymentDraftResponseBody?

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
            var model = DeleteDeploymentDraftResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDeploymentTargetHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class DeleteDeploymentTargetResponseBody : Tea.TeaModel {
    public var data: DeploymentTarget?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = DeploymentTarget()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteDeploymentTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDeploymentTargetResponseBody?

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
            var model = DeleteDeploymentTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFolderHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class DeleteFolderResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteFolderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFolderResponseBody?

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
            var model = DeleteFolderResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteMemberResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSavepointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteScheduledPlanHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class DeleteScheduledPlanResponseBody : Tea.TeaModel {
    public var data: ScheduledPlan?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = ScheduledPlan()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteScheduledPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScheduledPlanResponseBody?

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
            var model = DeleteScheduledPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSessionClusterHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class DeleteSessionClusterResponseBody : Tea.TeaModel {
    public var data: SessionCluster?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = SessionCluster()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteSessionClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSessionClusterResponseBody?

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
            var model = DeleteSessionClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUdfArtifactHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class DeleteUdfArtifactResponseBody : Tea.TeaModel {
    public var data: DeleteUdfArtifactResult?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = DeleteUdfArtifactResult()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteUdfArtifactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUdfArtifactResponseBody?

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
            var model = DeleteUdfArtifactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUdfFunctionHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class DeleteUdfFunctionRequest : Tea.TeaModel {
    public var className: String?

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
        if self.udfArtifactName != nil {
            map["udfArtifactName"] = self.udfArtifactName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["className"] as? String {
            self.className = value
        }
        if let value = dict["udfArtifactName"] as? String {
            self.udfArtifactName = value
        }
    }
}

public class DeleteUdfFunctionResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteUdfFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUdfFunctionResponseBody?

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
            var model = DeleteUdfFunctionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteVariableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeployDeploymentDraftAsyncHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class DeployDeploymentDraftAsyncRequest : Tea.TeaModel {
    public var body: DraftDeployParams?

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
            var model = DraftDeployParams()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeployDeploymentDraftAsyncResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ticketId"] as? String {
                self.ticketId = value
            }
        }
    }
    public var data: DeployDeploymentDraftAsyncResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = DeployDeploymentDraftAsyncResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeployDeploymentDraftAsyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployDeploymentDraftAsyncResponseBody?

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
            var model = DeployDeploymentDraftAsyncResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteSqlStatementHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class ExecuteSqlStatementRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = SqlStatementWithContext()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteSqlStatementResponseBody : Tea.TeaModel {
    public var data: SqlStatementExecuteResult?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = SqlStatementExecuteResult()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecuteSqlStatementResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteSqlStatementResponseBody?

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
            var model = ExecuteSqlStatementResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FetchSqlPreviewResultsHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class FetchSqlPreviewResultsRequest : Tea.TeaModel {
    public var queryId: String?

    public var sessionClusterName: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryId != nil {
            map["queryId"] = self.queryId!
        }
        if self.sessionClusterName != nil {
            map["sessionClusterName"] = self.sessionClusterName!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["queryId"] as? String {
            self.queryId = value
        }
        if let value = dict["sessionClusterName"] as? String {
            self.sessionClusterName = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class FetchSqlPreviewResultsResponseBody : Tea.TeaModel {
    public var data: FetchResult?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = FetchResult()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class FetchSqlPreviewResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FetchSqlPreviewResultsResponseBody?

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
            var model = FetchSqlPreviewResultsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["flinkApiPath"] as? String {
            self.flinkApiPath = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = FlinkApiProxyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ticketId"] as? String {
                self.ticketId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GenerateResourcePlanWithFlinkConfAsyncResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenerateResourcePlanWithFlinkConfAsyncResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAppliedScheduledPlanHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetAppliedScheduledPlanRequest : Tea.TeaModel {
    public var deploymentId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
    }
}

public class GetAppliedScheduledPlanResponseBody : Tea.TeaModel {
    public var data: ScheduledPlanAppliedInfo?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = ScheduledPlanAppliedInfo()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetAppliedScheduledPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppliedScheduledPlanResponseBody?

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
            var model = GetAppliedScheduledPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCatalogsHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetCatalogsRequest : Tea.TeaModel {
    public var catalogName: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["catalogName"] as? String {
            self.catalogName = value
        }
    }
}

public class GetCatalogsResponseBody : Tea.TeaModel {
    public var data: [Catalog]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [Catalog] = []
            for v in value {
                if v != nil {
                    var model = Catalog()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetCatalogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCatalogsResponseBody?

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
            var model = GetCatalogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDatabasesHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetDatabasesRequest : Tea.TeaModel {
    public var databaseName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseName != nil {
            map["databaseName"] = self.databaseName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["databaseName"] as? String {
            self.databaseName = value
        }
    }
}

public class GetDatabasesResponseBody : Tea.TeaModel {
    public var data: [Database]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [Database] = []
            for v in value {
                if v != nil {
                    var model = Database()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDatabasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatabasesResponseBody?

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
            var model = GetDatabasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDeployDeploymentDraftResultHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetDeployDeploymentDraftResultResponseBody : Tea.TeaModel {
    public var data: AsyncDraftDeployResult?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = AsyncDraftDeployResult()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDeployDeploymentDraftResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeployDeploymentDraftResultResponseBody?

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
            var model = GetDeployDeploymentDraftResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = Deployment()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDeploymentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDeploymentDraftHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetDeploymentDraftResponseBody : Tea.TeaModel {
    public var data: DeploymentDraft?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = DeploymentDraft()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDeploymentDraftResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeploymentDraftResponseBody?

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
            var model = GetDeploymentDraftResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDeploymentDraftLockHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetDeploymentDraftLockRequest : Tea.TeaModel {
    public var deploymentDraftId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deploymentDraftId != nil {
            map["deploymentDraftId"] = self.deploymentDraftId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deploymentDraftId"] as? String {
            self.deploymentDraftId = value
        }
    }
}

public class GetDeploymentDraftLockResponseBody : Tea.TeaModel {
    public var data: Lock?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = Lock()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDeploymentDraftLockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeploymentDraftLockResponseBody?

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
            var model = GetDeploymentDraftLockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEventsHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetEventsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class GetEventsResponseBody : Tea.TeaModel {
    public var data: [Event]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [Event] = []
            for v in value {
                if v != nil {
                    var model = Event()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
        }
    }
}

public class GetEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEventsResponseBody?

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
            var model = GetEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFolderHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetFolderRequest : Tea.TeaModel {
    public var folderId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
    }
}

public class GetFolderResponseBody : Tea.TeaModel {
    public var data: Folder?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = Folder()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetFolderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFolderResponseBody?

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
            var model = GetFolderResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = AsyncResourcePlanOperationResult()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetGenerateResourcePlanResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetHotUpdateJobResultHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetHotUpdateJobResultResponseBody : Tea.TeaModel {
    public var data: HotUpdateJobResult?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = HotUpdateJobResult()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetHotUpdateJobResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHotUpdateJobResultResponseBody?

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
            var model = GetHotUpdateJobResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetJobResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = Job()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

public class GetJobDiagnosisHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetJobDiagnosisResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: JobDiagnosis?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = JobDiagnosis()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetJobDiagnosisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobDiagnosisResponseBody?

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
            var model = GetJobDiagnosisResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetLatestJobStartLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLineageInfoHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetLineageInfoRequest : Tea.TeaModel {
    public var body: GetLineageInfoParams?

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
            var model = GetLineageInfoParams()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLineageInfoResponseBody : Tea.TeaModel {
    public var data: LineageInfo?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = LineageInfo()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetLineageInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLineageInfoResponseBody?

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
            var model = GetLineageInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = Member()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMemberResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = Savepoint()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSavepointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSessionClusterHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetSessionClusterResponseBody : Tea.TeaModel {
    public var data: SessionCluster?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = SessionCluster()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSessionClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSessionClusterResponseBody?

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
            var model = GetSessionClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTablesHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetTablesRequest : Tea.TeaModel {
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
        if self.tableName != nil {
            map["tableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tableName"] as? String {
            self.tableName = value
        }
    }
}

public class GetTablesResponseBody : Tea.TeaModel {
    public var data: [Table]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [Table] = []
            for v in value {
                if v != nil {
                    var model = Table()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTablesResponseBody?

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
            var model = GetTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUdfArtifactsHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetUdfArtifactsRequest : Tea.TeaModel {
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
        if self.udfArtifactName != nil {
            map["udfArtifactName"] = self.udfArtifactName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["udfArtifactName"] as? String {
            self.udfArtifactName = value
        }
    }
}

public class GetUdfArtifactsResponseBody : Tea.TeaModel {
    public var data: [UdfArtifact]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [UdfArtifact] = []
            for v in value {
                if v != nil {
                    var model = UdfArtifact()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetUdfArtifactsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUdfArtifactsResponseBody?

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
            var model = GetUdfArtifactsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class HotUpdateJobHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class HotUpdateJobResponseBody : Tea.TeaModel {
    public var data: HotUpdateJobResult?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = HotUpdateJobResult()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class HotUpdateJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HotUpdateJobResponseBody?

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
            var model = HotUpdateJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCustomConnectorsHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class ListCustomConnectorsResponseBody : Tea.TeaModel {
    public var data: [Connector]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [Connector] = []
            for v in value {
                if v != nil {
                    var model = Connector()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListCustomConnectorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomConnectorsResponseBody?

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
            var model = ListCustomConnectorsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDeploymentDraftsHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class ListDeploymentDraftsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListDeploymentDraftsResponseBody : Tea.TeaModel {
    public var data: [DeploymentDraft]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [DeploymentDraft] = []
            for v in value {
                if v != nil {
                    var model = DeploymentDraft()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
        }
    }
}

public class ListDeploymentDraftsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeploymentDraftsResponseBody?

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
            var model = ListDeploymentDraftsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [DeploymentTarget] = []
            for v in value {
                if v != nil {
                    var model = DeploymentTarget()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDeploymentTargetsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public var sortName: String?

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
        if self.sortName != nil {
            map["sortName"] = self.sortName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["creator"] as? String {
            self.creator = value
        }
        if let value = dict["executionMode"] as? String {
            self.executionMode = value
        }
        if let value = dict["labelKey"] as? String {
            self.labelKey = value
        }
        if let value = dict["labelValueArray"] as? String {
            self.labelValueArray = value
        }
        if let value = dict["modifier"] as? String {
            self.modifier = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["sortName"] as? String {
            self.sortName = value
        }
        if let value = dict["status"] as? String {
            self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [Deployment] = []
            for v in value {
                if v != nil {
                    var model = Deployment()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDeploymentsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["pageIndex"] as? String {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["editableNamespaces"] as? [Any?] {
                var tmp : [EditableNamespace] = []
                for v in value {
                    if v != nil {
                        var model = EditableNamespace()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.editableNamespaces = tmp
            }
            if let value = dict["pageIndex"] as? String {
                self.pageIndex = value
            }
            if let value = dict["pageSize"] as? String {
                self.pageSize = value
            }
            if let value = dict["total"] as? String {
                self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListEditableNamespaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["reason"] as? String {
            self.reason = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEditableNamespaceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = EngineVersionMetadataIndex()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEngineVersionMetadataResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["sortName"] as? String {
            self.sortName = value
        }
    }
}

public class ListJobsResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [Job] = []
            for v in value {
                if v != nil {
                    var model = Job()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
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
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMembersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["jobId"] as? String {
            self.jobId = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [Savepoint] = []
            for v in value {
                if v != nil {
                    var model = Savepoint()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSavepointsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListScheduledPlanHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class ListScheduledPlanRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListScheduledPlanResponseBody : Tea.TeaModel {
    public var data: [ScheduledPlan]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ScheduledPlan] = []
            for v in value {
                if v != nil {
                    var model = ScheduledPlan()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
        }
    }
}

public class ListScheduledPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScheduledPlanResponseBody?

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
            var model = ListScheduledPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListScheduledPlanExecutedHistoryHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class ListScheduledPlanExecutedHistoryRequest : Tea.TeaModel {
    public var deploymentId: String?

    public var origin: String?

    public override init() {
        super.init()
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
        if self.origin != nil {
            map["origin"] = self.origin!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deploymentId"] as? String {
            self.deploymentId = value
        }
        if let value = dict["origin"] as? String {
            self.origin = value
        }
    }
}

public class ListScheduledPlanExecutedHistoryResponseBody : Tea.TeaModel {
    public var data: [ScheduledPlanExecutedInfo]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ScheduledPlanExecutedInfo] = []
            for v in value {
                if v != nil {
                    var model = ScheduledPlanExecutedInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
        }
    }
}

public class ListScheduledPlanExecutedHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScheduledPlanExecutedHistoryResponseBody?

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
            var model = ListScheduledPlanExecutedHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSessionClustersHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class ListSessionClustersResponseBody : Tea.TeaModel {
    public var data: [SessionCluster]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [SessionCluster] = []
            for v in value {
                if v != nil {
                    var model = SessionCluster()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListSessionClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSessionClustersResponseBody?

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
            var model = ListSessionClustersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [Variable] = []
            for v in value {
                if v != nil {
                    var model = Variable()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListVariablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RegisterCustomConnectorHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class RegisterCustomConnectorRequest : Tea.TeaModel {
    public var jarUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jarUrl != nil {
            map["jarUrl"] = self.jarUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jarUrl"] as? String {
            self.jarUrl = value
        }
    }
}

public class RegisterCustomConnectorResponseBody : Tea.TeaModel {
    public var data: [Connector]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [Connector] = []
            for v in value {
                if v != nil {
                    var model = Connector()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class RegisterCustomConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterCustomConnectorResponseBody?

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
            var model = RegisterCustomConnectorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RegisterUdfFunctionHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class RegisterUdfFunctionRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["className"] as? String {
            self.className = value
        }
        if let value = dict["functionName"] as? String {
            self.functionName = value
        }
        if let value = dict["udfArtifactName"] as? String {
            self.udfArtifactName = value
        }
    }
}

public class RegisterUdfFunctionResponseBody : Tea.TeaModel {
    public var data: UdfFunction?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = UdfFunction()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class RegisterUdfFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterUdfFunctionResponseBody?

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
            var model = RegisterUdfFunctionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartJobRequestBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartJobResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = Job()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartJobResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = JobStartParameters()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartJobWithParamsResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = Job()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartJobWithParamsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartSessionClusterHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class StartSessionClusterResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class StartSessionClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartSessionClusterResponseBody?

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
            var model = StartSessionClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopApplyScheduledPlanHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class StopApplyScheduledPlanResponseBody : Tea.TeaModel {
    public var data: ScheduledPlanAppliedInfo?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = ScheduledPlanAppliedInfo()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class StopApplyScheduledPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopApplyScheduledPlanResponseBody?

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
            var model = StopApplyScheduledPlanResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopJobRequestBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopJobResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = Job()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

public class StopSessionClusterHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class StopSessionClusterResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class StopSessionClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopSessionClusterResponseBody?

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
            var model = StopSessionClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitSqlPreviewHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class SubmitSqlPreviewRequest : Tea.TeaModel {
    public var body: SqlStatementWithContext?

    public var sessionClusterName: String?

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
        if self.sessionClusterName != nil {
            map["sessionClusterName"] = self.sessionClusterName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = SqlStatementWithContext()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["sessionClusterName"] as? String {
            self.sessionClusterName = value
        }
    }
}

public class SubmitSqlPreviewResponseBody : Tea.TeaModel {
    public var data: SubmitPreviewResult?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = SubmitPreviewResult()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitSqlPreviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitSqlPreviewResponseBody?

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
            var model = SubmitSqlPreviewResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Deployment()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = Deployment()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateDeploymentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDeploymentDraftHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class UpdateDeploymentDraftRequest : Tea.TeaModel {
    public var body: DeploymentDraft?

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
            var model = DeploymentDraft()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDeploymentDraftResponseBody : Tea.TeaModel {
    public var data: DeploymentDraft?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = DeploymentDraft()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateDeploymentDraftResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDeploymentDraftResponseBody?

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
            var model = UpdateDeploymentDraftResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDeploymentTargetHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class UpdateDeploymentTargetRequest : Tea.TeaModel {
    public var body: ResourceSpec?

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
            var model = ResourceSpec()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDeploymentTargetResponseBody : Tea.TeaModel {
    public var data: DeploymentTarget?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = DeploymentTarget()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateDeploymentTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDeploymentTargetResponseBody?

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
            var model = UpdateDeploymentTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDeploymentTargetV2Headers : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class UpdateDeploymentTargetV2Request : Tea.TeaModel {
    public var body: Resource?

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
            var model = Resource()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDeploymentTargetV2ResponseBody : Tea.TeaModel {
    public var data: DeploymentTarget?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = DeploymentTarget()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateDeploymentTargetV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDeploymentTargetV2ResponseBody?

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
            var model = UpdateDeploymentTargetV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFolderHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class UpdateFolderRequest : Tea.TeaModel {
    public var body: Folder?

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
            var model = Folder()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFolderResponseBody : Tea.TeaModel {
    public var data: Folder?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = Folder()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateFolderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFolderResponseBody?

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
            var model = UpdateFolderResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Member()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = Member()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateMemberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateScheduledPlanHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class UpdateScheduledPlanRequest : Tea.TeaModel {
    public var body: ScheduledPlan?

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
            var model = ScheduledPlan()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateScheduledPlanResponseBody : Tea.TeaModel {
    public var data: ScheduledPlan?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = ScheduledPlan()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateScheduledPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateScheduledPlanResponseBody?

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
            var model = UpdateScheduledPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSessionClusterHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class UpdateSessionClusterRequest : Tea.TeaModel {
    public var body: SessionCluster?

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
            var model = SessionCluster()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSessionClusterResponseBody : Tea.TeaModel {
    public var data: SessionCluster?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = SessionCluster()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateSessionClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSessionClusterResponseBody?

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
            var model = UpdateSessionClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUdfArtifactHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class UpdateUdfArtifactRequest : Tea.TeaModel {
    public var body: UdfArtifact?

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
            var model = UdfArtifact()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUdfArtifactResponseBody : Tea.TeaModel {
    public var data: UpdateUdfArtifactResult?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateUdfArtifactResult()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateUdfArtifactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUdfArtifactResponseBody?

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
            var model = UpdateUdfArtifactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVariableHeaders : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class UpdateVariableRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Variable()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVariableResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = Variable()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateVariableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVariableResponseBody?

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
            var model = UpdateVariableResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = SqlStatementWithContext()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = SqlStatementValidationResult()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ValidateSqlStatementResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
