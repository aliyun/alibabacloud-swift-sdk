import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class JobStatusDetailValue : Tea.TeaModel {
    public var comment: String?

    public var timeStamps: String?

    public var jobResult: String?

    public override init() {
        super.init()
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
        if self.timeStamps != nil {
            map["timeStamps"] = self.timeStamps!
        }
        if self.jobResult != nil {
            map["jobResult"] = self.jobResult!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("comment") {
            self.comment = dict["comment"] as! String
        }
        if dict.keys.contains("timeStamps") {
            self.timeStamps = dict["timeStamps"] as! String
        }
        if dict.keys.contains("jobResult") {
            self.jobResult = dict["jobResult"] as! String
        }
    }
}

public class ProjectBuildConfigTaskPoliciesValue : Tea.TeaModel {
    public var taskId: String?

    public var priority: Int64?

    public var destroyAfterExecution: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.priority != nil {
            map["priority"] = self.priority!
        }
        if self.destroyAfterExecution != nil {
            map["destroyAfterExecution"] = self.destroyAfterExecution!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
        if dict.keys.contains("priority") {
            self.priority = dict["priority"] as! Int64
        }
        if dict.keys.contains("destroyAfterExecution") {
            self.destroyAfterExecution = dict["destroyAfterExecution"] as! Bool
        }
    }
}

public class JobsStatusDetailValue : Tea.TeaModel {
    public var comment: String?

    public var timeStamps: String?

    public var jobResult: String?

    public override init() {
        super.init()
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
        if self.timeStamps != nil {
            map["timeStamps"] = self.timeStamps!
        }
        if self.jobResult != nil {
            map["jobResult"] = self.jobResult!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("comment") {
            self.comment = dict["comment"] as! String
        }
        if dict.keys.contains("timeStamps") {
            self.timeStamps = dict["timeStamps"] as! String
        }
        if dict.keys.contains("jobResult") {
            self.jobResult = dict["jobResult"] as! String
        }
    }
}

public class AssociateParameterSetRequest : Tea.TeaModel {
    public var parameterSetIds: [String]?

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
        if self.parameterSetIds != nil {
            map["parameterSetIds"] = self.parameterSetIds!
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
        if dict.keys.contains("parameterSetIds") {
            self.parameterSetIds = dict["parameterSetIds"] as! [String]
        }
        if dict.keys.contains("resourceId") {
            self.resourceId = dict["resourceId"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
    }
}

public class AssociateParameterSetResponseBody : Tea.TeaModel {
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

public class AssociateParameterSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateParameterSetResponseBody?

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
            var model = AssociateParameterSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateTaskGroupRequest : Tea.TeaModel {
    public var taskIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskIds != nil {
            map["taskIds"] = self.taskIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskIds") {
            self.taskIds = dict["taskIds"] as! [String]
        }
    }
}

public class AssociateTaskGroupResponseBody : Tea.TeaModel {
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

public class AssociateTaskGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateTaskGroupResponseBody?

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
            var model = AssociateTaskGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachRabbitmqPublisherRequest : Tea.TeaModel {
    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class AttachRabbitmqPublisherResponseBody : Tea.TeaModel {
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

public class AttachRabbitmqPublisherResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachRabbitmqPublisherResponseBody?

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
            var model = AttachRabbitmqPublisherResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelResourceExportTaskRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ramRole: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.ramRole != nil {
            map["ramRole"] = self.ramRole!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("ramRole") {
            self.ramRole = dict["ramRole"] as! String
        }
    }
}

public class CancelResourceExportTaskResponseBody : Tea.TeaModel {
    public var exportTaskId: String?

    public var exportVersion: String?

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
        if self.exportTaskId != nil {
            map["exportTaskId"] = self.exportTaskId!
        }
        if self.exportVersion != nil {
            map["exportVersion"] = self.exportVersion!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("exportTaskId") {
            self.exportTaskId = dict["exportTaskId"] as! String
        }
        if dict.keys.contains("exportVersion") {
            self.exportVersion = dict["exportVersion"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CancelResourceExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelResourceExportTaskResponseBody?

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
            var model = CancelResourceExportTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CloneModuleRequest : Tea.TeaModel {
    public var description_: String?

    public var moduleId: String?

    public var moduleSource: String?

    public var moduleVersion: String?

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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.moduleId != nil {
            map["moduleId"] = self.moduleId!
        }
        if self.moduleSource != nil {
            map["moduleSource"] = self.moduleSource!
        }
        if self.moduleVersion != nil {
            map["moduleVersion"] = self.moduleVersion!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("moduleId") {
            self.moduleId = dict["moduleId"] as! String
        }
        if dict.keys.contains("moduleSource") {
            self.moduleSource = dict["moduleSource"] as! String
        }
        if dict.keys.contains("moduleVersion") {
            self.moduleVersion = dict["moduleVersion"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class CloneModuleResponseBody : Tea.TeaModel {
    public var moduleId: String?

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
        if self.moduleId != nil {
            map["moduleId"] = self.moduleId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("moduleId") {
            self.moduleId = dict["moduleId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CloneModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloneModuleResponseBody?

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
            var model = CloneModuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAuthorizationRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dueTime: String?

    public var moduleId: String?

    public var moduleVersion: String?

    public var name: String?

    public var uid: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.dueTime != nil {
            map["dueTime"] = self.dueTime!
        }
        if self.moduleId != nil {
            map["moduleId"] = self.moduleId!
        }
        if self.moduleVersion != nil {
            map["moduleVersion"] = self.moduleVersion!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("dueTime") {
            self.dueTime = dict["dueTime"] as! String
        }
        if dict.keys.contains("moduleId") {
            self.moduleId = dict["moduleId"] as! String
        }
        if dict.keys.contains("moduleVersion") {
            self.moduleVersion = dict["moduleVersion"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! Int64
        }
    }
}

public class CreateAuthorizationResponseBody : Tea.TeaModel {
    public var authorizationId: String?

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
        if self.authorizationId != nil {
            map["authorizationId"] = self.authorizationId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authorizationId") {
            self.authorizationId = dict["authorizationId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateAuthorizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAuthorizationResponseBody?

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
            var model = CreateAuthorizationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
    }
}

public class CreateGroupResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGroupResponseBody?

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
            var model = CreateGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateJobRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var subCommand: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.subCommand != nil {
            map["subCommand"] = self.subCommand!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("subCommand") {
            self.subCommand = dict["subCommand"] as! String
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
            map["jobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("jobId") {
            self.jobId = dict["jobId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

public class CreateModuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var source: String?

    public var sourcePath: String?

    public var statePath: String?

    public var versionStrategy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.sourcePath != nil {
            map["sourcePath"] = self.sourcePath!
        }
        if self.statePath != nil {
            map["statePath"] = self.statePath!
        }
        if self.versionStrategy != nil {
            map["versionStrategy"] = self.versionStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("source") {
            self.source = dict["source"] as! String
        }
        if dict.keys.contains("sourcePath") {
            self.sourcePath = dict["sourcePath"] as! String
        }
        if dict.keys.contains("statePath") {
            self.statePath = dict["statePath"] as! String
        }
        if dict.keys.contains("versionStrategy") {
            self.versionStrategy = dict["versionStrategy"] as! String
        }
    }
}

public class CreateModuleResponseBody : Tea.TeaModel {
    public var moduleId: String?

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
        if self.moduleId != nil {
            map["moduleId"] = self.moduleId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("moduleId") {
            self.moduleId = dict["moduleId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModuleResponseBody?

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
            var model = CreateModuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateModuleMarketRequest : Tea.TeaModel {
    public var clientToken: String?

    public var codeUrl: String?

    public var description_: String?

    public var moduleDetail: String?

    public var moduleId: String?

    public var moduleVersion: String?

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.codeUrl != nil {
            map["codeUrl"] = self.codeUrl!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.moduleDetail != nil {
            map["moduleDetail"] = self.moduleDetail!
        }
        if self.moduleId != nil {
            map["moduleId"] = self.moduleId!
        }
        if self.moduleVersion != nil {
            map["moduleVersion"] = self.moduleVersion!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("codeUrl") {
            self.codeUrl = dict["codeUrl"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("moduleDetail") {
            self.moduleDetail = dict["moduleDetail"] as! String
        }
        if dict.keys.contains("moduleId") {
            self.moduleId = dict["moduleId"] as! String
        }
        if dict.keys.contains("moduleVersion") {
            self.moduleVersion = dict["moduleVersion"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class CreateModuleMarketResponseBody : Tea.TeaModel {
    public var moduleMarketId: String?

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
        if self.moduleMarketId != nil {
            map["moduleMarketId"] = self.moduleMarketId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("moduleMarketId") {
            self.moduleMarketId = dict["moduleMarketId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateModuleMarketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModuleMarketResponseBody?

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
            var model = CreateModuleMarketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateModuleVersionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class CreateModuleVersionResponseBody : Tea.TeaModel {
    public var moduleVersion: String?

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
        if self.moduleVersion != nil {
            map["moduleVersion"] = self.moduleVersion!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("moduleVersion") {
            self.moduleVersion = dict["moduleVersion"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateModuleVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModuleVersionResponseBody?

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
            var model = CreateModuleVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateParameterSetRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var name: String?

        public var type: String?

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
            if self.type != nil {
                map["type"] = self.type!
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
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var parameters: [CreateParameterSetRequest.Parameters]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["parameters"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("parameters") {
            self.parameters = dict["parameters"] as! [CreateParameterSetRequest.Parameters]
        }
    }
}

public class CreateParameterSetResponseBody : Tea.TeaModel {
    public var parameterSetId: String?

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
        if self.parameterSetId != nil {
            map["parameterSetId"] = self.parameterSetId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("parameterSetId") {
            self.parameterSetId = dict["parameterSetId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateParameterSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateParameterSetResponseBody?

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
            var model = CreateParameterSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProjectRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class CreateProjectResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProjectResponseBody?

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
            var model = CreateProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProjectBuildRequest : Tea.TeaModel {
    public class TaskPolicies : Tea.TeaModel {
        public var destroyAfterExecution: Bool?

        public var priority: Int64?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.destroyAfterExecution != nil {
                map["destroyAfterExecution"] = self.destroyAfterExecution!
            }
            if self.priority != nil {
                map["priority"] = self.priority!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("destroyAfterExecution") {
                self.destroyAfterExecution = dict["destroyAfterExecution"] as! Bool
            }
            if dict.keys.contains("priority") {
                self.priority = dict["priority"] as! Int64
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
        }
    }
    public var clientToken: String?

    public var projectBuildAction: String?

    public var taskIds: [String]?

    public var taskPolicies: [CreateProjectBuildRequest.TaskPolicies]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.projectBuildAction != nil {
            map["projectBuildAction"] = self.projectBuildAction!
        }
        if self.taskIds != nil {
            map["taskIds"] = self.taskIds!
        }
        if self.taskPolicies != nil {
            var tmp : [Any] = []
            for k in self.taskPolicies! {
                tmp.append(k.toMap())
            }
            map["taskPolicies"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("projectBuildAction") {
            self.projectBuildAction = dict["projectBuildAction"] as! String
        }
        if dict.keys.contains("taskIds") {
            self.taskIds = dict["taskIds"] as! [String]
        }
        if dict.keys.contains("taskPolicies") {
            self.taskPolicies = dict["taskPolicies"] as! [CreateProjectBuildRequest.TaskPolicies]
        }
    }
}

public class CreateProjectBuildResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateProjectBuildResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProjectBuildResponseBody?

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
            var model = CreateProjectBuildResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRabbitmqPublisherRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var exchangeName: String?

    public var exchangeType: String?

    public var hostName: String?

    public var name: String?

    public var password: String?

    public var port: Int64?

    public var userName: String?

    public var virtualHost: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.exchangeName != nil {
            map["exchangeName"] = self.exchangeName!
        }
        if self.exchangeType != nil {
            map["exchangeType"] = self.exchangeType!
        }
        if self.hostName != nil {
            map["hostName"] = self.hostName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.password != nil {
            map["password"] = self.password!
        }
        if self.port != nil {
            map["port"] = self.port!
        }
        if self.userName != nil {
            map["userName"] = self.userName!
        }
        if self.virtualHost != nil {
            map["virtualHost"] = self.virtualHost!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("exchangeName") {
            self.exchangeName = dict["exchangeName"] as! String
        }
        if dict.keys.contains("exchangeType") {
            self.exchangeType = dict["exchangeType"] as! String
        }
        if dict.keys.contains("hostName") {
            self.hostName = dict["hostName"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("password") {
            self.password = dict["password"] as! String
        }
        if dict.keys.contains("port") {
            self.port = dict["port"] as! Int64
        }
        if dict.keys.contains("userName") {
            self.userName = dict["userName"] as! String
        }
        if dict.keys.contains("virtualHost") {
            self.virtualHost = dict["virtualHost"] as! String
        }
    }
}

public class CreateRabbitmqPublisherResponseBody : Tea.TeaModel {
    public var publisherId: String?

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
        if self.publisherId != nil {
            map["publisherId"] = self.publisherId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("publisherId") {
            self.publisherId = dict["publisherId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateRabbitmqPublisherResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRabbitmqPublisherResponseBody?

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
            var model = CreateRabbitmqPublisherResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateResourceExportTaskRequest : Tea.TeaModel {
    public class ExcludeRules : Tea.TeaModel {
        public var key: String?

        public var values: [String]?

        public override init() {
            super.init()
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
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("values") {
                self.values = dict["values"] as! [String]
            }
        }
    }
    public class ExportToModule : Tea.TeaModel {
        public var source: String?

        public var sourcePath: String?

        public var statePath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.sourcePath != nil {
                map["sourcePath"] = self.sourcePath!
            }
            if self.statePath != nil {
                map["statePath"] = self.statePath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("source") {
                self.source = dict["source"] as! String
            }
            if dict.keys.contains("sourcePath") {
                self.sourcePath = dict["sourcePath"] as! String
            }
            if dict.keys.contains("statePath") {
                self.statePath = dict["statePath"] as! String
            }
        }
    }
    public class IncludeRules : Tea.TeaModel {
        public var key: String?

        public var values: [String]?

        public override init() {
            super.init()
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
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("values") {
                self.values = dict["values"] as! [String]
            }
        }
    }
    public class Variables : Tea.TeaModel {
        public var properties: [String]?

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
            if self.properties != nil {
                map["properties"] = self.properties!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("properties") {
                self.properties = dict["properties"] as! [String]
            }
            if dict.keys.contains("resourceType") {
                self.resourceType = dict["resourceType"] as! String
            }
        }
    }
    public var clientToken: String?

    public var description_: String?

    public var excludeRules: [CreateResourceExportTaskRequest.ExcludeRules]?

    public var exportToModule: CreateResourceExportTaskRequest.ExportToModule?

    public var includeRules: [CreateResourceExportTaskRequest.IncludeRules]?

    public var name: String?

    public var ramRole: String?

    public var terraformVersion: String?

    public var triggerStrategy: String?

    public var variables: [CreateResourceExportTaskRequest.Variables]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.exportToModule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.excludeRules != nil {
            var tmp : [Any] = []
            for k in self.excludeRules! {
                tmp.append(k.toMap())
            }
            map["excludeRules"] = tmp
        }
        if self.exportToModule != nil {
            map["exportToModule"] = self.exportToModule?.toMap()
        }
        if self.includeRules != nil {
            var tmp : [Any] = []
            for k in self.includeRules! {
                tmp.append(k.toMap())
            }
            map["includeRules"] = tmp
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.ramRole != nil {
            map["ramRole"] = self.ramRole!
        }
        if self.terraformVersion != nil {
            map["terraformVersion"] = self.terraformVersion!
        }
        if self.triggerStrategy != nil {
            map["triggerStrategy"] = self.triggerStrategy!
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
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("excludeRules") {
            self.excludeRules = dict["excludeRules"] as! [CreateResourceExportTaskRequest.ExcludeRules]
        }
        if dict.keys.contains("exportToModule") {
            var model = CreateResourceExportTaskRequest.ExportToModule()
            model.fromMap(dict["exportToModule"] as! [String: Any])
            self.exportToModule = model
        }
        if dict.keys.contains("includeRules") {
            self.includeRules = dict["includeRules"] as! [CreateResourceExportTaskRequest.IncludeRules]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("ramRole") {
            self.ramRole = dict["ramRole"] as! String
        }
        if dict.keys.contains("terraformVersion") {
            self.terraformVersion = dict["terraformVersion"] as! String
        }
        if dict.keys.contains("triggerStrategy") {
            self.triggerStrategy = dict["triggerStrategy"] as! String
        }
        if dict.keys.contains("variables") {
            self.variables = dict["variables"] as! [CreateResourceExportTaskRequest.Variables]
        }
    }
}

public class CreateResourceExportTaskResponseBody : Tea.TeaModel {
    public var exportTaskId: String?

    public var exportVersion: String?

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
        if self.exportTaskId != nil {
            map["exportTaskId"] = self.exportTaskId!
        }
        if self.exportVersion != nil {
            map["exportVersion"] = self.exportVersion!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("exportTaskId") {
            self.exportTaskId = dict["exportTaskId"] as! String
        }
        if dict.keys.contains("exportVersion") {
            self.exportVersion = dict["exportVersion"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateResourceExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceExportTaskResponseBody?

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
            var model = CreateResourceExportTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTaskRequest : Tea.TeaModel {
    public class GroupInfo : Tea.TeaModel {
        public var groupId: String?

        public var projectId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupId != nil {
                map["groupId"] = self.groupId!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("groupId") {
                self.groupId = dict["groupId"] as! String
            }
            if dict.keys.contains("projectId") {
                self.projectId = dict["projectId"] as! String
            }
        }
    }
    public var autoApply: Bool?

    public var clientToken: String?

    public var groupInfo: CreateTaskRequest.GroupInfo?

    public var moduleId: String?

    public var moduleVersion: String?

    public var name: String?

    public var parameters: [String: String]?

    public var protectionStrategy: [String]?

    public var ramRole: String?

    public var terraformVersion: String?

    public var triggerStrategy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoApply != nil {
            map["autoApply"] = self.autoApply!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.groupInfo != nil {
            map["groupInfo"] = self.groupInfo?.toMap()
        }
        if self.moduleId != nil {
            map["moduleId"] = self.moduleId!
        }
        if self.moduleVersion != nil {
            map["moduleVersion"] = self.moduleVersion!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        if self.protectionStrategy != nil {
            map["protectionStrategy"] = self.protectionStrategy!
        }
        if self.ramRole != nil {
            map["ramRole"] = self.ramRole!
        }
        if self.terraformVersion != nil {
            map["terraformVersion"] = self.terraformVersion!
        }
        if self.triggerStrategy != nil {
            map["triggerStrategy"] = self.triggerStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoApply") {
            self.autoApply = dict["autoApply"] as! Bool
        }
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("groupInfo") {
            var model = CreateTaskRequest.GroupInfo()
            model.fromMap(dict["groupInfo"] as! [String: Any])
            self.groupInfo = model
        }
        if dict.keys.contains("moduleId") {
            self.moduleId = dict["moduleId"] as! String
        }
        if dict.keys.contains("moduleVersion") {
            self.moduleVersion = dict["moduleVersion"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("parameters") {
            self.parameters = dict["parameters"] as! [String: String]
        }
        if dict.keys.contains("protectionStrategy") {
            self.protectionStrategy = dict["protectionStrategy"] as! [String]
        }
        if dict.keys.contains("ramRole") {
            self.ramRole = dict["ramRole"] as! String
        }
        if dict.keys.contains("terraformVersion") {
            self.terraformVersion = dict["terraformVersion"] as! String
        }
        if dict.keys.contains("triggerStrategy") {
            self.triggerStrategy = dict["triggerStrategy"] as! String
        }
    }
}

public class CreateTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class CreateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTaskResponseBody?

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
            var model = CreateTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAuthorizationResponseBody : Tea.TeaModel {
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

public class DeleteAuthorizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAuthorizationResponseBody?

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
            var model = DeleteAuthorizationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGroupResponseBody : Tea.TeaModel {
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

public class DeleteGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGroupResponseBody?

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
            var model = DeleteGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteModuleResponseBody : Tea.TeaModel {
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

public class DeleteModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModuleResponseBody?

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
            var model = DeleteModuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteParameterSetResponseBody : Tea.TeaModel {
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

public class DeleteParameterSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteParameterSetResponseBody?

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
            var model = DeleteParameterSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProjectResponseBody : Tea.TeaModel {
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

public class DeleteProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProjectResponseBody?

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
            var model = DeleteProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRabbitmqPublisherResponseBody : Tea.TeaModel {
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

public class DeleteRabbitmqPublisherResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRabbitmqPublisherResponseBody?

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
            var model = DeleteRabbitmqPublisherResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteResourceExportTaskResponseBody : Tea.TeaModel {
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

public class DeleteResourceExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceExportTaskResponseBody?

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
            var model = DeleteResourceExportTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteResourceLinkRequest : Tea.TeaModel {
    public var productCode: String?

    public var resourceTypeCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productCode != nil {
            map["productCode"] = self.productCode!
        }
        if self.resourceTypeCode != nil {
            map["resourceTypeCode"] = self.resourceTypeCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("productCode") {
            self.productCode = dict["productCode"] as! String
        }
        if dict.keys.contains("resourceTypeCode") {
            self.resourceTypeCode = dict["resourceTypeCode"] as! String
        }
    }
}

public class DeleteResourceLinkResponseBody : Tea.TeaModel {
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

public class DeleteResourceLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceLinkResponseBody?

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
            var model = DeleteResourceLinkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTaskResponseBody : Tea.TeaModel {
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

public class DeleteTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTaskResponseBody?

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
            var model = DeleteTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachRabbitmqPublisherRequest : Tea.TeaModel {
    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class DetachRabbitmqPublisherResponseBody : Tea.TeaModel {
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

public class DetachRabbitmqPublisherResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachRabbitmqPublisherResponseBody?

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
            var model = DetachRabbitmqPublisherResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DissociateParameterSetRequest : Tea.TeaModel {
    public var parameterSetIds: [String]?

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
        if self.parameterSetIds != nil {
            map["parameterSetIds"] = self.parameterSetIds!
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
        if dict.keys.contains("parameterSetIds") {
            self.parameterSetIds = dict["parameterSetIds"] as! [String]
        }
        if dict.keys.contains("resourceId") {
            self.resourceId = dict["resourceId"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
    }
}

public class DissociateParameterSetResponseBody : Tea.TeaModel {
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

public class DissociateParameterSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DissociateParameterSetResponseBody?

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
            var model = DissociateParameterSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DissociateTaskGroupRequest : Tea.TeaModel {
    public var taskIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskIds != nil {
            map["taskIds"] = self.taskIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskIds") {
            self.taskIds = dict["taskIds"] as! [String]
        }
    }
}

public class DissociateTaskGroupResponseBody : Tea.TeaModel {
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

public class DissociateTaskGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DissociateTaskGroupResponseBody?

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
            var model = DissociateTaskGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteResourceExportTaskRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ramRole: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.ramRole != nil {
            map["ramRole"] = self.ramRole!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("ramRole") {
            self.ramRole = dict["ramRole"] as! String
        }
    }
}

public class ExecuteResourceExportTaskResponseBody : Tea.TeaModel {
    public var exportTaskId: String?

    public var exportVersion: String?

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
        if self.exportTaskId != nil {
            map["exportTaskId"] = self.exportTaskId!
        }
        if self.exportVersion != nil {
            map["exportVersion"] = self.exportVersion!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("exportTaskId") {
            self.exportTaskId = dict["exportTaskId"] as! String
        }
        if dict.keys.contains("exportVersion") {
            self.exportVersion = dict["exportVersion"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ExecuteResourceExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteResourceExportTaskResponseBody?

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
            var model = ExecuteResourceExportTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var projectId: String?

        public var taskCnt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.taskCnt != nil {
                map["taskCnt"] = self.taskCnt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("projectId") {
                self.projectId = dict["projectId"] as! String
            }
            if dict.keys.contains("taskCnt") {
                self.taskCnt = dict["taskCnt"] as! Int64
            }
        }
    }
    public var group: GetGroupResponseBody.Group?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.group?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.group != nil {
            map["group"] = self.group?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("group") {
            var model = GetGroupResponseBody.Group()
            model.fromMap(dict["group"] as! [String: Any])
            self.group = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGroupResponseBody?

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
            var model = GetGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetJobResponseBody : Tea.TeaModel {
    public class Job : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var autoApply: Bool?

            public var isDestroy: Bool?

            public var moduleVersion: String?

            public var resourcesChanged: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoApply != nil {
                    map["autoApply"] = self.autoApply!
                }
                if self.isDestroy != nil {
                    map["isDestroy"] = self.isDestroy!
                }
                if self.moduleVersion != nil {
                    map["moduleVersion"] = self.moduleVersion!
                }
                if self.resourcesChanged != nil {
                    map["resourcesChanged"] = self.resourcesChanged!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("autoApply") {
                    self.autoApply = dict["autoApply"] as! Bool
                }
                if dict.keys.contains("isDestroy") {
                    self.isDestroy = dict["isDestroy"] as! Bool
                }
                if dict.keys.contains("moduleVersion") {
                    self.moduleVersion = dict["moduleVersion"] as! String
                }
                if dict.keys.contains("resourcesChanged") {
                    self.resourcesChanged = dict["resourcesChanged"] as! String
                }
            }
        }
        public var config: GetJobResponseBody.Job.Config?

        public var createTime: String?

        public var description_: String?

        public var jobId: String?

        public var output: String?

        public var parameters: [String: String]?

        public var runtimeType: String?

        public var status: String?

        public var statusDetail: [String: JobStatusDetailValue]?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.config?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["config"] = self.config?.toMap()
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.jobId != nil {
                map["jobId"] = self.jobId!
            }
            if self.output != nil {
                map["output"] = self.output!
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.runtimeType != nil {
                map["runtimeType"] = self.runtimeType!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusDetail != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.statusDetail! {
                    tmp[k] = v.toMap()
                }
                map["statusDetail"] = tmp
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("config") {
                var model = GetJobResponseBody.Job.Config()
                model.fromMap(dict["config"] as! [String: Any])
                self.config = model
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("jobId") {
                self.jobId = dict["jobId"] as! String
            }
            if dict.keys.contains("output") {
                self.output = dict["output"] as! String
            }
            if dict.keys.contains("parameters") {
                self.parameters = dict["parameters"] as! [String: String]
            }
            if dict.keys.contains("runtimeType") {
                self.runtimeType = dict["runtimeType"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("statusDetail") {
                var tmp : [String: JobStatusDetailValue] = [:]
                for (k, v) in dict["statusDetail"] as! [String: JobStatusDetailValue] {
                    var model = JobStatusDetailValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
                self.statusDetail = tmp
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
        }
    }
    public var job: GetJobResponseBody.Job?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.job?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.job != nil {
            map["job"] = self.job?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("job") {
            var model = GetJobResponseBody.Job()
            model.fromMap(dict["job"] as! [String: Any])
            self.job = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

public class GetModuleResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var latestVersion: String?

        public var moduleId: String?

        public var name: String?

        public var outputPath: String?

        public var source: String?

        public var sourcePath: String?

        public var statePath: String?

        public var status: String?

        public var versionStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.latestVersion != nil {
                map["latestVersion"] = self.latestVersion!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.outputPath != nil {
                map["outputPath"] = self.outputPath!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.sourcePath != nil {
                map["sourcePath"] = self.sourcePath!
            }
            if self.statePath != nil {
                map["statePath"] = self.statePath!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.versionStrategy != nil {
                map["versionStrategy"] = self.versionStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("latestVersion") {
                self.latestVersion = dict["latestVersion"] as! String
            }
            if dict.keys.contains("moduleId") {
                self.moduleId = dict["moduleId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("outputPath") {
                self.outputPath = dict["outputPath"] as! String
            }
            if dict.keys.contains("source") {
                self.source = dict["source"] as! String
            }
            if dict.keys.contains("sourcePath") {
                self.sourcePath = dict["sourcePath"] as! String
            }
            if dict.keys.contains("statePath") {
                self.statePath = dict["statePath"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("versionStrategy") {
                self.versionStrategy = dict["versionStrategy"] as! String
            }
        }
    }
    public var module: GetModuleResponseBody.Module?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("module") {
            var model = GetModuleResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModuleResponseBody?

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
            var model = GetModuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetModuleMarketResponseBody : Tea.TeaModel {
    public class ModuleMarket : Tea.TeaModel {
        public var description_: String?

        public var message: String?

        public var moduleDetail: String?

        public var moduleId: String?

        public var moduleMarketId: String?

        public var moduleVersion: String?

        public var name: String?

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
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.moduleDetail != nil {
                map["moduleDetail"] = self.moduleDetail!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.moduleMarketId != nil {
                map["moduleMarketId"] = self.moduleMarketId!
            }
            if self.moduleVersion != nil {
                map["moduleVersion"] = self.moduleVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("message") {
                self.message = dict["message"] as! String
            }
            if dict.keys.contains("moduleDetail") {
                self.moduleDetail = dict["moduleDetail"] as! String
            }
            if dict.keys.contains("moduleId") {
                self.moduleId = dict["moduleId"] as! String
            }
            if dict.keys.contains("moduleMarketId") {
                self.moduleMarketId = dict["moduleMarketId"] as! String
            }
            if dict.keys.contains("moduleVersion") {
                self.moduleVersion = dict["moduleVersion"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var moduleMarket: GetModuleMarketResponseBody.ModuleMarket?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.moduleMarket?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.moduleMarket != nil {
            map["moduleMarket"] = self.moduleMarket?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("moduleMarket") {
            var model = GetModuleMarketResponseBody.ModuleMarket()
            model.fromMap(dict["moduleMarket"] as! [String: Any])
            self.moduleMarket = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetModuleMarketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModuleMarketResponseBody?

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
            var model = GetModuleMarketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetModuleVersionResponseBody : Tea.TeaModel {
    public class Version : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var moduleId: String?

        public var moduleVersion: String?

        public var name: String?

        public var source: String?

        public var sourcePath: String?

        public var statePath: String?

        public var terraformContext: [String: Any]?

        public var versionStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.moduleVersion != nil {
                map["moduleVersion"] = self.moduleVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.sourcePath != nil {
                map["sourcePath"] = self.sourcePath!
            }
            if self.statePath != nil {
                map["statePath"] = self.statePath!
            }
            if self.terraformContext != nil {
                map["terraformContext"] = self.terraformContext!
            }
            if self.versionStrategy != nil {
                map["versionStrategy"] = self.versionStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("moduleId") {
                self.moduleId = dict["moduleId"] as! String
            }
            if dict.keys.contains("moduleVersion") {
                self.moduleVersion = dict["moduleVersion"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("source") {
                self.source = dict["source"] as! String
            }
            if dict.keys.contains("sourcePath") {
                self.sourcePath = dict["sourcePath"] as! String
            }
            if dict.keys.contains("statePath") {
                self.statePath = dict["statePath"] as! String
            }
            if dict.keys.contains("terraformContext") {
                self.terraformContext = dict["terraformContext"] as! [String: Any]
            }
            if dict.keys.contains("versionStrategy") {
                self.versionStrategy = dict["versionStrategy"] as! String
            }
        }
    }
    public var requestId: String?

    public var version: GetModuleVersionResponseBody.Version?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.version?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.version != nil {
            map["version"] = self.version?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("version") {
            var model = GetModuleVersionResponseBody.Version()
            model.fromMap(dict["version"] as! [String: Any])
            self.version = model
        }
    }
}

public class GetModuleVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModuleVersionResponseBody?

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
            var model = GetModuleVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetParameterSetResponseBody : Tea.TeaModel {
    public class ParameterSet : Tea.TeaModel {
        public class Parameters : Tea.TeaModel {
            public var name: String?

            public var type: String?

            public var value: Any?

            public override init() {
                super.init()
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
                if self.type != nil {
                    map["type"] = self.type!
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
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! Any
                }
            }
        }
        public class RelationList : Tea.TeaModel {
            public var createTime: String?

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
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
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
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! String
                }
                if dict.keys.contains("resourceId") {
                    self.resourceId = dict["resourceId"] as! String
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var name: String?

        public var parameterSetId: String?

        public var parameters: [GetParameterSetResponseBody.ParameterSet.Parameters]?

        public var relationList: [GetParameterSetResponseBody.ParameterSet.RelationList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.parameterSetId != nil {
                map["parameterSetId"] = self.parameterSetId!
            }
            if self.parameters != nil {
                var tmp : [Any] = []
                for k in self.parameters! {
                    tmp.append(k.toMap())
                }
                map["parameters"] = tmp
            }
            if self.relationList != nil {
                var tmp : [Any] = []
                for k in self.relationList! {
                    tmp.append(k.toMap())
                }
                map["relationList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("parameterSetId") {
                self.parameterSetId = dict["parameterSetId"] as! String
            }
            if dict.keys.contains("parameters") {
                self.parameters = dict["parameters"] as! [GetParameterSetResponseBody.ParameterSet.Parameters]
            }
            if dict.keys.contains("relationList") {
                self.relationList = dict["relationList"] as! [GetParameterSetResponseBody.ParameterSet.RelationList]
            }
        }
    }
    public var parameterSet: GetParameterSetResponseBody.ParameterSet?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameterSet?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameterSet != nil {
            map["parameterSet"] = self.parameterSet?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("parameterSet") {
            var model = GetParameterSetResponseBody.ParameterSet()
            model.fromMap(dict["parameterSet"] as! [String: Any])
            self.parameterSet = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetParameterSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetParameterSetResponseBody?

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
            var model = GetParameterSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectResponseBody : Tea.TeaModel {
    public class Project : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var taskCnt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.taskCnt != nil {
                map["taskCnt"] = self.taskCnt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("taskCnt") {
                self.taskCnt = dict["taskCnt"] as! Int64
            }
        }
    }
    public var project: GetProjectResponseBody.Project?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.project?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["project"] = self.project?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("project") {
            var model = GetProjectResponseBody.Project()
            model.fromMap(dict["project"] as! [String: Any])
            self.project = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectResponseBody?

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
            var model = GetProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectBuildConfigRequest : Tea.TeaModel {
    public var projectBuildId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectBuildId != nil {
            map["projectBuildId"] = self.projectBuildId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("projectBuildId") {
            self.projectBuildId = dict["projectBuildId"] as! String
        }
    }
}

public class GetProjectBuildConfigResponseBody : Tea.TeaModel {
    public class ProjectBuildConfig : Tea.TeaModel {
        public var taskPolicies: [String: ProjectBuildConfigTaskPoliciesValue]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskPolicies != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.taskPolicies! {
                    tmp[k] = v.toMap()
                }
                map["taskPolicies"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("taskPolicies") {
                var tmp : [String: ProjectBuildConfigTaskPoliciesValue] = [:]
                for (k, v) in dict["taskPolicies"] as! [String: ProjectBuildConfigTaskPoliciesValue] {
                    var model = ProjectBuildConfigTaskPoliciesValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
                self.taskPolicies = tmp
            }
        }
    }
    public var projectBuildConfig: GetProjectBuildConfigResponseBody.ProjectBuildConfig?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.projectBuildConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectBuildConfig != nil {
            map["projectBuildConfig"] = self.projectBuildConfig?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("projectBuildConfig") {
            var model = GetProjectBuildConfigResponseBody.ProjectBuildConfig()
            model.fromMap(dict["projectBuildConfig"] as! [String: Any])
            self.projectBuildConfig = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetProjectBuildConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectBuildConfigResponseBody?

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
            var model = GetProjectBuildConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectBuildContextResponseBody : Tea.TeaModel {
    public class ProjectBuild : Tea.TeaModel {
        public class JobList : Tea.TeaModel {
            public var isDeleted: Int64?

            public var jobId: String?

            public var moduleId: String?

            public var moduleVersion: String?

            public var name: String?

            public var status: String?

            public var taskId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.isDeleted != nil {
                    map["isDeleted"] = self.isDeleted!
                }
                if self.jobId != nil {
                    map["jobId"] = self.jobId!
                }
                if self.moduleId != nil {
                    map["moduleId"] = self.moduleId!
                }
                if self.moduleVersion != nil {
                    map["moduleVersion"] = self.moduleVersion!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.taskId != nil {
                    map["taskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("isDeleted") {
                    self.isDeleted = dict["isDeleted"] as! Int64
                }
                if dict.keys.contains("jobId") {
                    self.jobId = dict["jobId"] as! String
                }
                if dict.keys.contains("moduleId") {
                    self.moduleId = dict["moduleId"] as! String
                }
                if dict.keys.contains("moduleVersion") {
                    self.moduleVersion = dict["moduleVersion"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("taskId") {
                    self.taskId = dict["taskId"] as! String
                }
            }
        }
        public class ResourceList : Tea.TeaModel {
            public var info: [String: String]?

            public var resourceCnt: Int64?

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
                if self.info != nil {
                    map["info"] = self.info!
                }
                if self.resourceCnt != nil {
                    map["resourceCnt"] = self.resourceCnt!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("info") {
                    self.info = dict["info"] as! [String: String]
                }
                if dict.keys.contains("resourceCnt") {
                    self.resourceCnt = dict["resourceCnt"] as! Int64
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
            }
        }
        public var endTime: String?

        public var failCnt: Int64?

        public var jobList: [GetProjectBuildContextResponseBody.ProjectBuild.JobList]?

        public var jobTotalCnt: Int64?

        public var projectBuildId: String?

        public var projectId: String?

        public var resourceCnt: Int64?

        public var resourceList: [GetProjectBuildContextResponseBody.ProjectBuild.ResourceList]?

        public var resourceTypeCnt: Int64?

        public var status: String?

        public var successCnt: Int64?

        public override init() {
            super.init()
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
                map["endTime"] = self.endTime!
            }
            if self.failCnt != nil {
                map["failCnt"] = self.failCnt!
            }
            if self.jobList != nil {
                var tmp : [Any] = []
                for k in self.jobList! {
                    tmp.append(k.toMap())
                }
                map["jobList"] = tmp
            }
            if self.jobTotalCnt != nil {
                map["jobTotalCnt"] = self.jobTotalCnt!
            }
            if self.projectBuildId != nil {
                map["projectBuildId"] = self.projectBuildId!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.resourceCnt != nil {
                map["resourceCnt"] = self.resourceCnt!
            }
            if self.resourceList != nil {
                var tmp : [Any] = []
                for k in self.resourceList! {
                    tmp.append(k.toMap())
                }
                map["resourceList"] = tmp
            }
            if self.resourceTypeCnt != nil {
                map["resourceTypeCnt"] = self.resourceTypeCnt!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.successCnt != nil {
                map["successCnt"] = self.successCnt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("endTime") {
                self.endTime = dict["endTime"] as! String
            }
            if dict.keys.contains("failCnt") {
                self.failCnt = dict["failCnt"] as! Int64
            }
            if dict.keys.contains("jobList") {
                self.jobList = dict["jobList"] as! [GetProjectBuildContextResponseBody.ProjectBuild.JobList]
            }
            if dict.keys.contains("jobTotalCnt") {
                self.jobTotalCnt = dict["jobTotalCnt"] as! Int64
            }
            if dict.keys.contains("projectBuildId") {
                self.projectBuildId = dict["projectBuildId"] as! String
            }
            if dict.keys.contains("projectId") {
                self.projectId = dict["projectId"] as! String
            }
            if dict.keys.contains("resourceCnt") {
                self.resourceCnt = dict["resourceCnt"] as! Int64
            }
            if dict.keys.contains("resourceList") {
                self.resourceList = dict["resourceList"] as! [GetProjectBuildContextResponseBody.ProjectBuild.ResourceList]
            }
            if dict.keys.contains("resourceTypeCnt") {
                self.resourceTypeCnt = dict["resourceTypeCnt"] as! Int64
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("successCnt") {
                self.successCnt = dict["successCnt"] as! Int64
            }
        }
    }
    public var projectBuild: GetProjectBuildContextResponseBody.ProjectBuild?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.projectBuild?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectBuild != nil {
            map["ProjectBuild"] = self.projectBuild?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectBuild") {
            var model = GetProjectBuildContextResponseBody.ProjectBuild()
            model.fromMap(dict["ProjectBuild"] as! [String: Any])
            self.projectBuild = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetProjectBuildContextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectBuildContextResponseBody?

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
            var model = GetProjectBuildContextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectJobSummaryResponseBody : Tea.TeaModel {
    public class JobSummary : Tea.TeaModel {
        public class Detail : Tea.TeaModel {
            public var failCnt: Int64?

            public var runningCnt: Int64?

            public var successCnt: Int64?

            public var taskId: String?

            public var total: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.failCnt != nil {
                    map["failCnt"] = self.failCnt!
                }
                if self.runningCnt != nil {
                    map["runningCnt"] = self.runningCnt!
                }
                if self.successCnt != nil {
                    map["successCnt"] = self.successCnt!
                }
                if self.taskId != nil {
                    map["taskId"] = self.taskId!
                }
                if self.total != nil {
                    map["total"] = self.total!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("failCnt") {
                    self.failCnt = dict["failCnt"] as! Int64
                }
                if dict.keys.contains("runningCnt") {
                    self.runningCnt = dict["runningCnt"] as! Int64
                }
                if dict.keys.contains("successCnt") {
                    self.successCnt = dict["successCnt"] as! Int64
                }
                if dict.keys.contains("taskId") {
                    self.taskId = dict["taskId"] as! String
                }
                if dict.keys.contains("total") {
                    self.total = dict["total"] as! Int64
                }
            }
        }
        public var detail: [GetProjectJobSummaryResponseBody.JobSummary.Detail]?

        public var failCnt: Int64?

        public var runningCnt: Int64?

        public var successCnt: Int64?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detail != nil {
                var tmp : [Any] = []
                for k in self.detail! {
                    tmp.append(k.toMap())
                }
                map["detail"] = tmp
            }
            if self.failCnt != nil {
                map["failCnt"] = self.failCnt!
            }
            if self.runningCnt != nil {
                map["runningCnt"] = self.runningCnt!
            }
            if self.successCnt != nil {
                map["successCnt"] = self.successCnt!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("detail") {
                self.detail = dict["detail"] as! [GetProjectJobSummaryResponseBody.JobSummary.Detail]
            }
            if dict.keys.contains("failCnt") {
                self.failCnt = dict["failCnt"] as! Int64
            }
            if dict.keys.contains("runningCnt") {
                self.runningCnt = dict["runningCnt"] as! Int64
            }
            if dict.keys.contains("successCnt") {
                self.successCnt = dict["successCnt"] as! Int64
            }
            if dict.keys.contains("total") {
                self.total = dict["total"] as! Int64
            }
        }
    }
    public var jobSummary: GetProjectJobSummaryResponseBody.JobSummary?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.jobSummary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobSummary != nil {
            map["jobSummary"] = self.jobSummary?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("jobSummary") {
            var model = GetProjectJobSummaryResponseBody.JobSummary()
            model.fromMap(dict["jobSummary"] as! [String: Any])
            self.jobSummary = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetProjectJobSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectJobSummaryResponseBody?

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
            var model = GetProjectJobSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectResourceSummaryResponseBody : Tea.TeaModel {
    public class ResourceSummary : Tea.TeaModel {
        public class Detail : Tea.TeaModel {
            public var resourceCnt: Int64?

            public var resourceType: String?

            public var taskIds: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceCnt != nil {
                    map["resourceCnt"] = self.resourceCnt!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                if self.taskIds != nil {
                    map["taskIds"] = self.taskIds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("resourceCnt") {
                    self.resourceCnt = dict["resourceCnt"] as! Int64
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
                if dict.keys.contains("taskIds") {
                    self.taskIds = dict["taskIds"] as! [String]
                }
            }
        }
        public var detail: [GetProjectResourceSummaryResponseBody.ResourceSummary.Detail]?

        public var resourceCnt: Int64?

        public var resourceTypeCnt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detail != nil {
                var tmp : [Any] = []
                for k in self.detail! {
                    tmp.append(k.toMap())
                }
                map["detail"] = tmp
            }
            if self.resourceCnt != nil {
                map["resourceCnt"] = self.resourceCnt!
            }
            if self.resourceTypeCnt != nil {
                map["resourceTypeCnt"] = self.resourceTypeCnt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("detail") {
                self.detail = dict["detail"] as! [GetProjectResourceSummaryResponseBody.ResourceSummary.Detail]
            }
            if dict.keys.contains("resourceCnt") {
                self.resourceCnt = dict["resourceCnt"] as! Int64
            }
            if dict.keys.contains("resourceTypeCnt") {
                self.resourceTypeCnt = dict["resourceTypeCnt"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var resourceSummary: GetProjectResourceSummaryResponseBody.ResourceSummary?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceSummary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resourceSummary != nil {
            map["resourceSummary"] = self.resourceSummary?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("resourceSummary") {
            var model = GetProjectResourceSummaryResponseBody.ResourceSummary()
            model.fromMap(dict["resourceSummary"] as! [String: Any])
            self.resourceSummary = model
        }
    }
}

public class GetProjectResourceSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectResourceSummaryResponseBody?

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
            var model = GetProjectResourceSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRabbitmqPublisherResponseBody : Tea.TeaModel {
    public class Publisher : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var exchangeName: String?

        public var exchangeType: String?

        public var hostName: String?

        public var name: String?

        public var port: Int64?

        public var publisherId: String?

        public var taskIds: [String]?

        public var userName: String?

        public var virtualHost: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.exchangeName != nil {
                map["exchangeName"] = self.exchangeName!
            }
            if self.exchangeType != nil {
                map["exchangeType"] = self.exchangeType!
            }
            if self.hostName != nil {
                map["hostName"] = self.hostName!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.port != nil {
                map["port"] = self.port!
            }
            if self.publisherId != nil {
                map["publisherId"] = self.publisherId!
            }
            if self.taskIds != nil {
                map["taskIds"] = self.taskIds!
            }
            if self.userName != nil {
                map["userName"] = self.userName!
            }
            if self.virtualHost != nil {
                map["virtualHost"] = self.virtualHost!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("exchangeName") {
                self.exchangeName = dict["exchangeName"] as! String
            }
            if dict.keys.contains("exchangeType") {
                self.exchangeType = dict["exchangeType"] as! String
            }
            if dict.keys.contains("hostName") {
                self.hostName = dict["hostName"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("port") {
                self.port = dict["port"] as! Int64
            }
            if dict.keys.contains("publisherId") {
                self.publisherId = dict["publisherId"] as! String
            }
            if dict.keys.contains("taskIds") {
                self.taskIds = dict["taskIds"] as! [String]
            }
            if dict.keys.contains("userName") {
                self.userName = dict["userName"] as! String
            }
            if dict.keys.contains("virtualHost") {
                self.virtualHost = dict["virtualHost"] as! String
            }
        }
    }
    public var publisher: GetRabbitmqPublisherResponseBody.Publisher?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.publisher?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.publisher != nil {
            map["publisher"] = self.publisher?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("publisher") {
            var model = GetRabbitmqPublisherResponseBody.Publisher()
            model.fromMap(dict["publisher"] as! [String: Any])
            self.publisher = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetRabbitmqPublisherResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRabbitmqPublisherResponseBody?

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
            var model = GetRabbitmqPublisherResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceExportTaskRequest : Tea.TeaModel {
    public var exportVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exportVersion != nil {
            map["exportVersion"] = self.exportVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("exportVersion") {
            self.exportVersion = dict["exportVersion"] as! String
        }
    }
}

public class GetResourceExportTaskResponseBody : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public class ExcludeRules : Tea.TeaModel {
            public var key: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                if self.values != nil {
                    map["values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("values") {
                    self.values = dict["values"] as! [String]
                }
            }
        }
        public class ExportToModule : Tea.TeaModel {
            public var source: String?

            public var sourcePath: String?

            public var statePath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.source != nil {
                    map["source"] = self.source!
                }
                if self.sourcePath != nil {
                    map["sourcePath"] = self.sourcePath!
                }
                if self.statePath != nil {
                    map["statePath"] = self.statePath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("source") {
                    self.source = dict["source"] as! String
                }
                if dict.keys.contains("sourcePath") {
                    self.sourcePath = dict["sourcePath"] as! String
                }
                if dict.keys.contains("statePath") {
                    self.statePath = dict["statePath"] as! String
                }
            }
        }
        public class IncludeRules : Tea.TeaModel {
            public var key: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                if self.values != nil {
                    map["values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("values") {
                    self.values = dict["values"] as! [String]
                }
            }
        }
        public class Modules : Tea.TeaModel {
            public var source: String?

            public var sourcePath: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.source != nil {
                    map["source"] = self.source!
                }
                if self.sourcePath != nil {
                    map["sourcePath"] = self.sourcePath!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("source") {
                    self.source = dict["source"] as! String
                }
                if dict.keys.contains("sourcePath") {
                    self.sourcePath = dict["sourcePath"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
            }
        }
        public class Variables : Tea.TeaModel {
            public var properties: [String]?

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
                if self.properties != nil {
                    map["properties"] = self.properties!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("properties") {
                    self.properties = dict["properties"] as! [String]
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var excludeRules: [GetResourceExportTaskResponseBody.Task.ExcludeRules]?

        public var exportTaskId: String?

        public var exportToModule: GetResourceExportTaskResponseBody.Task.ExportToModule?

        public var exportVersion: String?

        public var failedReason: String?

        public var includeRules: [GetResourceExportTaskResponseBody.Task.IncludeRules]?

        public var modules: [GetResourceExportTaskResponseBody.Task.Modules]?

        public var name: String?

        public var ramRole: String?

        public var status: String?

        public var taskOutputPath: String?

        public var terraformVersion: String?

        public var triggerStrategy: String?

        public var variables: [GetResourceExportTaskResponseBody.Task.Variables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.exportToModule?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.excludeRules != nil {
                var tmp : [Any] = []
                for k in self.excludeRules! {
                    tmp.append(k.toMap())
                }
                map["excludeRules"] = tmp
            }
            if self.exportTaskId != nil {
                map["exportTaskId"] = self.exportTaskId!
            }
            if self.exportToModule != nil {
                map["exportToModule"] = self.exportToModule?.toMap()
            }
            if self.exportVersion != nil {
                map["exportVersion"] = self.exportVersion!
            }
            if self.failedReason != nil {
                map["failedReason"] = self.failedReason!
            }
            if self.includeRules != nil {
                var tmp : [Any] = []
                for k in self.includeRules! {
                    tmp.append(k.toMap())
                }
                map["includeRules"] = tmp
            }
            if self.modules != nil {
                var tmp : [Any] = []
                for k in self.modules! {
                    tmp.append(k.toMap())
                }
                map["modules"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.ramRole != nil {
                map["ramRole"] = self.ramRole!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskOutputPath != nil {
                map["taskOutputPath"] = self.taskOutputPath!
            }
            if self.terraformVersion != nil {
                map["terraformVersion"] = self.terraformVersion!
            }
            if self.triggerStrategy != nil {
                map["triggerStrategy"] = self.triggerStrategy!
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
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("excludeRules") {
                self.excludeRules = dict["excludeRules"] as! [GetResourceExportTaskResponseBody.Task.ExcludeRules]
            }
            if dict.keys.contains("exportTaskId") {
                self.exportTaskId = dict["exportTaskId"] as! String
            }
            if dict.keys.contains("exportToModule") {
                var model = GetResourceExportTaskResponseBody.Task.ExportToModule()
                model.fromMap(dict["exportToModule"] as! [String: Any])
                self.exportToModule = model
            }
            if dict.keys.contains("exportVersion") {
                self.exportVersion = dict["exportVersion"] as! String
            }
            if dict.keys.contains("failedReason") {
                self.failedReason = dict["failedReason"] as! String
            }
            if dict.keys.contains("includeRules") {
                self.includeRules = dict["includeRules"] as! [GetResourceExportTaskResponseBody.Task.IncludeRules]
            }
            if dict.keys.contains("modules") {
                self.modules = dict["modules"] as! [GetResourceExportTaskResponseBody.Task.Modules]
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("ramRole") {
                self.ramRole = dict["ramRole"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("taskOutputPath") {
                self.taskOutputPath = dict["taskOutputPath"] as! String
            }
            if dict.keys.contains("terraformVersion") {
                self.terraformVersion = dict["terraformVersion"] as! String
            }
            if dict.keys.contains("triggerStrategy") {
                self.triggerStrategy = dict["triggerStrategy"] as! String
            }
            if dict.keys.contains("variables") {
                self.variables = dict["variables"] as! [GetResourceExportTaskResponseBody.Task.Variables]
            }
        }
    }
    public var requestId: String?

    public var task: GetResourceExportTaskResponseBody.Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.task?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.task != nil {
            map["task"] = self.task?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("task") {
            var model = GetResourceExportTaskResponseBody.Task()
            model.fromMap(dict["task"] as! [String: Any])
            self.task = model
        }
    }
}

public class GetResourceExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceExportTaskResponseBody?

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
            var model = GetResourceExportTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceLinkRequest : Tea.TeaModel {
    public var productCode: String?

    public var resourceTypeCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productCode != nil {
            map["productCode"] = self.productCode!
        }
        if self.resourceTypeCode != nil {
            map["resourceTypeCode"] = self.resourceTypeCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("productCode") {
            self.productCode = dict["productCode"] as! String
        }
        if dict.keys.contains("resourceTypeCode") {
            self.resourceTypeCode = dict["resourceTypeCode"] as! String
        }
    }
}

public class GetResourceLinkResponseBody : Tea.TeaModel {
    public var link: String?

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
        if self.link != nil {
            map["link"] = self.link!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("link") {
            self.link = dict["link"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetResourceLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceLinkResponseBody?

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
            var model = GetResourceLinkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskResponseBody : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public class GroupInfo : Tea.TeaModel {
            public var groupId: String?

            public var groupName: String?

            public var projectId: String?

            public var projectName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.groupId != nil {
                    map["groupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["groupName"] = self.groupName!
                }
                if self.projectId != nil {
                    map["projectId"] = self.projectId!
                }
                if self.projectName != nil {
                    map["projectName"] = self.projectName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("groupId") {
                    self.groupId = dict["groupId"] as! String
                }
                if dict.keys.contains("groupName") {
                    self.groupName = dict["groupName"] as! String
                }
                if dict.keys.contains("projectId") {
                    self.projectId = dict["projectId"] as! String
                }
                if dict.keys.contains("projectName") {
                    self.projectName = dict["projectName"] as! String
                }
            }
        }
        public var autoApply: Bool?

        public var createTime: String?

        public var currentJobId: String?

        public var groupInfo: GetTaskResponseBody.Task.GroupInfo?

        public var meta: [String: String]?

        public var moduleId: String?

        public var moduleVersion: String?

        public var name: String?

        public var parameters: [String: String]?

        public var protectionStrategy: [String]?

        public var ramRole: String?

        public var status: String?

        public var taskId: String?

        public var taskOutputPath: String?

        public var terraformVersion: String?

        public var triggerStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.groupInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoApply != nil {
                map["autoApply"] = self.autoApply!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.currentJobId != nil {
                map["currentJobId"] = self.currentJobId!
            }
            if self.groupInfo != nil {
                map["groupInfo"] = self.groupInfo?.toMap()
            }
            if self.meta != nil {
                map["meta"] = self.meta!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.moduleVersion != nil {
                map["moduleVersion"] = self.moduleVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.protectionStrategy != nil {
                map["protectionStrategy"] = self.protectionStrategy!
            }
            if self.ramRole != nil {
                map["ramRole"] = self.ramRole!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskOutputPath != nil {
                map["taskOutputPath"] = self.taskOutputPath!
            }
            if self.terraformVersion != nil {
                map["terraformVersion"] = self.terraformVersion!
            }
            if self.triggerStrategy != nil {
                map["triggerStrategy"] = self.triggerStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoApply") {
                self.autoApply = dict["autoApply"] as! Bool
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("currentJobId") {
                self.currentJobId = dict["currentJobId"] as! String
            }
            if dict.keys.contains("groupInfo") {
                var model = GetTaskResponseBody.Task.GroupInfo()
                model.fromMap(dict["groupInfo"] as! [String: Any])
                self.groupInfo = model
            }
            if dict.keys.contains("meta") {
                self.meta = dict["meta"] as! [String: String]
            }
            if dict.keys.contains("moduleId") {
                self.moduleId = dict["moduleId"] as! String
            }
            if dict.keys.contains("moduleVersion") {
                self.moduleVersion = dict["moduleVersion"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("parameters") {
                self.parameters = dict["parameters"] as! [String: String]
            }
            if dict.keys.contains("protectionStrategy") {
                self.protectionStrategy = dict["protectionStrategy"] as! [String]
            }
            if dict.keys.contains("ramRole") {
                self.ramRole = dict["ramRole"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("taskOutputPath") {
                self.taskOutputPath = dict["taskOutputPath"] as! String
            }
            if dict.keys.contains("terraformVersion") {
                self.terraformVersion = dict["terraformVersion"] as! String
            }
            if dict.keys.contains("triggerStrategy") {
                self.triggerStrategy = dict["triggerStrategy"] as! String
            }
        }
    }
    public var requestId: String?

    public var task: GetTaskResponseBody.Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.task?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.task != nil {
            map["task"] = self.task?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("task") {
            var model = GetTaskResponseBody.Task()
            model.fromMap(dict["task"] as! [String: Any])
            self.task = model
        }
    }
}

public class GetTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskResponseBody?

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
            var model = GetTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskContextResponseBody : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public class JobConfig : Tea.TeaModel {
            public var isDestroy: Bool?

            public var jobModuleVersion: String?

            public var resourcesChanged: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.isDestroy != nil {
                    map["isDestroy"] = self.isDestroy!
                }
                if self.jobModuleVersion != nil {
                    map["jobModuleVersion"] = self.jobModuleVersion!
                }
                if self.resourcesChanged != nil {
                    map["resourcesChanged"] = self.resourcesChanged!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("isDestroy") {
                    self.isDestroy = dict["isDestroy"] as! Bool
                }
                if dict.keys.contains("jobModuleVersion") {
                    self.jobModuleVersion = dict["jobModuleVersion"] as! String
                }
                if dict.keys.contains("resourcesChanged") {
                    self.resourcesChanged = dict["resourcesChanged"] as! String
                }
            }
        }
        public var autoApply: Bool?

        public var jobConfig: GetTaskContextResponseBody.Task.JobConfig?

        public var jobDescription: String?

        public var jobGmtCreate: String?

        public var jobId: String?

        public var jobStatus: String?

        public var moduleId: String?

        public var modulePath: String?

        public var moduleVersion: String?

        public var parameters: [String: String]?

        public var ramRole: String?

        public var resourceCount: Int32?

        public var taskGmtCreate: String?

        public var taskId: String?

        public var taskName: String?

        public var taskOutputPath: String?

        public var taskStatus: String?

        public var terraformVersion: String?

        public var triggerStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.jobConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoApply != nil {
                map["autoApply"] = self.autoApply!
            }
            if self.jobConfig != nil {
                map["jobConfig"] = self.jobConfig?.toMap()
            }
            if self.jobDescription != nil {
                map["jobDescription"] = self.jobDescription!
            }
            if self.jobGmtCreate != nil {
                map["jobGmtCreate"] = self.jobGmtCreate!
            }
            if self.jobId != nil {
                map["jobId"] = self.jobId!
            }
            if self.jobStatus != nil {
                map["jobStatus"] = self.jobStatus!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.modulePath != nil {
                map["modulePath"] = self.modulePath!
            }
            if self.moduleVersion != nil {
                map["moduleVersion"] = self.moduleVersion!
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.ramRole != nil {
                map["ramRole"] = self.ramRole!
            }
            if self.resourceCount != nil {
                map["resourceCount"] = self.resourceCount!
            }
            if self.taskGmtCreate != nil {
                map["taskGmtCreate"] = self.taskGmtCreate!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskName != nil {
                map["taskName"] = self.taskName!
            }
            if self.taskOutputPath != nil {
                map["taskOutputPath"] = self.taskOutputPath!
            }
            if self.taskStatus != nil {
                map["taskStatus"] = self.taskStatus!
            }
            if self.terraformVersion != nil {
                map["terraformVersion"] = self.terraformVersion!
            }
            if self.triggerStrategy != nil {
                map["triggerStrategy"] = self.triggerStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoApply") {
                self.autoApply = dict["autoApply"] as! Bool
            }
            if dict.keys.contains("jobConfig") {
                var model = GetTaskContextResponseBody.Task.JobConfig()
                model.fromMap(dict["jobConfig"] as! [String: Any])
                self.jobConfig = model
            }
            if dict.keys.contains("jobDescription") {
                self.jobDescription = dict["jobDescription"] as! String
            }
            if dict.keys.contains("jobGmtCreate") {
                self.jobGmtCreate = dict["jobGmtCreate"] as! String
            }
            if dict.keys.contains("jobId") {
                self.jobId = dict["jobId"] as! String
            }
            if dict.keys.contains("jobStatus") {
                self.jobStatus = dict["jobStatus"] as! String
            }
            if dict.keys.contains("moduleId") {
                self.moduleId = dict["moduleId"] as! String
            }
            if dict.keys.contains("modulePath") {
                self.modulePath = dict["modulePath"] as! String
            }
            if dict.keys.contains("moduleVersion") {
                self.moduleVersion = dict["moduleVersion"] as! String
            }
            if dict.keys.contains("parameters") {
                self.parameters = dict["parameters"] as! [String: String]
            }
            if dict.keys.contains("ramRole") {
                self.ramRole = dict["ramRole"] as! String
            }
            if dict.keys.contains("resourceCount") {
                self.resourceCount = dict["resourceCount"] as! Int32
            }
            if dict.keys.contains("taskGmtCreate") {
                self.taskGmtCreate = dict["taskGmtCreate"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("taskName") {
                self.taskName = dict["taskName"] as! String
            }
            if dict.keys.contains("taskOutputPath") {
                self.taskOutputPath = dict["taskOutputPath"] as! String
            }
            if dict.keys.contains("taskStatus") {
                self.taskStatus = dict["taskStatus"] as! String
            }
            if dict.keys.contains("terraformVersion") {
                self.terraformVersion = dict["terraformVersion"] as! String
            }
            if dict.keys.contains("triggerStrategy") {
                self.triggerStrategy = dict["triggerStrategy"] as! String
            }
        }
    }
    public var requestId: String?

    public var task: GetTaskContextResponseBody.Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.task?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.task != nil {
            map["task"] = self.task?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("task") {
            var model = GetTaskContextResponseBody.Task()
            model.fromMap(dict["task"] as! [String: Any])
            self.task = model
        }
    }
}

public class GetTaskContextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskContextResponseBody?

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
            var model = GetTaskContextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAuthorizationsRequest : Tea.TeaModel {
    public var authorizationId: String?

    public var authorizationType: String?

    public var keyword: String?

    public var pageNumber: Int32?

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
        if self.authorizationId != nil {
            map["authorizationId"] = self.authorizationId!
        }
        if self.authorizationType != nil {
            map["authorizationType"] = self.authorizationType!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authorizationId") {
            self.authorizationId = dict["authorizationId"] as! String
        }
        if dict.keys.contains("authorizationType") {
            self.authorizationType = dict["authorizationType"] as! String
        }
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListAuthorizationsResponseBody : Tea.TeaModel {
    public class Authorizations : Tea.TeaModel {
        public var authorizationId: String?

        public var createTime: String?

        public var dueTime: String?

        public var moduleId: String?

        public var moduleVersion: String?

        public var name: String?

        public var ownerUid: Int64?

        public var uid: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorizationId != nil {
                map["authorizationId"] = self.authorizationId!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.dueTime != nil {
                map["dueTime"] = self.dueTime!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.moduleVersion != nil {
                map["moduleVersion"] = self.moduleVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.ownerUid != nil {
                map["ownerUid"] = self.ownerUid!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("authorizationId") {
                self.authorizationId = dict["authorizationId"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("dueTime") {
                self.dueTime = dict["dueTime"] as! String
            }
            if dict.keys.contains("moduleId") {
                self.moduleId = dict["moduleId"] as! String
            }
            if dict.keys.contains("moduleVersion") {
                self.moduleVersion = dict["moduleVersion"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("ownerUid") {
                self.ownerUid = dict["ownerUid"] as! Int64
            }
            if dict.keys.contains("uid") {
                self.uid = dict["uid"] as! Int64
            }
        }
    }
    public var authorizations: [ListAuthorizationsResponseBody.Authorizations]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.authorizations != nil {
            var tmp : [Any] = []
            for k in self.authorizations! {
                tmp.append(k.toMap())
            }
            map["authorizations"] = tmp
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
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authorizations") {
            self.authorizations = dict["authorizations"] as! [ListAuthorizationsResponseBody.Authorizations]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListAuthorizationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAuthorizationsResponseBody?

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
            var model = ListAuthorizationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupRequest : Tea.TeaModel {
    public var pageNumber: String?

    public var pageSize: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! String
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! String
        }
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
    }
}

public class ListGroupResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var id: String?

        public var isDefault: Bool?

        public var name: String?

        public var projectId: String?

        public var taskCnt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.isDefault != nil {
                map["isDefault"] = self.isDefault!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.taskCnt != nil {
                map["taskCnt"] = self.taskCnt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("isDefault") {
                self.isDefault = dict["isDefault"] as! Bool
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("projectId") {
                self.projectId = dict["projectId"] as! String
            }
            if dict.keys.contains("taskCnt") {
                self.taskCnt = dict["taskCnt"] as! Int64
            }
        }
    }
    public var count: Int64?

    public var groups: [ListGroupResponseBody.Groups]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.groups != nil {
            var tmp : [Any] = []
            for k in self.groups! {
                tmp.append(k.toMap())
            }
            map["groups"] = tmp
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("count") {
            self.count = dict["count"] as! Int64
        }
        if dict.keys.contains("groups") {
            self.groups = dict["groups"] as! [ListGroupResponseBody.Groups]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupResponseBody?

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
            var model = ListGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJobsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

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
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
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
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
    }
}

public class ListJobsResponseBody : Tea.TeaModel {
    public class Jobs : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var moduleVersion: String?

            public var resourcesChanged: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.moduleVersion != nil {
                    map["moduleVersion"] = self.moduleVersion!
                }
                if self.resourcesChanged != nil {
                    map["resourcesChanged"] = self.resourcesChanged!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("moduleVersion") {
                    self.moduleVersion = dict["moduleVersion"] as! String
                }
                if dict.keys.contains("resourcesChanged") {
                    self.resourcesChanged = dict["resourcesChanged"] as! String
                }
            }
        }
        public var config: ListJobsResponseBody.Jobs.Config?

        public var createTime: String?

        public var description_: String?

        public var jobId: String?

        public var status: String?

        public var statusDetail: [String: JobsStatusDetailValue]?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.config?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["config"] = self.config?.toMap()
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.jobId != nil {
                map["jobId"] = self.jobId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusDetail != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.statusDetail! {
                    tmp[k] = v.toMap()
                }
                map["statusDetail"] = tmp
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("config") {
                var model = ListJobsResponseBody.Jobs.Config()
                model.fromMap(dict["config"] as! [String: Any])
                self.config = model
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("jobId") {
                self.jobId = dict["jobId"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("statusDetail") {
                var tmp : [String: JobsStatusDetailValue] = [:]
                for (k, v) in dict["statusDetail"] as! [String: JobsStatusDetailValue] {
                    var model = JobsStatusDetailValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
                self.statusDetail = tmp
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
        }
    }
    public var jobs: [ListJobsResponseBody.Jobs]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.jobs != nil {
            var tmp : [Any] = []
            for k in self.jobs! {
                tmp.append(k.toMap())
            }
            map["jobs"] = tmp
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
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("jobs") {
            self.jobs = dict["jobs"] as! [ListJobsResponseBody.Jobs]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
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

public class ListModuleMarketsRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListModuleMarketsResponseBody : Tea.TeaModel {
    public class ModuleMarkets : Tea.TeaModel {
        public var cloneCount: Int32?

        public var codeUrl: String?

        public var config: [String: String]?

        public var description_: String?

        public var message: String?

        public var moduleDetail: String?

        public var moduleId: String?

        public var moduleMarketId: String?

        public var moduleVersion: String?

        public var name: String?

        public var relatedId: Int64?

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
            if self.cloneCount != nil {
                map["cloneCount"] = self.cloneCount!
            }
            if self.codeUrl != nil {
                map["codeUrl"] = self.codeUrl!
            }
            if self.config != nil {
                map["config"] = self.config!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.moduleDetail != nil {
                map["moduleDetail"] = self.moduleDetail!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.moduleMarketId != nil {
                map["moduleMarketId"] = self.moduleMarketId!
            }
            if self.moduleVersion != nil {
                map["moduleVersion"] = self.moduleVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.relatedId != nil {
                map["relatedId"] = self.relatedId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cloneCount") {
                self.cloneCount = dict["cloneCount"] as! Int32
            }
            if dict.keys.contains("codeUrl") {
                self.codeUrl = dict["codeUrl"] as! String
            }
            if dict.keys.contains("config") {
                self.config = dict["config"] as! [String: String]
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("message") {
                self.message = dict["message"] as! String
            }
            if dict.keys.contains("moduleDetail") {
                self.moduleDetail = dict["moduleDetail"] as! String
            }
            if dict.keys.contains("moduleId") {
                self.moduleId = dict["moduleId"] as! String
            }
            if dict.keys.contains("moduleMarketId") {
                self.moduleMarketId = dict["moduleMarketId"] as! String
            }
            if dict.keys.contains("moduleVersion") {
                self.moduleVersion = dict["moduleVersion"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("relatedId") {
                self.relatedId = dict["relatedId"] as! Int64
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var moduleMarkets: [ListModuleMarketsResponseBody.ModuleMarkets]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.moduleMarkets != nil {
            var tmp : [Any] = []
            for k in self.moduleMarkets! {
                tmp.append(k.toMap())
            }
            map["moduleMarkets"] = tmp
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
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("moduleMarkets") {
            self.moduleMarkets = dict["moduleMarkets"] as! [ListModuleMarketsResponseBody.ModuleMarkets]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListModuleMarketsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModuleMarketsResponseBody?

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
            var model = ListModuleMarketsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListModuleVersionRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNumber: Int32?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListModuleVersionResponseBody : Tea.TeaModel {
    public class Versions : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var moduleId: String?

        public var moduleVersion: String?

        public var name: String?

        public var sourcePath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.moduleVersion != nil {
                map["moduleVersion"] = self.moduleVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.sourcePath != nil {
                map["sourcePath"] = self.sourcePath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("moduleId") {
                self.moduleId = dict["moduleId"] as! String
            }
            if dict.keys.contains("moduleVersion") {
                self.moduleVersion = dict["moduleVersion"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("sourcePath") {
                self.sourcePath = dict["sourcePath"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var versions: [ListModuleVersionResponseBody.Versions]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.versions != nil {
            var tmp : [Any] = []
            for k in self.versions! {
                tmp.append(k.toMap())
            }
            map["versions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
        if dict.keys.contains("versions") {
            self.versions = dict["versions"] as! [ListModuleVersionResponseBody.Versions]
        }
    }
}

public class ListModuleVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModuleVersionResponseBody?

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
            var model = ListModuleVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListModulesRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNumber: Int32?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListModulesResponseBody : Tea.TeaModel {
    public class Modules : Tea.TeaModel {
        public var createTime: String?

        public var deletionProtection: Bool?

        public var description_: String?

        public var latestVersion: String?

        public var meta: [String: Any]?

        public var moduleId: String?

        public var name: String?

        public var source: String?

        public var sourceConfig: [String: Any]?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.deletionProtection != nil {
                map["deletionProtection"] = self.deletionProtection!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.latestVersion != nil {
                map["latestVersion"] = self.latestVersion!
            }
            if self.meta != nil {
                map["meta"] = self.meta!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.sourceConfig != nil {
                map["sourceConfig"] = self.sourceConfig!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("deletionProtection") {
                self.deletionProtection = dict["deletionProtection"] as! Bool
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("latestVersion") {
                self.latestVersion = dict["latestVersion"] as! String
            }
            if dict.keys.contains("meta") {
                self.meta = dict["meta"] as! [String: Any]
            }
            if dict.keys.contains("moduleId") {
                self.moduleId = dict["moduleId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("source") {
                self.source = dict["source"] as! String
            }
            if dict.keys.contains("sourceConfig") {
                self.sourceConfig = dict["sourceConfig"] as! [String: Any]
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var modules: [ListModulesResponseBody.Modules]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.modules != nil {
            var tmp : [Any] = []
            for k in self.modules! {
                tmp.append(k.toMap())
            }
            map["modules"] = tmp
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
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("modules") {
            self.modules = dict["modules"] as! [ListModulesResponseBody.Modules]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListModulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModulesResponseBody?

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
            var model = ListModulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListParameterSetRelationRequest : Tea.TeaModel {
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
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("resourceId") {
            self.resourceId = dict["resourceId"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
    }
}

public class ListParameterSetRelationResponseBody : Tea.TeaModel {
    public class ParameterSets : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var name: String?

        public var parameterSetId: String?

        public var parameters: [String: String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.parameterSetId != nil {
                map["parameterSetId"] = self.parameterSetId!
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("parameterSetId") {
                self.parameterSetId = dict["parameterSetId"] as! String
            }
            if dict.keys.contains("parameters") {
                self.parameters = dict["parameters"] as! [String: String]
            }
        }
    }
    public var parameterSets: [ListParameterSetRelationResponseBody.ParameterSets]?

    public var requestId: String?

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
        if self.parameterSets != nil {
            var tmp : [Any] = []
            for k in self.parameterSets! {
                tmp.append(k.toMap())
            }
            map["parameterSets"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("parameterSets") {
            self.parameterSets = dict["parameterSets"] as! [ListParameterSetRelationResponseBody.ParameterSets]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListParameterSetRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListParameterSetRelationResponseBody?

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
            var model = ListParameterSetRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListParameterSetsRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNumber: Int32?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListParameterSetsResponseBody : Tea.TeaModel {
    public class ParameterSets : Tea.TeaModel {
        public class Parameters : Tea.TeaModel {
            public var name: String?

            public var type: String?

            public var value: Any?

            public override init() {
                super.init()
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
                if self.type != nil {
                    map["type"] = self.type!
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
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! Any
                }
            }
        }
        public class RelationList : Tea.TeaModel {
            public var createTime: String?

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
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
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
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! String
                }
                if dict.keys.contains("resourceId") {
                    self.resourceId = dict["resourceId"] as! String
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var name: String?

        public var parameterSetId: String?

        public var parameters: [ListParameterSetsResponseBody.ParameterSets.Parameters]?

        public var relationList: [ListParameterSetsResponseBody.ParameterSets.RelationList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.parameterSetId != nil {
                map["parameterSetId"] = self.parameterSetId!
            }
            if self.parameters != nil {
                var tmp : [Any] = []
                for k in self.parameters! {
                    tmp.append(k.toMap())
                }
                map["parameters"] = tmp
            }
            if self.relationList != nil {
                var tmp : [Any] = []
                for k in self.relationList! {
                    tmp.append(k.toMap())
                }
                map["relationList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("parameterSetId") {
                self.parameterSetId = dict["parameterSetId"] as! String
            }
            if dict.keys.contains("parameters") {
                self.parameters = dict["parameters"] as! [ListParameterSetsResponseBody.ParameterSets.Parameters]
            }
            if dict.keys.contains("relationList") {
                self.relationList = dict["relationList"] as! [ListParameterSetsResponseBody.ParameterSets.RelationList]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var parameterSets: [ListParameterSetsResponseBody.ParameterSets]?

    public var requestId: String?

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
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.parameterSets != nil {
            var tmp : [Any] = []
            for k in self.parameterSets! {
                tmp.append(k.toMap())
            }
            map["parameterSets"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("parameterSets") {
            self.parameterSets = dict["parameterSets"] as! [ListParameterSetsResponseBody.ParameterSets]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListParameterSetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListParameterSetsResponseBody?

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
            var model = ListParameterSetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectRequest : Tea.TeaModel {
    public var pageNumber: String?

    public var pageSize: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! String
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! String
        }
    }
}

public class ListProjectResponseBody : Tea.TeaModel {
    public class Projects : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var taskCnt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.taskCnt != nil {
                map["taskCnt"] = self.taskCnt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("taskCnt") {
                self.taskCnt = dict["taskCnt"] as! Int64
            }
        }
    }
    public var count: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var projects: [ListProjectResponseBody.Projects]?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.projects != nil {
            var tmp : [Any] = []
            for k in self.projects! {
                tmp.append(k.toMap())
            }
            map["projects"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("count") {
            self.count = dict["count"] as! Int64
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("projects") {
            self.projects = dict["projects"] as! [ListProjectResponseBody.Projects]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectResponseBody?

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
            var model = ListProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectBuildsResponseBody : Tea.TeaModel {
    public class ProjectBuilds : Tea.TeaModel {
        public var createTime: String?

        public var projectBuildAction: String?

        public var projectBuildId: String?

        public var projectBuildIndex: Int64?

        public var projectId: String?

        public var status: String?

        public var timestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.projectBuildAction != nil {
                map["projectBuildAction"] = self.projectBuildAction!
            }
            if self.projectBuildId != nil {
                map["projectBuildId"] = self.projectBuildId!
            }
            if self.projectBuildIndex != nil {
                map["projectBuildIndex"] = self.projectBuildIndex!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.timestamp != nil {
                map["timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("projectBuildAction") {
                self.projectBuildAction = dict["projectBuildAction"] as! String
            }
            if dict.keys.contains("projectBuildId") {
                self.projectBuildId = dict["projectBuildId"] as! String
            }
            if dict.keys.contains("projectBuildIndex") {
                self.projectBuildIndex = dict["projectBuildIndex"] as! Int64
            }
            if dict.keys.contains("projectId") {
                self.projectId = dict["projectId"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("timestamp") {
                self.timestamp = dict["timestamp"] as! Int64
            }
        }
    }
    public var projectBuilds: [ListProjectBuildsResponseBody.ProjectBuilds]?

    public var requestId: String?

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
        if self.projectBuilds != nil {
            var tmp : [Any] = []
            for k in self.projectBuilds! {
                tmp.append(k.toMap())
            }
            map["ProjectBuilds"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectBuilds") {
            self.projectBuilds = dict["ProjectBuilds"] as! [ListProjectBuildsResponseBody.ProjectBuilds]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListProjectBuildsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectBuildsResponseBody?

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
            var model = ListProjectBuildsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRabbitmqPublishersRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNumber: Int32?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListRabbitmqPublishersResponseBody : Tea.TeaModel {
    public class Authorizations : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var exchangeName: String?

        public var exchangeType: String?

        public var hostName: String?

        public var name: String?

        public var port: Int64?

        public var publisherId: String?

        public var userName: String?

        public var virtualHost: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.exchangeName != nil {
                map["exchangeName"] = self.exchangeName!
            }
            if self.exchangeType != nil {
                map["exchangeType"] = self.exchangeType!
            }
            if self.hostName != nil {
                map["hostName"] = self.hostName!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.port != nil {
                map["port"] = self.port!
            }
            if self.publisherId != nil {
                map["publisherId"] = self.publisherId!
            }
            if self.userName != nil {
                map["userName"] = self.userName!
            }
            if self.virtualHost != nil {
                map["virtualHost"] = self.virtualHost!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("exchangeName") {
                self.exchangeName = dict["exchangeName"] as! String
            }
            if dict.keys.contains("exchangeType") {
                self.exchangeType = dict["exchangeType"] as! String
            }
            if dict.keys.contains("hostName") {
                self.hostName = dict["hostName"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("port") {
                self.port = dict["port"] as! Int64
            }
            if dict.keys.contains("publisherId") {
                self.publisherId = dict["publisherId"] as! String
            }
            if dict.keys.contains("userName") {
                self.userName = dict["userName"] as! String
            }
            if dict.keys.contains("virtualHost") {
                self.virtualHost = dict["virtualHost"] as! String
            }
        }
    }
    public var authorizations: [ListRabbitmqPublishersResponseBody.Authorizations]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.authorizations != nil {
            var tmp : [Any] = []
            for k in self.authorizations! {
                tmp.append(k.toMap())
            }
            map["authorizations"] = tmp
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
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authorizations") {
            self.authorizations = dict["authorizations"] as! [ListRabbitmqPublishersResponseBody.Authorizations]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListRabbitmqPublishersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRabbitmqPublishersResponseBody?

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
            var model = ListRabbitmqPublishersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRelationModulesResponseBody : Tea.TeaModel {
    public class Modules : Tea.TeaModel {
        public var latestVersion: String?

        public var moduleId: String?

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
            if self.latestVersion != nil {
                map["latestVersion"] = self.latestVersion!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("latestVersion") {
                self.latestVersion = dict["latestVersion"] as! String
            }
            if dict.keys.contains("moduleId") {
                self.moduleId = dict["moduleId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
        }
    }
    public var modules: [ListRelationModulesResponseBody.Modules]?

    public var requestId: String?

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
        if self.modules != nil {
            var tmp : [Any] = []
            for k in self.modules! {
                tmp.append(k.toMap())
            }
            map["modules"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("modules") {
            self.modules = dict["modules"] as! [ListRelationModulesResponseBody.Modules]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListRelationModulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRelationModulesResponseBody?

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
            var model = ListRelationModulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRelationTasksRequest : Tea.TeaModel {
    public var keyword: String?

    public var moduleId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.moduleId != nil {
            map["moduleId"] = self.moduleId!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("moduleId") {
            self.moduleId = dict["moduleId"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
    }
}

public class ListRelationTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var createTime: String?

        public var moduleId: String?

        public var moduleVersion: String?

        public var name: String?

        public var status: String?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.moduleVersion != nil {
                map["moduleVersion"] = self.moduleVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("moduleId") {
                self.moduleId = dict["moduleId"] as! String
            }
            if dict.keys.contains("moduleVersion") {
                self.moduleVersion = dict["moduleVersion"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tasks: [ListRelationTasksResponseBody.Tasks]?

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
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["tasks"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("tasks") {
            self.tasks = dict["tasks"] as! [ListRelationTasksResponseBody.Tasks]
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int64
        }
    }
}

public class ListRelationTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRelationTasksResponseBody?

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
            var model = ListRelationTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourceExportTaskVersionsRequest : Tea.TeaModel {
    public var exportVersion: String?

    public var keyword: String?

    public var pageNumber: Int32?

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
        if self.exportVersion != nil {
            map["exportVersion"] = self.exportVersion!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
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
        if dict.keys.contains("exportVersion") {
            self.exportVersion = dict["exportVersion"] as! String
        }
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
    }
}

public class ListResourceExportTaskVersionsResponseBody : Tea.TeaModel {
    public class ExportTasks : Tea.TeaModel {
        public class ExcludeRules : Tea.TeaModel {
            public var key: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                if self.values != nil {
                    map["values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("values") {
                    self.values = dict["values"] as! [String]
                }
            }
        }
        public class ExportToModule : Tea.TeaModel {
            public var source: String?

            public var sourcePath: String?

            public var statePath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.source != nil {
                    map["source"] = self.source!
                }
                if self.sourcePath != nil {
                    map["sourcePath"] = self.sourcePath!
                }
                if self.statePath != nil {
                    map["statePath"] = self.statePath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("source") {
                    self.source = dict["source"] as! String
                }
                if dict.keys.contains("sourcePath") {
                    self.sourcePath = dict["sourcePath"] as! String
                }
                if dict.keys.contains("statePath") {
                    self.statePath = dict["statePath"] as! String
                }
            }
        }
        public class IncludeRules : Tea.TeaModel {
            public var key: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                if self.values != nil {
                    map["values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("values") {
                    self.values = dict["values"] as! [String]
                }
            }
        }
        public class Modules : Tea.TeaModel {
            public var source: String?

            public var sourcePath: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.source != nil {
                    map["source"] = self.source!
                }
                if self.sourcePath != nil {
                    map["sourcePath"] = self.sourcePath!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("source") {
                    self.source = dict["source"] as! String
                }
                if dict.keys.contains("sourcePath") {
                    self.sourcePath = dict["sourcePath"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
            }
        }
        public class Variables : Tea.TeaModel {
            public var properties: [String]?

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
                if self.properties != nil {
                    map["properties"] = self.properties!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("properties") {
                    self.properties = dict["properties"] as! [String]
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var excludeRules: [ListResourceExportTaskVersionsResponseBody.ExportTasks.ExcludeRules]?

        public var exportTaskId: String?

        public var exportToModule: ListResourceExportTaskVersionsResponseBody.ExportTasks.ExportToModule?

        public var exportVersion: String?

        public var failedReason: String?

        public var hasDestroy: Bool?

        public var includeRules: [ListResourceExportTaskVersionsResponseBody.ExportTasks.IncludeRules]?

        public var modules: [ListResourceExportTaskVersionsResponseBody.ExportTasks.Modules]?

        public var name: String?

        public var status: String?

        public var variables: [ListResourceExportTaskVersionsResponseBody.ExportTasks.Variables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.exportToModule?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.excludeRules != nil {
                var tmp : [Any] = []
                for k in self.excludeRules! {
                    tmp.append(k.toMap())
                }
                map["excludeRules"] = tmp
            }
            if self.exportTaskId != nil {
                map["exportTaskId"] = self.exportTaskId!
            }
            if self.exportToModule != nil {
                map["exportToModule"] = self.exportToModule?.toMap()
            }
            if self.exportVersion != nil {
                map["exportVersion"] = self.exportVersion!
            }
            if self.failedReason != nil {
                map["failedReason"] = self.failedReason!
            }
            if self.hasDestroy != nil {
                map["hasDestroy"] = self.hasDestroy!
            }
            if self.includeRules != nil {
                var tmp : [Any] = []
                for k in self.includeRules! {
                    tmp.append(k.toMap())
                }
                map["includeRules"] = tmp
            }
            if self.modules != nil {
                var tmp : [Any] = []
                for k in self.modules! {
                    tmp.append(k.toMap())
                }
                map["modules"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
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
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("excludeRules") {
                self.excludeRules = dict["excludeRules"] as! [ListResourceExportTaskVersionsResponseBody.ExportTasks.ExcludeRules]
            }
            if dict.keys.contains("exportTaskId") {
                self.exportTaskId = dict["exportTaskId"] as! String
            }
            if dict.keys.contains("exportToModule") {
                var model = ListResourceExportTaskVersionsResponseBody.ExportTasks.ExportToModule()
                model.fromMap(dict["exportToModule"] as! [String: Any])
                self.exportToModule = model
            }
            if dict.keys.contains("exportVersion") {
                self.exportVersion = dict["exportVersion"] as! String
            }
            if dict.keys.contains("failedReason") {
                self.failedReason = dict["failedReason"] as! String
            }
            if dict.keys.contains("hasDestroy") {
                self.hasDestroy = dict["hasDestroy"] as! Bool
            }
            if dict.keys.contains("includeRules") {
                self.includeRules = dict["includeRules"] as! [ListResourceExportTaskVersionsResponseBody.ExportTasks.IncludeRules]
            }
            if dict.keys.contains("modules") {
                self.modules = dict["modules"] as! [ListResourceExportTaskVersionsResponseBody.ExportTasks.Modules]
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("variables") {
                self.variables = dict["variables"] as! [ListResourceExportTaskVersionsResponseBody.ExportTasks.Variables]
            }
        }
    }
    public var exportTasks: [ListResourceExportTaskVersionsResponseBody.ExportTasks]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.exportTasks != nil {
            var tmp : [Any] = []
            for k in self.exportTasks! {
                tmp.append(k.toMap())
            }
            map["exportTasks"] = tmp
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
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("exportTasks") {
            self.exportTasks = dict["exportTasks"] as! [ListResourceExportTaskVersionsResponseBody.ExportTasks]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListResourceExportTaskVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceExportTaskVersionsResponseBody?

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
            var model = ListResourceExportTaskVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourceExportTasksRequest : Tea.TeaModel {
    public var exportTaskId: String?

    public var keyword: String?

    public var pageNumber: Int32?

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
        if self.exportTaskId != nil {
            map["exportTaskId"] = self.exportTaskId!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("exportTaskId") {
            self.exportTaskId = dict["exportTaskId"] as! String
        }
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListResourceExportTasksResponseBody : Tea.TeaModel {
    public class ExportTasks : Tea.TeaModel {
        public class ExcludeRules : Tea.TeaModel {
            public var key: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                if self.values != nil {
                    map["values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("values") {
                    self.values = dict["values"] as! [String]
                }
            }
        }
        public class ExportToModule : Tea.TeaModel {
            public var source: String?

            public var sourcePath: String?

            public var statePath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.source != nil {
                    map["source"] = self.source!
                }
                if self.sourcePath != nil {
                    map["sourcePath"] = self.sourcePath!
                }
                if self.statePath != nil {
                    map["statePath"] = self.statePath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("source") {
                    self.source = dict["source"] as! String
                }
                if dict.keys.contains("sourcePath") {
                    self.sourcePath = dict["sourcePath"] as! String
                }
                if dict.keys.contains("statePath") {
                    self.statePath = dict["statePath"] as! String
                }
            }
        }
        public class IncludeRules : Tea.TeaModel {
            public var key: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                if self.values != nil {
                    map["values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("values") {
                    self.values = dict["values"] as! [String]
                }
            }
        }
        public class Modules : Tea.TeaModel {
            public var source: String?

            public var sourcePath: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.source != nil {
                    map["source"] = self.source!
                }
                if self.sourcePath != nil {
                    map["sourcePath"] = self.sourcePath!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("source") {
                    self.source = dict["source"] as! String
                }
                if dict.keys.contains("sourcePath") {
                    self.sourcePath = dict["sourcePath"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
            }
        }
        public class Variables : Tea.TeaModel {
            public var properties: [String]?

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
                if self.properties != nil {
                    map["properties"] = self.properties!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("properties") {
                    self.properties = dict["properties"] as! [String]
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var excludeRules: [ListResourceExportTasksResponseBody.ExportTasks.ExcludeRules]?

        public var exportTaskId: String?

        public var exportToModule: ListResourceExportTasksResponseBody.ExportTasks.ExportToModule?

        public var exportVersion: String?

        public var hasDestroy: Bool?

        public var includeRules: [ListResourceExportTasksResponseBody.ExportTasks.IncludeRules]?

        public var modules: [ListResourceExportTasksResponseBody.ExportTasks.Modules]?

        public var name: String?

        public var status: String?

        public var variables: [ListResourceExportTasksResponseBody.ExportTasks.Variables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.exportToModule?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.excludeRules != nil {
                var tmp : [Any] = []
                for k in self.excludeRules! {
                    tmp.append(k.toMap())
                }
                map["excludeRules"] = tmp
            }
            if self.exportTaskId != nil {
                map["exportTaskId"] = self.exportTaskId!
            }
            if self.exportToModule != nil {
                map["exportToModule"] = self.exportToModule?.toMap()
            }
            if self.exportVersion != nil {
                map["exportVersion"] = self.exportVersion!
            }
            if self.hasDestroy != nil {
                map["hasDestroy"] = self.hasDestroy!
            }
            if self.includeRules != nil {
                var tmp : [Any] = []
                for k in self.includeRules! {
                    tmp.append(k.toMap())
                }
                map["includeRules"] = tmp
            }
            if self.modules != nil {
                var tmp : [Any] = []
                for k in self.modules! {
                    tmp.append(k.toMap())
                }
                map["modules"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
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
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("excludeRules") {
                self.excludeRules = dict["excludeRules"] as! [ListResourceExportTasksResponseBody.ExportTasks.ExcludeRules]
            }
            if dict.keys.contains("exportTaskId") {
                self.exportTaskId = dict["exportTaskId"] as! String
            }
            if dict.keys.contains("exportToModule") {
                var model = ListResourceExportTasksResponseBody.ExportTasks.ExportToModule()
                model.fromMap(dict["exportToModule"] as! [String: Any])
                self.exportToModule = model
            }
            if dict.keys.contains("exportVersion") {
                self.exportVersion = dict["exportVersion"] as! String
            }
            if dict.keys.contains("hasDestroy") {
                self.hasDestroy = dict["hasDestroy"] as! Bool
            }
            if dict.keys.contains("includeRules") {
                self.includeRules = dict["includeRules"] as! [ListResourceExportTasksResponseBody.ExportTasks.IncludeRules]
            }
            if dict.keys.contains("modules") {
                self.modules = dict["modules"] as! [ListResourceExportTasksResponseBody.ExportTasks.Modules]
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("variables") {
                self.variables = dict["variables"] as! [ListResourceExportTasksResponseBody.ExportTasks.Variables]
            }
        }
    }
    public var exportTasks: [ListResourceExportTasksResponseBody.ExportTasks]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.exportTasks != nil {
            var tmp : [Any] = []
            for k in self.exportTasks! {
                tmp.append(k.toMap())
            }
            map["exportTasks"] = tmp
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
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("exportTasks") {
            self.exportTasks = dict["exportTasks"] as! [ListResourceExportTasksResponseBody.ExportTasks]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListResourceExportTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceExportTasksResponseBody?

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
            var model = ListResourceExportTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourcesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sourceType: String?

    public var sourceValue: String?

    public var specType: String?

    public override init() {
        super.init()
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
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.sourceValue != nil {
            map["sourceValue"] = self.sourceValue!
        }
        if self.specType != nil {
            map["specType"] = self.specType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("sourceType") {
            self.sourceType = dict["sourceType"] as! String
        }
        if dict.keys.contains("sourceValue") {
            self.sourceValue = dict["sourceValue"] as! String
        }
        if dict.keys.contains("specType") {
            self.specType = dict["specType"] as! String
        }
    }
}

public class ListResourcesResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var tagKey: String?

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
                if self.tagKey != nil {
                    map["tagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["tagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("tagKey") {
                    self.tagKey = dict["tagKey"] as! String
                }
                if dict.keys.contains("tagValue") {
                    self.tagValue = dict["tagValue"] as! String
                }
            }
        }
        public var accountId: String?

        public var createTime: String?

        public var dependsOnResourceIds: [String]?

        public var productCode: String?

        public var properties: [String: Any]?

        public var propertyVariables: [String: Any]?

        public var regionId: String?

        public var resourceArn: String?

        public var resourceGroupId: String?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceType: String?

        public var status: String?

        public var tags: [ListResourcesResponseBody.Resources.Tags]?

        public var terraformArn: String?

        public var terraformCode: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.dependsOnResourceIds != nil {
                map["dependsOnResourceIds"] = self.dependsOnResourceIds!
            }
            if self.productCode != nil {
                map["productCode"] = self.productCode!
            }
            if self.properties != nil {
                map["properties"] = self.properties!
            }
            if self.propertyVariables != nil {
                map["propertyVariables"] = self.propertyVariables!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.resourceArn != nil {
                map["resourceArn"] = self.resourceArn!
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceId != nil {
                map["resourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["resourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.terraformArn != nil {
                map["terraformArn"] = self.terraformArn!
            }
            if self.terraformCode != nil {
                map["terraformCode"] = self.terraformCode!
            }
            if self.zoneId != nil {
                map["zoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") {
                self.accountId = dict["accountId"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("dependsOnResourceIds") {
                self.dependsOnResourceIds = dict["dependsOnResourceIds"] as! [String]
            }
            if dict.keys.contains("productCode") {
                self.productCode = dict["productCode"] as! String
            }
            if dict.keys.contains("properties") {
                self.properties = dict["properties"] as! [String: Any]
            }
            if dict.keys.contains("propertyVariables") {
                self.propertyVariables = dict["propertyVariables"] as! [String: Any]
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("resourceArn") {
                self.resourceArn = dict["resourceArn"] as! String
            }
            if dict.keys.contains("resourceGroupId") {
                self.resourceGroupId = dict["resourceGroupId"] as! String
            }
            if dict.keys.contains("resourceId") {
                self.resourceId = dict["resourceId"] as! String
            }
            if dict.keys.contains("resourceName") {
                self.resourceName = dict["resourceName"] as! String
            }
            if dict.keys.contains("resourceType") {
                self.resourceType = dict["resourceType"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("tags") {
                self.tags = dict["tags"] as! [ListResourcesResponseBody.Resources.Tags]
            }
            if dict.keys.contains("terraformArn") {
                self.terraformArn = dict["terraformArn"] as! String
            }
            if dict.keys.contains("terraformCode") {
                self.terraformCode = dict["terraformCode"] as! String
            }
            if dict.keys.contains("zoneId") {
                self.zoneId = dict["zoneId"] as! String
            }
        }
    }
    public var resources: [ListResourcesResponseBody.Resources]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
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
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! [ListResourcesResponseBody.Resources]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourcesResponseBody?

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
            var model = ListResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTaskResourceRequest : Tea.TeaModel {
    public var pageNumber: String?

    public var pageSize: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! String
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! String
        }
    }
}

public class ListTaskResourceResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var instanceAttribute: String?

        public var instanceId: String?

        public var jobId: String?

        public var name: String?

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
            if self.instanceAttribute != nil {
                map["instanceAttribute"] = self.instanceAttribute!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.jobId != nil {
                map["jobId"] = self.jobId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("instanceAttribute") {
                self.instanceAttribute = dict["instanceAttribute"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("jobId") {
                self.jobId = dict["jobId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var count: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var resources: [ListTaskResourceResponseBody.Resources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.count != nil {
            map["count"] = self.count!
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
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["resources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("count") {
            self.count = dict["count"] as! Int64
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("resources") {
            self.resources = dict["resources"] as! [ListTaskResourceResponseBody.Resources]
        }
    }
}

public class ListTaskResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTaskResourceResponseBody?

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
            var model = ListTaskResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTasksRequest : Tea.TeaModel {
    public var groupId: String?

    public var keyword: String?

    public var moduleId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["groupId"] = self.groupId!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.moduleId != nil {
            map["moduleId"] = self.moduleId!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("groupId") {
            self.groupId = dict["groupId"] as! String
        }
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("moduleId") {
            self.moduleId = dict["moduleId"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class ListTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public class GroupInfo : Tea.TeaModel {
            public var groupId: String?

            public var groupName: String?

            public var projectId: String?

            public var projectName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.groupId != nil {
                    map["groupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["groupName"] = self.groupName!
                }
                if self.projectId != nil {
                    map["projectId"] = self.projectId!
                }
                if self.projectName != nil {
                    map["projectName"] = self.projectName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("groupId") {
                    self.groupId = dict["groupId"] as! String
                }
                if dict.keys.contains("groupName") {
                    self.groupName = dict["groupName"] as! String
                }
                if dict.keys.contains("projectId") {
                    self.projectId = dict["projectId"] as! String
                }
                if dict.keys.contains("projectName") {
                    self.projectName = dict["projectName"] as! String
                }
            }
        }
        public var createTime: String?

        public var currentJobId: String?

        public var currentJobStatus: String?

        public var groupInfo: ListTasksResponseBody.Tasks.GroupInfo?

        public var hasDestroy: Bool?

        public var moduleId: String?

        public var moduleVersion: String?

        public var name: String?

        public var status: String?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.groupInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.currentJobId != nil {
                map["currentJobId"] = self.currentJobId!
            }
            if self.currentJobStatus != nil {
                map["currentJobStatus"] = self.currentJobStatus!
            }
            if self.groupInfo != nil {
                map["groupInfo"] = self.groupInfo?.toMap()
            }
            if self.hasDestroy != nil {
                map["hasDestroy"] = self.hasDestroy!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.moduleVersion != nil {
                map["moduleVersion"] = self.moduleVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("currentJobId") {
                self.currentJobId = dict["currentJobId"] as! String
            }
            if dict.keys.contains("currentJobStatus") {
                self.currentJobStatus = dict["currentJobStatus"] as! String
            }
            if dict.keys.contains("groupInfo") {
                var model = ListTasksResponseBody.Tasks.GroupInfo()
                model.fromMap(dict["groupInfo"] as! [String: Any])
                self.groupInfo = model
            }
            if dict.keys.contains("hasDestroy") {
                self.hasDestroy = dict["hasDestroy"] as! Bool
            }
            if dict.keys.contains("moduleId") {
                self.moduleId = dict["moduleId"] as! String
            }
            if dict.keys.contains("moduleVersion") {
                self.moduleVersion = dict["moduleVersion"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tasks: [ListTasksResponseBody.Tasks]?

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
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["tasks"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("tasks") {
            self.tasks = dict["tasks"] as! [ListTasksResponseBody.Tasks]
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTasksResponseBody?

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
            var model = ListTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OperateJobRequest : Tea.TeaModel {
    public var comment: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("comment") {
            self.comment = dict["comment"] as! String
        }
    }
}

public class OperateJobResponseBody : Tea.TeaModel {
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

public class OperateJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateJobResponseBody?

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
            var model = OperateJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveResourceExportTaskVersionResponseBody : Tea.TeaModel {
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

public class RemoveResourceExportTaskVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveResourceExportTaskVersionResponseBody?

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
            var model = RemoveResourceExportTaskVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAuthorizationAttributeRequest : Tea.TeaModel {
    public var dueTime: String?

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
        if self.dueTime != nil {
            map["dueTime"] = self.dueTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dueTime") {
            self.dueTime = dict["dueTime"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class UpdateAuthorizationAttributeResponseBody : Tea.TeaModel {
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

public class UpdateAuthorizationAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAuthorizationAttributeResponseBody?

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
            var model = UpdateAuthorizationAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class UpdateGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var projectId: String?

        public var taskCnt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.taskCnt != nil {
                map["taskCnt"] = self.taskCnt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("projectId") {
                self.projectId = dict["projectId"] as! String
            }
            if dict.keys.contains("taskCnt") {
                self.taskCnt = dict["taskCnt"] as! Int64
            }
        }
    }
    public var group: UpdateGroupResponseBody.Group?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.group?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.group != nil {
            map["group"] = self.group?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("group") {
            var model = UpdateGroupResponseBody.Group()
            model.fromMap(dict["group"] as! [String: Any])
            self.group = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupResponseBody?

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
            var model = UpdateGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateModuleAttributeRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var source: String?

    public var sourcePath: String?

    public var statePath: String?

    public var versionStrategy: String?

    public override init() {
        super.init()
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
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.sourcePath != nil {
            map["sourcePath"] = self.sourcePath!
        }
        if self.statePath != nil {
            map["statePath"] = self.statePath!
        }
        if self.versionStrategy != nil {
            map["versionStrategy"] = self.versionStrategy!
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
        if dict.keys.contains("source") {
            self.source = dict["source"] as! String
        }
        if dict.keys.contains("sourcePath") {
            self.sourcePath = dict["sourcePath"] as! String
        }
        if dict.keys.contains("statePath") {
            self.statePath = dict["statePath"] as! String
        }
        if dict.keys.contains("versionStrategy") {
            self.versionStrategy = dict["versionStrategy"] as! String
        }
    }
}

public class UpdateModuleAttributeResponseBody : Tea.TeaModel {
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

public class UpdateModuleAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateModuleAttributeResponseBody?

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
            var model = UpdateModuleAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateModuleMarketAttributeRequest : Tea.TeaModel {
    public var description_: String?

    public var moduleDetail: String?

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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.moduleDetail != nil {
            map["moduleDetail"] = self.moduleDetail!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("moduleDetail") {
            self.moduleDetail = dict["moduleDetail"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class UpdateModuleMarketAttributeResponseBody : Tea.TeaModel {
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

public class UpdateModuleMarketAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateModuleMarketAttributeResponseBody?

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
            var model = UpdateModuleMarketAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateParameterSetAttributeRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var name: String?

        public var type: String?

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
            if self.type != nil {
                map["type"] = self.type!
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
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var description_: String?

    public var name: String?

    public var parameters: [UpdateParameterSetAttributeRequest.Parameters]?

    public override init() {
        super.init()
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
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["parameters"] = tmp
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
        if dict.keys.contains("parameters") {
            self.parameters = dict["parameters"] as! [UpdateParameterSetAttributeRequest.Parameters]
        }
    }
}

public class UpdateParameterSetAttributeResponseBody : Tea.TeaModel {
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

public class UpdateParameterSetAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateParameterSetAttributeResponseBody?

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
            var model = UpdateParameterSetAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProjectRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class UpdateProjectResponseBody : Tea.TeaModel {
    public class Project : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var groupCnt: Int64?

        public var id: String?

        public var name: String?

        public var taskCnt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.groupCnt != nil {
                map["groupCnt"] = self.groupCnt!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.taskCnt != nil {
                map["taskCnt"] = self.taskCnt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("groupCnt") {
                self.groupCnt = dict["groupCnt"] as! Int64
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("taskCnt") {
                self.taskCnt = dict["taskCnt"] as! Int64
            }
        }
    }
    public var project: UpdateProjectResponseBody.Project?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.project?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["project"] = self.project?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("project") {
            var model = UpdateProjectResponseBody.Project()
            model.fromMap(dict["project"] as! [String: Any])
            self.project = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProjectResponseBody?

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
            var model = UpdateProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateRabbitmqPublisherAttributeRequest : Tea.TeaModel {
    public var description_: String?

    public var exchangeName: String?

    public var exchangeType: String?

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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.exchangeName != nil {
            map["exchangeName"] = self.exchangeName!
        }
        if self.exchangeType != nil {
            map["exchangeType"] = self.exchangeType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("exchangeName") {
            self.exchangeName = dict["exchangeName"] as! String
        }
        if dict.keys.contains("exchangeType") {
            self.exchangeType = dict["exchangeType"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class UpdateRabbitmqPublisherAttributeResponseBody : Tea.TeaModel {
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

public class UpdateRabbitmqPublisherAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRabbitmqPublisherAttributeResponseBody?

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
            var model = UpdateRabbitmqPublisherAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateResourceExportTaskAttributeRequest : Tea.TeaModel {
    public class ExcludeRules : Tea.TeaModel {
        public var key: String?

        public var values: [String]?

        public override init() {
            super.init()
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
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("values") {
                self.values = dict["values"] as! [String]
            }
        }
    }
    public class ExportToModule : Tea.TeaModel {
        public var source: String?

        public var sourcePath: String?

        public var statePath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.sourcePath != nil {
                map["sourcePath"] = self.sourcePath!
            }
            if self.statePath != nil {
                map["statePath"] = self.statePath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("source") {
                self.source = dict["source"] as! String
            }
            if dict.keys.contains("sourcePath") {
                self.sourcePath = dict["sourcePath"] as! String
            }
            if dict.keys.contains("statePath") {
                self.statePath = dict["statePath"] as! String
            }
        }
    }
    public class IncludeRules : Tea.TeaModel {
        public var key: String?

        public var values: [String]?

        public override init() {
            super.init()
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
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("values") {
                self.values = dict["values"] as! [String]
            }
        }
    }
    public class Variables : Tea.TeaModel {
        public var properties: [String]?

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
            if self.properties != nil {
                map["properties"] = self.properties!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("properties") {
                self.properties = dict["properties"] as! [String]
            }
            if dict.keys.contains("resourceType") {
                self.resourceType = dict["resourceType"] as! String
            }
        }
    }
    public var clientToken: String?

    public var description_: String?

    public var excludeRules: [UpdateResourceExportTaskAttributeRequest.ExcludeRules]?

    public var exportToModule: UpdateResourceExportTaskAttributeRequest.ExportToModule?

    public var includeRules: [UpdateResourceExportTaskAttributeRequest.IncludeRules]?

    public var name: String?

    public var ramRole: String?

    public var terraformVersion: String?

    public var triggerStrategy: String?

    public var variables: [UpdateResourceExportTaskAttributeRequest.Variables]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.exportToModule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.excludeRules != nil {
            var tmp : [Any] = []
            for k in self.excludeRules! {
                tmp.append(k.toMap())
            }
            map["excludeRules"] = tmp
        }
        if self.exportToModule != nil {
            map["exportToModule"] = self.exportToModule?.toMap()
        }
        if self.includeRules != nil {
            var tmp : [Any] = []
            for k in self.includeRules! {
                tmp.append(k.toMap())
            }
            map["includeRules"] = tmp
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.ramRole != nil {
            map["ramRole"] = self.ramRole!
        }
        if self.terraformVersion != nil {
            map["terraformVersion"] = self.terraformVersion!
        }
        if self.triggerStrategy != nil {
            map["triggerStrategy"] = self.triggerStrategy!
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
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("excludeRules") {
            self.excludeRules = dict["excludeRules"] as! [UpdateResourceExportTaskAttributeRequest.ExcludeRules]
        }
        if dict.keys.contains("exportToModule") {
            var model = UpdateResourceExportTaskAttributeRequest.ExportToModule()
            model.fromMap(dict["exportToModule"] as! [String: Any])
            self.exportToModule = model
        }
        if dict.keys.contains("includeRules") {
            self.includeRules = dict["includeRules"] as! [UpdateResourceExportTaskAttributeRequest.IncludeRules]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("ramRole") {
            self.ramRole = dict["ramRole"] as! String
        }
        if dict.keys.contains("terraformVersion") {
            self.terraformVersion = dict["terraformVersion"] as! String
        }
        if dict.keys.contains("triggerStrategy") {
            self.triggerStrategy = dict["triggerStrategy"] as! String
        }
        if dict.keys.contains("variables") {
            self.variables = dict["variables"] as! [UpdateResourceExportTaskAttributeRequest.Variables]
        }
    }
}

public class UpdateResourceExportTaskAttributeResponseBody : Tea.TeaModel {
    public var exportTaskId: String?

    public var exportVersion: String?

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
        if self.exportTaskId != nil {
            map["exportTaskId"] = self.exportTaskId!
        }
        if self.exportVersion != nil {
            map["exportVersion"] = self.exportVersion!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("exportTaskId") {
            self.exportTaskId = dict["exportTaskId"] as! String
        }
        if dict.keys.contains("exportVersion") {
            self.exportVersion = dict["exportVersion"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateResourceExportTaskAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceExportTaskAttributeResponseBody?

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
            var model = UpdateResourceExportTaskAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTaskAttributeRequest : Tea.TeaModel {
    public class GroupInfo : Tea.TeaModel {
        public var groupId: String?

        public var projectId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupId != nil {
                map["groupId"] = self.groupId!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("groupId") {
                self.groupId = dict["groupId"] as! String
            }
            if dict.keys.contains("projectId") {
                self.projectId = dict["projectId"] as! String
            }
        }
    }
    public var autoApply: Bool?

    public var groupInfo: UpdateTaskAttributeRequest.GroupInfo?

    public var moduleId: String?

    public var moduleVersion: String?

    public var name: String?

    public var parameters: [String: String]?

    public var protectionStrategy: [String]?

    public var ramRole: String?

    public var terraformVersion: String?

    public var triggerStrategy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoApply != nil {
            map["autoApply"] = self.autoApply!
        }
        if self.groupInfo != nil {
            map["groupInfo"] = self.groupInfo?.toMap()
        }
        if self.moduleId != nil {
            map["moduleId"] = self.moduleId!
        }
        if self.moduleVersion != nil {
            map["moduleVersion"] = self.moduleVersion!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        if self.protectionStrategy != nil {
            map["protectionStrategy"] = self.protectionStrategy!
        }
        if self.ramRole != nil {
            map["ramRole"] = self.ramRole!
        }
        if self.terraformVersion != nil {
            map["terraformVersion"] = self.terraformVersion!
        }
        if self.triggerStrategy != nil {
            map["triggerStrategy"] = self.triggerStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoApply") {
            self.autoApply = dict["autoApply"] as! Bool
        }
        if dict.keys.contains("groupInfo") {
            var model = UpdateTaskAttributeRequest.GroupInfo()
            model.fromMap(dict["groupInfo"] as! [String: Any])
            self.groupInfo = model
        }
        if dict.keys.contains("moduleId") {
            self.moduleId = dict["moduleId"] as! String
        }
        if dict.keys.contains("moduleVersion") {
            self.moduleVersion = dict["moduleVersion"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("parameters") {
            self.parameters = dict["parameters"] as! [String: String]
        }
        if dict.keys.contains("protectionStrategy") {
            self.protectionStrategy = dict["protectionStrategy"] as! [String]
        }
        if dict.keys.contains("ramRole") {
            self.ramRole = dict["ramRole"] as! String
        }
        if dict.keys.contains("terraformVersion") {
            self.terraformVersion = dict["terraformVersion"] as! String
        }
        if dict.keys.contains("triggerStrategy") {
            self.triggerStrategy = dict["triggerStrategy"] as! String
        }
    }
}

public class UpdateTaskAttributeResponseBody : Tea.TeaModel {
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

public class UpdateTaskAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTaskAttributeResponseBody?

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
            var model = UpdateTaskAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
