import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Application : Tea.TeaModel {
    public class RepoSource : Tea.TeaModel {
        public var owner: String?

        public var provider: String?

        public var repo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.owner != nil {
                map["owner"] = self.owner!
            }
            if self.provider != nil {
                map["provider"] = self.provider!
            }
            if self.repo != nil {
                map["repo"] = self.repo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("owner") {
                self.owner = dict["owner"] as! String
            }
            if dict.keys.contains("provider") {
                self.provider = dict["provider"] as! String
            }
            if dict.keys.contains("repo") {
                self.repo = dict["repo"] as! String
            }
        }
    }
    public class Trigger : Tea.TeaModel {
        public var branch: String?

        public var commit: String?

        public var on: String?

        public override init() {
            super.init()
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
                map["branch"] = self.branch!
            }
            if self.commit != nil {
                map["commit"] = self.commit!
            }
            if self.on != nil {
                map["on"] = self.on!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("branch") {
                self.branch = dict["branch"] as! String
            }
            if dict.keys.contains("commit") {
                self.commit = dict["commit"] as! String
            }
            if dict.keys.contains("on") {
                self.on = dict["on"] as! String
            }
        }
    }
    public var autoDeploy: String?

    public var createdTime: String?

    public var description_: String?

    public var envVars: [String: Any]?

    public var lastRelease: [String: Any]?

    public var name: String?

    public var output: [String: Any]?

    public var parameters: [String: Any]?

    public var repoSource: Application.RepoSource?

    public var roleArn: String?

    public var template: String?

    public var trigger: Application.Trigger?

    public var updatedTime: String?

    public var workDir: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.repoSource?.validate()
        try self.trigger?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoDeploy != nil {
            map["autoDeploy"] = self.autoDeploy!
        }
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.envVars != nil {
            map["envVars"] = self.envVars!
        }
        if self.lastRelease != nil {
            map["lastRelease"] = self.lastRelease!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.output != nil {
            map["output"] = self.output!
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        if self.repoSource != nil {
            map["repoSource"] = self.repoSource?.toMap()
        }
        if self.roleArn != nil {
            map["roleArn"] = self.roleArn!
        }
        if self.template != nil {
            map["template"] = self.template!
        }
        if self.trigger != nil {
            map["trigger"] = self.trigger?.toMap()
        }
        if self.updatedTime != nil {
            map["updatedTime"] = self.updatedTime!
        }
        if self.workDir != nil {
            map["workDir"] = self.workDir!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoDeploy") {
            self.autoDeploy = dict["autoDeploy"] as! String
        }
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("envVars") {
            self.envVars = dict["envVars"] as! [String: Any]
        }
        if dict.keys.contains("lastRelease") {
            self.lastRelease = dict["lastRelease"] as! [String: Any]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("output") {
            self.output = dict["output"] as! [String: Any]
        }
        if dict.keys.contains("parameters") {
            self.parameters = dict["parameters"] as! [String: Any]
        }
        if dict.keys.contains("repoSource") {
            var model = Application.RepoSource()
            model.fromMap(dict["repoSource"] as! [String: Any])
            self.repoSource = model
        }
        if dict.keys.contains("roleArn") {
            self.roleArn = dict["roleArn"] as! String
        }
        if dict.keys.contains("template") {
            self.template = dict["template"] as! String
        }
        if dict.keys.contains("trigger") {
            var model = Application.Trigger()
            model.fromMap(dict["trigger"] as! [String: Any])
            self.trigger = model
        }
        if dict.keys.contains("updatedTime") {
            self.updatedTime = dict["updatedTime"] as! String
        }
        if dict.keys.contains("workDir") {
            self.workDir = dict["workDir"] as! String
        }
    }
}

public class Condition : Tea.TeaModel {
    public var expression: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expression != nil {
            map["expression"] = self.expression!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("expression") {
            self.expression = dict["expression"] as! String
        }
    }
}

public class Context : Tea.TeaModel {
    public var data: [String: Any]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! [String: Any]
        }
    }
}

public class ContextSchema : Tea.TeaModel {
    public var description_: String?

    public var hint: String?

    public var name: String?

