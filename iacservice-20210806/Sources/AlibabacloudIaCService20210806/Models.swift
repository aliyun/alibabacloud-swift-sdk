import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class JobStatusDetailValue : Tea.TeaModel {
    public var comment: String?

    public var jobResult: String?

    public var timeStamps: String?

    public override init() {
        super.init()
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
        if self.jobResult != nil {
            map["jobResult"] = self.jobResult!
        }
        if self.timeStamps != nil {
            map["timeStamps"] = self.timeStamps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("comment") {
            self.comment = dict["comment"] as! String
        }
        if dict.keys.contains("jobResult") {
            self.jobResult = dict["jobResult"] as! String
        }
        if dict.keys.contains("timeStamps") {
            self.timeStamps = dict["timeStamps"] as! String
        }
    }
}

public class JobsStatusDetailValue : Tea.TeaModel {
    public var comment: String?

    public var jobResult: String?

    public var timeStamps: String?

    public override init() {
        super.init()
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
        if self.jobResult != nil {
            map["jobResult"] = self.jobResult!
        }
        if self.timeStamps != nil {
            map["timeStamps"] = self.timeStamps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("comment") {
            self.comment = dict["comment"] as! String
        }
        if dict.keys.contains("jobResult") {
            self.jobResult = dict["jobResult"] as! String
        }
        if dict.keys.contains("timeStamps") {
            self.timeStamps = dict["timeStamps"] as! String
        }
    }
}

public class AssociateGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var projectId: String?

    public var resourceIds: [String]?

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.resourceIds != nil {
            map["resourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("resourceIds") {
            self.resourceIds = dict["resourceIds"] as! [String]
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
    }
}

public class AssociateGroupResponseBody : Tea.TeaModel {
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

public class AssociateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateGroupResponseBody?

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
            var model = AssociateGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class CancelProjectBuildResponseBody : Tea.TeaModel {
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

public class CancelProjectBuildResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelProjectBuildResponseBody?

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
            var model = CancelProjectBuildResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelRamPolicyExportTaskResponseBody : Tea.TeaModel {
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

public class CancelRamPolicyExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelRamPolicyExportTaskResponseBody?

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
            var model = CancelRamPolicyExportTaskResponseBody()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class CheckResourceNameRequest : Tea.TeaModel {
    public var id: String?

    public var name: String?

    public var parentId: String?

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
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("parentId") {
            self.parentId = dict["parentId"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
    }
}

public class CheckResourceNameResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! Bool
        }
    }
}

public class CheckResourceNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckResourceNameResponseBody?

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
            var model = CheckResourceNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CloneGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var projectId: String?

    public var resourceTypes: [String]?

    public override init() {
        super.init()
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
        if self.resourceTypes != nil {
            map["resourceTypes"] = self.resourceTypes!
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
        if dict.keys.contains("resourceTypes") {
            self.resourceTypes = dict["resourceTypes"] as! [String]
        }
    }
}

public class CloneGroupResponseBody : Tea.TeaModel {
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

public class CloneGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloneGroupResponseBody?

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
            var model = CloneGroupResponseBody()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class CreateExplorerTaskRequest : Tea.TeaModel {
    public var initModuleState: Bool?

    public var terraformVersion: String?

    public var autoApply: Bool?

    public var autoDestroy: Bool?

    public var clientToken: String?

    public var description_: String?

    public var moduleId: String?

    public var moduleVersion: String?

    public var name: String?

    public var skipPropertyValidation: Bool?

    public var terraformProviderVersion: String?

    public var triggerValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.initModuleState != nil {
            map["InitModuleState"] = self.initModuleState!
        }
        if self.terraformVersion != nil {
            map["TerraformVersion"] = self.terraformVersion!
        }
        if self.autoApply != nil {
            map["autoApply"] = self.autoApply!
        }
        if self.autoDestroy != nil {
            map["autoDestroy"] = self.autoDestroy!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
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
        if self.skipPropertyValidation != nil {
            map["skipPropertyValidation"] = self.skipPropertyValidation!
        }
        if self.terraformProviderVersion != nil {
            map["terraformProviderVersion"] = self.terraformProviderVersion!
        }
        if self.triggerValue != nil {
            map["triggerValue"] = self.triggerValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InitModuleState") {
            self.initModuleState = dict["InitModuleState"] as! Bool
        }
        if dict.keys.contains("TerraformVersion") {
            self.terraformVersion = dict["TerraformVersion"] as! String
        }
        if dict.keys.contains("autoApply") {
            self.autoApply = dict["autoApply"] as! Bool
        }
        if dict.keys.contains("autoDestroy") {
            self.autoDestroy = dict["autoDestroy"] as! Bool
        }
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
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
        if dict.keys.contains("skipPropertyValidation") {
            self.skipPropertyValidation = dict["skipPropertyValidation"] as! Bool
        }
        if dict.keys.contains("terraformProviderVersion") {
            self.terraformProviderVersion = dict["terraformProviderVersion"] as! String
        }
        if dict.keys.contains("triggerValue") {
            self.triggerValue = dict["triggerValue"] as! String
        }
    }
}

public class CreateExplorerTaskResponseBody : Tea.TeaModel {
    public var explorerTaskId: String?

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
        if self.explorerTaskId != nil {
            map["explorerTaskId"] = self.explorerTaskId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("explorerTaskId") {
            self.explorerTaskId = dict["explorerTaskId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateExplorerTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateExplorerTaskResponseBody?

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
            var model = CreateExplorerTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGroupRequest : Tea.TeaModel {
    public class NotifyConfig : Tea.TeaModel {
        public var notifyPath: String?

        public var notifyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.notifyPath != nil {
                map["notifyPath"] = self.notifyPath!
            }
            if self.notifyType != nil {
                map["notifyType"] = self.notifyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("notifyPath") {
                self.notifyPath = dict["notifyPath"] as! String
            }
            if dict.keys.contains("notifyType") {
                self.notifyType = dict["notifyType"] as! String
            }
        }
    }
    public class TriggerConfig : Tea.TeaModel {
        public var triggerStrategy: String?

        public var triggerValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.triggerStrategy != nil {
                map["triggerStrategy"] = self.triggerStrategy!
            }
            if self.triggerValue != nil {
                map["triggerValue"] = self.triggerValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("triggerStrategy") {
                self.triggerStrategy = dict["triggerStrategy"] as! String
            }
            if dict.keys.contains("triggerValue") {
                self.triggerValue = dict["triggerValue"] as! String
            }
        }
    }
    public var autoDestroy: Bool?

    public var autoTrigger: Bool?

    public var clientToken: String?

    public var description_: String?

    public var forcedSetting: Bool?

    public var name: String?

    public var notifyConfig: [CreateGroupRequest.NotifyConfig]?

    public var notifyOperationTypes: [String]?

    public var projectId: String?

    public var ramRole: String?

    public var reportExportField: [String]?

    public var reportExportPath: String?

    public var terraformProviderVersion: String?

    public var triggerConfig: [CreateGroupRequest.TriggerConfig]?

    public var triggerResourceType: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoDestroy != nil {
            map["autoDestroy"] = self.autoDestroy!
        }
        if self.autoTrigger != nil {
            map["autoTrigger"] = self.autoTrigger!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.forcedSetting != nil {
            map["forcedSetting"] = self.forcedSetting!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.notifyConfig != nil {
            var tmp : [Any] = []
            for k in self.notifyConfig! {
                tmp.append(k.toMap())
            }
            map["notifyConfig"] = tmp
        }
        if self.notifyOperationTypes != nil {
            map["notifyOperationTypes"] = self.notifyOperationTypes!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.ramRole != nil {
            map["ramRole"] = self.ramRole!
        }
        if self.reportExportField != nil {
            map["reportExportField"] = self.reportExportField!
        }
        if self.reportExportPath != nil {
            map["reportExportPath"] = self.reportExportPath!
        }
        if self.terraformProviderVersion != nil {
            map["terraformProviderVersion"] = self.terraformProviderVersion!
        }
        if self.triggerConfig != nil {
            var tmp : [Any] = []
            for k in self.triggerConfig! {
                tmp.append(k.toMap())
            }
            map["triggerConfig"] = tmp
        }
        if self.triggerResourceType != nil {
            map["triggerResourceType"] = self.triggerResourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoDestroy") {
            self.autoDestroy = dict["autoDestroy"] as! Bool
        }
        if dict.keys.contains("autoTrigger") {
            self.autoTrigger = dict["autoTrigger"] as! Bool
        }
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("forcedSetting") {
            self.forcedSetting = dict["forcedSetting"] as! Bool
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("notifyConfig") {
            var tmp : [CreateGroupRequest.NotifyConfig] = []
            for v in dict["notifyConfig"] as! [Any] {
                var model = CreateGroupRequest.NotifyConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.notifyConfig = tmp
        }
        if dict.keys.contains("notifyOperationTypes") {
            self.notifyOperationTypes = dict["notifyOperationTypes"] as! [String]
        }
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("ramRole") {
            self.ramRole = dict["ramRole"] as! String
        }
        if dict.keys.contains("reportExportField") {
            self.reportExportField = dict["reportExportField"] as! [String]
        }
        if dict.keys.contains("reportExportPath") {
            self.reportExportPath = dict["reportExportPath"] as! String
        }
        if dict.keys.contains("terraformProviderVersion") {
            self.terraformProviderVersion = dict["terraformProviderVersion"] as! String
        }
        if dict.keys.contains("triggerConfig") {
            var tmp : [CreateGroupRequest.TriggerConfig] = []
            for v in dict["triggerConfig"] as! [Any] {
                var model = CreateGroupRequest.TriggerConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.triggerConfig = tmp
        }
        if dict.keys.contains("triggerResourceType") {
            self.triggerResourceType = dict["triggerResourceType"] as! [String]
        }
    }
}

public class CreateGroupResponseBody : Tea.TeaModel {
    public var groupId: String?

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
        if self.groupId != nil {
            map["groupId"] = self.groupId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("groupId") {
            self.groupId = dict["groupId"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

    public var executeType: String?

    public var subCommand: String?

    public var taskType: String?

    public override init() {
        super.init()
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
        if self.executeType != nil {
            map["executeType"] = self.executeType!
        }
        if self.subCommand != nil {
            map["subCommand"] = self.subCommand!
        }
        if self.taskType != nil {
            map["taskType"] = self.taskType!
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
        if dict.keys.contains("executeType") {
            self.executeType = dict["executeType"] as! String
        }
        if dict.keys.contains("subCommand") {
            self.subCommand = dict["subCommand"] as! String
        }
        if dict.keys.contains("taskType") {
            self.taskType = dict["taskType"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
    public var clientToken: String?

    public var description_: String?

    public var groupInfo: CreateModuleRequest.GroupInfo?

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
        try self.groupInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.groupInfo != nil {
            map["groupInfo"] = self.groupInfo?.toMap()
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
        if dict.keys.contains("groupInfo") {
            var model = CreateModuleRequest.GroupInfo()
            model.fromMap(dict["groupInfo"] as! [String: Any])
            self.groupInfo = model
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var tmp : [CreateParameterSetRequest.Parameters] = []
            for v in dict["parameters"] as! [Any] {
                var model = CreateParameterSetRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
    public var projectId: String?

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
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

    public var groupId: String?

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
        if self.groupId != nil {
            map["groupId"] = self.groupId!
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
        if dict.keys.contains("groupId") {
            self.groupId = dict["groupId"] as! String
        }
        if dict.keys.contains("projectBuildAction") {
            self.projectBuildAction = dict["projectBuildAction"] as! String
        }
        if dict.keys.contains("taskIds") {
            self.taskIds = dict["taskIds"] as! [String]
        }
        if dict.keys.contains("taskPolicies") {
            var tmp : [CreateProjectBuildRequest.TaskPolicies] = []
            for v in dict["taskPolicies"] as! [Any] {
                var model = CreateProjectBuildRequest.TaskPolicies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taskPolicies = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class CreateRamPolicyExportTaskRequest : Tea.TeaModel {
    public var authorizationAccountIds: [Int64]?

    public var authorizationActions: [String]?

    public var authorizationRegionIds: [String]?

    public var clientToken: String?

    public var moduleId: String?

    public var moduleVersion: String?

    public var name: String?

    public var ramRole: String?

    public var terraformProviderVersion: String?

    public var triggerStrategy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationAccountIds != nil {
            map["authorizationAccountIds"] = self.authorizationAccountIds!
        }
        if self.authorizationActions != nil {
            map["authorizationActions"] = self.authorizationActions!
        }
        if self.authorizationRegionIds != nil {
            map["authorizationRegionIds"] = self.authorizationRegionIds!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
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
        if self.ramRole != nil {
            map["ramRole"] = self.ramRole!
        }
        if self.terraformProviderVersion != nil {
            map["terraformProviderVersion"] = self.terraformProviderVersion!
        }
        if self.triggerStrategy != nil {
            map["triggerStrategy"] = self.triggerStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authorizationAccountIds") {
            self.authorizationAccountIds = dict["authorizationAccountIds"] as! [Int64]
        }
        if dict.keys.contains("authorizationActions") {
            self.authorizationActions = dict["authorizationActions"] as! [String]
        }
        if dict.keys.contains("authorizationRegionIds") {
            self.authorizationRegionIds = dict["authorizationRegionIds"] as! [String]
        }
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
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
        if dict.keys.contains("ramRole") {
            self.ramRole = dict["ramRole"] as! String
        }
        if dict.keys.contains("terraformProviderVersion") {
            self.terraformProviderVersion = dict["terraformProviderVersion"] as! String
        }
        if dict.keys.contains("triggerStrategy") {
            self.triggerStrategy = dict["triggerStrategy"] as! String
        }
    }
}

public class CreateRamPolicyExportTaskResponseBody : Tea.TeaModel {
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

public class CreateRamPolicyExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRamPolicyExportTaskResponseBody?

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
            var model = CreateRamPolicyExportTaskResponseBody()
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

    public var configPath: String?

    public var description_: String?

    public var excludeRules: [CreateResourceExportTaskRequest.ExcludeRules]?

    public var exportToModule: CreateResourceExportTaskRequest.ExportToModule?

    public var includeRules: [CreateResourceExportTaskRequest.IncludeRules]?

    public var name: String?

    public var ramRole: String?

    public var terraformProviderVersion: String?

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
        if self.configPath != nil {
            map["configPath"] = self.configPath!
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
        if self.terraformProviderVersion != nil {
            map["terraformProviderVersion"] = self.terraformProviderVersion!
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
        if dict.keys.contains("configPath") {
            self.configPath = dict["configPath"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("excludeRules") {
            var tmp : [CreateResourceExportTaskRequest.ExcludeRules] = []
            for v in dict["excludeRules"] as! [Any] {
                var model = CreateResourceExportTaskRequest.ExcludeRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.excludeRules = tmp
        }
        if dict.keys.contains("exportToModule") {
            var model = CreateResourceExportTaskRequest.ExportToModule()
            model.fromMap(dict["exportToModule"] as! [String: Any])
            self.exportToModule = model
        }
        if dict.keys.contains("includeRules") {
            var tmp : [CreateResourceExportTaskRequest.IncludeRules] = []
            for v in dict["includeRules"] as! [Any] {
                var model = CreateResourceExportTaskRequest.IncludeRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.includeRules = tmp
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("ramRole") {
            self.ramRole = dict["ramRole"] as! String
        }
        if dict.keys.contains("terraformProviderVersion") {
            self.terraformProviderVersion = dict["terraformProviderVersion"] as! String
        }
        if dict.keys.contains("terraformVersion") {
            self.terraformVersion = dict["terraformVersion"] as! String
        }
        if dict.keys.contains("triggerStrategy") {
            self.triggerStrategy = dict["triggerStrategy"] as! String
        }
        if dict.keys.contains("variables") {
            var tmp : [CreateResourceExportTaskRequest.Variables] = []
            for v in dict["variables"] as! [Any] {
                var model = CreateResourceExportTaskRequest.Variables()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.variables = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
    public class TaskBackend : Tea.TeaModel {
        public var bucketEndpoint: String?

        public var bucketName: String?

        public var objectPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucketEndpoint != nil {
                map["bucketEndpoint"] = self.bucketEndpoint!
            }
            if self.bucketName != nil {
                map["bucketName"] = self.bucketName!
            }
            if self.objectPath != nil {
                map["objectPath"] = self.objectPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("bucketEndpoint") {
                self.bucketEndpoint = dict["bucketEndpoint"] as! String
            }
            if dict.keys.contains("bucketName") {
                self.bucketName = dict["bucketName"] as! String
            }
            if dict.keys.contains("objectPath") {
                self.objectPath = dict["objectPath"] as! String
            }
        }
    }
    public var autoApply: Bool?

    public var autoDestroy: Bool?

    public var clientToken: String?

    public var description_: String?

    public var groupInfo: CreateTaskRequest.GroupInfo?

    public var initModuleState: Bool?

    public var moduleId: String?

    public var moduleVersion: String?

    public var name: String?

    public var parameters: [String: String]?

    public var protectionStrategy: [String]?

    public var ramRole: String?

    public var skipPropertyValidation: Bool?

    public var taskBackend: CreateTaskRequest.TaskBackend?

    public var terraformVersion: String?

    public var triggerStrategy: String?

    public var triggerValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupInfo?.validate()
        try self.taskBackend?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoApply != nil {
            map["autoApply"] = self.autoApply!
        }
        if self.autoDestroy != nil {
            map["autoDestroy"] = self.autoDestroy!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.groupInfo != nil {
            map["groupInfo"] = self.groupInfo?.toMap()
        }
        if self.initModuleState != nil {
            map["initModuleState"] = self.initModuleState!
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
        if self.skipPropertyValidation != nil {
            map["skipPropertyValidation"] = self.skipPropertyValidation!
        }
        if self.taskBackend != nil {
            map["taskBackend"] = self.taskBackend?.toMap()
        }
        if self.terraformVersion != nil {
            map["terraformVersion"] = self.terraformVersion!
        }
        if self.triggerStrategy != nil {
            map["triggerStrategy"] = self.triggerStrategy!
        }
        if self.triggerValue != nil {
            map["triggerValue"] = self.triggerValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoApply") {
            self.autoApply = dict["autoApply"] as! Bool
        }
        if dict.keys.contains("autoDestroy") {
            self.autoDestroy = dict["autoDestroy"] as! Bool
        }
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("groupInfo") {
            var model = CreateTaskRequest.GroupInfo()
            model.fromMap(dict["groupInfo"] as! [String: Any])
            self.groupInfo = model
        }
        if dict.keys.contains("initModuleState") {
            self.initModuleState = dict["initModuleState"] as! Bool
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
        if dict.keys.contains("skipPropertyValidation") {
            self.skipPropertyValidation = dict["skipPropertyValidation"] as! Bool
        }
        if dict.keys.contains("taskBackend") {
            var model = CreateTaskRequest.TaskBackend()
            model.fromMap(dict["taskBackend"] as! [String: Any])
            self.taskBackend = model
        }
        if dict.keys.contains("terraformVersion") {
            self.terraformVersion = dict["terraformVersion"] as! String
        }
        if dict.keys.contains("triggerStrategy") {
            self.triggerStrategy = dict["triggerStrategy"] as! String
        }
        if dict.keys.contains("triggerValue") {
            self.triggerValue = dict["triggerValue"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class DeleteRamPolicyExportTaskResponseBody : Tea.TeaModel {
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

public class DeleteRamPolicyExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRamPolicyExportTaskResponseBody?

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
            var model = DeleteRamPolicyExportTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRamPolicyExportTaskVersionResponseBody : Tea.TeaModel {
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

public class DeleteRamPolicyExportTaskVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRamPolicyExportTaskVersionResponseBody?

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
            var model = DeleteRamPolicyExportTaskVersionResponseBody()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class DeleteSceneTestingTaskResponseBody : Tea.TeaModel {
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

public class DeleteSceneTestingTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSceneTestingTaskResponseBody?

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
            var model = DeleteSceneTestingTaskResponseBody()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class DissociateGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var resourceIds: [String]?

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.resourceIds != nil {
            map["resourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("resourceIds") {
            self.resourceIds = dict["resourceIds"] as! [String]
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
    }
}

public class DissociateGroupResponseBody : Tea.TeaModel {
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

public class DissociateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DissociateGroupResponseBody?

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
            var model = DissociateGroupResponseBody()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class ExecuteRamPolicyExportTaskResponseBody : Tea.TeaModel {
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
        if self.exportVersion != nil {
            map["exportVersion"] = self.exportVersion!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("exportVersion") {
            self.exportVersion = dict["exportVersion"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ExecuteRamPolicyExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteRamPolicyExportTaskResponseBody?

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
            var model = ExecuteRamPolicyExportTaskResponseBody()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class GetExplorerTaskResponseBody : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public class UploadSignature : Tea.TeaModel {
            public var accessKeyId: String?

            public var bucketName: String?

            public var key: String?

            public var policy: String?

            public var signature: String?

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
                if self.accessKeyId != nil {
                    map["accessKeyId"] = self.accessKeyId!
                }
                if self.bucketName != nil {
                    map["bucketName"] = self.bucketName!
                }
                if self.key != nil {
                    map["key"] = self.key!
                }
                if self.policy != nil {
                    map["policy"] = self.policy!
                }
                if self.signature != nil {
                    map["signature"] = self.signature!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("accessKeyId") {
                    self.accessKeyId = dict["accessKeyId"] as! String
                }
                if dict.keys.contains("bucketName") {
                    self.bucketName = dict["bucketName"] as! String
                }
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("policy") {
                    self.policy = dict["policy"] as! String
                }
                if dict.keys.contains("signature") {
                    self.signature = dict["signature"] as! String
                }
                if dict.keys.contains("url") {
                    self.url = dict["url"] as! String
                }
            }
        }
        public var autoApply: Bool?

        public var autoDestroy: Bool?

        public var createTime: String?

        public var currentJobId: String?

        public var description_: String?

        public var explorerTaskId: String?

        public var initModuleState: Bool?

        public var moduleId: String?

        public var moduleVersion: String?

        public var name: String?

        public var skipPropertyValidation: Bool?

        public var status: String?

        public var taskOutputPath: String?

        public var terraformVersion: String?

        public var triggerValue: String?

        public var uploadSignature: GetExplorerTaskResponseBody.Task.UploadSignature?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.uploadSignature?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoApply != nil {
                map["autoApply"] = self.autoApply!
            }
            if self.autoDestroy != nil {
                map["autoDestroy"] = self.autoDestroy!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.currentJobId != nil {
                map["currentJobId"] = self.currentJobId!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.explorerTaskId != nil {
                map["explorerTaskId"] = self.explorerTaskId!
            }
            if self.initModuleState != nil {
                map["initModuleState"] = self.initModuleState!
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
            if self.skipPropertyValidation != nil {
                map["skipPropertyValidation"] = self.skipPropertyValidation!
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
            if self.triggerValue != nil {
                map["triggerValue"] = self.triggerValue!
            }
            if self.uploadSignature != nil {
                map["uploadSignature"] = self.uploadSignature?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoApply") {
                self.autoApply = dict["autoApply"] as! Bool
            }
            if dict.keys.contains("autoDestroy") {
                self.autoDestroy = dict["autoDestroy"] as! Bool
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("currentJobId") {
                self.currentJobId = dict["currentJobId"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("explorerTaskId") {
                self.explorerTaskId = dict["explorerTaskId"] as! String
            }
            if dict.keys.contains("initModuleState") {
                self.initModuleState = dict["initModuleState"] as! Bool
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
            if dict.keys.contains("skipPropertyValidation") {
                self.skipPropertyValidation = dict["skipPropertyValidation"] as! Bool
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
            if dict.keys.contains("triggerValue") {
                self.triggerValue = dict["triggerValue"] as! String
            }
            if dict.keys.contains("uploadSignature") {
                var model = GetExplorerTaskResponseBody.Task.UploadSignature()
                model.fromMap(dict["uploadSignature"] as! [String: Any])
                self.uploadSignature = model
            }
        }
    }
    public var requestId: String?

    public var task: GetExplorerTaskResponseBody.Task?

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
            var model = GetExplorerTaskResponseBody.Task()
            model.fromMap(dict["task"] as! [String: Any])
            self.task = model
        }
    }
}

public class GetExplorerTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExplorerTaskResponseBody?

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
            var model = GetExplorerTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public class NotifyConfig : Tea.TeaModel {
            public var notifyPath: String?

            public var notifyType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.notifyPath != nil {
                    map["notifyPath"] = self.notifyPath!
                }
                if self.notifyType != nil {
                    map["notifyType"] = self.notifyType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("notifyPath") {
                    self.notifyPath = dict["notifyPath"] as! String
                }
                if dict.keys.contains("notifyType") {
                    self.notifyType = dict["notifyType"] as! String
                }
            }
        }
        public class TriggerConfig : Tea.TeaModel {
            public var triggerStrategy: String?

            public var triggerValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.triggerStrategy != nil {
                    map["triggerStrategy"] = self.triggerStrategy!
                }
                if self.triggerValue != nil {
                    map["triggerValue"] = self.triggerValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("triggerStrategy") {
                    self.triggerStrategy = dict["triggerStrategy"] as! String
                }
                if dict.keys.contains("triggerValue") {
                    self.triggerValue = dict["triggerValue"] as! String
                }
            }
        }
        public var autoDestroy: Bool?

        public var autoTrigger: Bool?

        public var createTime: String?

        public var description_: String?

        public var forcedSetting: Bool?

        public var groupId: String?

        public var name: String?

        public var notifyConfig: [GetGroupResponseBody.Group.NotifyConfig]?

        public var notifyOperationTypes: [String]?

        public var projectId: String?

        public var ramRole: String?

        public var reportExportField: [String]?

        public var reportExportPath: String?

        public var taskCnt: Int64?

        public var terraformProviderVersion: String?

        public var triggerConfig: [GetGroupResponseBody.Group.TriggerConfig]?

        public var triggerResourceType: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoDestroy != nil {
                map["autoDestroy"] = self.autoDestroy!
            }
            if self.autoTrigger != nil {
                map["autoTrigger"] = self.autoTrigger!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.forcedSetting != nil {
                map["forcedSetting"] = self.forcedSetting!
            }
            if self.groupId != nil {
                map["groupId"] = self.groupId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.notifyConfig != nil {
                var tmp : [Any] = []
                for k in self.notifyConfig! {
                    tmp.append(k.toMap())
                }
                map["notifyConfig"] = tmp
            }
            if self.notifyOperationTypes != nil {
                map["notifyOperationTypes"] = self.notifyOperationTypes!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.ramRole != nil {
                map["ramRole"] = self.ramRole!
            }
            if self.reportExportField != nil {
                map["reportExportField"] = self.reportExportField!
            }
            if self.reportExportPath != nil {
                map["reportExportPath"] = self.reportExportPath!
            }
            if self.taskCnt != nil {
                map["taskCnt"] = self.taskCnt!
            }
            if self.terraformProviderVersion != nil {
                map["terraformProviderVersion"] = self.terraformProviderVersion!
            }
            if self.triggerConfig != nil {
                var tmp : [Any] = []
                for k in self.triggerConfig! {
                    tmp.append(k.toMap())
                }
                map["triggerConfig"] = tmp
            }
            if self.triggerResourceType != nil {
                map["triggerResourceType"] = self.triggerResourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoDestroy") {
                self.autoDestroy = dict["autoDestroy"] as! Bool
            }
            if dict.keys.contains("autoTrigger") {
                self.autoTrigger = dict["autoTrigger"] as! Bool
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("forcedSetting") {
                self.forcedSetting = dict["forcedSetting"] as! Bool
            }
            if dict.keys.contains("groupId") {
                self.groupId = dict["groupId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("notifyConfig") {
                var tmp : [GetGroupResponseBody.Group.NotifyConfig] = []
                for v in dict["notifyConfig"] as! [Any] {
                    var model = GetGroupResponseBody.Group.NotifyConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.notifyConfig = tmp
            }
            if dict.keys.contains("notifyOperationTypes") {
                self.notifyOperationTypes = dict["notifyOperationTypes"] as! [String]
            }
            if dict.keys.contains("projectId") {
                self.projectId = dict["projectId"] as! String
            }
            if dict.keys.contains("ramRole") {
                self.ramRole = dict["ramRole"] as! String
            }
            if dict.keys.contains("reportExportField") {
                self.reportExportField = dict["reportExportField"] as! [String]
            }
            if dict.keys.contains("reportExportPath") {
                self.reportExportPath = dict["reportExportPath"] as! String
            }
            if dict.keys.contains("taskCnt") {
                self.taskCnt = dict["taskCnt"] as! Int64
            }
            if dict.keys.contains("terraformProviderVersion") {
                self.terraformProviderVersion = dict["terraformProviderVersion"] as! String
            }
            if dict.keys.contains("triggerConfig") {
                var tmp : [GetGroupResponseBody.Group.TriggerConfig] = []
                for v in dict["triggerConfig"] as! [Any] {
                    var model = GetGroupResponseBody.Group.TriggerConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.triggerConfig = tmp
            }
            if dict.keys.contains("triggerResourceType") {
                self.triggerResourceType = dict["triggerResourceType"] as! [String]
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class GetJobRequest : Tea.TeaModel {
    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskType") {
            self.taskType = dict["taskType"] as! String
        }
    }
}

public class GetJobResponseBody : Tea.TeaModel {
    public class Job : Tea.TeaModel {
        public class AssertCheckDetail : Tea.TeaModel {
            public var comparison: String?

            public var expectedValue: String?

            public var isPass: Bool?

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
                if self.comparison != nil {
                    map["comparison"] = self.comparison!
                }
                if self.expectedValue != nil {
                    map["expectedValue"] = self.expectedValue!
                }
                if self.isPass != nil {
                    map["isPass"] = self.isPass!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("comparison") {
                    self.comparison = dict["comparison"] as! String
                }
                if dict.keys.contains("expectedValue") {
                    self.expectedValue = dict["expectedValue"] as! String
                }
                if dict.keys.contains("isPass") {
                    self.isPass = dict["isPass"] as! Bool
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class Config : Tea.TeaModel {
            public var autoApply: Bool?

            public var isDestroy: Bool?

            public var moduleVersion: String?

            public var resourcesChanged: String?

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
                if self.subCommand != nil {
                    map["subCommand"] = self.subCommand!
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
                if dict.keys.contains("subCommand") {
                    self.subCommand = dict["subCommand"] as! String
                }
            }
        }
        public var assertCheckDetail: [GetJobResponseBody.Job.AssertCheckDetail]?

        public var config: GetJobResponseBody.Job.Config?

        public var createTime: String?

        public var description_: String?

        public var downloadUrl: [String: Any]?

        public var elapsedTime: Int64?

        public var executeType: String?

        public var isPassAssertCheck: Bool?

        public var jobId: String?

        public var output: String?

        public var parameters: [String: String]?

        public var runtimeType: String?

        public var status: String?

        public var statusDetail: [String: JobStatusDetailValue]?

        public var taskId: String?

        public var taskType: String?

        public var terraformProviderVersion: String?

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
            if self.assertCheckDetail != nil {
                var tmp : [Any] = []
                for k in self.assertCheckDetail! {
                    tmp.append(k.toMap())
                }
                map["assertCheckDetail"] = tmp
            }
            if self.config != nil {
                map["config"] = self.config?.toMap()
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.downloadUrl != nil {
                map["downloadUrl"] = self.downloadUrl!
            }
            if self.elapsedTime != nil {
                map["elapsedTime"] = self.elapsedTime!
            }
            if self.executeType != nil {
                map["executeType"] = self.executeType!
            }
            if self.isPassAssertCheck != nil {
                map["isPassAssertCheck"] = self.isPassAssertCheck!
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
            if self.taskType != nil {
                map["taskType"] = self.taskType!
            }
            if self.terraformProviderVersion != nil {
                map["terraformProviderVersion"] = self.terraformProviderVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assertCheckDetail") {
                var tmp : [GetJobResponseBody.Job.AssertCheckDetail] = []
                for v in dict["assertCheckDetail"] as! [Any] {
                    var model = GetJobResponseBody.Job.AssertCheckDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.assertCheckDetail = tmp
            }
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
            if dict.keys.contains("downloadUrl") {
                self.downloadUrl = dict["downloadUrl"] as! [String: Any]
            }
            if dict.keys.contains("elapsedTime") {
                self.elapsedTime = dict["elapsedTime"] as! Int64
            }
            if dict.keys.contains("executeType") {
                self.executeType = dict["executeType"] as! String
            }
            if dict.keys.contains("isPassAssertCheck") {
                self.isPassAssertCheck = dict["isPassAssertCheck"] as! Bool
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
                for (k, v) in dict["statusDetail"] as! [String: Any] {
                    if v != nil {
                        var model = JobStatusDetailValue()
                        model.fromMap(v as! [String: Any])
                        tmp[k] = model
                    }
                }
                self.statusDetail = tmp
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("taskType") {
                self.taskType = dict["taskType"] as! String
            }
            if dict.keys.contains("terraformProviderVersion") {
                self.terraformProviderVersion = dict["terraformProviderVersion"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
                var tmp : [GetParameterSetResponseBody.ParameterSet.Parameters] = []
                for v in dict["parameters"] as! [Any] {
                    var model = GetParameterSetResponseBody.ParameterSet.Parameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.parameters = tmp
            }
            if dict.keys.contains("relationList") {
                var tmp : [GetParameterSetResponseBody.ParameterSet.RelationList] = []
                for v in dict["relationList"] as! [Any] {
                    var model = GetParameterSetResponseBody.ParameterSet.RelationList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.relationList = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class GetProjectBuildContextRequest : Tea.TeaModel {
    public var isPassAssertCheck: Bool?

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
        if self.isPassAssertCheck != nil {
            map["isPassAssertCheck"] = self.isPassAssertCheck!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("isPassAssertCheck") {
            self.isPassAssertCheck = dict["isPassAssertCheck"] as! Bool
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
    }
}

public class GetProjectBuildContextResponseBody : Tea.TeaModel {
    public class ProjectBuild : Tea.TeaModel {
        public class JobList : Tea.TeaModel {
            public var elapsedTime: Int64?

            public var isDeleted: Int64?

            public var isPassAssertCheck: Bool?

            public var jobId: String?

            public var moduleId: String?

            public var moduleName: String?

            public var moduleVersion: String?

            public var name: String?

            public var status: String?

            public var taskId: String?

            public var terraformProviderVersion: String?

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
                if self.elapsedTime != nil {
                    map["elapsedTime"] = self.elapsedTime!
                }
                if self.isDeleted != nil {
                    map["isDeleted"] = self.isDeleted!
                }
                if self.isPassAssertCheck != nil {
                    map["isPassAssertCheck"] = self.isPassAssertCheck!
                }
                if self.jobId != nil {
                    map["jobId"] = self.jobId!
                }
                if self.moduleId != nil {
                    map["moduleId"] = self.moduleId!
                }
                if self.moduleName != nil {
                    map["moduleName"] = self.moduleName!
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
                if self.terraformProviderVersion != nil {
                    map["terraformProviderVersion"] = self.terraformProviderVersion!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("elapsedTime") {
                    self.elapsedTime = dict["elapsedTime"] as! Int64
                }
                if dict.keys.contains("isDeleted") {
                    self.isDeleted = dict["isDeleted"] as! Int64
                }
                if dict.keys.contains("isPassAssertCheck") {
                    self.isPassAssertCheck = dict["isPassAssertCheck"] as! Bool
                }
                if dict.keys.contains("jobId") {
                    self.jobId = dict["jobId"] as! String
                }
                if dict.keys.contains("moduleId") {
                    self.moduleId = dict["moduleId"] as! String
                }
                if dict.keys.contains("moduleName") {
                    self.moduleName = dict["moduleName"] as! String
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
                if dict.keys.contains("terraformProviderVersion") {
                    self.terraformProviderVersion = dict["terraformProviderVersion"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
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

        public var terraformProviderVersion: String?

        public var triggerStrategy: String?

        public override init() {
            super.init()
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
            if self.terraformProviderVersion != nil {
                map["terraformProviderVersion"] = self.terraformProviderVersion!
            }
            if self.triggerStrategy != nil {
                map["triggerStrategy"] = self.triggerStrategy!
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
                var tmp : [GetProjectBuildContextResponseBody.ProjectBuild.JobList] = []
                for v in dict["jobList"] as! [Any] {
                    var model = GetProjectBuildContextResponseBody.ProjectBuild.JobList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.jobList = tmp
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
                var tmp : [GetProjectBuildContextResponseBody.ProjectBuild.ResourceList] = []
                for v in dict["resourceList"] as! [Any] {
                    var model = GetProjectBuildContextResponseBody.ProjectBuild.ResourceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resourceList = tmp
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
            if dict.keys.contains("terraformProviderVersion") {
                self.terraformProviderVersion = dict["terraformProviderVersion"] as! String
            }
            if dict.keys.contains("triggerStrategy") {
                self.triggerStrategy = dict["triggerStrategy"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class GetRamPolicyExportTaskResponseBody : Tea.TeaModel {
    public class RamPolicyExportTask : Tea.TeaModel {
        public var authorizationAccountIds: [Int64]?

        public var authorizationActions: [String]?

        public var authorizationRegionIds: [String]?

        public var createTime: String?

        public var moduleId: String?

        public var moduleVersion: String?

        public var name: String?

        public var ramPolicyExportTaskId: String?

        public var ramRole: String?

        public var status: String?

        public var taskOutputPath: String?

        public var terraformProviderVersion: String?

        public var triggerStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorizationAccountIds != nil {
                map["authorizationAccountIds"] = self.authorizationAccountIds!
            }
            if self.authorizationActions != nil {
                map["authorizationActions"] = self.authorizationActions!
            }
            if self.authorizationRegionIds != nil {
                map["authorizationRegionIds"] = self.authorizationRegionIds!
            }
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
            if self.ramPolicyExportTaskId != nil {
                map["ramPolicyExportTaskId"] = self.ramPolicyExportTaskId!
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
            if self.terraformProviderVersion != nil {
                map["terraformProviderVersion"] = self.terraformProviderVersion!
            }
            if self.triggerStrategy != nil {
                map["triggerStrategy"] = self.triggerStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("authorizationAccountIds") {
                self.authorizationAccountIds = dict["authorizationAccountIds"] as! [Int64]
            }
            if dict.keys.contains("authorizationActions") {
                self.authorizationActions = dict["authorizationActions"] as! [String]
            }
            if dict.keys.contains("authorizationRegionIds") {
                self.authorizationRegionIds = dict["authorizationRegionIds"] as! [String]
            }
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
            if dict.keys.contains("ramPolicyExportTaskId") {
                self.ramPolicyExportTaskId = dict["ramPolicyExportTaskId"] as! String
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
            if dict.keys.contains("terraformProviderVersion") {
                self.terraformProviderVersion = dict["terraformProviderVersion"] as! String
            }
            if dict.keys.contains("triggerStrategy") {
                self.triggerStrategy = dict["triggerStrategy"] as! String
            }
        }
    }
    public var ramPolicyExportTask: GetRamPolicyExportTaskResponseBody.RamPolicyExportTask?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ramPolicyExportTask?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ramPolicyExportTask != nil {
            map["ramPolicyExportTask"] = self.ramPolicyExportTask?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ramPolicyExportTask") {
            var model = GetRamPolicyExportTaskResponseBody.RamPolicyExportTask()
            model.fromMap(dict["ramPolicyExportTask"] as! [String: Any])
            self.ramPolicyExportTask = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetRamPolicyExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRamPolicyExportTaskResponseBody?

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
            var model = GetRamPolicyExportTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRamPolicyExportTaskVersionResponseBody : Tea.TeaModel {
    public class RamPolicyExportTaskVersion : Tea.TeaModel {
        public var authorizationAccountIds: [Int64]?

        public var authorizationActions: [String]?

        public var authorizationRegionIds: [String]?

        public var createTime: String?

        public var elapsedTime: Int64?

        public var exportVersion: String?

        public var failedReason: String?

        public var missingActions: [String]?

        public var moduleId: String?

        public var moduleVersion: String?

        public var noSupportResourceTypes: [String]?

        public var policyDocument: String?

        public var ramPolicyExportTaskId: String?

        public var status: String?

        public var terraformProviderVersion: String?

        public var unauthorizedActions: [String]?

        public var warnMessage: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorizationAccountIds != nil {
                map["authorizationAccountIds"] = self.authorizationAccountIds!
            }
            if self.authorizationActions != nil {
                map["authorizationActions"] = self.authorizationActions!
            }
            if self.authorizationRegionIds != nil {
                map["authorizationRegionIds"] = self.authorizationRegionIds!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.elapsedTime != nil {
                map["elapsedTime"] = self.elapsedTime!
            }
            if self.exportVersion != nil {
                map["exportVersion"] = self.exportVersion!
            }
            if self.failedReason != nil {
                map["failedReason"] = self.failedReason!
            }
            if self.missingActions != nil {
                map["missingActions"] = self.missingActions!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.moduleVersion != nil {
                map["moduleVersion"] = self.moduleVersion!
            }
            if self.noSupportResourceTypes != nil {
                map["noSupportResourceTypes"] = self.noSupportResourceTypes!
            }
            if self.policyDocument != nil {
                map["policyDocument"] = self.policyDocument!
            }
            if self.ramPolicyExportTaskId != nil {
                map["ramPolicyExportTaskId"] = self.ramPolicyExportTaskId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.terraformProviderVersion != nil {
                map["terraformProviderVersion"] = self.terraformProviderVersion!
            }
            if self.unauthorizedActions != nil {
                map["unauthorizedActions"] = self.unauthorizedActions!
            }
            if self.warnMessage != nil {
                map["warnMessage"] = self.warnMessage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("authorizationAccountIds") {
                self.authorizationAccountIds = dict["authorizationAccountIds"] as! [Int64]
            }
            if dict.keys.contains("authorizationActions") {
                self.authorizationActions = dict["authorizationActions"] as! [String]
            }
            if dict.keys.contains("authorizationRegionIds") {
                self.authorizationRegionIds = dict["authorizationRegionIds"] as! [String]
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("elapsedTime") {
                self.elapsedTime = dict["elapsedTime"] as! Int64
            }
            if dict.keys.contains("exportVersion") {
                self.exportVersion = dict["exportVersion"] as! String
            }
            if dict.keys.contains("failedReason") {
                self.failedReason = dict["failedReason"] as! String
            }
            if dict.keys.contains("missingActions") {
                self.missingActions = dict["missingActions"] as! [String]
            }
            if dict.keys.contains("moduleId") {
                self.moduleId = dict["moduleId"] as! String
            }
            if dict.keys.contains("moduleVersion") {
                self.moduleVersion = dict["moduleVersion"] as! String
            }
            if dict.keys.contains("noSupportResourceTypes") {
                self.noSupportResourceTypes = dict["noSupportResourceTypes"] as! [String]
            }
            if dict.keys.contains("policyDocument") {
                self.policyDocument = dict["policyDocument"] as! String
            }
            if dict.keys.contains("ramPolicyExportTaskId") {
                self.ramPolicyExportTaskId = dict["ramPolicyExportTaskId"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("terraformProviderVersion") {
                self.terraformProviderVersion = dict["terraformProviderVersion"] as! String
            }
            if dict.keys.contains("unauthorizedActions") {
                self.unauthorizedActions = dict["unauthorizedActions"] as! [String]
            }
            if dict.keys.contains("warnMessage") {
                self.warnMessage = dict["warnMessage"] as! String
            }
        }
    }
    public var ramPolicyExportTaskVersion: GetRamPolicyExportTaskVersionResponseBody.RamPolicyExportTaskVersion?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ramPolicyExportTaskVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ramPolicyExportTaskVersion != nil {
            map["ramPolicyExportTaskVersion"] = self.ramPolicyExportTaskVersion?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ramPolicyExportTaskVersion") {
            var model = GetRamPolicyExportTaskVersionResponseBody.RamPolicyExportTaskVersion()
            model.fromMap(dict["ramPolicyExportTaskVersion"] as! [String: Any])
            self.ramPolicyExportTaskVersion = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetRamPolicyExportTaskVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRamPolicyExportTaskVersionResponseBody?

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
            var model = GetRamPolicyExportTaskVersionResponseBody()
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
        public var configPath: String?

        public var createTime: String?

        public var description_: String?

        public var elapsedTime: Int64?

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

        public var terraformContext: [String: Any]?

        public var terraformProviderVersion: String?

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
            if self.configPath != nil {
                map["configPath"] = self.configPath!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.elapsedTime != nil {
                map["elapsedTime"] = self.elapsedTime!
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
            if self.terraformContext != nil {
                map["terraformContext"] = self.terraformContext!
            }
            if self.terraformProviderVersion != nil {
                map["terraformProviderVersion"] = self.terraformProviderVersion!
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
            if dict.keys.contains("configPath") {
                self.configPath = dict["configPath"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("elapsedTime") {
                self.elapsedTime = dict["elapsedTime"] as! Int64
            }
            if dict.keys.contains("excludeRules") {
                var tmp : [GetResourceExportTaskResponseBody.Task.ExcludeRules] = []
                for v in dict["excludeRules"] as! [Any] {
                    var model = GetResourceExportTaskResponseBody.Task.ExcludeRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.excludeRules = tmp
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
                var tmp : [GetResourceExportTaskResponseBody.Task.IncludeRules] = []
                for v in dict["includeRules"] as! [Any] {
                    var model = GetResourceExportTaskResponseBody.Task.IncludeRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.includeRules = tmp
            }
            if dict.keys.contains("modules") {
                var tmp : [GetResourceExportTaskResponseBody.Task.Modules] = []
                for v in dict["modules"] as! [Any] {
                    var model = GetResourceExportTaskResponseBody.Task.Modules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.modules = tmp
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
            if dict.keys.contains("terraformContext") {
                self.terraformContext = dict["terraformContext"] as! [String: Any]
            }
            if dict.keys.contains("terraformProviderVersion") {
                self.terraformProviderVersion = dict["terraformProviderVersion"] as! String
            }
            if dict.keys.contains("terraformVersion") {
                self.terraformVersion = dict["terraformVersion"] as! String
            }
            if dict.keys.contains("triggerStrategy") {
                self.triggerStrategy = dict["triggerStrategy"] as! String
            }
            if dict.keys.contains("variables") {
                var tmp : [GetResourceExportTaskResponseBody.Task.Variables] = []
                for v in dict["variables"] as! [Any] {
                    var model = GetResourceExportTaskResponseBody.Task.Variables()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.variables = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

        public var autoDestroy: Bool?

        public var createTime: String?

        public var currentJobId: String?

        public var description_: String?

        public var groupInfo: GetTaskResponseBody.Task.GroupInfo?

        public var initModuleState: Bool?

        public var moduleId: String?

        public var moduleVersion: String?

        public var name: String?

        public var parameters: [String: String]?

        public var protectionStrategy: [String]?

        public var ramRole: String?

        public var skipPropertyValidation: Bool?

        public var status: String?

        public var taskId: String?

        public var taskOutputPath: String?

        public var terraformVersion: String?

        public var triggerStrategy: String?

        public var triggerValue: String?

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
            if self.autoDestroy != nil {
                map["autoDestroy"] = self.autoDestroy!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.currentJobId != nil {
                map["currentJobId"] = self.currentJobId!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.groupInfo != nil {
                map["groupInfo"] = self.groupInfo?.toMap()
            }
            if self.initModuleState != nil {
                map["initModuleState"] = self.initModuleState!
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
            if self.skipPropertyValidation != nil {
                map["skipPropertyValidation"] = self.skipPropertyValidation!
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
            if self.triggerValue != nil {
                map["triggerValue"] = self.triggerValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoApply") {
                self.autoApply = dict["autoApply"] as! Bool
            }
            if dict.keys.contains("autoDestroy") {
                self.autoDestroy = dict["autoDestroy"] as! Bool
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("currentJobId") {
                self.currentJobId = dict["currentJobId"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("groupInfo") {
                var model = GetTaskResponseBody.Task.GroupInfo()
                model.fromMap(dict["groupInfo"] as! [String: Any])
                self.groupInfo = model
            }
            if dict.keys.contains("initModuleState") {
                self.initModuleState = dict["initModuleState"] as! Bool
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
            if dict.keys.contains("skipPropertyValidation") {
                self.skipPropertyValidation = dict["skipPropertyValidation"] as! Bool
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
            if dict.keys.contains("triggerValue") {
                self.triggerValue = dict["triggerValue"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class GetTaskPolicyRequest : Tea.TeaModel {
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

public class GetTaskPolicyResponseBody : Tea.TeaModel {
    public class TaskPolicy : Tea.TeaModel {
        public class TaskPolicies : Tea.TeaModel {
            public var priority: Int64?

            public var taskId: String?

            public var taskName: String?

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
                if self.priority != nil {
                    map["priority"] = self.priority!
                }
                if self.taskId != nil {
                    map["taskId"] = self.taskId!
                }
                if self.taskName != nil {
                    map["taskName"] = self.taskName!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("priority") {
                    self.priority = dict["priority"] as! Int64
                }
                if dict.keys.contains("taskId") {
                    self.taskId = dict["taskId"] as! String
                }
                if dict.keys.contains("taskName") {
                    self.taskName = dict["taskName"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var groupId: String?

        public var taskPolicies: [GetTaskPolicyResponseBody.TaskPolicy.TaskPolicies]?

        public override init() {
            super.init()
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
            if dict.keys.contains("groupId") {
                self.groupId = dict["groupId"] as! String
            }
            if dict.keys.contains("taskPolicies") {
                var tmp : [GetTaskPolicyResponseBody.TaskPolicy.TaskPolicies] = []
                for v in dict["taskPolicies"] as! [Any] {
                    var model = GetTaskPolicyResponseBody.TaskPolicy.TaskPolicies()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taskPolicies = tmp
            }
        }
    }
    public var requestId: String?

    public var taskPolicy: GetTaskPolicyResponseBody.TaskPolicy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.taskPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.taskPolicy != nil {
            map["taskPolicy"] = self.taskPolicy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("taskPolicy") {
            var model = GetTaskPolicyResponseBody.TaskPolicy()
            model.fromMap(dict["taskPolicy"] as! [String: Any])
            self.taskPolicy = model
        }
    }
}

public class GetTaskPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskPolicyResponseBody?

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
            var model = GetTaskPolicyResponseBody()
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
            var tmp : [ListAuthorizationsResponseBody.Authorizations] = []
            for v in dict["authorizations"] as! [Any] {
                var model = ListAuthorizationsResponseBody.Authorizations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.authorizations = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class ListAvailableTerraformVersionsRequest : Tea.TeaModel {
    public var keyWord: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyWord != nil {
            map["keyWord"] = self.keyWord!
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
        if dict.keys.contains("keyWord") {
            self.keyWord = dict["keyWord"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
    }
}

public class ListAvailableTerraformVersionsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var totalCount: Int32?

    public var verisonList: [String]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.verisonList != nil {
            map["verisonList"] = self.verisonList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
        if dict.keys.contains("verisonList") {
            self.verisonList = dict["verisonList"] as! [String]
        }
    }
}

public class ListAvailableTerraformVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAvailableTerraformVersionsResponseBody?

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
            var model = ListAvailableTerraformVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListExplorerTasksRequest : Tea.TeaModel {
    public var keyword: String?

    public var maxResult: String?

    public var moduleId: String?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResult != nil {
            map["maxResult"] = self.maxResult!
        }
        if self.moduleId != nil {
            map["moduleId"] = self.moduleId!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("maxResult") {
            self.maxResult = dict["maxResult"] as! String
        }
        if dict.keys.contains("moduleId") {
            self.moduleId = dict["moduleId"] as! String
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListExplorerTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var autoApply: Bool?

        public var createTime: String?

        public var currentJobId: String?

        public var currentJobStatus: String?

        public var deletionProtection: Bool?

        public var moduleId: String?

        public var moduleName: String?

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
            if self.autoApply != nil {
                map["autoApply"] = self.autoApply!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.currentJobId != nil {
                map["currentJobId"] = self.currentJobId!
            }
            if self.currentJobStatus != nil {
                map["currentJobStatus"] = self.currentJobStatus!
            }
            if self.deletionProtection != nil {
                map["deletionProtection"] = self.deletionProtection!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.moduleName != nil {
                map["moduleName"] = self.moduleName!
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
            if dict.keys.contains("autoApply") {
                self.autoApply = dict["autoApply"] as! Bool
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("currentJobId") {
                self.currentJobId = dict["currentJobId"] as! String
            }
            if dict.keys.contains("currentJobStatus") {
                self.currentJobStatus = dict["currentJobStatus"] as! String
            }
            if dict.keys.contains("deletionProtection") {
                self.deletionProtection = dict["deletionProtection"] as! Bool
            }
            if dict.keys.contains("moduleId") {
                self.moduleId = dict["moduleId"] as! String
            }
            if dict.keys.contains("moduleName") {
                self.moduleName = dict["moduleName"] as! String
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
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var tasks: [ListExplorerTasksResponseBody.Tasks]?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
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
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("tasks") {
            var tmp : [ListExplorerTasksResponseBody.Tasks] = []
            for v in dict["tasks"] as! [Any] {
                var model = ListExplorerTasksResponseBody.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListExplorerTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExplorerTasksResponseBody?

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
            var model = ListExplorerTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

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
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var keyword: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var projectId: String?

    public var tag: [ListGroupRequest.Tag]?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! String
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! String
        }
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("tag") {
            var tmp : [ListGroupRequest.Tag] = []
            for v in dict["tag"] as! [Any] {
                var model = ListGroupRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListGroupShrinkRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var projectId: String?

    public var tagShrink: String?

    public override init() {
        super.init()
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
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.tagShrink != nil {
            map["tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! String
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! String
        }
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("tag") {
            self.tagShrink = dict["tag"] as! String
        }
    }
}

public class ListGroupResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var key: String?

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
                if self.key != nil {
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var groupId: String?

        public var isDefault: Bool?

        public var moduleCnt: Int64?

        public var name: String?

        public var projectId: String?

        public var sceneTestingTaskCnt: Int64?

        public var tags: [ListGroupResponseBody.Groups.Tags]?

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
            if self.groupId != nil {
                map["groupId"] = self.groupId!
            }
            if self.isDefault != nil {
                map["isDefault"] = self.isDefault!
            }
            if self.moduleCnt != nil {
                map["moduleCnt"] = self.moduleCnt!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.sceneTestingTaskCnt != nil {
                map["sceneTestingTaskCnt"] = self.sceneTestingTaskCnt!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
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
            if dict.keys.contains("groupId") {
                self.groupId = dict["groupId"] as! String
            }
            if dict.keys.contains("isDefault") {
                self.isDefault = dict["isDefault"] as! Bool
            }
            if dict.keys.contains("moduleCnt") {
                self.moduleCnt = dict["moduleCnt"] as! Int64
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("projectId") {
                self.projectId = dict["projectId"] as! String
            }
            if dict.keys.contains("sceneTestingTaskCnt") {
                self.sceneTestingTaskCnt = dict["sceneTestingTaskCnt"] as! Int64
            }
            if dict.keys.contains("tags") {
                var tmp : [ListGroupResponseBody.Groups.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = ListGroupResponseBody.Groups.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
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
            var tmp : [ListGroupResponseBody.Groups] = []
            for v in dict["groups"] as! [Any] {
                var model = ListGroupResponseBody.Groups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.groups = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

    public var taskType: String?

    public override init() {
        super.init()
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
        if self.taskType != nil {
            map["taskType"] = self.taskType!
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
        if dict.keys.contains("taskType") {
            self.taskType = dict["taskType"] as! String
        }
    }
}

public class ListJobsResponseBody : Tea.TeaModel {
    public class Jobs : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var isDestroy: Bool?

            public var moduleVersion: String?

            public var resourcesChanged: String?

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
                if self.isDestroy != nil {
                    map["isDestroy"] = self.isDestroy!
                }
                if self.moduleVersion != nil {
                    map["moduleVersion"] = self.moduleVersion!
                }
                if self.resourcesChanged != nil {
                    map["resourcesChanged"] = self.resourcesChanged!
                }
                if self.subCommand != nil {
                    map["subCommand"] = self.subCommand!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("isDestroy") {
                    self.isDestroy = dict["isDestroy"] as! Bool
                }
                if dict.keys.contains("moduleVersion") {
                    self.moduleVersion = dict["moduleVersion"] as! String
                }
                if dict.keys.contains("resourcesChanged") {
                    self.resourcesChanged = dict["resourcesChanged"] as! String
                }
                if dict.keys.contains("subCommand") {
                    self.subCommand = dict["subCommand"] as! String
                }
            }
        }
        public var config: ListJobsResponseBody.Jobs.Config?

        public var createTime: String?

        public var description_: String?

        public var elapsedTime: Int64?

        public var executeType: String?

        public var isPassAssertCheck: Bool?

        public var jobId: String?

        public var status: String?

        public var statusDetail: [String: JobsStatusDetailValue]?

        public var taskId: String?

        public var terraformProviderVersion: String?

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
            if self.elapsedTime != nil {
                map["elapsedTime"] = self.elapsedTime!
            }
            if self.executeType != nil {
                map["executeType"] = self.executeType!
            }
            if self.isPassAssertCheck != nil {
                map["isPassAssertCheck"] = self.isPassAssertCheck!
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
            if self.terraformProviderVersion != nil {
                map["terraformProviderVersion"] = self.terraformProviderVersion!
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
            if dict.keys.contains("elapsedTime") {
                self.elapsedTime = dict["elapsedTime"] as! Int64
            }
            if dict.keys.contains("executeType") {
                self.executeType = dict["executeType"] as! String
            }
            if dict.keys.contains("isPassAssertCheck") {
                self.isPassAssertCheck = dict["isPassAssertCheck"] as! Bool
            }
            if dict.keys.contains("jobId") {
                self.jobId = dict["jobId"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("statusDetail") {
                var tmp : [String: JobsStatusDetailValue] = [:]
                for (k, v) in dict["statusDetail"] as! [String: Any] {
                    if v != nil {
                        var model = JobsStatusDetailValue()
                        model.fromMap(v as! [String: Any])
                        tmp[k] = model
                    }
                }
                self.statusDetail = tmp
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("terraformProviderVersion") {
                self.terraformProviderVersion = dict["terraformProviderVersion"] as! String
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
            var tmp : [ListJobsResponseBody.Jobs] = []
            for v in dict["jobs"] as! [Any] {
                var model = ListJobsResponseBody.Jobs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobs = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var tmp : [ListModuleVersionResponseBody.Versions] = []
            for v in dict["versions"] as! [Any] {
                var model = ListModuleVersionResponseBody.Versions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.versions = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
    public class Tag : Tea.TeaModel {
        public var key: String?

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
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var excludeModuleIds: [String]?

    public var groupId: String?

    public var keyword: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var tag: [ListModulesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludeModuleIds != nil {
            map["excludeModuleIds"] = self.excludeModuleIds!
        }
        if self.groupId != nil {
            map["groupId"] = self.groupId!
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
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("excludeModuleIds") {
            self.excludeModuleIds = dict["excludeModuleIds"] as! [String]
        }
        if dict.keys.contains("groupId") {
            self.groupId = dict["groupId"] as! String
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
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("tag") {
            var tmp : [ListModulesRequest.Tag] = []
            for v in dict["tag"] as! [Any] {
                var model = ListModulesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListModulesShrinkRequest : Tea.TeaModel {
    public var excludeModuleIdsShrink: String?

    public var groupId: String?

    public var keyword: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var tagShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludeModuleIdsShrink != nil {
            map["excludeModuleIds"] = self.excludeModuleIdsShrink!
        }
        if self.groupId != nil {
            map["groupId"] = self.groupId!
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
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.tagShrink != nil {
            map["tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("excludeModuleIds") {
            self.excludeModuleIdsShrink = dict["excludeModuleIds"] as! String
        }
        if dict.keys.contains("groupId") {
            self.groupId = dict["groupId"] as! String
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
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("tag") {
            self.tagShrink = dict["tag"] as! String
        }
    }
}

public class ListModulesResponseBody : Tea.TeaModel {
    public class Modules : Tea.TeaModel {
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
        public class Tags : Tea.TeaModel {
            public var key: String?

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
                if self.key != nil {
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var createTime: String?

        public var deletionProtection: Bool?

        public var description_: String?

        public var groupInfo: ListModulesResponseBody.Modules.GroupInfo?

        public var latestVersion: String?

        public var meta: [String: Any]?

        public var moduleId: String?

        public var name: String?

        public var source: String?

        public var sourceConfig: [String: Any]?

        public var status: String?

        public var tags: [ListModulesResponseBody.Modules.Tags]?

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
            if self.deletionProtection != nil {
                map["deletionProtection"] = self.deletionProtection!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.groupInfo != nil {
                map["groupInfo"] = self.groupInfo?.toMap()
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
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
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
            if dict.keys.contains("groupInfo") {
                var model = ListModulesResponseBody.Modules.GroupInfo()
                model.fromMap(dict["groupInfo"] as! [String: Any])
                self.groupInfo = model
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
            if dict.keys.contains("tags") {
                var tmp : [ListModulesResponseBody.Modules.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = ListModulesResponseBody.Modules.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
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
            var tmp : [ListModulesResponseBody.Modules] = []
            for v in dict["modules"] as! [Any] {
                var model = ListModulesResponseBody.Modules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.modules = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var tmp : [ListParameterSetRelationResponseBody.ParameterSets] = []
            for v in dict["parameterSets"] as! [Any] {
                var model = ListParameterSetRelationResponseBody.ParameterSets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameterSets = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

        public var deletionProtection: Bool?

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
            if self.deletionProtection != nil {
                map["deletionProtection"] = self.deletionProtection!
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
            if dict.keys.contains("deletionProtection") {
                self.deletionProtection = dict["deletionProtection"] as! Bool
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
                var tmp : [ListParameterSetsResponseBody.ParameterSets.Parameters] = []
                for v in dict["parameters"] as! [Any] {
                    var model = ListParameterSetsResponseBody.ParameterSets.Parameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.parameters = tmp
            }
            if dict.keys.contains("relationList") {
                var tmp : [ListParameterSetsResponseBody.ParameterSets.RelationList] = []
                for v in dict["relationList"] as! [Any] {
                    var model = ListParameterSetsResponseBody.ParameterSets.RelationList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.relationList = tmp
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
            var tmp : [ListParameterSetsResponseBody.ParameterSets] = []
            for v in dict["parameterSets"] as! [Any] {
                var model = ListParameterSetsResponseBody.ParameterSets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameterSets = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
    public class Tag : Tea.TeaModel {
        public var key: String?

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
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var keyword: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var tag: [ListProjectRequest.Tag]?

    public override init() {
        super.init()
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
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! String
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! String
        }
        if dict.keys.contains("tag") {
            var tmp : [ListProjectRequest.Tag] = []
            for v in dict["tag"] as! [Any] {
                var model = ListProjectRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListProjectShrinkRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var tagShrink: String?

    public override init() {
        super.init()
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
        if self.tagShrink != nil {
            map["tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! String
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! String
        }
        if dict.keys.contains("tag") {
            self.tagShrink = dict["tag"] as! String
        }
    }
}

public class ListProjectResponseBody : Tea.TeaModel {
    public class Projects : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var key: String?

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
                if self.key != nil {
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var name: String?

        public var projectId: String?

        public var tags: [ListProjectResponseBody.Projects.Tags]?

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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
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
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("projectId") {
                self.projectId = dict["projectId"] as! String
            }
            if dict.keys.contains("tags") {
                var tmp : [ListProjectResponseBody.Projects.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = ListProjectResponseBody.Projects.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
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
            var tmp : [ListProjectResponseBody.Projects] = []
            for v in dict["projects"] as! [Any] {
                var model = ListProjectResponseBody.Projects()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.projects = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class ListProjectBuildsRequest : Tea.TeaModel {
    public var groupId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var projectBuildAction: String?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.projectBuildAction != nil {
            map["projectBuildAction"] = self.projectBuildAction!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("groupId") {
            self.groupId = dict["groupId"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! String
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! String
        }
        if dict.keys.contains("projectBuildAction") {
            self.projectBuildAction = dict["projectBuildAction"] as! String
        }
    }
}

public class ListProjectBuildsResponseBody : Tea.TeaModel {
    public class ProjectBuilds : Tea.TeaModel {
        public var createTime: String?

        public var endTime: String?

        public var projectBuildAction: String?

        public var projectBuildId: String?

        public var projectBuildIndex: Int64?

        public var projectId: String?

        public var status: String?

        public var terraformProviderVersion: String?

        public var timestamp: Int64?

        public var triggerStrategy: String?

        public override init() {
            super.init()
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
            if self.endTime != nil {
                map["endTime"] = self.endTime!
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
            if self.terraformProviderVersion != nil {
                map["terraformProviderVersion"] = self.terraformProviderVersion!
            }
            if self.timestamp != nil {
                map["timestamp"] = self.timestamp!
            }
            if self.triggerStrategy != nil {
                map["triggerStrategy"] = self.triggerStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("endTime") {
                self.endTime = dict["endTime"] as! String
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
            if dict.keys.contains("terraformProviderVersion") {
                self.terraformProviderVersion = dict["terraformProviderVersion"] as! String
            }
            if dict.keys.contains("timestamp") {
                self.timestamp = dict["timestamp"] as! Int64
            }
            if dict.keys.contains("triggerStrategy") {
                self.triggerStrategy = dict["triggerStrategy"] as! String
            }
        }
    }
    public var projectBuilds: [ListProjectBuildsResponseBody.ProjectBuilds]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if dict.keys.contains("ProjectBuilds") {
            var tmp : [ListProjectBuildsResponseBody.ProjectBuilds] = []
            for v in dict["ProjectBuilds"] as! [Any] {
                var model = ListProjectBuildsResponseBody.ProjectBuilds()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.projectBuilds = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var tmp : [ListRabbitmqPublishersResponseBody.Authorizations] = []
            for v in dict["authorizations"] as! [Any] {
                var model = ListRabbitmqPublishersResponseBody.Authorizations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.authorizations = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class ListRamPolicyExportTaskVersionsRequest : Tea.TeaModel {
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

public class ListRamPolicyExportTaskVersionsResponseBody : Tea.TeaModel {
    public class RamPolicyExportTaskVersions : Tea.TeaModel {
        public var createTime: String?

        public var elapsedTime: Int64?

        public var exportVersion: String?

        public var moduleId: String?

        public var moduleVersion: String?

        public var ramPolicyExportTaskId: String?

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
            if self.elapsedTime != nil {
                map["elapsedTime"] = self.elapsedTime!
            }
            if self.exportVersion != nil {
                map["exportVersion"] = self.exportVersion!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.moduleVersion != nil {
                map["moduleVersion"] = self.moduleVersion!
            }
            if self.ramPolicyExportTaskId != nil {
                map["ramPolicyExportTaskId"] = self.ramPolicyExportTaskId!
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
            if dict.keys.contains("elapsedTime") {
                self.elapsedTime = dict["elapsedTime"] as! Int64
            }
            if dict.keys.contains("exportVersion") {
                self.exportVersion = dict["exportVersion"] as! String
            }
            if dict.keys.contains("moduleId") {
                self.moduleId = dict["moduleId"] as! String
            }
            if dict.keys.contains("moduleVersion") {
                self.moduleVersion = dict["moduleVersion"] as! String
            }
            if dict.keys.contains("ramPolicyExportTaskId") {
                self.ramPolicyExportTaskId = dict["ramPolicyExportTaskId"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var ramPolicyExportTaskVersions: [ListRamPolicyExportTaskVersionsResponseBody.RamPolicyExportTaskVersions]?

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
        if self.ramPolicyExportTaskVersions != nil {
            var tmp : [Any] = []
            for k in self.ramPolicyExportTaskVersions! {
                tmp.append(k.toMap())
            }
            map["ramPolicyExportTaskVersions"] = tmp
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
        if dict.keys.contains("ramPolicyExportTaskVersions") {
            var tmp : [ListRamPolicyExportTaskVersionsResponseBody.RamPolicyExportTaskVersions] = []
            for v in dict["ramPolicyExportTaskVersions"] as! [Any] {
                var model = ListRamPolicyExportTaskVersionsResponseBody.RamPolicyExportTaskVersions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ramPolicyExportTaskVersions = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListRamPolicyExportTaskVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRamPolicyExportTaskVersionsResponseBody?

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
            var model = ListRamPolicyExportTaskVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRamPolicyExportTasksRequest : Tea.TeaModel {
    public var keyword: String?

    public var moduleId: String?

    public var moduleVersion: String?

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
        if self.moduleId != nil {
            map["moduleId"] = self.moduleId!
        }
        if self.moduleVersion != nil {
            map["moduleVersion"] = self.moduleVersion!
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
        if dict.keys.contains("moduleId") {
            self.moduleId = dict["moduleId"] as! String
        }
        if dict.keys.contains("moduleVersion") {
            self.moduleVersion = dict["moduleVersion"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListRamPolicyExportTasksResponseBody : Tea.TeaModel {
    public class RamPolicyExportTasks : Tea.TeaModel {
        public var createTime: String?

        public var currentPolicyStatus: String?

        public var currentPolicyVersion: String?

        public var elapsedTime: Int64?

        public var exportTime: String?

        public var moduleId: String?

        public var moduleVersion: String?

        public var name: String?

        public var ramPolicyExportTaskId: String?

        public var status: String?

        public var taskOutputPath: String?

        public override init() {
            super.init()
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
            if self.currentPolicyStatus != nil {
                map["currentPolicyStatus"] = self.currentPolicyStatus!
            }
            if self.currentPolicyVersion != nil {
                map["currentPolicyVersion"] = self.currentPolicyVersion!
            }
            if self.elapsedTime != nil {
                map["elapsedTime"] = self.elapsedTime!
            }
            if self.exportTime != nil {
                map["exportTime"] = self.exportTime!
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
            if self.ramPolicyExportTaskId != nil {
                map["ramPolicyExportTaskId"] = self.ramPolicyExportTaskId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskOutputPath != nil {
                map["taskOutputPath"] = self.taskOutputPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("currentPolicyStatus") {
                self.currentPolicyStatus = dict["currentPolicyStatus"] as! String
            }
            if dict.keys.contains("currentPolicyVersion") {
                self.currentPolicyVersion = dict["currentPolicyVersion"] as! String
            }
            if dict.keys.contains("elapsedTime") {
                self.elapsedTime = dict["elapsedTime"] as! Int64
            }
            if dict.keys.contains("exportTime") {
                self.exportTime = dict["exportTime"] as! String
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
            if dict.keys.contains("ramPolicyExportTaskId") {
                self.ramPolicyExportTaskId = dict["ramPolicyExportTaskId"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("taskOutputPath") {
                self.taskOutputPath = dict["taskOutputPath"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var ramPolicyExportTasks: [ListRamPolicyExportTasksResponseBody.RamPolicyExportTasks]?

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
        if self.ramPolicyExportTasks != nil {
            var tmp : [Any] = []
            for k in self.ramPolicyExportTasks! {
                tmp.append(k.toMap())
            }
            map["ramPolicyExportTasks"] = tmp
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
        if dict.keys.contains("ramPolicyExportTasks") {
            var tmp : [ListRamPolicyExportTasksResponseBody.RamPolicyExportTasks] = []
            for v in dict["ramPolicyExportTasks"] as! [Any] {
                var model = ListRamPolicyExportTasksResponseBody.RamPolicyExportTasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ramPolicyExportTasks = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListRamPolicyExportTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRamPolicyExportTasksResponseBody?

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
            var model = ListRamPolicyExportTasksResponseBody()
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

        public var elapsedTime: Int64?

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
            if self.elapsedTime != nil {
                map["elapsedTime"] = self.elapsedTime!
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
            if dict.keys.contains("elapsedTime") {
                self.elapsedTime = dict["elapsedTime"] as! Int64
            }
            if dict.keys.contains("excludeRules") {
                var tmp : [ListResourceExportTaskVersionsResponseBody.ExportTasks.ExcludeRules] = []
                for v in dict["excludeRules"] as! [Any] {
                    var model = ListResourceExportTaskVersionsResponseBody.ExportTasks.ExcludeRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.excludeRules = tmp
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
                var tmp : [ListResourceExportTaskVersionsResponseBody.ExportTasks.IncludeRules] = []
                for v in dict["includeRules"] as! [Any] {
                    var model = ListResourceExportTaskVersionsResponseBody.ExportTasks.IncludeRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.includeRules = tmp
            }
            if dict.keys.contains("modules") {
                var tmp : [ListResourceExportTaskVersionsResponseBody.ExportTasks.Modules] = []
                for v in dict["modules"] as! [Any] {
                    var model = ListResourceExportTaskVersionsResponseBody.ExportTasks.Modules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.modules = tmp
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("variables") {
                var tmp : [ListResourceExportTaskVersionsResponseBody.ExportTasks.Variables] = []
                for v in dict["variables"] as! [Any] {
                    var model = ListResourceExportTaskVersionsResponseBody.ExportTasks.Variables()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.variables = tmp
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
            var tmp : [ListResourceExportTaskVersionsResponseBody.ExportTasks] = []
            for v in dict["exportTasks"] as! [Any] {
                var model = ListResourceExportTaskVersionsResponseBody.ExportTasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.exportTasks = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

        public var elapsedTime: Int64?

        public var excludeRules: [ListResourceExportTasksResponseBody.ExportTasks.ExcludeRules]?

        public var exportStatus: String?

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
            if self.elapsedTime != nil {
                map["elapsedTime"] = self.elapsedTime!
            }
            if self.excludeRules != nil {
                var tmp : [Any] = []
                for k in self.excludeRules! {
                    tmp.append(k.toMap())
                }
                map["excludeRules"] = tmp
            }
            if self.exportStatus != nil {
                map["exportStatus"] = self.exportStatus!
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
            if dict.keys.contains("elapsedTime") {
                self.elapsedTime = dict["elapsedTime"] as! Int64
            }
            if dict.keys.contains("excludeRules") {
                var tmp : [ListResourceExportTasksResponseBody.ExportTasks.ExcludeRules] = []
                for v in dict["excludeRules"] as! [Any] {
                    var model = ListResourceExportTasksResponseBody.ExportTasks.ExcludeRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.excludeRules = tmp
            }
            if dict.keys.contains("exportStatus") {
                self.exportStatus = dict["exportStatus"] as! String
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
                var tmp : [ListResourceExportTasksResponseBody.ExportTasks.IncludeRules] = []
                for v in dict["includeRules"] as! [Any] {
                    var model = ListResourceExportTasksResponseBody.ExportTasks.IncludeRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.includeRules = tmp
            }
            if dict.keys.contains("modules") {
                var tmp : [ListResourceExportTasksResponseBody.ExportTasks.Modules] = []
                for v in dict["modules"] as! [Any] {
                    var model = ListResourceExportTasksResponseBody.ExportTasks.Modules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.modules = tmp
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("variables") {
                var tmp : [ListResourceExportTasksResponseBody.ExportTasks.Variables] = []
                for v in dict["variables"] as! [Any] {
                    var model = ListResourceExportTasksResponseBody.ExportTasks.Variables()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.variables = tmp
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
            var tmp : [ListResourceExportTasksResponseBody.ExportTasks] = []
            for v in dict["exportTasks"] as! [Any] {
                var model = ListResourceExportTasksResponseBody.ExportTasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.exportTasks = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
                var tmp : [ListResourcesResponseBody.Resources.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = ListResourcesResponseBody.Resources.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
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
            var tmp : [ListResourcesResponseBody.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = ListResourcesResponseBody.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class ListTasksRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

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
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var excludeTaskIds: [String]?

    public var groupId: String?

    public var keyword: String?

    public var moduleId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var status: String?

    public var tag: [ListTasksRequest.Tag]?

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
        if self.excludeTaskIds != nil {
            map["excludeTaskIds"] = self.excludeTaskIds!
        }
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
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("excludeTaskIds") {
            self.excludeTaskIds = dict["excludeTaskIds"] as! [String]
        }
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
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("tag") {
            var tmp : [ListTasksRequest.Tag] = []
            for v in dict["tag"] as! [Any] {
                var model = ListTasksRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class ListTasksShrinkRequest : Tea.TeaModel {
    public var excludeTaskIdsShrink: String?

    public var groupId: String?

    public var keyword: String?

    public var moduleId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var status: String?

    public var tagShrink: String?

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
        if self.excludeTaskIdsShrink != nil {
            map["excludeTaskIds"] = self.excludeTaskIdsShrink!
        }
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
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.tagShrink != nil {
            map["tag"] = self.tagShrink!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("excludeTaskIds") {
            self.excludeTaskIdsShrink = dict["excludeTaskIds"] as! String
        }
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
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("tag") {
            self.tagShrink = dict["tag"] as! String
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
        public class Tags : Tea.TeaModel {
            public var key: String?

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
                if self.key != nil {
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var autoApply: Bool?

        public var createTime: String?

        public var currentJobId: String?

        public var currentJobStatus: String?

        public var deletionProtection: Bool?

        public var groupInfo: ListTasksResponseBody.Tasks.GroupInfo?

        public var moduleId: String?

        public var moduleName: String?

        public var moduleVersion: String?

        public var name: String?

        public var status: String?

        public var tags: [ListTasksResponseBody.Tasks.Tags]?

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
            if self.autoApply != nil {
                map["autoApply"] = self.autoApply!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.currentJobId != nil {
                map["currentJobId"] = self.currentJobId!
            }
            if self.currentJobStatus != nil {
                map["currentJobStatus"] = self.currentJobStatus!
            }
            if self.deletionProtection != nil {
                map["deletionProtection"] = self.deletionProtection!
            }
            if self.groupInfo != nil {
                map["groupInfo"] = self.groupInfo?.toMap()
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.moduleName != nil {
                map["moduleName"] = self.moduleName!
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
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
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
            if dict.keys.contains("currentJobStatus") {
                self.currentJobStatus = dict["currentJobStatus"] as! String
            }
            if dict.keys.contains("deletionProtection") {
                self.deletionProtection = dict["deletionProtection"] as! Bool
            }
            if dict.keys.contains("groupInfo") {
                var model = ListTasksResponseBody.Tasks.GroupInfo()
                model.fromMap(dict["groupInfo"] as! [String: Any])
                self.groupInfo = model
            }
            if dict.keys.contains("moduleId") {
                self.moduleId = dict["moduleId"] as! String
            }
            if dict.keys.contains("moduleName") {
                self.moduleName = dict["moduleName"] as! String
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
            if dict.keys.contains("tags") {
                var tmp : [ListTasksResponseBody.Tasks.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = ListTasksResponseBody.Tasks.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
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
            var tmp : [ListTasksResponseBody.Tasks] = []
            for v in dict["tasks"] as! [Any] {
                var model = ListTasksResponseBody.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class ListTerraformProviderVersionsRequest : Tea.TeaModel {
    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var usage: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.usage != nil {
            map["usage"] = self.usage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("usage") {
            self.usage = dict["usage"] as! String
        }
    }
}

public class ListTerraformProviderVersionsResponseBody : Tea.TeaModel {
    public class Versions : Tea.TeaModel {
        public var publishedTime: String?

        public var status: String?

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
            if self.publishedTime != nil {
                map["publishedTime"] = self.publishedTime!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("publishedTime") {
                self.publishedTime = dict["publishedTime"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var verisonList: [String]?

    public var versions: [ListTerraformProviderVersionsResponseBody.Versions]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.verisonList != nil {
            map["verisonList"] = self.verisonList!
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
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
        if dict.keys.contains("verisonList") {
            self.verisonList = dict["verisonList"] as! [String]
        }
        if dict.keys.contains("versions") {
            var tmp : [ListTerraformProviderVersionsResponseBody.Versions] = []
            for v in dict["versions"] as! [Any] {
                var model = ListTerraformProviderVersionsResponseBody.Versions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.versions = tmp
        }
    }
}

public class ListTerraformProviderVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTerraformProviderVersionsResponseBody?

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
            var model = ListTerraformProviderVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OperateJobRequest : Tea.TeaModel {
    public var comment: String?

    public var taskType: String?

    public override init() {
        super.init()
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
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("comment") {
            self.comment = dict["comment"] as! String
        }
        if dict.keys.contains("taskType") {
            self.taskType = dict["taskType"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class TagResourcesRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var key: String?

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
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var regionId: String?

    public var resourceIds: [String]?

    public var resourceType: String?

    public var tags: [TagResourcesRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.resourceIds != nil {
            map["resourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("regionId") {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("resourceIds") {
            self.resourceIds = dict["resourceIds"] as! [String]
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("tags") {
            var tmp : [TagResourcesRequest.Tags] = []
            for v in dict["tags"] as! [Any] {
                var model = TagResourcesRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
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
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

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
            var model = TagResourcesResponseBody()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class UpdateExplorerTaskAttributeRequest : Tea.TeaModel {
    public var autoApply: Bool?

    public var explorerTaskName: String?

    public var moduleId: String?

    public var moduleVersion: String?

    public var terraformProviderVersion: String?

    public override init() {
        super.init()
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
        if self.explorerTaskName != nil {
            map["explorerTaskName"] = self.explorerTaskName!
        }
        if self.moduleId != nil {
            map["moduleId"] = self.moduleId!
        }
        if self.moduleVersion != nil {
            map["moduleVersion"] = self.moduleVersion!
        }
        if self.terraformProviderVersion != nil {
            map["terraformProviderVersion"] = self.terraformProviderVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoApply") {
            self.autoApply = dict["autoApply"] as! Bool
        }
        if dict.keys.contains("explorerTaskName") {
            self.explorerTaskName = dict["explorerTaskName"] as! String
        }
        if dict.keys.contains("moduleId") {
            self.moduleId = dict["moduleId"] as! String
        }
        if dict.keys.contains("moduleVersion") {
            self.moduleVersion = dict["moduleVersion"] as! String
        }
        if dict.keys.contains("terraformProviderVersion") {
            self.terraformProviderVersion = dict["terraformProviderVersion"] as! String
        }
    }
}

public class UpdateExplorerTaskAttributeResponseBody : Tea.TeaModel {
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

public class UpdateExplorerTaskAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateExplorerTaskAttributeResponseBody?

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
            var model = UpdateExplorerTaskAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupRequest : Tea.TeaModel {
    public class NotifyConfig : Tea.TeaModel {
        public var notifyPath: String?

        public var notifyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.notifyPath != nil {
                map["notifyPath"] = self.notifyPath!
            }
            if self.notifyType != nil {
                map["notifyType"] = self.notifyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("notifyPath") {
                self.notifyPath = dict["notifyPath"] as! String
            }
            if dict.keys.contains("notifyType") {
                self.notifyType = dict["notifyType"] as! String
            }
        }
    }
    public class TriggerConfig : Tea.TeaModel {
        public var triggerStrategy: String?

        public var triggerValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.triggerStrategy != nil {
                map["triggerStrategy"] = self.triggerStrategy!
            }
            if self.triggerValue != nil {
                map["triggerValue"] = self.triggerValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("triggerStrategy") {
                self.triggerStrategy = dict["triggerStrategy"] as! String
            }
            if dict.keys.contains("triggerValue") {
                self.triggerValue = dict["triggerValue"] as! String
            }
        }
    }
    public var autoDestroy: Bool?

    public var autoTrigger: Bool?

    public var clientToken: String?

    public var description_: String?

    public var forcedSetting: Bool?

    public var name: String?

    public var notifyConfig: [UpdateGroupRequest.NotifyConfig]?

    public var notifyOperationTypes: [String]?

    public var ramRole: String?

    public var reportExportField: [String]?

    public var reportExportPath: String?

    public var terraformProviderVersion: String?

    public var triggerConfig: [UpdateGroupRequest.TriggerConfig]?

    public var triggerResourceType: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoDestroy != nil {
            map["autoDestroy"] = self.autoDestroy!
        }
        if self.autoTrigger != nil {
            map["autoTrigger"] = self.autoTrigger!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.forcedSetting != nil {
            map["forcedSetting"] = self.forcedSetting!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.notifyConfig != nil {
            var tmp : [Any] = []
            for k in self.notifyConfig! {
                tmp.append(k.toMap())
            }
            map["notifyConfig"] = tmp
        }
        if self.notifyOperationTypes != nil {
            map["notifyOperationTypes"] = self.notifyOperationTypes!
        }
        if self.ramRole != nil {
            map["ramRole"] = self.ramRole!
        }
        if self.reportExportField != nil {
            map["reportExportField"] = self.reportExportField!
        }
        if self.reportExportPath != nil {
            map["reportExportPath"] = self.reportExportPath!
        }
        if self.terraformProviderVersion != nil {
            map["terraformProviderVersion"] = self.terraformProviderVersion!
        }
        if self.triggerConfig != nil {
            var tmp : [Any] = []
            for k in self.triggerConfig! {
                tmp.append(k.toMap())
            }
            map["triggerConfig"] = tmp
        }
        if self.triggerResourceType != nil {
            map["triggerResourceType"] = self.triggerResourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoDestroy") {
            self.autoDestroy = dict["autoDestroy"] as! Bool
        }
        if dict.keys.contains("autoTrigger") {
            self.autoTrigger = dict["autoTrigger"] as! Bool
        }
        if dict.keys.contains("clientToken") {
            self.clientToken = dict["clientToken"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("forcedSetting") {
            self.forcedSetting = dict["forcedSetting"] as! Bool
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("notifyConfig") {
            var tmp : [UpdateGroupRequest.NotifyConfig] = []
            for v in dict["notifyConfig"] as! [Any] {
                var model = UpdateGroupRequest.NotifyConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.notifyConfig = tmp
        }
        if dict.keys.contains("notifyOperationTypes") {
            self.notifyOperationTypes = dict["notifyOperationTypes"] as! [String]
        }
        if dict.keys.contains("ramRole") {
            self.ramRole = dict["ramRole"] as! String
        }
        if dict.keys.contains("reportExportField") {
            self.reportExportField = dict["reportExportField"] as! [String]
        }
        if dict.keys.contains("reportExportPath") {
            self.reportExportPath = dict["reportExportPath"] as! String
        }
        if dict.keys.contains("terraformProviderVersion") {
            self.terraformProviderVersion = dict["terraformProviderVersion"] as! String
        }
        if dict.keys.contains("triggerConfig") {
            var tmp : [UpdateGroupRequest.TriggerConfig] = []
            for v in dict["triggerConfig"] as! [Any] {
                var model = UpdateGroupRequest.TriggerConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.triggerConfig = tmp
        }
        if dict.keys.contains("triggerResourceType") {
            self.triggerResourceType = dict["triggerResourceType"] as! [String]
        }
    }
}

public class UpdateGroupResponseBody : Tea.TeaModel {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
    public var description_: String?

    public var groupInfo: UpdateModuleAttributeRequest.GroupInfo?

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
        try self.groupInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.groupInfo != nil {
            map["groupInfo"] = self.groupInfo?.toMap()
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
        if dict.keys.contains("groupInfo") {
            var model = UpdateModuleAttributeRequest.GroupInfo()
            model.fromMap(dict["groupInfo"] as! [String: Any])
            self.groupInfo = model
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var tmp : [UpdateParameterSetAttributeRequest.Parameters] = []
            for v in dict["parameters"] as! [Any] {
                var model = UpdateParameterSetAttributeRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class UpdateRamPolicyExportTaskAttributeRequest : Tea.TeaModel {
    public var authorizationAccountIds: [Int64]?

    public var authorizationActions: [String]?

    public var authorizationRegionIds: [String]?

    public var moduleId: String?

    public var moduleVersion: String?

    public var name: String?

    public var ramRole: String?

    public var triggerStrategy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationAccountIds != nil {
            map["authorizationAccountIds"] = self.authorizationAccountIds!
        }
        if self.authorizationActions != nil {
            map["authorizationActions"] = self.authorizationActions!
        }
        if self.authorizationRegionIds != nil {
            map["authorizationRegionIds"] = self.authorizationRegionIds!
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
        if self.ramRole != nil {
            map["ramRole"] = self.ramRole!
        }
        if self.triggerStrategy != nil {
            map["triggerStrategy"] = self.triggerStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authorizationAccountIds") {
            self.authorizationAccountIds = dict["authorizationAccountIds"] as! [Int64]
        }
        if dict.keys.contains("authorizationActions") {
            self.authorizationActions = dict["authorizationActions"] as! [String]
        }
        if dict.keys.contains("authorizationRegionIds") {
            self.authorizationRegionIds = dict["authorizationRegionIds"] as! [String]
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
        if dict.keys.contains("ramRole") {
            self.ramRole = dict["ramRole"] as! String
        }
        if dict.keys.contains("triggerStrategy") {
            self.triggerStrategy = dict["triggerStrategy"] as! String
        }
    }
}

public class UpdateRamPolicyExportTaskAttributeResponseBody : Tea.TeaModel {
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

public class UpdateRamPolicyExportTaskAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRamPolicyExportTaskAttributeResponseBody?

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
            var model = UpdateRamPolicyExportTaskAttributeResponseBody()
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

    public var configPath: String?

    public var description_: String?

    public var excludeRules: [UpdateResourceExportTaskAttributeRequest.ExcludeRules]?

    public var exportToModule: UpdateResourceExportTaskAttributeRequest.ExportToModule?

    public var includeRules: [UpdateResourceExportTaskAttributeRequest.IncludeRules]?

    public var name: String?

    public var ramRole: String?

    public var terraformProviderVersion: String?

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
        if self.configPath != nil {
            map["configPath"] = self.configPath!
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
        if self.terraformProviderVersion != nil {
            map["terraformProviderVersion"] = self.terraformProviderVersion!
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
        if dict.keys.contains("configPath") {
            self.configPath = dict["configPath"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("excludeRules") {
            var tmp : [UpdateResourceExportTaskAttributeRequest.ExcludeRules] = []
            for v in dict["excludeRules"] as! [Any] {
                var model = UpdateResourceExportTaskAttributeRequest.ExcludeRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.excludeRules = tmp
        }
        if dict.keys.contains("exportToModule") {
            var model = UpdateResourceExportTaskAttributeRequest.ExportToModule()
            model.fromMap(dict["exportToModule"] as! [String: Any])
            self.exportToModule = model
        }
        if dict.keys.contains("includeRules") {
            var tmp : [UpdateResourceExportTaskAttributeRequest.IncludeRules] = []
            for v in dict["includeRules"] as! [Any] {
                var model = UpdateResourceExportTaskAttributeRequest.IncludeRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.includeRules = tmp
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("ramRole") {
            self.ramRole = dict["ramRole"] as! String
        }
        if dict.keys.contains("terraformProviderVersion") {
            self.terraformProviderVersion = dict["terraformProviderVersion"] as! String
        }
        if dict.keys.contains("terraformVersion") {
            self.terraformVersion = dict["terraformVersion"] as! String
        }
        if dict.keys.contains("triggerStrategy") {
            self.triggerStrategy = dict["triggerStrategy"] as! String
        }
        if dict.keys.contains("variables") {
            var tmp : [UpdateResourceExportTaskAttributeRequest.Variables] = []
            for v in dict["variables"] as! [Any] {
                var model = UpdateResourceExportTaskAttributeRequest.Variables()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.variables = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

    public var autoDestroy: Bool?

    public var description_: String?

    public var groupInfo: UpdateTaskAttributeRequest.GroupInfo?

    public var initModuleState: Bool?

    public var moduleId: String?

    public var moduleVersion: String?

    public var name: String?

    public var parameters: [String: String]?

    public var protectionStrategy: [String]?

    public var ramRole: String?

    public var skipPropertyValidation: Bool?

    public var terraformVersion: String?

    public var triggerStrategy: String?

    public var triggerValue: String?

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
        if self.autoDestroy != nil {
            map["autoDestroy"] = self.autoDestroy!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.groupInfo != nil {
            map["groupInfo"] = self.groupInfo?.toMap()
        }
        if self.initModuleState != nil {
            map["initModuleState"] = self.initModuleState!
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
        if self.skipPropertyValidation != nil {
            map["skipPropertyValidation"] = self.skipPropertyValidation!
        }
        if self.terraformVersion != nil {
            map["terraformVersion"] = self.terraformVersion!
        }
        if self.triggerStrategy != nil {
            map["triggerStrategy"] = self.triggerStrategy!
        }
        if self.triggerValue != nil {
            map["triggerValue"] = self.triggerValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoApply") {
            self.autoApply = dict["autoApply"] as! Bool
        }
        if dict.keys.contains("autoDestroy") {
            self.autoDestroy = dict["autoDestroy"] as! Bool
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("groupInfo") {
            var model = UpdateTaskAttributeRequest.GroupInfo()
            model.fromMap(dict["groupInfo"] as! [String: Any])
            self.groupInfo = model
        }
        if dict.keys.contains("initModuleState") {
            self.initModuleState = dict["initModuleState"] as! Bool
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
        if dict.keys.contains("skipPropertyValidation") {
            self.skipPropertyValidation = dict["skipPropertyValidation"] as! Bool
        }
        if dict.keys.contains("terraformVersion") {
            self.terraformVersion = dict["terraformVersion"] as! String
        }
        if dict.keys.contains("triggerStrategy") {
            self.triggerStrategy = dict["triggerStrategy"] as! String
        }
        if dict.keys.contains("triggerValue") {
            self.triggerValue = dict["triggerValue"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class UpdateTaskPolicyRequest : Tea.TeaModel {
    public class TaskPolicies : Tea.TeaModel {
        public var priority: String?

        public var taskId: String?

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
            if self.priority != nil {
                map["priority"] = self.priority!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("priority") {
                self.priority = dict["priority"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var clientToken: String?

    public var taskPolicies: [UpdateTaskPolicyRequest.TaskPolicies]?

    public override init() {
        super.init()
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
        if dict.keys.contains("taskPolicies") {
            var tmp : [UpdateTaskPolicyRequest.TaskPolicies] = []
            for v in dict["taskPolicies"] as! [Any] {
                var model = UpdateTaskPolicyRequest.TaskPolicies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taskPolicies = tmp
        }
    }
}

public class UpdateTaskPolicyResponseBody : Tea.TeaModel {
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

public class UpdateTaskPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTaskPolicyResponseBody?

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
            var model = UpdateTaskPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
