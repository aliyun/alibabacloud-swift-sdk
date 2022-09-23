import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateFlowRequest : Tea.TeaModel {
    public var definition: String?

    public var description_: String?

    public var externalStorageLocation: String?

    public var name: String?

    public var requestId: String?

    public var roleArn: String?

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
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.externalStorageLocation != nil {
            map["ExternalStorageLocation"] = self.externalStorageLocation!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Definition") {
            self.definition = dict["Definition"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExternalStorageLocation") {
            self.externalStorageLocation = dict["ExternalStorageLocation"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleArn") {
            self.roleArn = dict["RoleArn"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateFlowResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var definition: String?

    public var description_: String?

    public var id: String?

    public var lastModifiedTime: String?

    public var name: String?

    public var requestId: String?

    public var roleArn: String?

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
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lastModifiedTime != nil {
            map["LastModifiedTime"] = self.lastModifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedTime") {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Definition") {
            self.definition = dict["Definition"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("LastModifiedTime") {
            self.lastModifiedTime = dict["LastModifiedTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleArn") {
            self.roleArn = dict["RoleArn"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFlowResponseBody?

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
            var model = CreateFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateScheduleRequest : Tea.TeaModel {
    public var cronExpression: String?

    public var description_: String?

    public var enable: Bool?

    public var flowName: String?

    public var payload: String?

    public var requestId: String?

    public var scheduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cronExpression != nil {
            map["CronExpression"] = self.cronExpression!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scheduleName != nil {
            map["ScheduleName"] = self.scheduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CronExpression") {
            self.cronExpression = dict["CronExpression"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
        if dict.keys.contains("Payload") {
            self.payload = dict["Payload"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScheduleName") {
            self.scheduleName = dict["ScheduleName"] as! String
        }
    }
}

public class CreateScheduleResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var cronExpression: String?

    public var description_: String?

    public var enable: Bool?

    public var lastModifiedTime: String?

    public var payload: String?

    public var requestId: String?

    public var scheduleId: String?

    public var scheduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.cronExpression != nil {
            map["CronExpression"] = self.cronExpression!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.lastModifiedTime != nil {
            map["LastModifiedTime"] = self.lastModifiedTime!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scheduleId != nil {
            map["ScheduleId"] = self.scheduleId!
        }
        if self.scheduleName != nil {
            map["ScheduleName"] = self.scheduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedTime") {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("CronExpression") {
            self.cronExpression = dict["CronExpression"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("LastModifiedTime") {
            self.lastModifiedTime = dict["LastModifiedTime"] as! String
        }
        if dict.keys.contains("Payload") {
            self.payload = dict["Payload"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScheduleId") {
            self.scheduleId = dict["ScheduleId"] as! String
        }
        if dict.keys.contains("ScheduleName") {
            self.scheduleName = dict["ScheduleName"] as! String
        }
    }
}

public class CreateScheduleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScheduleResponseBody?

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
            var model = CreateScheduleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFlowRequest : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteFlowResponseBody : Tea.TeaModel {
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

public class DeleteFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFlowResponseBody?

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
            var model = DeleteFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteScheduleRequest : Tea.TeaModel {
    public var flowName: String?

    public var requestId: String?

    public var scheduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scheduleName != nil {
            map["ScheduleName"] = self.scheduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScheduleName") {
            self.scheduleName = dict["ScheduleName"] as! String
        }
    }
}

public class DeleteScheduleResponseBody : Tea.TeaModel {
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

public class DeleteScheduleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScheduleResponseBody?

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
            var model = DeleteScheduleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeExecutionRequest : Tea.TeaModel {
    public var executionName: String?

    public var flowName: String?

    public var requestId: String?

    public var waitTimeSeconds: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionName != nil {
            map["ExecutionName"] = self.executionName!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.waitTimeSeconds != nil {
            map["WaitTimeSeconds"] = self.waitTimeSeconds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExecutionName") {
            self.executionName = dict["ExecutionName"] as! String
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WaitTimeSeconds") {
            self.waitTimeSeconds = dict["WaitTimeSeconds"] as! Int32
        }
    }
}

public class DescribeExecutionResponseBody : Tea.TeaModel {
    public var flowDefinition: String?

    public var flowName: String?

    public var input: String?

    public var name: String?

    public var output: String?

    public var requestId: String?

    public var startedTime: String?

    public var status: String?

    public var stoppedTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowDefinition != nil {
            map["FlowDefinition"] = self.flowDefinition!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startedTime != nil {
            map["StartedTime"] = self.startedTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.stoppedTime != nil {
            map["StoppedTime"] = self.stoppedTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FlowDefinition") {
            self.flowDefinition = dict["FlowDefinition"] as! String
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
        if dict.keys.contains("Input") {
            self.input = dict["Input"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Output") {
            self.output = dict["Output"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartedTime") {
            self.startedTime = dict["StartedTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StoppedTime") {
            self.stoppedTime = dict["StoppedTime"] as! String
        }
    }
}

public class DescribeExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeExecutionResponseBody?

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
            var model = DescribeExecutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFlowRequest : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeFlowResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var definition: String?

    public var description_: String?

    public var id: String?

    public var lastModifiedTime: String?

    public var name: String?

    public var requestId: String?

    public var roleArn: String?

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
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lastModifiedTime != nil {
            map["LastModifiedTime"] = self.lastModifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedTime") {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Definition") {
            self.definition = dict["Definition"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("LastModifiedTime") {
            self.lastModifiedTime = dict["LastModifiedTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleArn") {
            self.roleArn = dict["RoleArn"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFlowResponseBody?

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
            var model = DescribeFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScheduleRequest : Tea.TeaModel {
    public var flowName: String?

    public var requestId: String?

    public var scheduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scheduleName != nil {
            map["ScheduleName"] = self.scheduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScheduleName") {
            self.scheduleName = dict["ScheduleName"] as! String
        }
    }
}

public class DescribeScheduleResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var cronExpression: String?

    public var description_: String?

    public var enable: Bool?

    public var lastModifiedTime: String?

    public var payload: String?

    public var requestId: String?

    public var scheduleId: String?

    public var scheduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.cronExpression != nil {
            map["CronExpression"] = self.cronExpression!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.lastModifiedTime != nil {
            map["LastModifiedTime"] = self.lastModifiedTime!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scheduleId != nil {
            map["ScheduleId"] = self.scheduleId!
        }
        if self.scheduleName != nil {
            map["ScheduleName"] = self.scheduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedTime") {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("CronExpression") {
            self.cronExpression = dict["CronExpression"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("LastModifiedTime") {
            self.lastModifiedTime = dict["LastModifiedTime"] as! String
        }
        if dict.keys.contains("Payload") {
            self.payload = dict["Payload"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScheduleId") {
            self.scheduleId = dict["ScheduleId"] as! String
        }
        if dict.keys.contains("ScheduleName") {
            self.scheduleName = dict["ScheduleName"] as! String
        }
    }
}

public class DescribeScheduleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScheduleResponseBody?

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
            var model = DescribeScheduleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetExecutionHistoryRequest : Tea.TeaModel {
    public var executionName: String?

    public var flowName: String?

    public var limit: Int32?

    public var nextToken: String?

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
        if self.executionName != nil {
            map["ExecutionName"] = self.executionName!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExecutionName") {
            self.executionName = dict["ExecutionName"] as! String
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetExecutionHistoryResponseBody : Tea.TeaModel {
    public class Events : Tea.TeaModel {
        public var eventDetail: String?

        public var eventId: Int64?

        public var scheduleEventId: Int64?

        public var stepName: String?

        public var time: String?

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
            if self.eventDetail != nil {
                map["EventDetail"] = self.eventDetail!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.scheduleEventId != nil {
                map["ScheduleEventId"] = self.scheduleEventId!
            }
            if self.stepName != nil {
                map["StepName"] = self.stepName!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EventDetail") {
                self.eventDetail = dict["EventDetail"] as! String
            }
            if dict.keys.contains("EventId") {
                self.eventId = dict["EventId"] as! Int64
            }
            if dict.keys.contains("ScheduleEventId") {
                self.scheduleEventId = dict["ScheduleEventId"] as! Int64
            }
            if dict.keys.contains("StepName") {
                self.stepName = dict["StepName"] as! String
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var events: [GetExecutionHistoryResponseBody.Events]?

    public var nextToken: String?

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
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["Events"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Events") {
            self.events = dict["Events"] as! [GetExecutionHistoryResponseBody.Events]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetExecutionHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExecutionHistoryResponseBody?

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
            var model = GetExecutionHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListExecutionsRequest : Tea.TeaModel {
    public var executionNamePrefix: String?

    public var flowName: String?

    public var limit: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var startedTimeBegin: String?

    public var startedTimeEnd: String?

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
        if self.executionNamePrefix != nil {
            map["ExecutionNamePrefix"] = self.executionNamePrefix!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startedTimeBegin != nil {
            map["StartedTimeBegin"] = self.startedTimeBegin!
        }
        if self.startedTimeEnd != nil {
            map["StartedTimeEnd"] = self.startedTimeEnd!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExecutionNamePrefix") {
            self.executionNamePrefix = dict["ExecutionNamePrefix"] as! String
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartedTimeBegin") {
            self.startedTimeBegin = dict["StartedTimeBegin"] as! String
        }
        if dict.keys.contains("StartedTimeEnd") {
            self.startedTimeEnd = dict["StartedTimeEnd"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListExecutionsResponseBody : Tea.TeaModel {
    public class Executions : Tea.TeaModel {
        public var flowDefinition: String?

        public var flowName: String?

        public var input: String?

        public var name: String?

        public var output: String?

        public var startedTime: String?

        public var status: String?

        public var stoppedTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flowDefinition != nil {
                map["FlowDefinition"] = self.flowDefinition!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            if self.input != nil {
                map["Input"] = self.input!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.startedTime != nil {
                map["StartedTime"] = self.startedTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.stoppedTime != nil {
                map["StoppedTime"] = self.stoppedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FlowDefinition") {
                self.flowDefinition = dict["FlowDefinition"] as! String
            }
            if dict.keys.contains("FlowName") {
                self.flowName = dict["FlowName"] as! String
            }
            if dict.keys.contains("Input") {
                self.input = dict["Input"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Output") {
                self.output = dict["Output"] as! String
            }
            if dict.keys.contains("StartedTime") {
                self.startedTime = dict["StartedTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StoppedTime") {
                self.stoppedTime = dict["StoppedTime"] as! String
            }
        }
    }
    public var executions: [ListExecutionsResponseBody.Executions]?

    public var nextToken: String?

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
        if self.executions != nil {
            var tmp : [Any] = []
            for k in self.executions! {
                tmp.append(k.toMap())
            }
            map["Executions"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Executions") {
            self.executions = dict["Executions"] as! [ListExecutionsResponseBody.Executions]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListExecutionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExecutionsResponseBody?

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
            var model = ListExecutionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFlowsRequest : Tea.TeaModel {
    public var limit: Int32?

    public var nextToken: String?

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
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFlowsResponseBody : Tea.TeaModel {
    public class Flows : Tea.TeaModel {
        public var createdTime: String?

        public var definition: String?

        public var description_: String?

        public var id: String?

        public var lastModifiedTime: String?

        public var name: String?

        public var roleArn: String?

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
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.definition != nil {
                map["Definition"] = self.definition!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.lastModifiedTime != nil {
                map["LastModifiedTime"] = self.lastModifiedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.roleArn != nil {
                map["RoleArn"] = self.roleArn!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("Definition") {
                self.definition = dict["Definition"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("LastModifiedTime") {
                self.lastModifiedTime = dict["LastModifiedTime"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RoleArn") {
                self.roleArn = dict["RoleArn"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var flows: [ListFlowsResponseBody.Flows]?

    public var nextToken: String?

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
        if self.flows != nil {
            var tmp : [Any] = []
            for k in self.flows! {
                tmp.append(k.toMap())
            }
            map["Flows"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Flows") {
            self.flows = dict["Flows"] as! [ListFlowsResponseBody.Flows]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFlowsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlowsResponseBody?

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
            var model = ListFlowsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSchedulesRequest : Tea.TeaModel {
    public var flowName: String?

    public var limit: Int32?

    public var nextToken: String?

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
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListSchedulesResponseBody : Tea.TeaModel {
    public class Schedules : Tea.TeaModel {
        public var createdTime: String?

        public var cronExpression: String?

        public var description_: String?

        public var enable: Bool?

        public var lastModifiedTime: String?

        public var payload: String?

        public var scheduleId: String?

        public var scheduleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.cronExpression != nil {
                map["CronExpression"] = self.cronExpression!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.lastModifiedTime != nil {
                map["LastModifiedTime"] = self.lastModifiedTime!
            }
            if self.payload != nil {
                map["Payload"] = self.payload!
            }
            if self.scheduleId != nil {
                map["ScheduleId"] = self.scheduleId!
            }
            if self.scheduleName != nil {
                map["ScheduleName"] = self.scheduleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("CronExpression") {
                self.cronExpression = dict["CronExpression"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Enable") {
                self.enable = dict["Enable"] as! Bool
            }
            if dict.keys.contains("LastModifiedTime") {
                self.lastModifiedTime = dict["LastModifiedTime"] as! String
            }
            if dict.keys.contains("Payload") {
                self.payload = dict["Payload"] as! String
            }
            if dict.keys.contains("ScheduleId") {
                self.scheduleId = dict["ScheduleId"] as! String
            }
            if dict.keys.contains("ScheduleName") {
                self.scheduleName = dict["ScheduleName"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var schedules: [ListSchedulesResponseBody.Schedules]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schedules != nil {
            var tmp : [Any] = []
            for k in self.schedules! {
                tmp.append(k.toMap())
            }
            map["Schedules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Schedules") {
            self.schedules = dict["Schedules"] as! [ListSchedulesResponseBody.Schedules]
        }
    }
}

public class ListSchedulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSchedulesResponseBody?

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
            var model = ListSchedulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReportTaskFailedRequest : Tea.TeaModel {
    public var cause: String?

    public var error: String?

    public var requestId: String?

    public var taskToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cause != nil {
            map["Cause"] = self.cause!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskToken != nil {
            map["TaskToken"] = self.taskToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cause") {
            self.cause = dict["Cause"] as! String
        }
        if dict.keys.contains("Error") {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskToken") {
            self.taskToken = dict["TaskToken"] as! String
        }
    }
}

public class ReportTaskFailedResponseBody : Tea.TeaModel {
    public var eventId: Int64?

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
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ReportTaskFailedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportTaskFailedResponseBody?

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
            var model = ReportTaskFailedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReportTaskSucceededRequest : Tea.TeaModel {
    public var output: String?

    public var requestId: String?

    public var taskToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskToken != nil {
            map["TaskToken"] = self.taskToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Output") {
            self.output = dict["Output"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskToken") {
            self.taskToken = dict["TaskToken"] as! String
        }
    }
}

public class ReportTaskSucceededResponseBody : Tea.TeaModel {
    public var eventId: Int64?

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
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ReportTaskSucceededResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportTaskSucceededResponseBody?

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
            var model = ReportTaskSucceededResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartExecutionRequest : Tea.TeaModel {
    public var callbackFnFTaskToken: String?

    public var executionName: String?

    public var flowName: String?

    public var input: String?

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
        if self.callbackFnFTaskToken != nil {
            map["CallbackFnFTaskToken"] = self.callbackFnFTaskToken!
        }
        if self.executionName != nil {
            map["ExecutionName"] = self.executionName!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallbackFnFTaskToken") {
            self.callbackFnFTaskToken = dict["CallbackFnFTaskToken"] as! String
        }
        if dict.keys.contains("ExecutionName") {
            self.executionName = dict["ExecutionName"] as! String
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
        if dict.keys.contains("Input") {
            self.input = dict["Input"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartExecutionResponseBody : Tea.TeaModel {
    public var flowDefinition: String?

    public var flowName: String?

    public var input: String?

    public var name: String?

    public var output: String?

    public var requestId: String?

    public var startedTime: String?

    public var status: String?

    public var stoppedTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowDefinition != nil {
            map["FlowDefinition"] = self.flowDefinition!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startedTime != nil {
            map["StartedTime"] = self.startedTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.stoppedTime != nil {
            map["StoppedTime"] = self.stoppedTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FlowDefinition") {
            self.flowDefinition = dict["FlowDefinition"] as! String
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
        if dict.keys.contains("Input") {
            self.input = dict["Input"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Output") {
            self.output = dict["Output"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartedTime") {
            self.startedTime = dict["StartedTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StoppedTime") {
            self.stoppedTime = dict["StoppedTime"] as! String
        }
    }
}

public class StartExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartExecutionResponseBody?

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
            var model = StartExecutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopExecutionRequest : Tea.TeaModel {
    public var cause: String?

    public var error: String?

    public var executionName: String?

    public var flowName: String?

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
        if self.cause != nil {
            map["Cause"] = self.cause!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.executionName != nil {
            map["ExecutionName"] = self.executionName!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cause") {
            self.cause = dict["Cause"] as! String
        }
        if dict.keys.contains("Error") {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("ExecutionName") {
            self.executionName = dict["ExecutionName"] as! String
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopExecutionResponseBody : Tea.TeaModel {
    public var flowDefinition: String?

    public var flowName: String?

    public var input: String?

    public var name: String?

    public var output: String?

    public var requestId: String?

    public var startedTime: String?

    public var status: String?

    public var stoppedTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowDefinition != nil {
            map["FlowDefinition"] = self.flowDefinition!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startedTime != nil {
            map["StartedTime"] = self.startedTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.stoppedTime != nil {
            map["StoppedTime"] = self.stoppedTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FlowDefinition") {
            self.flowDefinition = dict["FlowDefinition"] as! String
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
        if dict.keys.contains("Input") {
            self.input = dict["Input"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Output") {
            self.output = dict["Output"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartedTime") {
            self.startedTime = dict["StartedTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StoppedTime") {
            self.stoppedTime = dict["StoppedTime"] as! String
        }
    }
}

public class StopExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopExecutionResponseBody?

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
            var model = StopExecutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFlowRequest : Tea.TeaModel {
    public var definition: String?

    public var description_: String?

    public var name: String?

    public var requestId: String?

    public var roleArn: String?

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
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Definition") {
            self.definition = dict["Definition"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleArn") {
            self.roleArn = dict["RoleArn"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class UpdateFlowResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var definition: String?

    public var description_: String?

    public var externalStorageLocation: String?

    public var id: String?

    public var lastModifiedTime: String?

    public var name: String?

    public var requestId: String?

    public var roleArn: String?

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
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.externalStorageLocation != nil {
            map["ExternalStorageLocation"] = self.externalStorageLocation!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lastModifiedTime != nil {
            map["LastModifiedTime"] = self.lastModifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedTime") {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Definition") {
            self.definition = dict["Definition"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExternalStorageLocation") {
            self.externalStorageLocation = dict["ExternalStorageLocation"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("LastModifiedTime") {
            self.lastModifiedTime = dict["LastModifiedTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleArn") {
            self.roleArn = dict["RoleArn"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class UpdateFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFlowResponseBody?

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
            var model = UpdateFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateScheduleRequest : Tea.TeaModel {
    public var cronExpression: String?

    public var description_: String?

    public var enable: Bool?

    public var flowName: String?

    public var payload: String?

    public var requestId: String?

    public var scheduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cronExpression != nil {
            map["CronExpression"] = self.cronExpression!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scheduleName != nil {
            map["ScheduleName"] = self.scheduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CronExpression") {
            self.cronExpression = dict["CronExpression"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
        if dict.keys.contains("Payload") {
            self.payload = dict["Payload"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScheduleName") {
            self.scheduleName = dict["ScheduleName"] as! String
        }
    }
}

public class UpdateScheduleResponseBody : Tea.TeaModel {
    public var createdTime: String?

    public var cronExpression: String?

    public var description_: String?

    public var enable: Bool?

    public var lastModifiedTime: String?

    public var payload: String?

    public var requestId: String?

    public var scheduleId: String?

    public var scheduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.cronExpression != nil {
            map["CronExpression"] = self.cronExpression!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.lastModifiedTime != nil {
            map["LastModifiedTime"] = self.lastModifiedTime!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scheduleId != nil {
            map["ScheduleId"] = self.scheduleId!
        }
        if self.scheduleName != nil {
            map["ScheduleName"] = self.scheduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedTime") {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("CronExpression") {
            self.cronExpression = dict["CronExpression"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("LastModifiedTime") {
            self.lastModifiedTime = dict["LastModifiedTime"] as! String
        }
        if dict.keys.contains("Payload") {
            self.payload = dict["Payload"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScheduleId") {
            self.scheduleId = dict["ScheduleId"] as! String
        }
        if dict.keys.contains("ScheduleName") {
            self.scheduleName = dict["ScheduleName"] as! String
        }
    }
}

public class UpdateScheduleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateScheduleResponseBody?

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
            var model = UpdateScheduleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
