import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateWorkflowRequest : Tea.TeaModel {
    public var alertGroupId: String?

    public var alertStrategy: String?

    public var taskDefinitionJsonValue: String?

    public var taskRelationJsonValue: String?

    public var cronExpr: String?

    public var description_: String?

    public var executionType: String?

    public var failureStrategy: String?

    public var name: String?

    public var parentDirectoryId: String?

    public var resourceGroupId: String?

    public var scheduleEndTime: String?

    public var scheduleStartTime: String?

    public var scheduleState: String?

    public var taskDefinitionJson: String?

    public var taskRelationJson: String?

    public var timeZone: String?

    public var timeout: Int32?

    public var workflowInstancePriority: String?

    public var workflowParams: String?

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
        if self.alertGroupId != nil {
            map["alertGroupId"] = self.alertGroupId!
        }
        if self.alertStrategy != nil {
            map["alertStrategy"] = self.alertStrategy!
        }
        if self.taskDefinitionJsonValue != nil {
            map["taskDefinitionJsonValue"] = self.taskDefinitionJsonValue!
        }
        if self.taskRelationJsonValue != nil {
            map["taskRelationJsonValue"] = self.taskRelationJsonValue!
        }
        if self.cronExpr != nil {
            map["cronExpr"] = self.cronExpr!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executionType != nil {
            map["executionType"] = self.executionType!
        }
        if self.failureStrategy != nil {
            map["failureStrategy"] = self.failureStrategy!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentDirectoryId != nil {
            map["parentDirectoryId"] = self.parentDirectoryId!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.scheduleEndTime != nil {
            map["scheduleEndTime"] = self.scheduleEndTime!
        }
        if self.scheduleStartTime != nil {
            map["scheduleStartTime"] = self.scheduleStartTime!
        }
        if self.scheduleState != nil {
            map["scheduleState"] = self.scheduleState!
        }
        if self.taskDefinitionJson != nil {
            map["taskDefinitionJson"] = self.taskDefinitionJson!
        }
        if self.taskRelationJson != nil {
            map["taskRelationJson"] = self.taskRelationJson!
        }
        if self.timeZone != nil {
            map["timeZone"] = self.timeZone!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.workflowInstancePriority != nil {
            map["workflowInstancePriority"] = self.workflowInstancePriority!
        }
        if self.workflowParams != nil {
            map["workflowParams"] = self.workflowParams!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alertGroupId"] as? String {
            self.alertGroupId = value
        }
        if let value = dict["alertStrategy"] as? String {
            self.alertStrategy = value
        }
        if let value = dict["taskDefinitionJsonValue"] as? String {
            self.taskDefinitionJsonValue = value
        }
        if let value = dict["taskRelationJsonValue"] as? String {
            self.taskRelationJsonValue = value
        }
        if let value = dict["cronExpr"] as? String {
            self.cronExpr = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executionType"] as? String {
            self.executionType = value
        }
        if let value = dict["failureStrategy"] as? String {
            self.failureStrategy = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["parentDirectoryId"] as? String {
            self.parentDirectoryId = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["scheduleEndTime"] as? String {
            self.scheduleEndTime = value
        }
        if let value = dict["scheduleStartTime"] as? String {
            self.scheduleStartTime = value
        }
        if let value = dict["scheduleState"] as? String {
            self.scheduleState = value
        }
        if let value = dict["taskDefinitionJson"] as? String {
            self.taskDefinitionJson = value
        }
        if let value = dict["taskRelationJson"] as? String {
            self.taskRelationJson = value
        }
        if let value = dict["timeZone"] as? String {
            self.timeZone = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["workflowInstancePriority"] as? String {
            self.workflowInstancePriority = value
        }
        if let value = dict["workflowParams"] as? String {
            self.workflowParams = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateWorkflowResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var workflowId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.workflowId != nil {
                map["workflowId"] = self.workflowId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["workflowId"] as? String {
                self.workflowId = value
            }
        }
    }
    public var data: CreateWorkflowResponseBody.Data?

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
            var model = CreateWorkflowResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkflowResponseBody?

    public override init() {
        super.init()
    }

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
            var model = CreateWorkflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWorkflowRequest : Tea.TeaModel {
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
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteWorkflowResponseBody : Tea.TeaModel {
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
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkflowResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DeleteWorkflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeIdRequest : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DescribeIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var inputId: String?

        public var inputIdType: String?

        public var manualTaskId: String?

        public var manualTaskInstanceId: String?

        public var projectId: String?

        public var taskId: String?

        public var taskInstanceId: String?

        public var workflowId: String?

        public var workflowInstanceId: String?

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
            if self.inputId != nil {
                map["inputId"] = self.inputId!
            }
            if self.inputIdType != nil {
                map["inputIdType"] = self.inputIdType!
            }
            if self.manualTaskId != nil {
                map["manualTaskId"] = self.manualTaskId!
            }
            if self.manualTaskInstanceId != nil {
                map["manualTaskInstanceId"] = self.manualTaskInstanceId!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskInstanceId != nil {
                map["taskInstanceId"] = self.taskInstanceId!
            }
            if self.workflowId != nil {
                map["workflowId"] = self.workflowId!
            }
            if self.workflowInstanceId != nil {
                map["workflowInstanceId"] = self.workflowInstanceId!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["inputId"] as? String {
                self.inputId = value
            }
            if let value = dict["inputIdType"] as? String {
                self.inputIdType = value
            }
            if let value = dict["manualTaskId"] as? String {
                self.manualTaskId = value
            }
            if let value = dict["manualTaskInstanceId"] as? String {
                self.manualTaskInstanceId = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["taskInstanceId"] as? String {
                self.taskInstanceId = value
            }
            if let value = dict["workflowId"] as? String {
                self.workflowId = value
            }
            if let value = dict["workflowInstanceId"] as? String {
                self.workflowInstanceId = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var data: DescribeIdResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = DescribeIdResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIdResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DescribeIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeManualTaskRequest : Tea.TeaModel {
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
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DescribeManualTaskResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var description_: String?

    public var manualTaskId: String?

    public var manualTaskName: String?

    public var parentDirectoryId: String?

    public var projectId: String?

    public var resourceIds: String?

    public var taskParams: String?

    public var taskType: String?

    public var updateTime: String?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.manualTaskId != nil {
            map["ManualTaskId"] = self.manualTaskId!
        }
        if self.manualTaskName != nil {
            map["ManualTaskName"] = self.manualTaskName!
        }
        if self.parentDirectoryId != nil {
            map["ParentDirectoryId"] = self.parentDirectoryId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.taskParams != nil {
            map["TaskParams"] = self.taskParams!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ManualTaskId"] as? String {
            self.manualTaskId = value
        }
        if let value = dict["ManualTaskName"] as? String {
            self.manualTaskName = value
        }
        if let value = dict["ParentDirectoryId"] as? String {
            self.parentDirectoryId = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["ResourceIds"] as? String {
            self.resourceIds = value
        }
        if let value = dict["TaskParams"] as? String {
            self.taskParams = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeManualTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeManualTaskResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DescribeManualTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeManualTaskInstanceRequest : Tea.TeaModel {
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
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DescribeManualTaskInstanceResponseBody : Tea.TeaModel {
    public var emrClusterId: String?

    public var endTime: String?

    public var externalAppId: String?

    public var manualTaskInstanceId: String?

    public var manualTaskInstanceName: String?

    public var resourceGroupId: String?

    public var startTime: String?

    public var status: String?

    public var submitTime: String?

    public var taskParams: String?

    public var taskType: String?

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
        if self.emrClusterId != nil {
            map["EmrClusterId"] = self.emrClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.externalAppId != nil {
            map["ExternalAppId"] = self.externalAppId!
        }
        if self.manualTaskInstanceId != nil {
            map["ManualTaskInstanceId"] = self.manualTaskInstanceId!
        }
        if self.manualTaskInstanceName != nil {
            map["ManualTaskInstanceName"] = self.manualTaskInstanceName!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.submitTime != nil {
            map["SubmitTime"] = self.submitTime!
        }
        if self.taskParams != nil {
            map["TaskParams"] = self.taskParams!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EmrClusterId"] as? String {
            self.emrClusterId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["ExternalAppId"] as? String {
            self.externalAppId = value
        }
        if let value = dict["ManualTaskInstanceId"] as? String {
            self.manualTaskInstanceId = value
        }
        if let value = dict["ManualTaskInstanceName"] as? String {
            self.manualTaskInstanceName = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SubmitTime"] as? String {
            self.submitTime = value
        }
        if let value = dict["TaskParams"] as? String {
            self.taskParams = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeManualTaskInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeManualTaskInstanceResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DescribeManualTaskInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeProjectRequest : Tea.TeaModel {
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
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DescribeProjectResponseBody : Tea.TeaModel {
    public var description_: String?

    public var name: String?

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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
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
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProjectResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DescribeProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTaskRequest : Tea.TeaModel {
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
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DescribeTaskResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var delayTime: Int32?

    public var description_: String?

    public var failRetryInterval: Int32?

    public var failRetryTimes: Int32?

    public var flag: String?

    public var projectId: String?

    public var resourceIds: String?

    public var taskId: String?

    public var taskName: String?

    public var taskParams: String?

    public var taskPriority: String?

    public var taskType: String?

    public var timeout: Int32?

    public var timeoutFlag: String?

    public var timeoutNotifyStrategy: String?

    public var updateTime: String?

    public var version: String?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.delayTime != nil {
            map["DelayTime"] = self.delayTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.failRetryInterval != nil {
            map["FailRetryInterval"] = self.failRetryInterval!
        }
        if self.failRetryTimes != nil {
            map["FailRetryTimes"] = self.failRetryTimes!
        }
        if self.flag != nil {
            map["Flag"] = self.flag!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskParams != nil {
            map["TaskParams"] = self.taskParams!
        }
        if self.taskPriority != nil {
            map["TaskPriority"] = self.taskPriority!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.timeoutFlag != nil {
            map["TimeoutFlag"] = self.timeoutFlag!
        }
        if self.timeoutNotifyStrategy != nil {
            map["TimeoutNotifyStrategy"] = self.timeoutNotifyStrategy!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DelayTime"] as? Int32 {
            self.delayTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FailRetryInterval"] as? Int32 {
            self.failRetryInterval = value
        }
        if let value = dict["FailRetryTimes"] as? Int32 {
            self.failRetryTimes = value
        }
        if let value = dict["Flag"] as? String {
            self.flag = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["ResourceIds"] as? String {
            self.resourceIds = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TaskParams"] as? String {
            self.taskParams = value
        }
        if let value = dict["TaskPriority"] as? String {
            self.taskPriority = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["Timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["TimeoutFlag"] as? String {
            self.timeoutFlag = value
        }
        if let value = dict["TimeoutNotifyStrategy"] as? String {
            self.timeoutNotifyStrategy = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTaskResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DescribeTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTaskInstanceRequest : Tea.TeaModel {
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
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DescribeTaskInstanceResponseBody : Tea.TeaModel {
    public var dryRun: String?

    public var emrClusterId: String?

    public var endTime: String?

    public var externalAppId: String?

    public var resourceGroupId: String?

    public var retryTimes: Int32?

    public var startTime: String?

    public var status: String?

    public var submitTime: String?

    public var taskId: String?

    public var taskInstanceId: String?

    public var taskInstanceName: String?

    public var taskParams: String?

    public var taskType: String?

    public var taskVersion: String?

    public var workflowInstanceId: String?

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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.emrClusterId != nil {
            map["EmrClusterId"] = self.emrClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.externalAppId != nil {
            map["ExternalAppId"] = self.externalAppId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.retryTimes != nil {
            map["RetryTimes"] = self.retryTimes!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.submitTime != nil {
            map["SubmitTime"] = self.submitTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskInstanceId != nil {
            map["TaskInstanceId"] = self.taskInstanceId!
        }
        if self.taskInstanceName != nil {
            map["TaskInstanceName"] = self.taskInstanceName!
        }
        if self.taskParams != nil {
            map["TaskParams"] = self.taskParams!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.taskVersion != nil {
            map["TaskVersion"] = self.taskVersion!
        }
        if self.workflowInstanceId != nil {
            map["WorkflowInstanceId"] = self.workflowInstanceId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["EmrClusterId"] as? String {
            self.emrClusterId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["ExternalAppId"] as? String {
            self.externalAppId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RetryTimes"] as? Int32 {
            self.retryTimes = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SubmitTime"] as? String {
            self.submitTime = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskInstanceId"] as? String {
            self.taskInstanceId = value
        }
        if let value = dict["TaskInstanceName"] as? String {
            self.taskInstanceName = value
        }
        if let value = dict["TaskParams"] as? String {
            self.taskParams = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["TaskVersion"] as? String {
            self.taskVersion = value
        }
        if let value = dict["WorkflowInstanceId"] as? String {
            self.workflowInstanceId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeTaskInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTaskInstanceResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DescribeTaskInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWorkflowRequest : Tea.TeaModel {
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
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DescribeWorkflowResponseBody : Tea.TeaModel {
    public class Schedule : Tea.TeaModel {
        public var alertGroupId: String?

        public var alertStrategy: String?

        public var cronExpr: String?

        public var emrClusterId: String?

        public var failureStrategy: String?

        public var resourceGroupId: String?

        public var scheduleEndTime: String?

        public var scheduleStartTime: String?

        public var scheduleState: String?

        public var timeZone: String?

        public var workflowInstancePriority: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertGroupId != nil {
                map["alertGroupId"] = self.alertGroupId!
            }
            if self.alertStrategy != nil {
                map["alertStrategy"] = self.alertStrategy!
            }
            if self.cronExpr != nil {
                map["cronExpr"] = self.cronExpr!
            }
            if self.emrClusterId != nil {
                map["emrClusterId"] = self.emrClusterId!
            }
            if self.failureStrategy != nil {
                map["failureStrategy"] = self.failureStrategy!
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.scheduleEndTime != nil {
                map["scheduleEndTime"] = self.scheduleEndTime!
            }
            if self.scheduleStartTime != nil {
                map["scheduleStartTime"] = self.scheduleStartTime!
            }
            if self.scheduleState != nil {
                map["scheduleState"] = self.scheduleState!
            }
            if self.timeZone != nil {
                map["timeZone"] = self.timeZone!
            }
            if self.workflowInstancePriority != nil {
                map["workflowInstancePriority"] = self.workflowInstancePriority!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alertGroupId"] as? String {
                self.alertGroupId = value
            }
            if let value = dict["alertStrategy"] as? String {
                self.alertStrategy = value
            }
            if let value = dict["cronExpr"] as? String {
                self.cronExpr = value
            }
            if let value = dict["emrClusterId"] as? String {
                self.emrClusterId = value
            }
            if let value = dict["failureStrategy"] as? String {
                self.failureStrategy = value
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["scheduleEndTime"] as? String {
                self.scheduleEndTime = value
            }
            if let value = dict["scheduleStartTime"] as? String {
                self.scheduleStartTime = value
            }
            if let value = dict["scheduleState"] as? String {
                self.scheduleState = value
            }
            if let value = dict["timeZone"] as? String {
                self.timeZone = value
            }
            if let value = dict["workflowInstancePriority"] as? String {
                self.workflowInstancePriority = value
            }
        }
    }
    public class TaskRelations : Tea.TeaModel {
        public var postTaskId: String?

        public var preTaskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.postTaskId != nil {
                map["postTaskId"] = self.postTaskId!
            }
            if self.preTaskId != nil {
                map["preTaskId"] = self.preTaskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["postTaskId"] as? String {
                self.postTaskId = value
            }
            if let value = dict["preTaskId"] as? String {
                self.preTaskId = value
            }
        }
    }
    public class Tasks : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var taskId: String?

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
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.version != nil {
                map["version"] = self.version!
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
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["version"] as? Int32 {
                self.version = value
            }
        }
    }
    public class Workflow : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var executionType: String?

        public var name: String?

        public var parentDirectoryId: String?

        public var timeout: Int32?

        public var updateTime: String?

        public var workflowId: String?

        public var workflowParams: String?

        public override init() {
            super.init()
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
            if self.executionType != nil {
                map["executionType"] = self.executionType!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.parentDirectoryId != nil {
                map["parentDirectoryId"] = self.parentDirectoryId!
            }
            if self.timeout != nil {
                map["timeout"] = self.timeout!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.workflowId != nil {
                map["workflowId"] = self.workflowId!
            }
            if self.workflowParams != nil {
                map["workflowParams"] = self.workflowParams!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["executionType"] as? String {
                self.executionType = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["parentDirectoryId"] as? String {
                self.parentDirectoryId = value
            }
            if let value = dict["timeout"] as? Int32 {
                self.timeout = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["workflowId"] as? String {
                self.workflowId = value
            }
            if let value = dict["workflowParams"] as? String {
                self.workflowParams = value
            }
        }
    }
    public var requestId: String?

    public var schedule: DescribeWorkflowResponseBody.Schedule?

    public var taskRelations: [DescribeWorkflowResponseBody.TaskRelations]?

    public var tasks: [DescribeWorkflowResponseBody.Tasks]?

    public var workflow: DescribeWorkflowResponseBody.Workflow?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.schedule?.validate()
        try self.workflow?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.schedule != nil {
            map["schedule"] = self.schedule?.toMap()
        }
        if self.taskRelations != nil {
            var tmp : [Any] = []
            for k in self.taskRelations! {
                tmp.append(k.toMap())
            }
            map["taskRelations"] = tmp
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["tasks"] = tmp
        }
        if self.workflow != nil {
            map["workflow"] = self.workflow?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["schedule"] as? [String: Any?] {
            var model = DescribeWorkflowResponseBody.Schedule()
            model.fromMap(value)
            self.schedule = model
        }
        if let value = dict["taskRelations"] as? [Any?] {
            var tmp : [DescribeWorkflowResponseBody.TaskRelations] = []
            for v in value {
                if v != nil {
                    var model = DescribeWorkflowResponseBody.TaskRelations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskRelations = tmp
        }
        if let value = dict["tasks"] as? [Any?] {
            var tmp : [DescribeWorkflowResponseBody.Tasks] = []
            for v in value {
                if v != nil {
                    var model = DescribeWorkflowResponseBody.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
        if let value = dict["workflow"] as? [String: Any?] {
            var model = DescribeWorkflowResponseBody.Workflow()
            model.fromMap(value)
            self.workflow = model
        }
    }
}

public class DescribeWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWorkflowResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DescribeWorkflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWorkflowInstanceRequest : Tea.TeaModel {
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
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DescribeWorkflowInstanceResponseBody : Tea.TeaModel {
    public var alertGroupId: String?

    public var alertStrategy: String?

    public var emrClusterId: String?

    public var endTime: String?

    public var failureStrategy: String?

    public var isComplementData: Bool?

    public var name: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var restartTime: String?

    public var runTimes: Int32?

    public var scheduleTime: String?

    public var startTime: String?

    public var status: String?

    public var timeout: Int32?

    public var workflowId: String?

    public var workflowInstanceId: String?

    public var workflowInstancePriority: String?

    public var workflowVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertGroupId != nil {
            map["alertGroupId"] = self.alertGroupId!
        }
        if self.alertStrategy != nil {
            map["alertStrategy"] = self.alertStrategy!
        }
        if self.emrClusterId != nil {
            map["emrClusterId"] = self.emrClusterId!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.failureStrategy != nil {
            map["failureStrategy"] = self.failureStrategy!
        }
        if self.isComplementData != nil {
            map["isComplementData"] = self.isComplementData!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.restartTime != nil {
            map["restartTime"] = self.restartTime!
        }
        if self.runTimes != nil {
            map["runTimes"] = self.runTimes!
        }
        if self.scheduleTime != nil {
            map["scheduleTime"] = self.scheduleTime!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.workflowId != nil {
            map["workflowId"] = self.workflowId!
        }
        if self.workflowInstanceId != nil {
            map["workflowInstanceId"] = self.workflowInstanceId!
        }
        if self.workflowInstancePriority != nil {
            map["workflowInstancePriority"] = self.workflowInstancePriority!
        }
        if self.workflowVersion != nil {
            map["workflowVersion"] = self.workflowVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alertGroupId"] as? String {
            self.alertGroupId = value
        }
        if let value = dict["alertStrategy"] as? String {
            self.alertStrategy = value
        }
        if let value = dict["emrClusterId"] as? String {
            self.emrClusterId = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["failureStrategy"] as? String {
            self.failureStrategy = value
        }
        if let value = dict["isComplementData"] as? Bool {
            self.isComplementData = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["restartTime"] as? String {
            self.restartTime = value
        }
        if let value = dict["runTimes"] as? Int32 {
            self.runTimes = value
        }
        if let value = dict["scheduleTime"] as? String {
            self.scheduleTime = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["workflowId"] as? String {
            self.workflowId = value
        }
        if let value = dict["workflowInstanceId"] as? String {
            self.workflowInstanceId = value
        }
        if let value = dict["workflowInstancePriority"] as? String {
            self.workflowInstancePriority = value
        }
        if let value = dict["workflowVersion"] as? Int32 {
            self.workflowVersion = value
        }
    }
}

public class DescribeWorkflowInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWorkflowInstanceResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DescribeWorkflowInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceLogRequest : Tea.TeaModel {
    public var limit: Int64?

    public var skipLineNum: Int64?

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
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.skipLineNum != nil {
            map["skipLineNum"] = self.skipLineNum!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["skipLineNum"] as? Int64 {
            self.skipLineNum = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetInstanceLogResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var lineNum: Int64?

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
            if self.lineNum != nil {
                map["lineNum"] = self.lineNum!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["lineNum"] as? Int64 {
                self.lineNum = value
            }
            if let value = dict["message"] as? String {
                self.message = value
            }
        }
    }
    public var data: GetInstanceLogResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetInstanceLogResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetInstanceLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceLogResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetInstanceLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAlertGroupsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var searchVal: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.searchVal != nil {
            map["searchVal"] = self.searchVal!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["searchVal"] as? String {
            self.searchVal = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListAlertGroupsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alertGroupId: String?

        public var alertInstanceIds: String?

        public var createTime: Int64?

        public var description_: String?

        public var groupName: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertGroupId != nil {
                map["alertGroupId"] = self.alertGroupId!
            }
            if self.alertInstanceIds != nil {
                map["alertInstanceIds"] = self.alertInstanceIds!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.groupName != nil {
                map["groupName"] = self.groupName!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alertGroupId"] as? String {
                self.alertGroupId = value
            }
            if let value = dict["alertInstanceIds"] as? String {
                self.alertInstanceIds = value
            }
            if let value = dict["createTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["groupName"] as? String {
                self.groupName = value
            }
            if let value = dict["updateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var data: [ListAlertGroupsResponseBody.Data]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListAlertGroupsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListAlertGroupsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListAlertGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAlertGroupsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListAlertGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListManualTaskInstancesRequest : Tea.TeaModel {
    public var endTime: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var searchVal: String?

    public var startTime: String?

    public var status: String?

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
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.searchVal != nil {
            map["searchVal"] = self.searchVal!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["searchVal"] as? String {
            self.searchVal = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListManualTaskInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var emrClusterId: String?

        public var endTime: String?

        public var externalAppId: String?

        public var manualTaskInstanceId: String?

        public var manualTaskInstanceName: String?

        public var resourceGroupId: String?

        public var startTime: String?

        public var status: String?

        public var submitTime: String?

        public var taskParams: String?

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
            if self.emrClusterId != nil {
                map["EmrClusterId"] = self.emrClusterId!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.externalAppId != nil {
                map["ExternalAppId"] = self.externalAppId!
            }
            if self.manualTaskInstanceId != nil {
                map["ManualTaskInstanceId"] = self.manualTaskInstanceId!
            }
            if self.manualTaskInstanceName != nil {
                map["ManualTaskInstanceName"] = self.manualTaskInstanceName!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.submitTime != nil {
                map["SubmitTime"] = self.submitTime!
            }
            if self.taskParams != nil {
                map["TaskParams"] = self.taskParams!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EmrClusterId"] as? String {
                self.emrClusterId = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ExternalAppId"] as? String {
                self.externalAppId = value
            }
            if let value = dict["ManualTaskInstanceId"] as? String {
                self.manualTaskInstanceId = value
            }
            if let value = dict["ManualTaskInstanceName"] as? String {
                self.manualTaskInstanceName = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubmitTime"] as? String {
                self.submitTime = value
            }
            if let value = dict["TaskParams"] as? String {
                self.taskParams = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
        }
    }
    public var data: [ListManualTaskInstancesResponseBody.Data]?

    public var nextToken: String?

    public var requestId: String?

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
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalSize != nil {
            map["totalSize"] = self.totalSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListManualTaskInstancesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListManualTaskInstancesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
        }
    }
}

public class ListManualTaskInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListManualTaskInstancesResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListManualTaskInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListManualTasksRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var searchVal: String?

    public var taskType: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.searchVal != nil {
            map["searchVal"] = self.searchVal!
        }
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["searchVal"] as? String {
            self.searchVal = value
        }
        if let value = dict["taskType"] as? String {
            self.taskType = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListManualTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var manualTaskId: String?

        public var manualTaskName: String?

        public var parentDirectoryId: String?

        public var projectId: String?

        public var resourceIds: String?

        public var taskParams: String?

        public var taskType: String?

        public var updateTime: String?

        public override init() {
            super.init()
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
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.manualTaskId != nil {
                map["ManualTaskId"] = self.manualTaskId!
            }
            if self.manualTaskName != nil {
                map["ManualTaskName"] = self.manualTaskName!
            }
            if self.parentDirectoryId != nil {
                map["ParentDirectoryId"] = self.parentDirectoryId!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.resourceIds != nil {
                map["ResourceIds"] = self.resourceIds!
            }
            if self.taskParams != nil {
                map["TaskParams"] = self.taskParams!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ManualTaskId"] as? String {
                self.manualTaskId = value
            }
            if let value = dict["ManualTaskName"] as? String {
                self.manualTaskName = value
            }
            if let value = dict["ParentDirectoryId"] as? String {
                self.parentDirectoryId = value
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
            }
            if let value = dict["ResourceIds"] as? String {
                self.resourceIds = value
            }
            if let value = dict["TaskParams"] as? String {
                self.taskParams = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var data: [ListManualTasksResponseBody.Data]?

    public var nextToken: String?

    public var requestId: String?

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
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalSize != nil {
            map["totalSize"] = self.totalSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListManualTasksResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListManualTasksResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
        }
    }
}

public class ListManualTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListManualTasksResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListManualTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProjectsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var searchVal: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.searchVal != nil {
            map["searchVal"] = self.searchVal!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["searchVal"] as? String {
            self.searchVal = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListProjectsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
        }
    }
    public var data: [ListProjectsResponseBody.Data]?

    public var nextToken: String?

    public var requestId: String?

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
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalSize != nil {
            map["totalSize"] = self.totalSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListProjectsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListProjectsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
        }
    }
}

public class ListProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListProjectsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceGroupsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceGroupName: String?

    public var resourceGroupType: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.resourceGroupName != nil {
            map["resourceGroupName"] = self.resourceGroupName!
        }
        if self.resourceGroupType != nil {
            map["resourceGroupType"] = self.resourceGroupType!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["resourceGroupName"] as? String {
            self.resourceGroupName = value
        }
        if let value = dict["resourceGroupType"] as? String {
            self.resourceGroupType = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListResourceGroupsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AssociatedClusterTemplates : Tea.TeaModel {
            public var clusterType: String?

            public var templateId: String?

            public var templateName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterType != nil {
                    map["clusterType"] = self.clusterType!
                }
                if self.templateId != nil {
                    map["templateId"] = self.templateId!
                }
                if self.templateName != nil {
                    map["templateName"] = self.templateName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["clusterType"] as? String {
                    self.clusterType = value
                }
                if let value = dict["templateId"] as? String {
                    self.templateId = value
                }
                if let value = dict["templateName"] as? String {
                    self.templateName = value
                }
            }
        }
        public class AssociatedClusters : Tea.TeaModel {
            public var clusterId: String?

            public var clusterName: String?

            public var clusterType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterId != nil {
                    map["clusterId"] = self.clusterId!
                }
                if self.clusterName != nil {
                    map["clusterName"] = self.clusterName!
                }
                if self.clusterType != nil {
                    map["clusterType"] = self.clusterType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["clusterId"] as? String {
                    self.clusterId = value
                }
                if let value = dict["clusterName"] as? String {
                    self.clusterName = value
                }
                if let value = dict["clusterType"] as? String {
                    self.clusterType = value
                }
            }
        }
        public class AssociatedWorkspaces : Tea.TeaModel {
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
                if self.workspaceId != nil {
                    map["workspaceId"] = self.workspaceId!
                }
                if self.workspaceName != nil {
                    map["workspaceName"] = self.workspaceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["workspaceId"] as? String {
                    self.workspaceId = value
                }
                if let value = dict["workspaceName"] as? String {
                    self.workspaceName = value
                }
            }
        }
        public var associatedClusterTemplates: [ListResourceGroupsResponseBody.Data.AssociatedClusterTemplates]?

        public var associatedClusters: [ListResourceGroupsResponseBody.Data.AssociatedClusters]?

        public var associatedWorkspaces: [ListResourceGroupsResponseBody.Data.AssociatedWorkspaces]?

        public var createTime: String?

        public var nodeMaxCount: Int32?

        public var nodeMinCount: Int32?

        public var nodeType: String?

        public var paymentType: String?

        public var resourceGroupId: String?

        public var resourceGroupName: String?

        public var resourceGroupType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.associatedClusterTemplates != nil {
                var tmp : [Any] = []
                for k in self.associatedClusterTemplates! {
                    tmp.append(k.toMap())
                }
                map["associatedClusterTemplates"] = tmp
            }
            if self.associatedClusters != nil {
                var tmp : [Any] = []
                for k in self.associatedClusters! {
                    tmp.append(k.toMap())
                }
                map["associatedClusters"] = tmp
            }
            if self.associatedWorkspaces != nil {
                var tmp : [Any] = []
                for k in self.associatedWorkspaces! {
                    tmp.append(k.toMap())
                }
                map["associatedWorkspaces"] = tmp
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.nodeMaxCount != nil {
                map["nodeMaxCount"] = self.nodeMaxCount!
            }
            if self.nodeMinCount != nil {
                map["nodeMinCount"] = self.nodeMinCount!
            }
            if self.nodeType != nil {
                map["nodeType"] = self.nodeType!
            }
            if self.paymentType != nil {
                map["paymentType"] = self.paymentType!
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceGroupName != nil {
                map["resourceGroupName"] = self.resourceGroupName!
            }
            if self.resourceGroupType != nil {
                map["resourceGroupType"] = self.resourceGroupType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["associatedClusterTemplates"] as? [Any?] {
                var tmp : [ListResourceGroupsResponseBody.Data.AssociatedClusterTemplates] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceGroupsResponseBody.Data.AssociatedClusterTemplates()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.associatedClusterTemplates = tmp
            }
            if let value = dict["associatedClusters"] as? [Any?] {
                var tmp : [ListResourceGroupsResponseBody.Data.AssociatedClusters] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceGroupsResponseBody.Data.AssociatedClusters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.associatedClusters = tmp
            }
            if let value = dict["associatedWorkspaces"] as? [Any?] {
                var tmp : [ListResourceGroupsResponseBody.Data.AssociatedWorkspaces] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceGroupsResponseBody.Data.AssociatedWorkspaces()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.associatedWorkspaces = tmp
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["nodeMaxCount"] as? Int32 {
                self.nodeMaxCount = value
            }
            if let value = dict["nodeMinCount"] as? Int32 {
                self.nodeMinCount = value
            }
            if let value = dict["nodeType"] as? String {
                self.nodeType = value
            }
            if let value = dict["paymentType"] as? String {
                self.paymentType = value
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["resourceGroupName"] as? String {
                self.resourceGroupName = value
            }
            if let value = dict["resourceGroupType"] as? String {
                self.resourceGroupType = value
            }
        }
    }
    public var data: [ListResourceGroupsResponseBody.Data]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListResourceGroupsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListResourceGroupsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListResourceGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceGroupsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListResourceGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTaskInstancesRequest : Tea.TeaModel {
    public var endTime: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var searchVal: String?

    public var startTime: String?

    public var status: String?

    public var workflowInstanceId: String?

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
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.searchVal != nil {
            map["searchVal"] = self.searchVal!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.workflowInstanceId != nil {
            map["workflowInstanceId"] = self.workflowInstanceId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["searchVal"] as? String {
            self.searchVal = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["workflowInstanceId"] as? String {
            self.workflowInstanceId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListTaskInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dryRun: String?

        public var emrClusterId: String?

        public var endTime: String?

        public var externalAppId: String?

        public var resourceGroupId: String?

        public var retryTimes: Int32?

        public var startTime: String?

        public var status: String?

        public var submitTime: String?

        public var taskId: String?

        public var taskInstanceId: String?

        public var taskInstanceName: String?

        public var taskParams: String?

        public var taskType: String?

        public var taskVersion: String?

        public var workflowInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dryRun != nil {
                map["DryRun"] = self.dryRun!
            }
            if self.emrClusterId != nil {
                map["EmrClusterId"] = self.emrClusterId!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.externalAppId != nil {
                map["ExternalAppId"] = self.externalAppId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.retryTimes != nil {
                map["RetryTimes"] = self.retryTimes!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.submitTime != nil {
                map["SubmitTime"] = self.submitTime!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskInstanceId != nil {
                map["TaskInstanceId"] = self.taskInstanceId!
            }
            if self.taskInstanceName != nil {
                map["TaskInstanceName"] = self.taskInstanceName!
            }
            if self.taskParams != nil {
                map["TaskParams"] = self.taskParams!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.taskVersion != nil {
                map["TaskVersion"] = self.taskVersion!
            }
            if self.workflowInstanceId != nil {
                map["WorkflowInstanceId"] = self.workflowInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DryRun"] as? String {
                self.dryRun = value
            }
            if let value = dict["EmrClusterId"] as? String {
                self.emrClusterId = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ExternalAppId"] as? String {
                self.externalAppId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["RetryTimes"] as? Int32 {
                self.retryTimes = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubmitTime"] as? String {
                self.submitTime = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskInstanceId"] as? String {
                self.taskInstanceId = value
            }
            if let value = dict["TaskInstanceName"] as? String {
                self.taskInstanceName = value
            }
            if let value = dict["TaskParams"] as? String {
                self.taskParams = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
            if let value = dict["TaskVersion"] as? String {
                self.taskVersion = value
            }
            if let value = dict["WorkflowInstanceId"] as? String {
                self.workflowInstanceId = value
            }
        }
    }
    public var data: [ListTaskInstancesResponseBody.Data]?

    public var nextToken: String?

    public var requestId: String?

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
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalSize != nil {
            map["totalSize"] = self.totalSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListTaskInstancesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListTaskInstancesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
        }
    }
}

public class ListTaskInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTaskInstancesResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListTaskInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTasksRequest : Tea.TeaModel {
    public var maxResults: String?

    public var nextToken: String?

    public var searchVal: String?

    public var taskType: String?

    public var workflowId: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.searchVal != nil {
            map["searchVal"] = self.searchVal!
        }
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        if self.workflowId != nil {
            map["workflowId"] = self.workflowId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["searchVal"] as? String {
            self.searchVal = value
        }
        if let value = dict["taskType"] as? String {
            self.taskType = value
        }
        if let value = dict["workflowId"] as? String {
            self.workflowId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var delayTime: Int32?

        public var description_: String?

        public var failRetryInterval: Int32?

        public var failRetryTimes: Int32?

        public var flag: String?

        public var projectId: String?

        public var resourceIds: String?

        public var taskId: String?

        public var taskName: String?

        public var taskParams: String?

        public var taskPriority: String?

        public var taskType: String?

        public var timeout: Int32?

        public var timeoutFlag: String?

        public var timeoutNotifyStrategy: String?

        public var updateTime: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.delayTime != nil {
                map["DelayTime"] = self.delayTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.failRetryInterval != nil {
                map["FailRetryInterval"] = self.failRetryInterval!
            }
            if self.failRetryTimes != nil {
                map["FailRetryTimes"] = self.failRetryTimes!
            }
            if self.flag != nil {
                map["Flag"] = self.flag!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.resourceIds != nil {
                map["ResourceIds"] = self.resourceIds!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.taskParams != nil {
                map["TaskParams"] = self.taskParams!
            }
            if self.taskPriority != nil {
                map["TaskPriority"] = self.taskPriority!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.timeout != nil {
                map["Timeout"] = self.timeout!
            }
            if self.timeoutFlag != nil {
                map["TimeoutFlag"] = self.timeoutFlag!
            }
            if self.timeoutNotifyStrategy != nil {
                map["TimeoutNotifyStrategy"] = self.timeoutNotifyStrategy!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DelayTime"] as? Int32 {
                self.delayTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FailRetryInterval"] as? Int32 {
                self.failRetryInterval = value
            }
            if let value = dict["FailRetryTimes"] as? Int32 {
                self.failRetryTimes = value
            }
            if let value = dict["Flag"] as? String {
                self.flag = value
            }
            if let value = dict["ProjectId"] as? String {
                self.projectId = value
            }
            if let value = dict["ResourceIds"] as? String {
                self.resourceIds = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
            if let value = dict["TaskParams"] as? String {
                self.taskParams = value
            }
            if let value = dict["TaskPriority"] as? String {
                self.taskPriority = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
            if let value = dict["Timeout"] as? Int32 {
                self.timeout = value
            }
            if let value = dict["TimeoutFlag"] as? String {
                self.timeoutFlag = value
            }
            if let value = dict["TimeoutNotifyStrategy"] as? String {
                self.timeoutNotifyStrategy = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var data: [ListTasksResponseBody.Data]?

    public var nextToken: String?

    public var requestId: String?

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
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalSize != nil {
            map["totalSize"] = self.totalSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListTasksResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListTasksResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkflowDirectoriesRequest : Tea.TeaModel {
    public var directoryId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var parentDirectoryId: String?

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
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.parentDirectoryId != nil {
            map["parentDirectoryId"] = self.parentDirectoryId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["parentDirectoryId"] as? String {
            self.parentDirectoryId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListWorkflowDirectoriesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var directoryId: String?

        public var name: String?

        public var parentDirectoryId: String?

        public var projectId: String?

        public var workflowId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.directoryId != nil {
                map["directoryId"] = self.directoryId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.parentDirectoryId != nil {
                map["parentDirectoryId"] = self.parentDirectoryId!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.workflowId != nil {
                map["workflowId"] = self.workflowId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["directoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["parentDirectoryId"] as? String {
                self.parentDirectoryId = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
            if let value = dict["workflowId"] as? String {
                self.workflowId = value
            }
        }
    }
    public var data: [ListWorkflowDirectoriesResponseBody.Data]?

    public var maxResults: String?

    public var nextToken: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListWorkflowDirectoriesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListWorkflowDirectoriesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["maxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListWorkflowDirectoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkflowDirectoriesResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListWorkflowDirectoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkflowInstancesRequest : Tea.TeaModel {
    public var endTime: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var startTime: String?

    public var status: String?

    public var workflowId: String?

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
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.workflowId != nil {
            map["workflowId"] = self.workflowId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["workflowId"] as? String {
            self.workflowId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListWorkflowInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var endTime: String?

        public var name: String?

        public var scheduleTime: String?

        public var startTime: String?

        public var status: String?

        public var workflowId: String?

        public var workflowInstanceId: String?

        public var workflowVersion: Int32?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.scheduleTime != nil {
                map["scheduleTime"] = self.scheduleTime!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.workflowId != nil {
                map["workflowId"] = self.workflowId!
            }
            if self.workflowInstanceId != nil {
                map["workflowInstanceId"] = self.workflowInstanceId!
            }
            if self.workflowVersion != nil {
                map["workflowVersion"] = self.workflowVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["endTime"] as? String {
                self.endTime = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["scheduleTime"] as? String {
                self.scheduleTime = value
            }
            if let value = dict["startTime"] as? String {
                self.startTime = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["workflowId"] as? String {
                self.workflowId = value
            }
            if let value = dict["workflowInstanceId"] as? String {
                self.workflowInstanceId = value
            }
            if let value = dict["workflowVersion"] as? Int32 {
                self.workflowVersion = value
            }
        }
    }
    public var data: [ListWorkflowInstancesResponseBody.Data]?

    public var nextToken: String?

    public var requestId: String?

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
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalSize != nil {
            map["totalSize"] = self.totalSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListWorkflowInstancesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListWorkflowInstancesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
        }
    }
}

public class ListWorkflowInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkflowInstancesResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListWorkflowInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkflowsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var searchVal: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.searchVal != nil {
            map["searchVal"] = self.searchVal!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["searchVal"] as? String {
            self.searchVal = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListWorkflowsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var name: String?

        public var parentDirectoryId: String?

        public var updateTime: String?

        public var workflowId: String?

        public override init() {
            super.init()
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
            if self.parentDirectoryId != nil {
                map["parentDirectoryId"] = self.parentDirectoryId!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.workflowId != nil {
                map["workflowId"] = self.workflowId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["parentDirectoryId"] as? String {
                self.parentDirectoryId = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["workflowId"] as? String {
                self.workflowId = value
            }
        }
    }
    public var data: [ListWorkflowsResponseBody.Data]?

    public var nextToken: String?

    public var requestId: String?

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
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalSize != nil {
            map["totalSize"] = self.totalSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListWorkflowsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListWorkflowsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalSize"] as? Int32 {
            self.totalSize = value
        }
    }
}

public class ListWorkflowsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkflowsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListWorkflowsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateWorkflowInstanceRequest : Tea.TeaModel {
    public var execType: String?

    public var workflowInstanceId: String?

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
        if self.execType != nil {
            map["execType"] = self.execType!
        }
        if self.workflowInstanceId != nil {
            map["workflowInstanceId"] = self.workflowInstanceId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["execType"] as? String {
            self.execType = value
        }
        if let value = dict["workflowInstanceId"] as? String {
            self.workflowInstanceId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class OperateWorkflowInstanceResponseBody : Tea.TeaModel {
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
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class OperateWorkflowInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateWorkflowInstanceResponseBody?

    public override init() {
        super.init()
    }

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
            var model = OperateWorkflowInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunWorkflowRequest : Tea.TeaModel {
    public var alertGroupId: String?

    public var alertStrategy: String?

    public var complementDependentMode: String?

    public var dryRun: String?

    public var execType: String?

    public var expectedParallelismNumber: String?

    public var failureStrategy: String?

    public var resourceGroupId: String?

    public var runMode: String?

    public var scheduleTime: String?

    public var startParams: String?

    public var workflowId: String?

    public var workflowInstancePriority: String?

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
        if self.alertGroupId != nil {
            map["alertGroupId"] = self.alertGroupId!
        }
        if self.alertStrategy != nil {
            map["alertStrategy"] = self.alertStrategy!
        }
        if self.complementDependentMode != nil {
            map["complementDependentMode"] = self.complementDependentMode!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        if self.execType != nil {
            map["execType"] = self.execType!
        }
        if self.expectedParallelismNumber != nil {
            map["expectedParallelismNumber"] = self.expectedParallelismNumber!
        }
        if self.failureStrategy != nil {
            map["failureStrategy"] = self.failureStrategy!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.runMode != nil {
            map["runMode"] = self.runMode!
        }
        if self.scheduleTime != nil {
            map["scheduleTime"] = self.scheduleTime!
        }
        if self.startParams != nil {
            map["startParams"] = self.startParams!
        }
        if self.workflowId != nil {
            map["workflowId"] = self.workflowId!
        }
        if self.workflowInstancePriority != nil {
            map["workflowInstancePriority"] = self.workflowInstancePriority!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alertGroupId"] as? String {
            self.alertGroupId = value
        }
        if let value = dict["alertStrategy"] as? String {
            self.alertStrategy = value
        }
        if let value = dict["complementDependentMode"] as? String {
            self.complementDependentMode = value
        }
        if let value = dict["dryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["execType"] as? String {
            self.execType = value
        }
        if let value = dict["expectedParallelismNumber"] as? String {
            self.expectedParallelismNumber = value
        }
        if let value = dict["failureStrategy"] as? String {
            self.failureStrategy = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["runMode"] as? String {
            self.runMode = value
        }
        if let value = dict["scheduleTime"] as? String {
            self.scheduleTime = value
        }
        if let value = dict["startParams"] as? String {
            self.startParams = value
        }
        if let value = dict["workflowId"] as? String {
            self.workflowId = value
        }
        if let value = dict["workflowInstancePriority"] as? String {
            self.workflowInstancePriority = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class RunWorkflowResponseBody : Tea.TeaModel {
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
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class RunWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunWorkflowResponseBody?

    public override init() {
        super.init()
    }

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
            var model = RunWorkflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateWorkflowRequest : Tea.TeaModel {
    public var alertGroupId: String?

    public var alertStrategy: String?

    public var taskDefinitionJsonValue: String?

    public var taskRelationJsonValue: String?

    public var cronExpr: String?

    public var description_: String?

    public var executionType: String?

    public var failureStrategy: String?

    public var name: String?

    public var parentDirectoryId: String?

    public var resourceGroupId: String?

    public var scheduleEndTime: String?

    public var scheduleStartTime: String?

    public var scheduleState: String?

    public var taskDefinitionJson: String?

    public var taskRelationJson: String?

    public var timeZone: String?

    public var timeout: Int32?

    public var workflowInstancePriority: String?

    public var workflowParams: String?

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
        if self.alertGroupId != nil {
            map["alertGroupId"] = self.alertGroupId!
        }
        if self.alertStrategy != nil {
            map["alertStrategy"] = self.alertStrategy!
        }
        if self.taskDefinitionJsonValue != nil {
            map["taskDefinitionJsonValue"] = self.taskDefinitionJsonValue!
        }
        if self.taskRelationJsonValue != nil {
            map["taskRelationJsonValue"] = self.taskRelationJsonValue!
        }
        if self.cronExpr != nil {
            map["cronExpr"] = self.cronExpr!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executionType != nil {
            map["executionType"] = self.executionType!
        }
        if self.failureStrategy != nil {
            map["failureStrategy"] = self.failureStrategy!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentDirectoryId != nil {
            map["parentDirectoryId"] = self.parentDirectoryId!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.scheduleEndTime != nil {
            map["scheduleEndTime"] = self.scheduleEndTime!
        }
        if self.scheduleStartTime != nil {
            map["scheduleStartTime"] = self.scheduleStartTime!
        }
        if self.scheduleState != nil {
            map["scheduleState"] = self.scheduleState!
        }
        if self.taskDefinitionJson != nil {
            map["taskDefinitionJson"] = self.taskDefinitionJson!
        }
        if self.taskRelationJson != nil {
            map["taskRelationJson"] = self.taskRelationJson!
        }
        if self.timeZone != nil {
            map["timeZone"] = self.timeZone!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.workflowInstancePriority != nil {
            map["workflowInstancePriority"] = self.workflowInstancePriority!
        }
        if self.workflowParams != nil {
            map["workflowParams"] = self.workflowParams!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alertGroupId"] as? String {
            self.alertGroupId = value
        }
        if let value = dict["alertStrategy"] as? String {
            self.alertStrategy = value
        }
        if let value = dict["taskDefinitionJsonValue"] as? String {
            self.taskDefinitionJsonValue = value
        }
        if let value = dict["taskRelationJsonValue"] as? String {
            self.taskRelationJsonValue = value
        }
        if let value = dict["cronExpr"] as? String {
            self.cronExpr = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executionType"] as? String {
            self.executionType = value
        }
        if let value = dict["failureStrategy"] as? String {
            self.failureStrategy = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["parentDirectoryId"] as? String {
            self.parentDirectoryId = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["scheduleEndTime"] as? String {
            self.scheduleEndTime = value
        }
        if let value = dict["scheduleStartTime"] as? String {
            self.scheduleStartTime = value
        }
        if let value = dict["scheduleState"] as? String {
            self.scheduleState = value
        }
        if let value = dict["taskDefinitionJson"] as? String {
            self.taskDefinitionJson = value
        }
        if let value = dict["taskRelationJson"] as? String {
            self.taskRelationJson = value
        }
        if let value = dict["timeZone"] as? String {
            self.timeZone = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["workflowInstancePriority"] as? String {
            self.workflowInstancePriority = value
        }
        if let value = dict["workflowParams"] as? String {
            self.workflowParams = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateWorkflowResponseBody : Tea.TeaModel {
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
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkflowResponseBody?

    public override init() {
        super.init()
    }

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
            var model = UpdateWorkflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