    public var required_: Bool?

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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.hint != nil {
            map["hint"] = self.hint!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.required_ != nil {
            map["required"] = self.required_!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("hint") {
            self.hint = dict["hint"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("required") {
            self.required_ = dict["required"] as! Bool
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class Environment : Tea.TeaModel {
    public var createdTime: String?

    public var deletionTime: String?

    public var description_: String?

    public var generation: Int32?

    public var kind: String?

    public var name: String?

    public var spec: EnvironmentSpec?

    public var status: EnvironmentStatus?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.deletionTime != nil {
            map["deletionTime"] = self.deletionTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("deletionTime") {
            self.deletionTime = dict["deletionTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! Int32
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("spec") {
            var model = EnvironmentSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("status") {
            var model = EnvironmentStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
        }
    }
}

public class EnvironmentRevision : Tea.TeaModel {
    public var createdTime: String?

    public var environmentGeneration: Int32?

    public var environmentName: String?

    public var kind: String?

    public var spec: EnvironmentSpec?

    public var status: EnvironmentStatus?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.environmentGeneration != nil {
            map["environmentGeneration"] = self.environmentGeneration!
        }
        if self.environmentName != nil {
            map["environmentName"] = self.environmentName!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("environmentGeneration") {
            self.environmentGeneration = dict["environmentGeneration"] as! Int32
        }
        if dict.keys.contains("environmentName") {
            self.environmentName = dict["environmentName"] as! String
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("spec") {
            var model = EnvironmentSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("status") {
            var model = EnvironmentStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
        }
    }
}

public class EnvironmentSpec : Tea.TeaModel {
    public var region: String?

    public var roleArn: String?

    public var template: String?

    public var templateVariables: [String: Any]?

    public var templateVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.roleArn != nil {
            map["roleArn"] = self.roleArn!
        }
        if self.template != nil {
            map["template"] = self.template!
        }
        if self.templateVariables != nil {
            map["templateVariables"] = self.templateVariables!
        }
        if self.templateVersion != nil {
            map["templateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("roleArn") {
            self.roleArn = dict["roleArn"] as! String
        }
        if dict.keys.contains("template") {
            self.template = dict["template"] as! String
        }
        if dict.keys.contains("templateVariables") {
            self.templateVariables = dict["templateVariables"] as! [String: Any]
        }
        if dict.keys.contains("templateVersion") {
            self.templateVersion = dict["templateVersion"] as! Int32
        }
    }
}

public class EnvironmentStatus : Tea.TeaModel {
    public var message: String?

    public var observedGeneration: Int32?

    public var observedTime: String?

    public var output: [String: Any]?

    public var phase: String?

    public override init() {
        super.init()
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
        if self.observedGeneration != nil {
            map["observedGeneration"] = self.observedGeneration!
        }
        if self.observedTime != nil {
            map["observedTime"] = self.observedTime!
        }
        if self.output != nil {
            map["output"] = self.output!
        }
        if self.phase != nil {
            map["phase"] = self.phase!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("observedGeneration") {
            self.observedGeneration = dict["observedGeneration"] as! Int32
        }
        if dict.keys.contains("observedTime") {
            self.observedTime = dict["observedTime"] as! String
        }
        if dict.keys.contains("output") {
            self.output = dict["output"] as! [String: Any]
        }
        if dict.keys.contains("phase") {
            self.phase = dict["phase"] as! String
        }
    }
}

public class InputVariable : Tea.TeaModel {
    public var defaultJson: String?

    public var description_: String?

    public var name: String?

    public var nullable: Bool?

    public var sensitive: Bool?

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
        if self.defaultJson != nil {
            map["defaultJson"] = self.defaultJson!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nullable != nil {
            map["nullable"] = self.nullable!
        }
        if self.sensitive != nil {
            map["sensitive"] = self.sensitive!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("defaultJson") {
            self.defaultJson = dict["defaultJson"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nullable") {
            self.nullable = dict["nullable"] as! Bool
        }
        if dict.keys.contains("sensitive") {
            self.sensitive = dict["sensitive"] as! Bool
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class OutputValue : Tea.TeaModel {
    public var description_: String?

    public var name: String?

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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.sensitive != nil {
            map["sensitive"] = self.sensitive!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("sensitive") {
            self.sensitive = dict["sensitive"] as! Bool
        }
    }
}

public class Pipeline : Tea.TeaModel {
    public var createdTime: String?

    public var deletionTime: String?

    public var description_: String?

    public var generation: Int32?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var resourceVersion: Int32?

    public var spec: PipelineSpec?

    public var status: PipelineStatus?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.deletionTime != nil {
            map["deletionTime"] = self.deletionTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resourceVersion != nil {
            map["resourceVersion"] = self.resourceVersion!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("deletionTime") {
            self.deletionTime = dict["deletionTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! Int32
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("resourceVersion") {
            self.resourceVersion = dict["resourceVersion"] as! Int32
        }
        if dict.keys.contains("spec") {
            var model = PipelineSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("status") {
            var model = PipelineStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
        }
    }
}

public class PipelineSpec : Tea.TeaModel {
    public var context: Context?

    public var templateName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.context?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.context != nil {
            map["context"] = self.context?.toMap()
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("context") {
            var model = Context()
            model.fromMap(dict["context"] as! [String: Any])
            self.context = model
        }
        if dict.keys.contains("templateName") {
            self.templateName = dict["templateName"] as! String
        }
    }
}

public class PipelineStatus : Tea.TeaModel {
    public var phase: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.phase != nil {
            map["phase"] = self.phase!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("phase") {
            self.phase = dict["phase"] as! String
        }
    }
}

public class PipelineTemplate : Tea.TeaModel {
    public var createdTime: String?

    public var deletionTime: String?

    public var description_: String?

    public var generation: Int32?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var resourceVersion: Int32?

    public var spec: PipelineTemplateSpec?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.deletionTime != nil {
            map["deletionTime"] = self.deletionTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resourceVersion != nil {
            map["resourceVersion"] = self.resourceVersion!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("deletionTime") {
            self.deletionTime = dict["deletionTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! Int32
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("resourceVersion") {
            self.resourceVersion = dict["resourceVersion"] as! Int32
        }
        if dict.keys.contains("spec") {
            var model = PipelineTemplateSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
        }
    }
}

public class PipelineTemplateSpec : Tea.TeaModel {
    public var context: Context?

    public var contextSchema: [String: Any]?

    public var tasks: [TaskExec]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.context?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.context != nil {
            map["context"] = self.context?.toMap()
        }
        if self.contextSchema != nil {
            map["contextSchema"] = self.contextSchema!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("context") {
            var model = Context()
            model.fromMap(dict["context"] as! [String: Any])
            self.context = model
        }
        if dict.keys.contains("contextSchema") {
            self.contextSchema = dict["contextSchema"] as! [String: Any]
        }
        if dict.keys.contains("tasks") {
            self.tasks = dict["tasks"] as! [TaskExec]
        }
    }
}

public class Release : Tea.TeaModel {
    public class CodeVersion : Tea.TeaModel {
        public var branch: String?

        public var commit: String?

        public override init() {
            super.init()
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
                map["branch"] = self.branch!
            }
            if self.commit != nil {
                map["commit"] = self.commit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("branch") {
                self.branch = dict["branch"] as! String
            }
            if dict.keys.contains("commit") {
                self.commit = dict["commit"] as! String
            }
        }
    }
    public var appConfig: [String: Any]?

    public var codeVersion: Release.CodeVersion?

    public var createdTime: String?

    public var description_: String?

    public var output: [String: Any]?

    public var status: String?

    public var versionId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.codeVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appConfig != nil {
            map["appConfig"] = self.appConfig!
        }
        if self.codeVersion != nil {
            map["codeVersion"] = self.codeVersion?.toMap()
        }
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.output != nil {
            map["output"] = self.output!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.versionId != nil {
            map["versionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appConfig") {
            self.appConfig = dict["appConfig"] as! [String: Any]
        }
        if dict.keys.contains("codeVersion") {
            var model = Release.CodeVersion()
            model.fromMap(dict["codeVersion"] as! [String: Any])
            self.codeVersion = model
        }
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("output") {
            self.output = dict["output"] as! [String: Any]
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("versionId") {
            self.versionId = dict["versionId"] as! Int64
        }
    }
}

public class RepoSource : Tea.TeaModel {
    public var owner: String?

    public var provider: String?

    public var repo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.owner != nil {
            map["owner"] = self.owner!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.repo != nil {
            map["repo"] = self.repo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("owner") {
            self.owner = dict["owner"] as! String
        }
        if dict.keys.contains("provider") {
            self.provider = dict["provider"] as! String
        }
        if dict.keys.contains("repo") {
            self.repo = dict["repo"] as! String
        }
    }
}

public class RunAfter : Tea.TeaModel {
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
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class Service : Tea.TeaModel {
    public var createdTime: String?

    public var deletionTime: String?

    public var description_: String?

    public var generation: Int32?

    public var kind: String?

    public var name: String?

    public var spec: ServiceSpec?

    public var status: ServiceStatus?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.deletionTime != nil {
            map["deletionTime"] = self.deletionTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("deletionTime") {
            self.deletionTime = dict["deletionTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! Int32
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("spec") {
            var model = ServiceSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("status") {
            var model = ServiceStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
        }
    }
}

public class ServiceRevision : Tea.TeaModel {
    public var createdTime: String?

    public var kind: String?

    public var serviceGeneration: Int32?

    public var serviceName: String?

    public var spec: ServiceSpec?

    public var status: EnvironmentStatus?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.serviceGeneration != nil {
            map["serviceGeneration"] = self.serviceGeneration!
        }
        if self.serviceName != nil {
            map["serviceName"] = self.serviceName!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("serviceGeneration") {
            self.serviceGeneration = dict["serviceGeneration"] as! Int32
        }
        if dict.keys.contains("serviceName") {
            self.serviceName = dict["serviceName"] as! String
        }
        if dict.keys.contains("spec") {
            var model = ServiceSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("status") {
            var model = EnvironmentStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
        }
    }
}

public class ServiceSpec : Tea.TeaModel {
    public var environment: String?

    public var roleArn: String?

    public var template: String?

    public var templateVariables: [String: Any]?

    public var templateVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environment != nil {
            map["environment"] = self.environment!
        }
        if self.roleArn != nil {
            map["roleArn"] = self.roleArn!
        }
        if self.template != nil {
            map["template"] = self.template!
        }
        if self.templateVariables != nil {
            map["templateVariables"] = self.templateVariables!
        }
        if self.templateVersion != nil {
            map["templateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("environment") {
            self.environment = dict["environment"] as! String
        }
        if dict.keys.contains("roleArn") {
            self.roleArn = dict["roleArn"] as! String
        }
        if dict.keys.contains("template") {
            self.template = dict["template"] as! String
        }
        if dict.keys.contains("templateVariables") {
            self.templateVariables = dict["templateVariables"] as! [String: Any]
        }
        if dict.keys.contains("templateVersion") {
            self.templateVersion = dict["templateVersion"] as! Int32
        }
    }
}

public class ServiceStatus : Tea.TeaModel {
    public var message: String?

    public var observedGeneration: Int32?

    public var observedTime: String?

    public var output: [String: Any]?

    public var phase: String?

    public override init() {
        super.init()
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
        if self.observedGeneration != nil {
            map["observedGeneration"] = self.observedGeneration!
        }
        if self.observedTime != nil {
            map["observedTime"] = self.observedTime!
        }
        if self.output != nil {
            map["output"] = self.output!
        }
        if self.phase != nil {
            map["phase"] = self.phase!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("observedGeneration") {
            self.observedGeneration = dict["observedGeneration"] as! Int32
        }
        if dict.keys.contains("observedTime") {
            self.observedTime = dict["observedTime"] as! String
        }
        if dict.keys.contains("output") {
            self.output = dict["output"] as! [String: Any]
        }
        if dict.keys.contains("phase") {
            self.phase = dict["phase"] as! String
        }
    }
}

public class Status : Tea.TeaModel {
    public var code: String?

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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class StsCredentials : Tea.TeaModel {
    public var accessKeyId: String?

    public var expirationTime: String?

    public var kind: String?

    public var secretAccessKey: String?

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
        if self.accessKeyId != nil {
            map["accessKeyId"] = self.accessKeyId!
        }
        if self.expirationTime != nil {
            map["expirationTime"] = self.expirationTime!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.secretAccessKey != nil {
            map["secretAccessKey"] = self.secretAccessKey!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessKeyId") {
            self.accessKeyId = dict["accessKeyId"] as! String
        }
        if dict.keys.contains("expirationTime") {
            self.expirationTime = dict["expirationTime"] as! String
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("secretAccessKey") {
            self.secretAccessKey = dict["secretAccessKey"] as! String
        }
        if dict.keys.contains("token") {
            self.token = dict["token"] as! String
        }
    }
}

public class Task : Tea.TeaModel {
    public var createdTime: String?

    public var deletionTime: String?

    public var description_: String?

    public var generation: Int32?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var resourceVersion: Int32?

    public var spec: TaskSpec?

    public var status: TaskStatus?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.deletionTime != nil {
            map["deletionTime"] = self.deletionTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resourceVersion != nil {
            map["resourceVersion"] = self.resourceVersion!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("deletionTime") {
            self.deletionTime = dict["deletionTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! Int32
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("resourceVersion") {
            self.resourceVersion = dict["resourceVersion"] as! Int32
        }
        if dict.keys.contains("spec") {
            var model = TaskSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("status") {
            var model = TaskStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
        }
    }
}

public class TaskExec : Tea.TeaModel {
    public var context: Context?

    public var name: String?

    public var runAfters: [RunAfter]?

    public var taskTemplate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.context?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.context != nil {
            map["context"] = self.context?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.runAfters != nil {
            var tmp : [Any] = []
            for k in self.runAfters! {
                tmp.append(k.toMap())
            }
            map["runAfters"] = tmp
        }
        if self.taskTemplate != nil {
            map["taskTemplate"] = self.taskTemplate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("context") {
            var model = Context()
            model.fromMap(dict["context"] as! [String: Any])
            self.context = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("runAfters") {
            self.runAfters = dict["runAfters"] as! [RunAfter]
        }
        if dict.keys.contains("taskTemplate") {
            self.taskTemplate = dict["taskTemplate"] as! String
        }
    }
}

public class TaskSpec : Tea.TeaModel {
    public var context: Context?

    public var templateName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.context?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.context != nil {
            map["context"] = self.context?.toMap()
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("context") {
            var model = Context()
            model.fromMap(dict["context"] as! [String: Any])
            self.context = model
        }
        if dict.keys.contains("templateName") {
            self.templateName = dict["templateName"] as! String
        }
    }
}

public class TaskStatus : Tea.TeaModel {
    public var executionDetails: [String]?

    public var phase: String?

    public var statusGeneration: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionDetails != nil {
            map["executionDetails"] = self.executionDetails!
        }
        if self.phase != nil {
            map["phase"] = self.phase!
        }
        if self.statusGeneration != nil {
            map["statusGeneration"] = self.statusGeneration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("executionDetails") {
            self.executionDetails = dict["executionDetails"] as! [String]
        }
        if dict.keys.contains("phase") {
            self.phase = dict["phase"] as! String
        }
        if dict.keys.contains("statusGeneration") {
            self.statusGeneration = dict["statusGeneration"] as! Int64
        }
    }
}

public class TaskTemplate : Tea.TeaModel {
    public var createdTime: String?

    public var deletionTime: String?

    public var description_: String?

    public var generation: Int32?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var resourceVersion: Int32?

    public var spec: TaskTemplateSpec?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.deletionTime != nil {
            map["deletionTime"] = self.deletionTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resourceVersion != nil {
            map["resourceVersion"] = self.resourceVersion!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("deletionTime") {
            self.deletionTime = dict["deletionTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! Int32
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("resourceVersion") {
            self.resourceVersion = dict["resourceVersion"] as! Int32
        }
        if dict.keys.contains("spec") {
            var model = TaskTemplateSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
        }
    }
}

public class TaskTemplateSpec : Tea.TeaModel {
    public var context: Context?

    public var contextSchema: [String: Any]?

    public var description_: String?

    public var executeCondition: Condition?

    public var worker: TaskWorker?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.context?.validate()
        try self.executeCondition?.validate()
        try self.worker?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.context != nil {
            map["context"] = self.context?.toMap()
        }
        if self.contextSchema != nil {
            map["contextSchema"] = self.contextSchema!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executeCondition != nil {
            map["executeCondition"] = self.executeCondition?.toMap()
        }
        if self.worker != nil {
            map["worker"] = self.worker?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("context") {
            var model = Context()
            model.fromMap(dict["context"] as! [String: Any])
            self.context = model
        }
        if dict.keys.contains("contextSchema") {
            self.contextSchema = dict["contextSchema"] as! [String: Any]
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("executeCondition") {
            var model = Condition()
            model.fromMap(dict["executeCondition"] as! [String: Any])
            self.executeCondition = model
        }
        if dict.keys.contains("worker") {
            var model = TaskWorker()
            model.fromMap(dict["worker"] as! [String: Any])
            self.worker = model
        }
    }
}

public class TaskWorker : Tea.TeaModel {
    public var presetWorker: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.presetWorker != nil {
            map["presetWorker"] = self.presetWorker!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("presetWorker") {
            self.presetWorker = dict["presetWorker"] as! String
        }
    }
}

public class Template : Tea.TeaModel {
    public var createdTime: String?

    public var deletionTime: String?

    public var description_: String?

    public var generation: Int32?

    public var kind: String?

    public var name: String?

    public var spec: TemplateSpec?

    public var status: TemplateStatus?

    public var uid: String?

    public var version: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.deletionTime != nil {
            map["deletionTime"] = self.deletionTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("deletionTime") {
            self.deletionTime = dict["deletionTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! Int32
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("spec") {
            var model = TemplateSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("status") {
            var model = TemplateStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
        }
        if dict.keys.contains("version") {
            self.version = dict["version"] as! Int32
        }
    }
}

public class TemplateRevision : Tea.TeaModel {
    public var createdTime: String?

    public var kind: String?

    public var spec: TemplateSpec?

    public var status: TemplateStatus?

    public var templateGeneration: Int32?

    public var templateName: String?

    public var templateVersion: Int32?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.templateGeneration != nil {
            map["templateGeneration"] = self.templateGeneration!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["templateVersion"] = self.templateVersion!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("spec") {
            var model = TemplateSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("status") {
            var model = TemplateStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("templateGeneration") {
            self.templateGeneration = dict["templateGeneration"] as! Int32
        }
        if dict.keys.contains("templateName") {
            self.templateName = dict["templateName"] as! String
        }
        if dict.keys.contains("templateVersion") {
            self.templateVersion = dict["templateVersion"] as! Int32
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
        }
    }
}

public class TemplateSpec : Tea.TeaModel {
    public var content: String?

    public var contentType: String?

    public var ramPolicy: String?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.contentType != nil {
            map["contentType"] = self.contentType!
        }
        if self.ramPolicy != nil {
            map["ramPolicy"] = self.ramPolicy!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("contentType") {
            self.contentType = dict["contentType"] as! String
        }
        if dict.keys.contains("ramPolicy") {
            self.ramPolicy = dict["ramPolicy"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class TemplateStatus : Tea.TeaModel {
    public var message: String?

    public var observedGeneration: Int32?

    public var observedTime: String?

    public var outputs: [OutputValue]?

    public var phase: String?

    public var variables: [InputVariable]?

    public override init() {
        super.init()
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
        if self.observedGeneration != nil {
            map["observedGeneration"] = self.observedGeneration!
        }
        if self.observedTime != nil {
            map["observedTime"] = self.observedTime!
        }
        if self.outputs != nil {
            var tmp : [Any] = []
            for k in self.outputs! {
                tmp.append(k.toMap())
            }
            map["outputs"] = tmp
        }
        if self.phase != nil {
            map["phase"] = self.phase!
        }
        if self.variables != nil {
            var tmp : [Any] = []
            for k in self.variables! {
                tmp.append(k.toMap())
            }
            map["variables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("observedGeneration") {
            self.observedGeneration = dict["observedGeneration"] as! Int32
        }
        if dict.keys.contains("observedTime") {
            self.observedTime = dict["observedTime"] as! String
        }
        if dict.keys.contains("outputs") {
            self.outputs = dict["outputs"] as! [OutputValue]
        }
        if dict.keys.contains("phase") {
            self.phase = dict["phase"] as! String
        }
        if dict.keys.contains("variables") {
            self.variables = dict["variables"] as! [InputVariable]
        }
    }
}

public class TriggerConfig : Tea.TeaModel {
    public var branch: String?

    public var commit: String?

    public var on: String?

    public override init() {
        super.init()
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
            map["branch"] = self.branch!
        }
        if self.commit != nil {
            map["commit"] = self.commit!
        }
        if self.on != nil {
            map["on"] = self.on!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("branch") {
            self.branch = dict["branch"] as! String
        }
        if dict.keys.contains("commit") {
            self.commit = dict["commit"] as! String
        }
        if dict.keys.contains("on") {
            self.on = dict["on"] as! String
        }
    }
}

public class CreateApplicationRequest : Tea.TeaModel {
    public var autoDeploy: Bool?

    public var description_: String?

    public var envVars: [String: String]?

    public var name: String?

    public var parameters: [String: String]?

    public var repoSource: RepoSource?

    public var roleArn: String?

    public var template: String?

    public var trigger: TriggerConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.repoSource?.validate()
        try self.trigger?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoDeploy != nil {
            map["autoDeploy"] = self.autoDeploy!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.envVars != nil {
            map["envVars"] = self.envVars!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        if self.repoSource != nil {
            map["repoSource"] = self.repoSource?.toMap()
        }
        if self.roleArn != nil {
            map["roleArn"] = self.roleArn!
        }
        if self.template != nil {
            map["template"] = self.template!
        }
        if self.trigger != nil {
            map["trigger"] = self.trigger?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoDeploy") {
            self.autoDeploy = dict["autoDeploy"] as! Bool
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("envVars") {
            self.envVars = dict["envVars"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("parameters") {
            self.parameters = dict["parameters"] as! [String: String]
        }
        if dict.keys.contains("repoSource") {
            var model = RepoSource()
            model.fromMap(dict["repoSource"] as! [String: Any])
            self.repoSource = model
        }
        if dict.keys.contains("roleArn") {
            self.roleArn = dict["roleArn"] as! String
        }
        if dict.keys.contains("template") {
            self.template = dict["template"] as! String
        }
        if dict.keys.contains("trigger") {
            var model = TriggerConfig()
            model.fromMap(dict["trigger"] as! [String: Any])
            self.trigger = model
        }
    }
}

public class CreateApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Application?

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
            var model = Application()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePipelineRequest : Tea.TeaModel {
    public var body: Pipeline?

    public override init() {
        super.init()
    }

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
            var model = Pipeline()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Pipeline?

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
            var model = Pipeline()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePipelineTemplateRequest : Tea.TeaModel {
    public var body: PipelineTemplate?

    public override init() {
        super.init()
    }

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
            var model = PipelineTemplate()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePipelineTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PipelineTemplate?

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
            var model = PipelineTemplate()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateReleaseRequest : Tea.TeaModel {
    public var description_: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
    }
}

public class CreateReleaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Release?

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
            var model = Release()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTaskRequest : Tea.TeaModel {
    public var body: Task?

    public override init() {
        super.init()
    }

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
            var model = Task()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Task?

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
            var model = Task()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTaskTemplateRequest : Tea.TeaModel {
    public var body: TaskTemplate?

    public override init() {
        super.init()
    }

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
            var model = TaskTemplate()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTaskTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TaskTemplate?

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
            var model = TaskTemplate()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
            self.body = dict["body"] as! String
        }
    }
}

public class DeleteEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class DeletePipelineTemplateResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeletePipelineTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePipelineTemplateResponseBody?

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
            var model = DeletePipelineTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTaskTemplateResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteTaskTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTaskTemplateResponseBody?

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
            var model = DeleteTaskTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTemplateRequest : Tea.TeaModel {
    public var version: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("version") {
            self.version = dict["version"] as! Int32
        }
    }
}

public class DeleteTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Status?

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
            var model = Status()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Application?

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
            var model = Application()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Environment?

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
            var model = Environment()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Pipeline?

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
            var model = Pipeline()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPipelineTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PipelineTemplate?

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
            var model = PipelineTemplate()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetReleaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Release?

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
            var model = Release()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Service?

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
            var model = Service()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Task?

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
            var model = Task()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TaskTemplate?

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
            var model = TaskTemplate()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTemplateRequest : Tea.TeaModel {
    public var version: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("version") {
            self.version = dict["version"] as! Int32
        }
    }
}

public class GetTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Template?

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
            var model = Template()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEnvironmentRevisionsRequest : Tea.TeaModel {
    public var environmentName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environmentName != nil {
            map["environmentName"] = self.environmentName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("environmentName") {
            self.environmentName = dict["environmentName"] as! String
        }
    }
}

public class ListEnvironmentRevisionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [EnvironmentRevision]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            self.body = dict["body"] as! [EnvironmentRevision]
        }
    }
}

public class ListEnvironmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [Environment]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            self.body = dict["body"] as! [Environment]
        }
    }
}

public class ListPipelineTemplatesRequest : Tea.TeaModel {
    public var labelSelector: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelSelector != nil {
            map["labelSelector"] = self.labelSelector!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("labelSelector") {
            self.labelSelector = dict["labelSelector"] as! [String]
        }
    }
}

public class ListPipelineTemplatesShrinkRequest : Tea.TeaModel {
    public var labelSelectorShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelSelectorShrink != nil {
            map["labelSelector"] = self.labelSelectorShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("labelSelector") {
            self.labelSelectorShrink = dict["labelSelector"] as! String
        }
    }
}

public class ListPipelineTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [PipelineTemplate]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            self.body = dict["body"] as! [PipelineTemplate]
        }
    }
}

public class ListPipelinesRequest : Tea.TeaModel {
    public var labelSelector: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelSelector != nil {
            map["labelSelector"] = self.labelSelector!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("labelSelector") {
            self.labelSelector = dict["labelSelector"] as! [String]
        }
    }
}

public class ListPipelinesShrinkRequest : Tea.TeaModel {
    public var labelSelectorShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelSelectorShrink != nil {
            map["labelSelector"] = self.labelSelectorShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("labelSelector") {
            self.labelSelectorShrink = dict["labelSelector"] as! String
        }
    }
}

public class ListPipelinesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [Pipeline]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            self.body = dict["body"] as! [Pipeline]
        }
    }
}

public class ListServiceRevisionsRequest : Tea.TeaModel {
    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceName != nil {
            map["serviceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("serviceName") {
            self.serviceName = dict["serviceName"] as! String
        }
    }
}

public class ListServiceRevisionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [ServiceRevision]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            self.body = dict["body"] as! [ServiceRevision]
        }
    }
}

public class ListServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [Service]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            self.body = dict["body"] as! [Service]
        }
    }
}

public class ListTaskTemplatesRequest : Tea.TeaModel {
    public var labelSelector: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelSelector != nil {
            map["labelSelector"] = self.labelSelector!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("labelSelector") {
            self.labelSelector = dict["labelSelector"] as! [String]
        }
    }
}

public class ListTaskTemplatesShrinkRequest : Tea.TeaModel {
    public var labelSelectorShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelSelectorShrink != nil {
            map["labelSelector"] = self.labelSelectorShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("labelSelector") {
            self.labelSelectorShrink = dict["labelSelector"] as! String
        }
    }
}

public class ListTaskTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [TaskTemplate]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            self.body = dict["body"] as! [TaskTemplate]
        }
    }
}

public class ListTasksRequest : Tea.TeaModel {
    public var labelSelector: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelSelector != nil {
            map["labelSelector"] = self.labelSelector!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("labelSelector") {
            self.labelSelector = dict["labelSelector"] as! [String]
        }
    }
}

public class ListTasksShrinkRequest : Tea.TeaModel {
    public var labelSelectorShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelSelectorShrink != nil {
            map["labelSelector"] = self.labelSelectorShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("labelSelector") {
            self.labelSelectorShrink = dict["labelSelector"] as! String
        }
    }
}

public class ListTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [Task]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            self.body = dict["body"] as! [Task]
        }
    }
}

public class ListTemplateRevisionsRequest : Tea.TeaModel {
    public var templateName: String?

    public var templateVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["templateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("templateName") {
            self.templateName = dict["templateName"] as! String
        }
        if dict.keys.contains("templateVersion") {
            self.templateVersion = dict["templateVersion"] as! Int32
        }
    }
}

public class ListTemplateRevisionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [TemplateRevision]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            self.body = dict["body"] as! [TemplateRevision]
        }
    }
}

public class ListTemplatesRequest : Tea.TeaModel {
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
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [Template]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            self.body = dict["body"] as! [Template]
        }
    }
}

public class PutEnvironmentRequest : Tea.TeaModel {
    public var body: Environment?

    public override init() {
        super.init()
    }

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
            var model = Environment()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Environment?

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
            var model = Environment()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutServiceRequest : Tea.TeaModel {
    public var body: Service?

    public override init() {
        super.init()
    }

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
            var model = Service()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Service?

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
            var model = Service()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutTemplateRequest : Tea.TeaModel {
    public var body: Template?

    public var version: Int32?

    public override init() {
        super.init()
    }

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
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = Template()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("version") {
            self.version = dict["version"] as! Int32
        }
    }
}

public class PutTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Template?

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
            var model = Template()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResumeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Task?

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
            var model = Task()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartPipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Pipeline?

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
            var model = Pipeline()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Task?

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
            var model = Task()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApplicationRequest : Tea.TeaModel {
    public var body: Application?

    public override init() {
        super.init()
    }

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
            var model = Application()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Application?

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
            var model = Application()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
