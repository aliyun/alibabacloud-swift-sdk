import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelStackOperationRequest : Tea.TeaModel {
    public var allowedStackOperations: [String]?

    public var cancelType: String?

    public var regionId: String?

    public var stackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowedStackOperations != nil {
            map["AllowedStackOperations"] = self.allowedStackOperations!
        }
        if self.cancelType != nil {
            map["CancelType"] = self.cancelType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowedStackOperations") {
            self.allowedStackOperations = dict["AllowedStackOperations"] as! [String]
        }
        if dict.keys.contains("CancelType") {
            self.cancelType = dict["CancelType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class CancelStackOperationResponseBody : Tea.TeaModel {
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

public class CancelStackOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelStackOperationResponseBody?

    public override init() {
        super.init()
    }

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
            var model = CancelStackOperationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelUpdateStackRequest : Tea.TeaModel {
    public var cancelType: String?

    public var regionId: String?

    public var stackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cancelType != nil {
            map["CancelType"] = self.cancelType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CancelType") {
            self.cancelType = dict["CancelType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class CancelUpdateStackResponseBody : Tea.TeaModel {
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

public class CancelUpdateStackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelUpdateStackResponseBody?

    public override init() {
        super.init()
    }

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
            var model = CancelUpdateStackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ContinueCreateStackRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public var dryRun: Bool?

    public var mode: String?

    public var parallelism: Int64?

    public var parameters: [ContinueCreateStackRequest.Parameters]?

    public var ramRoleName: String?

    public var recreatingOptions: [String]?

    public var recreatingResources: [String]?

    public var regionId: String?

    public var stackId: String?

    public var templateBody: String?

    public var templateId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
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
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.parallelism != nil {
            map["Parallelism"] = self.parallelism!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.ramRoleName != nil {
            map["RamRoleName"] = self.ramRoleName!
        }
        if self.recreatingOptions != nil {
            map["RecreatingOptions"] = self.recreatingOptions!
        }
        if self.recreatingResources != nil {
            map["RecreatingResources"] = self.recreatingResources!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("Parallelism") {
            self.parallelism = dict["Parallelism"] as! Int64
        }
        if dict.keys.contains("Parameters") {
            var tmp : [ContinueCreateStackRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = ContinueCreateStackRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RamRoleName") {
            self.ramRoleName = dict["RamRoleName"] as! String
        }
        if dict.keys.contains("RecreatingOptions") {
            self.recreatingOptions = dict["RecreatingOptions"] as! [String]
        }
        if dict.keys.contains("RecreatingResources") {
            self.recreatingResources = dict["RecreatingResources"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class ContinueCreateStackResponseBody : Tea.TeaModel {
    public class DryRunResult : Tea.TeaModel {
        public var parametersAllowedToBeModified: [String]?

        public var parametersConditionallyAllowedToBeModified: [String]?

        public var parametersNotAllowedToBeModified: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parametersAllowedToBeModified != nil {
                map["ParametersAllowedToBeModified"] = self.parametersAllowedToBeModified!
            }
            if self.parametersConditionallyAllowedToBeModified != nil {
                map["ParametersConditionallyAllowedToBeModified"] = self.parametersConditionallyAllowedToBeModified!
            }
            if self.parametersNotAllowedToBeModified != nil {
                map["ParametersNotAllowedToBeModified"] = self.parametersNotAllowedToBeModified!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParametersAllowedToBeModified") {
                self.parametersAllowedToBeModified = dict["ParametersAllowedToBeModified"] as! [String]
            }
            if dict.keys.contains("ParametersConditionallyAllowedToBeModified") {
                self.parametersConditionallyAllowedToBeModified = dict["ParametersConditionallyAllowedToBeModified"] as! [String]
            }
            if dict.keys.contains("ParametersNotAllowedToBeModified") {
                self.parametersNotAllowedToBeModified = dict["ParametersNotAllowedToBeModified"] as! [String]
            }
        }
    }
    public var dryRunResult: ContinueCreateStackResponseBody.DryRunResult?

    public var requestId: String?

    public var stackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dryRunResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRunResult != nil {
            map["DryRunResult"] = self.dryRunResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DryRunResult") {
            var model = ContinueCreateStackResponseBody.DryRunResult()
            model.fromMap(dict["DryRunResult"] as! [String: Any])
            self.dryRunResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class ContinueCreateStackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ContinueCreateStackResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ContinueCreateStackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAITaskRequest : Tea.TeaModel {
    public var prompt: String?

    public var taskType: String?

    public var template: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
        if dict.keys.contains("Template") {
            self.template = dict["Template"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class CreateAITaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateAITaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAITaskResponseBody?

    public override init() {
        super.init()
    }

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
            var model = CreateAITaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateChangeSetRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public class ResourcesToImport : Tea.TeaModel {
        public var logicalResourceId: String?

        public var resourceIdentifier: String?

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
            if self.logicalResourceId != nil {
                map["LogicalResourceId"] = self.logicalResourceId!
            }
            if self.resourceIdentifier != nil {
                map["ResourceIdentifier"] = self.resourceIdentifier!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogicalResourceId") {
                self.logicalResourceId = dict["LogicalResourceId"] as! String
            }
            if dict.keys.contains("ResourceIdentifier") {
                self.resourceIdentifier = dict["ResourceIdentifier"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var changeSetName: String?

    public var changeSetType: String?

    public var clientToken: String?

    public var description_: String?

    public var disableRollback: Bool?

    public var notificationURLs: [String]?

    public var parallelism: Int64?

    public var parameters: [CreateChangeSetRequest.Parameters]?

    public var ramRoleName: String?

    public var regionId: String?

    public var replacementOption: String?

    public var resourcesToImport: [CreateChangeSetRequest.ResourcesToImport]?

    public var stackId: String?

    public var stackName: String?

    public var stackPolicyBody: String?

    public var stackPolicyDuringUpdateBody: String?

    public var stackPolicyDuringUpdateURL: String?

    public var stackPolicyURL: String?

    public var templateBody: String?

    public var templateId: String?

    public var templateScratchId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public var timeoutInMinutes: Int64?

    public var usePreviousParameters: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeSetName != nil {
            map["ChangeSetName"] = self.changeSetName!
        }
        if self.changeSetType != nil {
            map["ChangeSetType"] = self.changeSetType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.disableRollback != nil {
            map["DisableRollback"] = self.disableRollback!
        }
        if self.notificationURLs != nil {
            map["NotificationURLs"] = self.notificationURLs!
        }
        if self.parallelism != nil {
            map["Parallelism"] = self.parallelism!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.ramRoleName != nil {
            map["RamRoleName"] = self.ramRoleName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replacementOption != nil {
            map["ReplacementOption"] = self.replacementOption!
        }
        if self.resourcesToImport != nil {
            var tmp : [Any] = []
            for k in self.resourcesToImport! {
                tmp.append(k.toMap())
            }
            map["ResourcesToImport"] = tmp
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.stackName != nil {
            map["StackName"] = self.stackName!
        }
        if self.stackPolicyBody != nil {
            map["StackPolicyBody"] = self.stackPolicyBody!
        }
        if self.stackPolicyDuringUpdateBody != nil {
            map["StackPolicyDuringUpdateBody"] = self.stackPolicyDuringUpdateBody!
        }
        if self.stackPolicyDuringUpdateURL != nil {
            map["StackPolicyDuringUpdateURL"] = self.stackPolicyDuringUpdateURL!
        }
        if self.stackPolicyURL != nil {
            map["StackPolicyURL"] = self.stackPolicyURL!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateScratchId != nil {
            map["TemplateScratchId"] = self.templateScratchId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        if self.timeoutInMinutes != nil {
            map["TimeoutInMinutes"] = self.timeoutInMinutes!
        }
        if self.usePreviousParameters != nil {
            map["UsePreviousParameters"] = self.usePreviousParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeSetName") {
            self.changeSetName = dict["ChangeSetName"] as! String
        }
        if dict.keys.contains("ChangeSetType") {
            self.changeSetType = dict["ChangeSetType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisableRollback") {
            self.disableRollback = dict["DisableRollback"] as! Bool
        }
        if dict.keys.contains("NotificationURLs") {
            self.notificationURLs = dict["NotificationURLs"] as! [String]
        }
        if dict.keys.contains("Parallelism") {
            self.parallelism = dict["Parallelism"] as! Int64
        }
        if dict.keys.contains("Parameters") {
            var tmp : [CreateChangeSetRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = CreateChangeSetRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RamRoleName") {
            self.ramRoleName = dict["RamRoleName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplacementOption") {
            self.replacementOption = dict["ReplacementOption"] as! String
        }
        if dict.keys.contains("ResourcesToImport") {
            var tmp : [CreateChangeSetRequest.ResourcesToImport] = []
            for v in dict["ResourcesToImport"] as! [Any] {
                var model = CreateChangeSetRequest.ResourcesToImport()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourcesToImport = tmp
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("StackName") {
            self.stackName = dict["StackName"] as! String
        }
        if dict.keys.contains("StackPolicyBody") {
            self.stackPolicyBody = dict["StackPolicyBody"] as! String
        }
        if dict.keys.contains("StackPolicyDuringUpdateBody") {
            self.stackPolicyDuringUpdateBody = dict["StackPolicyDuringUpdateBody"] as! String
        }
        if dict.keys.contains("StackPolicyDuringUpdateURL") {
            self.stackPolicyDuringUpdateURL = dict["StackPolicyDuringUpdateURL"] as! String
        }
        if dict.keys.contains("StackPolicyURL") {
            self.stackPolicyURL = dict["StackPolicyURL"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateScratchId") {
            self.templateScratchId = dict["TemplateScratchId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
        if dict.keys.contains("TimeoutInMinutes") {
            self.timeoutInMinutes = dict["TimeoutInMinutes"] as! Int64
        }
        if dict.keys.contains("UsePreviousParameters") {
            self.usePreviousParameters = dict["UsePreviousParameters"] as! Bool
        }
    }
}

public class CreateChangeSetResponseBody : Tea.TeaModel {
    public var changeSetId: String?

    public var requestId: String?

    public var stackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeSetId != nil {
            map["ChangeSetId"] = self.changeSetId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeSetId") {
            self.changeSetId = dict["ChangeSetId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class CreateChangeSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChangeSetResponseBody?

    public override init() {
        super.init()
    }

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
            var model = CreateChangeSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDiagnosticRequest : Tea.TeaModel {
    public var diagnosticKey: String?

    public var diagnosticType: String?

    public var lang: String?

    public var product: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diagnosticKey != nil {
            map["DiagnosticKey"] = self.diagnosticKey!
        }
        if self.diagnosticType != nil {
            map["DiagnosticType"] = self.diagnosticType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiagnosticKey") {
            self.diagnosticKey = dict["DiagnosticKey"] as! String
        }
        if dict.keys.contains("DiagnosticType") {
            self.diagnosticType = dict["DiagnosticType"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
    }
}

public class CreateDiagnosticResponseBody : Tea.TeaModel {
    public var code: String?

    public var diagnosticType: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var reportId: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
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
            map["Code"] = self.code!
        }
        if self.diagnosticType != nil {
            map["DiagnosticType"] = self.diagnosticType!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DiagnosticType") {
            self.diagnosticType = dict["DiagnosticType"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class CreateDiagnosticResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDiagnosticResponseBody?

    public override init() {
        super.init()
    }

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
            var model = CreateDiagnosticResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateStackRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
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
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clientToken: String?

    public var createOption: String?

    public var createOptions: [String]?

    public var deletionProtection: String?

    public var disableRollback: Bool?

    public var notificationURLs: [String]?

    public var parallelism: Int64?

    public var parameters: [CreateStackRequest.Parameters]?

    public var ramRoleName: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var stackName: String?

    public var stackPolicyBody: String?

    public var stackPolicyURL: String?

    public var tags: [CreateStackRequest.Tags]?

    public var templateBody: String?

    public var templateId: String?

    public var templateScratchId: String?

    public var templateScratchRegionId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public var timeoutInMinutes: Int64?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.createOption != nil {
            map["CreateOption"] = self.createOption!
        }
        if self.createOptions != nil {
            map["CreateOptions"] = self.createOptions!
        }
        if self.deletionProtection != nil {
            map["DeletionProtection"] = self.deletionProtection!
        }
        if self.disableRollback != nil {
            map["DisableRollback"] = self.disableRollback!
        }
        if self.notificationURLs != nil {
            map["NotificationURLs"] = self.notificationURLs!
        }
        if self.parallelism != nil {
            map["Parallelism"] = self.parallelism!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.ramRoleName != nil {
            map["RamRoleName"] = self.ramRoleName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.stackName != nil {
            map["StackName"] = self.stackName!
        }
        if self.stackPolicyBody != nil {
            map["StackPolicyBody"] = self.stackPolicyBody!
        }
        if self.stackPolicyURL != nil {
            map["StackPolicyURL"] = self.stackPolicyURL!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateScratchId != nil {
            map["TemplateScratchId"] = self.templateScratchId!
        }
        if self.templateScratchRegionId != nil {
            map["TemplateScratchRegionId"] = self.templateScratchRegionId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        if self.timeoutInMinutes != nil {
            map["TimeoutInMinutes"] = self.timeoutInMinutes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CreateOption") {
            self.createOption = dict["CreateOption"] as! String
        }
        if dict.keys.contains("CreateOptions") {
            self.createOptions = dict["CreateOptions"] as! [String]
        }
        if dict.keys.contains("DeletionProtection") {
            self.deletionProtection = dict["DeletionProtection"] as! String
        }
        if dict.keys.contains("DisableRollback") {
            self.disableRollback = dict["DisableRollback"] as! Bool
        }
        if dict.keys.contains("NotificationURLs") {
            self.notificationURLs = dict["NotificationURLs"] as! [String]
        }
        if dict.keys.contains("Parallelism") {
            self.parallelism = dict["Parallelism"] as! Int64
        }
        if dict.keys.contains("Parameters") {
            var tmp : [CreateStackRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = CreateStackRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RamRoleName") {
            self.ramRoleName = dict["RamRoleName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StackName") {
            self.stackName = dict["StackName"] as! String
        }
        if dict.keys.contains("StackPolicyBody") {
            self.stackPolicyBody = dict["StackPolicyBody"] as! String
        }
        if dict.keys.contains("StackPolicyURL") {
            self.stackPolicyURL = dict["StackPolicyURL"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [CreateStackRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = CreateStackRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateScratchId") {
            self.templateScratchId = dict["TemplateScratchId"] as! String
        }
        if dict.keys.contains("TemplateScratchRegionId") {
            self.templateScratchRegionId = dict["TemplateScratchRegionId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
        if dict.keys.contains("TimeoutInMinutes") {
            self.timeoutInMinutes = dict["TimeoutInMinutes"] as! Int64
        }
    }
}

public class CreateStackResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var stackId: String?

    public override init() {
        super.init()
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
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class CreateStackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateStackResponseBody?

    public override init() {
        super.init()
    }

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
            var model = CreateStackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateStackGroupRequest : Tea.TeaModel {
    public class AutoDeployment : Tea.TeaModel {
        public var enabled: Bool?

        public var retainStacksOnAccountRemoval: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.retainStacksOnAccountRemoval != nil {
                map["RetainStacksOnAccountRemoval"] = self.retainStacksOnAccountRemoval!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("RetainStacksOnAccountRemoval") {
                self.retainStacksOnAccountRemoval = dict["RetainStacksOnAccountRemoval"] as! Bool
            }
        }
    }
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
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
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var administrationRoleName: String?

    public var autoDeployment: CreateStackGroupRequest.AutoDeployment?

    public var capabilities: [String]?

    public var clientToken: String?

    public var description_: String?

    public var executionRoleName: String?

    public var parameters: [CreateStackGroupRequest.Parameters]?

    public var permissionModel: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var stackArn: String?

    public var stackGroupName: String?

    public var tags: [CreateStackGroupRequest.Tags]?

    public var templateBody: String?

    public var templateId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.autoDeployment?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.administrationRoleName != nil {
            map["AdministrationRoleName"] = self.administrationRoleName!
        }
        if self.autoDeployment != nil {
            map["AutoDeployment"] = self.autoDeployment?.toMap()
        }
        if self.capabilities != nil {
            map["Capabilities"] = self.capabilities!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.executionRoleName != nil {
            map["ExecutionRoleName"] = self.executionRoleName!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.permissionModel != nil {
            map["PermissionModel"] = self.permissionModel!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.stackArn != nil {
            map["StackArn"] = self.stackArn!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdministrationRoleName") {
            self.administrationRoleName = dict["AdministrationRoleName"] as! String
        }
        if dict.keys.contains("AutoDeployment") {
            var model = CreateStackGroupRequest.AutoDeployment()
            model.fromMap(dict["AutoDeployment"] as! [String: Any])
            self.autoDeployment = model
        }
        if dict.keys.contains("Capabilities") {
            self.capabilities = dict["Capabilities"] as! [String]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExecutionRoleName") {
            self.executionRoleName = dict["ExecutionRoleName"] as! String
        }
        if dict.keys.contains("Parameters") {
            var tmp : [CreateStackGroupRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = CreateStackGroupRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("PermissionModel") {
            self.permissionModel = dict["PermissionModel"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StackArn") {
            self.stackArn = dict["StackArn"] as! String
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [CreateStackGroupRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = CreateStackGroupRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class CreateStackGroupShrinkRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
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
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var administrationRoleName: String?

    public var autoDeploymentShrink: String?

    public var capabilities: [String]?

    public var clientToken: String?

    public var description_: String?

    public var executionRoleName: String?

    public var parameters: [CreateStackGroupShrinkRequest.Parameters]?

    public var permissionModel: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var stackArn: String?

    public var stackGroupName: String?

    public var tags: [CreateStackGroupShrinkRequest.Tags]?

    public var templateBody: String?

    public var templateId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.administrationRoleName != nil {
            map["AdministrationRoleName"] = self.administrationRoleName!
        }
        if self.autoDeploymentShrink != nil {
            map["AutoDeployment"] = self.autoDeploymentShrink!
        }
        if self.capabilities != nil {
            map["Capabilities"] = self.capabilities!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.executionRoleName != nil {
            map["ExecutionRoleName"] = self.executionRoleName!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.permissionModel != nil {
            map["PermissionModel"] = self.permissionModel!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.stackArn != nil {
            map["StackArn"] = self.stackArn!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdministrationRoleName") {
            self.administrationRoleName = dict["AdministrationRoleName"] as! String
        }
        if dict.keys.contains("AutoDeployment") {
            self.autoDeploymentShrink = dict["AutoDeployment"] as! String
        }
        if dict.keys.contains("Capabilities") {
            self.capabilities = dict["Capabilities"] as! [String]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExecutionRoleName") {
            self.executionRoleName = dict["ExecutionRoleName"] as! String
        }
        if dict.keys.contains("Parameters") {
            var tmp : [CreateStackGroupShrinkRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = CreateStackGroupShrinkRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("PermissionModel") {
            self.permissionModel = dict["PermissionModel"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StackArn") {
            self.stackArn = dict["StackArn"] as! String
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [CreateStackGroupShrinkRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = CreateStackGroupShrinkRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class CreateStackGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var stackGroupId: String?

    public override init() {
        super.init()
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
        if self.stackGroupId != nil {
            map["StackGroupId"] = self.stackGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackGroupId") {
            self.stackGroupId = dict["StackGroupId"] as! String
        }
    }
}

public class CreateStackGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateStackGroupResponseBody?

    public override init() {
        super.init()
    }

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
            var model = CreateStackGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateStackInstancesRequest : Tea.TeaModel {
    public class DeploymentTargets : Tea.TeaModel {
        public var accountIds: [String]?

        public var rdFolderIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.rdFolderIds != nil {
                map["RdFolderIds"] = self.rdFolderIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountIds") {
                self.accountIds = dict["AccountIds"] as! [String]
            }
            if dict.keys.contains("RdFolderIds") {
                self.rdFolderIds = dict["RdFolderIds"] as! [String]
            }
        }
    }
    public class ParameterOverrides : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public var accountIds: [String]?

    public var clientToken: String?

    public var deploymentOptions: [String]?

    public var deploymentTargets: CreateStackInstancesRequest.DeploymentTargets?

    public var disableRollback: Bool?

    public var operationDescription: String?

    public var operationPreferences: [String: Any]?

    public var parameterOverrides: [CreateStackInstancesRequest.ParameterOverrides]?

    public var regionId: String?

    public var regionIds: [String]?

    public var stackGroupName: String?

    public var timeoutInMinutes: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deploymentTargets?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIds != nil {
            map["AccountIds"] = self.accountIds!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deploymentOptions != nil {
            map["DeploymentOptions"] = self.deploymentOptions!
        }
        if self.deploymentTargets != nil {
            map["DeploymentTargets"] = self.deploymentTargets?.toMap()
        }
        if self.disableRollback != nil {
            map["DisableRollback"] = self.disableRollback!
        }
        if self.operationDescription != nil {
            map["OperationDescription"] = self.operationDescription!
        }
        if self.operationPreferences != nil {
            map["OperationPreferences"] = self.operationPreferences!
        }
        if self.parameterOverrides != nil {
            var tmp : [Any] = []
            for k in self.parameterOverrides! {
                tmp.append(k.toMap())
            }
            map["ParameterOverrides"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.regionIds != nil {
            map["RegionIds"] = self.regionIds!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        if self.timeoutInMinutes != nil {
            map["TimeoutInMinutes"] = self.timeoutInMinutes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") {
            self.accountIds = dict["AccountIds"] as! [String]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeploymentOptions") {
            self.deploymentOptions = dict["DeploymentOptions"] as! [String]
        }
        if dict.keys.contains("DeploymentTargets") {
            var model = CreateStackInstancesRequest.DeploymentTargets()
            model.fromMap(dict["DeploymentTargets"] as! [String: Any])
            self.deploymentTargets = model
        }
        if dict.keys.contains("DisableRollback") {
            self.disableRollback = dict["DisableRollback"] as! Bool
        }
        if dict.keys.contains("OperationDescription") {
            self.operationDescription = dict["OperationDescription"] as! String
        }
        if dict.keys.contains("OperationPreferences") {
            self.operationPreferences = dict["OperationPreferences"] as! [String: Any]
        }
        if dict.keys.contains("ParameterOverrides") {
            var tmp : [CreateStackInstancesRequest.ParameterOverrides] = []
            for v in dict["ParameterOverrides"] as! [Any] {
                var model = CreateStackInstancesRequest.ParameterOverrides()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameterOverrides = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RegionIds") {
            self.regionIds = dict["RegionIds"] as! [String]
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
        if dict.keys.contains("TimeoutInMinutes") {
            self.timeoutInMinutes = dict["TimeoutInMinutes"] as! Int64
        }
    }
}

public class CreateStackInstancesShrinkRequest : Tea.TeaModel {
    public class ParameterOverrides : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public var accountIdsShrink: String?

    public var clientToken: String?

    public var deploymentOptions: [String]?

    public var deploymentTargetsShrink: String?

    public var disableRollback: Bool?

    public var operationDescription: String?

    public var operationPreferencesShrink: String?

    public var parameterOverrides: [CreateStackInstancesShrinkRequest.ParameterOverrides]?

    public var regionId: String?

    public var regionIdsShrink: String?

    public var stackGroupName: String?

    public var timeoutInMinutes: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIdsShrink != nil {
            map["AccountIds"] = self.accountIdsShrink!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deploymentOptions != nil {
            map["DeploymentOptions"] = self.deploymentOptions!
        }
        if self.deploymentTargetsShrink != nil {
            map["DeploymentTargets"] = self.deploymentTargetsShrink!
        }
        if self.disableRollback != nil {
            map["DisableRollback"] = self.disableRollback!
        }
        if self.operationDescription != nil {
            map["OperationDescription"] = self.operationDescription!
        }
        if self.operationPreferencesShrink != nil {
            map["OperationPreferences"] = self.operationPreferencesShrink!
        }
        if self.parameterOverrides != nil {
            var tmp : [Any] = []
            for k in self.parameterOverrides! {
                tmp.append(k.toMap())
            }
            map["ParameterOverrides"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.regionIdsShrink != nil {
            map["RegionIds"] = self.regionIdsShrink!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        if self.timeoutInMinutes != nil {
            map["TimeoutInMinutes"] = self.timeoutInMinutes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") {
            self.accountIdsShrink = dict["AccountIds"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeploymentOptions") {
            self.deploymentOptions = dict["DeploymentOptions"] as! [String]
        }
        if dict.keys.contains("DeploymentTargets") {
            self.deploymentTargetsShrink = dict["DeploymentTargets"] as! String
        }
        if dict.keys.contains("DisableRollback") {
            self.disableRollback = dict["DisableRollback"] as! Bool
        }
        if dict.keys.contains("OperationDescription") {
            self.operationDescription = dict["OperationDescription"] as! String
        }
        if dict.keys.contains("OperationPreferences") {
            self.operationPreferencesShrink = dict["OperationPreferences"] as! String
        }
        if dict.keys.contains("ParameterOverrides") {
            var tmp : [CreateStackInstancesShrinkRequest.ParameterOverrides] = []
            for v in dict["ParameterOverrides"] as! [Any] {
                var model = CreateStackInstancesShrinkRequest.ParameterOverrides()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameterOverrides = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RegionIds") {
            self.regionIdsShrink = dict["RegionIds"] as! String
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
        if dict.keys.contains("TimeoutInMinutes") {
            self.timeoutInMinutes = dict["TimeoutInMinutes"] as! Int64
        }
    }
}

public class CreateStackInstancesResponseBody : Tea.TeaModel {
    public var operationId: String?

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
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperationId") {
            self.operationId = dict["OperationId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateStackInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateStackInstancesResponseBody?

    public override init() {
        super.init()
    }

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
            var model = CreateStackInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTemplateRequest : Tea.TeaModel {
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
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var description_: String?

    public var resourceGroupId: String?

    public var tags: [CreateTemplateRequest.Tags]?

    public var templateBody: String?

    public var templateName: String?

    public var templateURL: String?

    public var validationOptions: [String]?

    public override init() {
        super.init()
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
            map["Description"] = self.description_!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.validationOptions != nil {
            map["ValidationOptions"] = self.validationOptions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [CreateTemplateRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = CreateTemplateRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("ValidationOptions") {
            self.validationOptions = dict["ValidationOptions"] as! [String]
        }
    }
}

public class CreateTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var templateId: String?

    public override init() {
        super.init()
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class CreateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTemplateResponseBody?

    public override init() {
        super.init()
    }

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
            var model = CreateTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTemplateScratchRequest : Tea.TeaModel {
    public class PreferenceParameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public class SourceResourceGroup : Tea.TeaModel {
        public var resourceGroupId: String?

        public var resourceTypeFilter: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceTypeFilter != nil {
                map["ResourceTypeFilter"] = self.resourceTypeFilter!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ResourceTypeFilter") {
                self.resourceTypeFilter = dict["ResourceTypeFilter"] as! [String]
            }
        }
    }
    public class SourceResources : Tea.TeaModel {
        public var regionId: String?

        public var relatedResourceTypeFilter: [String]?

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
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.relatedResourceTypeFilter != nil {
                map["RelatedResourceTypeFilter"] = self.relatedResourceTypeFilter!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RelatedResourceTypeFilter") {
                self.relatedResourceTypeFilter = dict["RelatedResourceTypeFilter"] as! [String]
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public class SourceTag : Tea.TeaModel {
        public var resourceTags: [String: Any]?

        public var resourceTypeFilter: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceTags != nil {
                map["ResourceTags"] = self.resourceTags!
            }
            if self.resourceTypeFilter != nil {
                map["ResourceTypeFilter"] = self.resourceTypeFilter!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceTags") {
                self.resourceTags = dict["ResourceTags"] as! [String: Any]
            }
            if dict.keys.contains("ResourceTypeFilter") {
                self.resourceTypeFilter = dict["ResourceTypeFilter"] as! [String]
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
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clientToken: String?

    public var description_: String?

    public var executionMode: String?

    public var logicalIdStrategy: String?

    public var preferenceParameters: [CreateTemplateScratchRequest.PreferenceParameters]?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sourceResourceGroup: CreateTemplateScratchRequest.SourceResourceGroup?

    public var sourceResources: [CreateTemplateScratchRequest.SourceResources]?

    public var sourceTag: CreateTemplateScratchRequest.SourceTag?

    public var tags: [CreateTemplateScratchRequest.Tags]?

    public var templateScratchType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sourceResourceGroup?.validate()
        try self.sourceTag?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.executionMode != nil {
            map["ExecutionMode"] = self.executionMode!
        }
        if self.logicalIdStrategy != nil {
            map["LogicalIdStrategy"] = self.logicalIdStrategy!
        }
        if self.preferenceParameters != nil {
            var tmp : [Any] = []
            for k in self.preferenceParameters! {
                tmp.append(k.toMap())
            }
            map["PreferenceParameters"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourceResourceGroup != nil {
            map["SourceResourceGroup"] = self.sourceResourceGroup?.toMap()
        }
        if self.sourceResources != nil {
            var tmp : [Any] = []
            for k in self.sourceResources! {
                tmp.append(k.toMap())
            }
            map["SourceResources"] = tmp
        }
        if self.sourceTag != nil {
            map["SourceTag"] = self.sourceTag?.toMap()
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.templateScratchType != nil {
            map["TemplateScratchType"] = self.templateScratchType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExecutionMode") {
            self.executionMode = dict["ExecutionMode"] as! String
        }
        if dict.keys.contains("LogicalIdStrategy") {
            self.logicalIdStrategy = dict["LogicalIdStrategy"] as! String
        }
        if dict.keys.contains("PreferenceParameters") {
            var tmp : [CreateTemplateScratchRequest.PreferenceParameters] = []
            for v in dict["PreferenceParameters"] as! [Any] {
                var model = CreateTemplateScratchRequest.PreferenceParameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.preferenceParameters = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceResourceGroup") {
            var model = CreateTemplateScratchRequest.SourceResourceGroup()
            model.fromMap(dict["SourceResourceGroup"] as! [String: Any])
            self.sourceResourceGroup = model
        }
        if dict.keys.contains("SourceResources") {
            var tmp : [CreateTemplateScratchRequest.SourceResources] = []
            for v in dict["SourceResources"] as! [Any] {
                var model = CreateTemplateScratchRequest.SourceResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sourceResources = tmp
        }
        if dict.keys.contains("SourceTag") {
            var model = CreateTemplateScratchRequest.SourceTag()
            model.fromMap(dict["SourceTag"] as! [String: Any])
            self.sourceTag = model
        }
        if dict.keys.contains("Tags") {
            var tmp : [CreateTemplateScratchRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = CreateTemplateScratchRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TemplateScratchType") {
            self.templateScratchType = dict["TemplateScratchType"] as! String
        }
    }
}

public class CreateTemplateScratchShrinkRequest : Tea.TeaModel {
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
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clientToken: String?

    public var description_: String?

    public var executionMode: String?

    public var logicalIdStrategy: String?

    public var preferenceParametersShrink: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sourceResourceGroupShrink: String?

    public var sourceResourcesShrink: String?

    public var sourceTagShrink: String?

    public var tags: [CreateTemplateScratchShrinkRequest.Tags]?

    public var templateScratchType: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.executionMode != nil {
            map["ExecutionMode"] = self.executionMode!
        }
        if self.logicalIdStrategy != nil {
            map["LogicalIdStrategy"] = self.logicalIdStrategy!
        }
        if self.preferenceParametersShrink != nil {
            map["PreferenceParameters"] = self.preferenceParametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourceResourceGroupShrink != nil {
            map["SourceResourceGroup"] = self.sourceResourceGroupShrink!
        }
        if self.sourceResourcesShrink != nil {
            map["SourceResources"] = self.sourceResourcesShrink!
        }
        if self.sourceTagShrink != nil {
            map["SourceTag"] = self.sourceTagShrink!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.templateScratchType != nil {
            map["TemplateScratchType"] = self.templateScratchType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExecutionMode") {
            self.executionMode = dict["ExecutionMode"] as! String
        }
        if dict.keys.contains("LogicalIdStrategy") {
            self.logicalIdStrategy = dict["LogicalIdStrategy"] as! String
        }
        if dict.keys.contains("PreferenceParameters") {
            self.preferenceParametersShrink = dict["PreferenceParameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceResourceGroup") {
            self.sourceResourceGroupShrink = dict["SourceResourceGroup"] as! String
        }
        if dict.keys.contains("SourceResources") {
            self.sourceResourcesShrink = dict["SourceResources"] as! String
        }
        if dict.keys.contains("SourceTag") {
            self.sourceTagShrink = dict["SourceTag"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [CreateTemplateScratchShrinkRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = CreateTemplateScratchShrinkRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TemplateScratchType") {
            self.templateScratchType = dict["TemplateScratchType"] as! String
        }
    }
}

public class CreateTemplateScratchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var templateScratchId: String?

    public override init() {
        super.init()
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
        if self.templateScratchId != nil {
            map["TemplateScratchId"] = self.templateScratchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateScratchId") {
            self.templateScratchId = dict["TemplateScratchId"] as! String
        }
    }
}

public class CreateTemplateScratchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTemplateScratchResponseBody?

    public override init() {
        super.init()
    }

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
            var model = CreateTemplateScratchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteChangeSetRequest : Tea.TeaModel {
    public var changeSetId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeSetId != nil {
            map["ChangeSetId"] = self.changeSetId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeSetId") {
            self.changeSetId = dict["ChangeSetId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteChangeSetResponseBody : Tea.TeaModel {
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

public class DeleteChangeSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteChangeSetResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DeleteChangeSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDiagnosticRequest : Tea.TeaModel {
    public var reportId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
    }
}

public class DeleteDiagnosticResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
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
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class DeleteDiagnosticResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDiagnosticResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DeleteDiagnosticResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteStackRequest : Tea.TeaModel {
    public var deleteOptions: [String]?

    public var parallelism: Int64?

    public var ramRoleName: String?

    public var regionId: String?

    public var retainAllResources: Bool?

    public var retainResources: [String]?

    public var stackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleteOptions != nil {
            map["DeleteOptions"] = self.deleteOptions!
        }
        if self.parallelism != nil {
            map["Parallelism"] = self.parallelism!
        }
        if self.ramRoleName != nil {
            map["RamRoleName"] = self.ramRoleName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.retainAllResources != nil {
            map["RetainAllResources"] = self.retainAllResources!
        }
        if self.retainResources != nil {
            map["RetainResources"] = self.retainResources!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeleteOptions") {
            self.deleteOptions = dict["DeleteOptions"] as! [String]
        }
        if dict.keys.contains("Parallelism") {
            self.parallelism = dict["Parallelism"] as! Int64
        }
        if dict.keys.contains("RamRoleName") {
            self.ramRoleName = dict["RamRoleName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RetainAllResources") {
            self.retainAllResources = dict["RetainAllResources"] as! Bool
        }
        if dict.keys.contains("RetainResources") {
            self.retainResources = dict["RetainResources"] as! [String]
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class DeleteStackResponseBody : Tea.TeaModel {
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

public class DeleteStackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteStackResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DeleteStackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteStackGroupRequest : Tea.TeaModel {
    public var regionId: String?

    public var stackGroupName: String?

    public override init() {
        super.init()
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
            map["RegionId"] = self.regionId!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
    }
}

public class DeleteStackGroupResponseBody : Tea.TeaModel {
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

public class DeleteStackGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteStackGroupResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DeleteStackGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteStackInstancesRequest : Tea.TeaModel {
    public class DeploymentTargets : Tea.TeaModel {
        public var accountIds: [String]?

        public var rdFolderIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.rdFolderIds != nil {
                map["RdFolderIds"] = self.rdFolderIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountIds") {
                self.accountIds = dict["AccountIds"] as! [String]
            }
            if dict.keys.contains("RdFolderIds") {
                self.rdFolderIds = dict["RdFolderIds"] as! [String]
            }
        }
    }
    public var accountIds: [String]?

    public var clientToken: String?

    public var deploymentTargets: DeleteStackInstancesRequest.DeploymentTargets?

    public var operationDescription: String?

    public var operationPreferences: [String: Any]?

    public var regionId: String?

    public var regionIds: [String]?

    public var retainStacks: Bool?

    public var stackGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deploymentTargets?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIds != nil {
            map["AccountIds"] = self.accountIds!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deploymentTargets != nil {
            map["DeploymentTargets"] = self.deploymentTargets?.toMap()
        }
        if self.operationDescription != nil {
            map["OperationDescription"] = self.operationDescription!
        }
        if self.operationPreferences != nil {
            map["OperationPreferences"] = self.operationPreferences!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.regionIds != nil {
            map["RegionIds"] = self.regionIds!
        }
        if self.retainStacks != nil {
            map["RetainStacks"] = self.retainStacks!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") {
            self.accountIds = dict["AccountIds"] as! [String]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeploymentTargets") {
            var model = DeleteStackInstancesRequest.DeploymentTargets()
            model.fromMap(dict["DeploymentTargets"] as! [String: Any])
            self.deploymentTargets = model
        }
        if dict.keys.contains("OperationDescription") {
            self.operationDescription = dict["OperationDescription"] as! String
        }
        if dict.keys.contains("OperationPreferences") {
            self.operationPreferences = dict["OperationPreferences"] as! [String: Any]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RegionIds") {
            self.regionIds = dict["RegionIds"] as! [String]
        }
        if dict.keys.contains("RetainStacks") {
            self.retainStacks = dict["RetainStacks"] as! Bool
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
    }
}

public class DeleteStackInstancesShrinkRequest : Tea.TeaModel {
    public var accountIdsShrink: String?

    public var clientToken: String?

    public var deploymentTargetsShrink: String?

    public var operationDescription: String?

    public var operationPreferencesShrink: String?

    public var regionId: String?

    public var regionIdsShrink: String?

    public var retainStacks: Bool?

    public var stackGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIdsShrink != nil {
            map["AccountIds"] = self.accountIdsShrink!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deploymentTargetsShrink != nil {
            map["DeploymentTargets"] = self.deploymentTargetsShrink!
        }
        if self.operationDescription != nil {
            map["OperationDescription"] = self.operationDescription!
        }
        if self.operationPreferencesShrink != nil {
            map["OperationPreferences"] = self.operationPreferencesShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.regionIdsShrink != nil {
            map["RegionIds"] = self.regionIdsShrink!
        }
        if self.retainStacks != nil {
            map["RetainStacks"] = self.retainStacks!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") {
            self.accountIdsShrink = dict["AccountIds"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeploymentTargets") {
            self.deploymentTargetsShrink = dict["DeploymentTargets"] as! String
        }
        if dict.keys.contains("OperationDescription") {
            self.operationDescription = dict["OperationDescription"] as! String
        }
        if dict.keys.contains("OperationPreferences") {
            self.operationPreferencesShrink = dict["OperationPreferences"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RegionIds") {
            self.regionIdsShrink = dict["RegionIds"] as! String
        }
        if dict.keys.contains("RetainStacks") {
            self.retainStacks = dict["RetainStacks"] as! Bool
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
    }
}

public class DeleteStackInstancesResponseBody : Tea.TeaModel {
    public var operationId: String?

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
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperationId") {
            self.operationId = dict["OperationId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteStackInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteStackInstancesResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DeleteStackInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTemplateRequest : Tea.TeaModel {
    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class DeleteTemplateResponseBody : Tea.TeaModel {
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

public class DeleteTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTemplateResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DeleteTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTemplateScratchRequest : Tea.TeaModel {
    public var regionId: String?

    public var templateScratchId: String?

    public override init() {
        super.init()
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
            map["RegionId"] = self.regionId!
        }
        if self.templateScratchId != nil {
            map["TemplateScratchId"] = self.templateScratchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateScratchId") {
            self.templateScratchId = dict["TemplateScratchId"] as! String
        }
    }
}

public class DeleteTemplateScratchResponseBody : Tea.TeaModel {
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

public class DeleteTemplateScratchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTemplateScratchResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DeleteTemplateScratchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeregisterResourceTypeRequest : Tea.TeaModel {
    public var resourceType: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class DeregisterResourceTypeResponseBody : Tea.TeaModel {
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

public class DeregisterResourceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeregisterResourceTypeResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DeregisterResourceTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

        public var regionEndpoint: String?

        public var regionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.regionEndpoint != nil {
                map["RegionEndpoint"] = self.regionEndpoint!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionEndpoint") {
                self.regionEndpoint = dict["RegionEndpoint"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var regions: [DescribeRegionsResponseBody.Regions]?

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
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = DescribeRegionsResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectStackDriftRequest : Tea.TeaModel {
    public var clientToken: String?

    public var logicalResourceId: [String]?

    public var regionId: String?

    public var stackId: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.logicalResourceId != nil {
            map["LogicalResourceId"] = self.logicalResourceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("LogicalResourceId") {
            self.logicalResourceId = dict["LogicalResourceId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class DetectStackDriftResponseBody : Tea.TeaModel {
    public var driftDetectionId: String?

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
        if self.driftDetectionId != nil {
            map["DriftDetectionId"] = self.driftDetectionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DriftDetectionId") {
            self.driftDetectionId = dict["DriftDetectionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetectStackDriftResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectStackDriftResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DetectStackDriftResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectStackGroupDriftRequest : Tea.TeaModel {
    public var clientToken: String?

    public var operationPreferences: [String: Any]?

    public var regionId: String?

    public var stackGroupName: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.operationPreferences != nil {
            map["OperationPreferences"] = self.operationPreferences!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OperationPreferences") {
            self.operationPreferences = dict["OperationPreferences"] as! [String: Any]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
    }
}

public class DetectStackGroupDriftShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var operationPreferencesShrink: String?

    public var regionId: String?

    public var stackGroupName: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.operationPreferencesShrink != nil {
            map["OperationPreferences"] = self.operationPreferencesShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OperationPreferences") {
            self.operationPreferencesShrink = dict["OperationPreferences"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
    }
}

public class DetectStackGroupDriftResponseBody : Tea.TeaModel {
    public var operationId: String?

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
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperationId") {
            self.operationId = dict["OperationId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetectStackGroupDriftResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectStackGroupDriftResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DetectStackGroupDriftResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectStackResourceDriftRequest : Tea.TeaModel {
    public var clientToken: String?

    public var logicalResourceId: String?

    public var regionId: String?

    public var stackId: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.logicalResourceId != nil {
            map["LogicalResourceId"] = self.logicalResourceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("LogicalResourceId") {
            self.logicalResourceId = dict["LogicalResourceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class DetectStackResourceDriftResponseBody : Tea.TeaModel {
    public class PropertyDifferences : Tea.TeaModel {
        public var actualValue: String?

        public var differenceType: String?

        public var expectedValue: String?

        public var propertyPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actualValue != nil {
                map["ActualValue"] = self.actualValue!
            }
            if self.differenceType != nil {
                map["DifferenceType"] = self.differenceType!
            }
            if self.expectedValue != nil {
                map["ExpectedValue"] = self.expectedValue!
            }
            if self.propertyPath != nil {
                map["PropertyPath"] = self.propertyPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActualValue") {
                self.actualValue = dict["ActualValue"] as! String
            }
            if dict.keys.contains("DifferenceType") {
                self.differenceType = dict["DifferenceType"] as! String
            }
            if dict.keys.contains("ExpectedValue") {
                self.expectedValue = dict["ExpectedValue"] as! String
            }
            if dict.keys.contains("PropertyPath") {
                self.propertyPath = dict["PropertyPath"] as! String
            }
        }
    }
    public var actualProperties: String?

    public var driftDetectionTime: String?

    public var expectedProperties: String?

    public var logicalResourceId: String?

    public var physicalResourceId: String?

    public var propertyDifferences: [DetectStackResourceDriftResponseBody.PropertyDifferences]?

    public var requestId: String?

    public var resourceDriftStatus: String?

    public var resourceType: String?

    public var stackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actualProperties != nil {
            map["ActualProperties"] = self.actualProperties!
        }
        if self.driftDetectionTime != nil {
            map["DriftDetectionTime"] = self.driftDetectionTime!
        }
        if self.expectedProperties != nil {
            map["ExpectedProperties"] = self.expectedProperties!
        }
        if self.logicalResourceId != nil {
            map["LogicalResourceId"] = self.logicalResourceId!
        }
        if self.physicalResourceId != nil {
            map["PhysicalResourceId"] = self.physicalResourceId!
        }
        if self.propertyDifferences != nil {
            var tmp : [Any] = []
            for k in self.propertyDifferences! {
                tmp.append(k.toMap())
            }
            map["PropertyDifferences"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceDriftStatus != nil {
            map["ResourceDriftStatus"] = self.resourceDriftStatus!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActualProperties") {
            self.actualProperties = dict["ActualProperties"] as! String
        }
        if dict.keys.contains("DriftDetectionTime") {
            self.driftDetectionTime = dict["DriftDetectionTime"] as! String
        }
        if dict.keys.contains("ExpectedProperties") {
            self.expectedProperties = dict["ExpectedProperties"] as! String
        }
        if dict.keys.contains("LogicalResourceId") {
            self.logicalResourceId = dict["LogicalResourceId"] as! String
        }
        if dict.keys.contains("PhysicalResourceId") {
            self.physicalResourceId = dict["PhysicalResourceId"] as! String
        }
        if dict.keys.contains("PropertyDifferences") {
            var tmp : [DetectStackResourceDriftResponseBody.PropertyDifferences] = []
            for v in dict["PropertyDifferences"] as! [Any] {
                var model = DetectStackResourceDriftResponseBody.PropertyDifferences()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.propertyDifferences = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceDriftStatus") {
            self.resourceDriftStatus = dict["ResourceDriftStatus"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class DetectStackResourceDriftResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectStackResourceDriftResponseBody?

    public override init() {
        super.init()
    }

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
            var model = DetectStackResourceDriftResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteChangeSetRequest : Tea.TeaModel {
    public var changeSetId: String?

    public var clientToken: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeSetId != nil {
            map["ChangeSetId"] = self.changeSetId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeSetId") {
            self.changeSetId = dict["ChangeSetId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ExecuteChangeSetResponseBody : Tea.TeaModel {
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

public class ExecuteChangeSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteChangeSetResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ExecuteChangeSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateTemplateByScratchRequest : Tea.TeaModel {
    public var provisionRegionId: String?

    public var regionId: String?

    public var templateScratchId: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.provisionRegionId != nil {
            map["ProvisionRegionId"] = self.provisionRegionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateScratchId != nil {
            map["TemplateScratchId"] = self.templateScratchId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProvisionRegionId") {
            self.provisionRegionId = dict["ProvisionRegionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateScratchId") {
            self.templateScratchId = dict["TemplateScratchId"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class GenerateTemplateByScratchResponseBody : Tea.TeaModel {
    public class ResourcesToImport : Tea.TeaModel {
        public var logicalResourceId: String?

        public var resourceIdentifier: [String: Any]?

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
            if self.logicalResourceId != nil {
                map["LogicalResourceId"] = self.logicalResourceId!
            }
            if self.resourceIdentifier != nil {
                map["ResourceIdentifier"] = self.resourceIdentifier!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogicalResourceId") {
                self.logicalResourceId = dict["LogicalResourceId"] as! String
            }
            if dict.keys.contains("ResourceIdentifier") {
                self.resourceIdentifier = dict["ResourceIdentifier"] as! [String: Any]
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var requestId: String?

    public var resourcesToImport: [GenerateTemplateByScratchResponseBody.ResourcesToImport]?

    public var templateBody: String?

    public override init() {
        super.init()
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
        if self.resourcesToImport != nil {
            var tmp : [Any] = []
            for k in self.resourcesToImport! {
                tmp.append(k.toMap())
            }
            map["ResourcesToImport"] = tmp
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourcesToImport") {
            var tmp : [GenerateTemplateByScratchResponseBody.ResourcesToImport] = []
            for v in dict["ResourcesToImport"] as! [Any] {
                var model = GenerateTemplateByScratchResponseBody.ResourcesToImport()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourcesToImport = tmp
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
    }
}

public class GenerateTemplateByScratchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateTemplateByScratchResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GenerateTemplateByScratchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateTemplatePolicyRequest : Tea.TeaModel {
    public var operationTypes: [String]?

    public var templateBody: String?

    public var templateId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationTypes != nil {
            map["OperationTypes"] = self.operationTypes!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperationTypes") {
            self.operationTypes = dict["OperationTypes"] as! [String]
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class GenerateTemplatePolicyResponseBody : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public class Statement : Tea.TeaModel {
            public var action: [String]?

            public var condition: [String: Any]?

            public var effect: String?

            public var resource: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.condition != nil {
                    map["Condition"] = self.condition!
                }
                if self.effect != nil {
                    map["Effect"] = self.effect!
                }
                if self.resource != nil {
                    map["Resource"] = self.resource!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") {
                    self.action = dict["Action"] as! [String]
                }
                if dict.keys.contains("Condition") {
                    self.condition = dict["Condition"] as! [String: Any]
                }
                if dict.keys.contains("Effect") {
                    self.effect = dict["Effect"] as! String
                }
                if dict.keys.contains("Resource") {
                    self.resource = dict["Resource"] as! String
                }
            }
        }
        public var statement: [GenerateTemplatePolicyResponseBody.Policy.Statement]?

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
            if self.statement != nil {
                var tmp : [Any] = []
                for k in self.statement! {
                    tmp.append(k.toMap())
                }
                map["Statement"] = tmp
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Statement") {
                var tmp : [GenerateTemplatePolicyResponseBody.Policy.Statement] = []
                for v in dict["Statement"] as! [Any] {
                    var model = GenerateTemplatePolicyResponseBody.Policy.Statement()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.statement = tmp
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var policy: GenerateTemplatePolicyResponseBody.Policy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policy") {
            var model = GenerateTemplatePolicyResponseBody.Policy()
            model.fromMap(dict["Policy"] as! [String: Any])
            self.policy = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GenerateTemplatePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateTemplatePolicyResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GenerateTemplatePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAITaskRequest : Tea.TeaModel {
    public var outputOption: String?

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
        if self.outputOption != nil {
            map["OutputOption"] = self.outputOption!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OutputOption") {
            self.outputOption = dict["OutputOption"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetAITaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var statusReason: String?

    public var success: String?

    public var taskId: String?

    public var taskOutput: [String: Any]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusReason != nil {
            map["StatusReason"] = self.statusReason!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskOutput != nil {
            map["TaskOutput"] = self.taskOutput!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StatusReason") {
            self.statusReason = dict["StatusReason"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskOutput") {
            self.taskOutput = dict["TaskOutput"] as! [String: Any]
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
    }
}

public class GetAITaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAITaskResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetAITaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetChangeSetRequest : Tea.TeaModel {
    public var changeSetId: String?

    public var regionId: String?

    public var showTemplate: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeSetId != nil {
            map["ChangeSetId"] = self.changeSetId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.showTemplate != nil {
            map["ShowTemplate"] = self.showTemplate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeSetId") {
            self.changeSetId = dict["ChangeSetId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ShowTemplate") {
            self.showTemplate = dict["ShowTemplate"] as! Bool
        }
    }
}

public class GetChangeSetResponseBody : Tea.TeaModel {
    public class Log : Tea.TeaModel {
        public class TerraformLogs : Tea.TeaModel {
            public var command: String?

            public var content: String?

            public var stream: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.command != nil {
                    map["Command"] = self.command!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.stream != nil {
                    map["Stream"] = self.stream!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Command") {
                    self.command = dict["Command"] as! String
                }
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("Stream") {
                    self.stream = dict["Stream"] as! String
                }
            }
        }
        public var terraformLogs: [GetChangeSetResponseBody.Log.TerraformLogs]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.terraformLogs != nil {
                var tmp : [Any] = []
                for k in self.terraformLogs! {
                    tmp.append(k.toMap())
                }
                map["TerraformLogs"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TerraformLogs") {
                var tmp : [GetChangeSetResponseBody.Log.TerraformLogs] = []
                for v in dict["TerraformLogs"] as! [Any] {
                    var model = GetChangeSetResponseBody.Log.TerraformLogs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.terraformLogs = tmp
            }
        }
    }
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public var changeSetId: String?

    public var changeSetName: String?

    public var changeSetType: String?

    public var changes: [[String: Any]]?

    public var createTime: String?

    public var description_: String?

    public var disableRollback: Bool?

    public var executionStatus: String?

    public var log: GetChangeSetResponseBody.Log?

    public var parameters: [GetChangeSetResponseBody.Parameters]?

    public var regionId: String?

    public var requestId: String?

    public var stackId: String?

    public var stackName: String?

    public var status: String?

    public var statusReason: String?

    public var templateBody: String?

    public var timeoutInMinutes: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.log?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeSetId != nil {
            map["ChangeSetId"] = self.changeSetId!
        }
        if self.changeSetName != nil {
            map["ChangeSetName"] = self.changeSetName!
        }
        if self.changeSetType != nil {
            map["ChangeSetType"] = self.changeSetType!
        }
        if self.changes != nil {
            map["Changes"] = self.changes!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.disableRollback != nil {
            map["DisableRollback"] = self.disableRollback!
        }
        if self.executionStatus != nil {
            map["ExecutionStatus"] = self.executionStatus!
        }
        if self.log != nil {
            map["Log"] = self.log?.toMap()
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.stackName != nil {
            map["StackName"] = self.stackName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusReason != nil {
            map["StatusReason"] = self.statusReason!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.timeoutInMinutes != nil {
            map["TimeoutInMinutes"] = self.timeoutInMinutes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeSetId") {
            self.changeSetId = dict["ChangeSetId"] as! String
        }
        if dict.keys.contains("ChangeSetName") {
            self.changeSetName = dict["ChangeSetName"] as! String
        }
        if dict.keys.contains("ChangeSetType") {
            self.changeSetType = dict["ChangeSetType"] as! String
        }
        if dict.keys.contains("Changes") {
            self.changes = dict["Changes"] as! [[String: Any]]
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisableRollback") {
            self.disableRollback = dict["DisableRollback"] as! Bool
        }
        if dict.keys.contains("ExecutionStatus") {
            self.executionStatus = dict["ExecutionStatus"] as! String
        }
        if dict.keys.contains("Log") {
            var model = GetChangeSetResponseBody.Log()
            model.fromMap(dict["Log"] as! [String: Any])
            self.log = model
        }
        if dict.keys.contains("Parameters") {
            var tmp : [GetChangeSetResponseBody.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = GetChangeSetResponseBody.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("StackName") {
            self.stackName = dict["StackName"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StatusReason") {
            self.statusReason = dict["StatusReason"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TimeoutInMinutes") {
            self.timeoutInMinutes = dict["TimeoutInMinutes"] as! Int32
        }
    }
}

public class GetChangeSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChangeSetResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetChangeSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDiagnosticRequest : Tea.TeaModel {
    public var reportId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
    }
}

public class GetDiagnosticResponseBody : Tea.TeaModel {
    public class DiagnosticResult : Tea.TeaModel {
        public var failedResources: [String: Any]?

        public var rosActionMessages: [String: Any]?

        public var stackMessages: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failedResources != nil {
                map["FailedResources"] = self.failedResources!
            }
            if self.rosActionMessages != nil {
                map["RosActionMessages"] = self.rosActionMessages!
            }
            if self.stackMessages != nil {
                map["StackMessages"] = self.stackMessages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailedResources") {
                self.failedResources = dict["FailedResources"] as! [String: Any]
            }
            if dict.keys.contains("RosActionMessages") {
                self.rosActionMessages = dict["RosActionMessages"] as! [String: Any]
            }
            if dict.keys.contains("StackMessages") {
                self.stackMessages = dict["StackMessages"] as! [String: Any]
            }
        }
    }
    public var code: String?

    public var diagnosticKey: String?

    public var diagnosticProduct: String?

    public var diagnosticResult: GetDiagnosticResponseBody.DiagnosticResult?

    public var diagnosticTime: String?

    public var httpCode: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var recommends: [String: Any]?

    public var reportId: String?

    public var requestId: String?

    public var status: String?

    public var statusReason: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.diagnosticResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.diagnosticKey != nil {
            map["DiagnosticKey"] = self.diagnosticKey!
        }
        if self.diagnosticProduct != nil {
            map["DiagnosticProduct"] = self.diagnosticProduct!
        }
        if self.diagnosticResult != nil {
            map["DiagnosticResult"] = self.diagnosticResult?.toMap()
        }
        if self.diagnosticTime != nil {
            map["DiagnosticTime"] = self.diagnosticTime!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.recommends != nil {
            map["Recommends"] = self.recommends!
        }
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusReason != nil {
            map["StatusReason"] = self.statusReason!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DiagnosticKey") {
            self.diagnosticKey = dict["DiagnosticKey"] as! String
        }
        if dict.keys.contains("DiagnosticProduct") {
            self.diagnosticProduct = dict["DiagnosticProduct"] as! String
        }
        if dict.keys.contains("DiagnosticResult") {
            var model = GetDiagnosticResponseBody.DiagnosticResult()
            model.fromMap(dict["DiagnosticResult"] as! [String: Any])
            self.diagnosticResult = model
        }
        if dict.keys.contains("DiagnosticTime") {
            self.diagnosticTime = dict["DiagnosticTime"] as! String
        }
        if dict.keys.contains("HttpCode") {
            self.httpCode = dict["HttpCode"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Recommends") {
            self.recommends = dict["Recommends"] as! [String: Any]
        }
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StatusReason") {
            self.statusReason = dict["StatusReason"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class GetDiagnosticResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDiagnosticResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetDiagnosticResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFeatureDetailsRequest : Tea.TeaModel {
    public var feature: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.feature != nil {
            map["Feature"] = self.feature!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Feature") {
            self.feature = dict["Feature"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetFeatureDetailsResponseBody : Tea.TeaModel {
    public class DriftDetection : Tea.TeaModel {
        public var supportedResourceTypes: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.supportedResourceTypes != nil {
                map["SupportedResourceTypes"] = self.supportedResourceTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SupportedResourceTypes") {
                self.supportedResourceTypes = dict["SupportedResourceTypes"] as! [String]
            }
        }
    }
    public class ResourceCleaner : Tea.TeaModel {
        public class SupportedResourceTypes : Tea.TeaModel {
            public var resourceType: String?

            public var sideEffects: [String]?

            public var supportedFilters: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.sideEffects != nil {
                    map["SideEffects"] = self.sideEffects!
                }
                if self.supportedFilters != nil {
                    map["SupportedFilters"] = self.supportedFilters!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("SideEffects") {
                    self.sideEffects = dict["SideEffects"] as! [String]
                }
                if dict.keys.contains("SupportedFilters") {
                    self.supportedFilters = dict["SupportedFilters"] as! [String]
                }
            }
        }
        public var supportedResourceTypes: [GetFeatureDetailsResponseBody.ResourceCleaner.SupportedResourceTypes]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.supportedResourceTypes != nil {
                var tmp : [Any] = []
                for k in self.supportedResourceTypes! {
                    tmp.append(k.toMap())
                }
                map["SupportedResourceTypes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SupportedResourceTypes") {
                var tmp : [GetFeatureDetailsResponseBody.ResourceCleaner.SupportedResourceTypes] = []
                for v in dict["SupportedResourceTypes"] as! [Any] {
                    var model = GetFeatureDetailsResponseBody.ResourceCleaner.SupportedResourceTypes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.supportedResourceTypes = tmp
            }
        }
    }
    public class ResourceImport : Tea.TeaModel {
        public class SupportedResourceTypes : Tea.TeaModel {
            public var resourceIdentifiers: [String]?

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
                if self.resourceIdentifiers != nil {
                    map["ResourceIdentifiers"] = self.resourceIdentifiers!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceIdentifiers") {
                    self.resourceIdentifiers = dict["ResourceIdentifiers"] as! [String]
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
            }
        }
        public var supportedResourceTypes: [GetFeatureDetailsResponseBody.ResourceImport.SupportedResourceTypes]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.supportedResourceTypes != nil {
                var tmp : [Any] = []
                for k in self.supportedResourceTypes! {
                    tmp.append(k.toMap())
                }
                map["SupportedResourceTypes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SupportedResourceTypes") {
                var tmp : [GetFeatureDetailsResponseBody.ResourceImport.SupportedResourceTypes] = []
                for v in dict["SupportedResourceTypes"] as! [Any] {
                    var model = GetFeatureDetailsResponseBody.ResourceImport.SupportedResourceTypes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.supportedResourceTypes = tmp
            }
        }
    }
    public class TemplateParameterConstraints : Tea.TeaModel {
        public class SupportedResourceTypes : Tea.TeaModel {
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
                    map["Properties"] = self.properties!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Properties") {
                    self.properties = dict["Properties"] as! [String]
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
            }
        }
        public var supportedResourceTypes: [GetFeatureDetailsResponseBody.TemplateParameterConstraints.SupportedResourceTypes]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.supportedResourceTypes != nil {
                var tmp : [Any] = []
                for k in self.supportedResourceTypes! {
                    tmp.append(k.toMap())
                }
                map["SupportedResourceTypes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SupportedResourceTypes") {
                var tmp : [GetFeatureDetailsResponseBody.TemplateParameterConstraints.SupportedResourceTypes] = []
                for v in dict["SupportedResourceTypes"] as! [Any] {
                    var model = GetFeatureDetailsResponseBody.TemplateParameterConstraints.SupportedResourceTypes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.supportedResourceTypes = tmp
            }
        }
    }
    public class TemplateScratch : Tea.TeaModel {
        public class SupportedResourceTypes : Tea.TeaModel {
            public var resourceType: String?

            public var sourceResourceGroupSupported: Bool?

            public var sourceResourcesSupported: Bool?

            public var sourceSupported: Bool?

            public var sourceTagSupported: Bool?

            public var supportedTemplateScratchTypes: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.sourceResourceGroupSupported != nil {
                    map["SourceResourceGroupSupported"] = self.sourceResourceGroupSupported!
                }
                if self.sourceResourcesSupported != nil {
                    map["SourceResourcesSupported"] = self.sourceResourcesSupported!
                }
                if self.sourceSupported != nil {
                    map["SourceSupported"] = self.sourceSupported!
                }
                if self.sourceTagSupported != nil {
                    map["SourceTagSupported"] = self.sourceTagSupported!
                }
                if self.supportedTemplateScratchTypes != nil {
                    map["SupportedTemplateScratchTypes"] = self.supportedTemplateScratchTypes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("SourceResourceGroupSupported") {
                    self.sourceResourceGroupSupported = dict["SourceResourceGroupSupported"] as! Bool
                }
                if dict.keys.contains("SourceResourcesSupported") {
                    self.sourceResourcesSupported = dict["SourceResourcesSupported"] as! Bool
                }
                if dict.keys.contains("SourceSupported") {
                    self.sourceSupported = dict["SourceSupported"] as! Bool
                }
                if dict.keys.contains("SourceTagSupported") {
                    self.sourceTagSupported = dict["SourceTagSupported"] as! Bool
                }
                if dict.keys.contains("SupportedTemplateScratchTypes") {
                    self.supportedTemplateScratchTypes = dict["SupportedTemplateScratchTypes"] as! [String]
                }
            }
        }
        public var supportedResourceTypes: [GetFeatureDetailsResponseBody.TemplateScratch.SupportedResourceTypes]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.supportedResourceTypes != nil {
                var tmp : [Any] = []
                for k in self.supportedResourceTypes! {
                    tmp.append(k.toMap())
                }
                map["SupportedResourceTypes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SupportedResourceTypes") {
                var tmp : [GetFeatureDetailsResponseBody.TemplateScratch.SupportedResourceTypes] = []
                for v in dict["SupportedResourceTypes"] as! [Any] {
                    var model = GetFeatureDetailsResponseBody.TemplateScratch.SupportedResourceTypes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.supportedResourceTypes = tmp
            }
        }
    }
    public class Terraform : Tea.TeaModel {
        public class SupportedResourceTypes : Tea.TeaModel {
            public class StackOperationRisk : Tea.TeaModel {
                public var deleteStack: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.deleteStack != nil {
                        map["DeleteStack"] = self.deleteStack!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DeleteStack") {
                        self.deleteStack = dict["DeleteStack"] as! [String]
                    }
                }
            }
            public var customTag: [String]?

            public var estimateCost: [String]?

            public var resourceGroup: [String]?

            public var stackOperationRisk: GetFeatureDetailsResponseBody.Terraform.SupportedResourceTypes.StackOperationRisk?

            public var systemTag: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.stackOperationRisk?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customTag != nil {
                    map["CustomTag"] = self.customTag!
                }
                if self.estimateCost != nil {
                    map["EstimateCost"] = self.estimateCost!
                }
                if self.resourceGroup != nil {
                    map["ResourceGroup"] = self.resourceGroup!
                }
                if self.stackOperationRisk != nil {
                    map["StackOperationRisk"] = self.stackOperationRisk?.toMap()
                }
                if self.systemTag != nil {
                    map["SystemTag"] = self.systemTag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CustomTag") {
                    self.customTag = dict["CustomTag"] as! [String]
                }
                if dict.keys.contains("EstimateCost") {
                    self.estimateCost = dict["EstimateCost"] as! [String]
                }
                if dict.keys.contains("ResourceGroup") {
                    self.resourceGroup = dict["ResourceGroup"] as! [String]
                }
                if dict.keys.contains("StackOperationRisk") {
                    var model = GetFeatureDetailsResponseBody.Terraform.SupportedResourceTypes.StackOperationRisk()
                    model.fromMap(dict["StackOperationRisk"] as! [String: Any])
                    self.stackOperationRisk = model
                }
                if dict.keys.contains("SystemTag") {
                    self.systemTag = dict["SystemTag"] as! [String]
                }
            }
        }
        public class SupportedVersions : Tea.TeaModel {
            public class ProviderVersions : Tea.TeaModel {
                public var providerName: String?

                public var supportedVersions: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.providerName != nil {
                        map["ProviderName"] = self.providerName!
                    }
                    if self.supportedVersions != nil {
                        map["SupportedVersions"] = self.supportedVersions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ProviderName") {
                        self.providerName = dict["ProviderName"] as! String
                    }
                    if dict.keys.contains("SupportedVersions") {
                        self.supportedVersions = dict["SupportedVersions"] as! [String]
                    }
                }
            }
            public var providerVersions: [GetFeatureDetailsResponseBody.Terraform.SupportedVersions.ProviderVersions]?

            public var terraformVersion: String?

            public var transform: String?

            public var updateAllowedTransforms: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.providerVersions != nil {
                    var tmp : [Any] = []
                    for k in self.providerVersions! {
                        tmp.append(k.toMap())
                    }
                    map["ProviderVersions"] = tmp
                }
                if self.terraformVersion != nil {
                    map["TerraformVersion"] = self.terraformVersion!
                }
                if self.transform != nil {
                    map["Transform"] = self.transform!
                }
                if self.updateAllowedTransforms != nil {
                    map["UpdateAllowedTransforms"] = self.updateAllowedTransforms!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ProviderVersions") {
                    var tmp : [GetFeatureDetailsResponseBody.Terraform.SupportedVersions.ProviderVersions] = []
                    for v in dict["ProviderVersions"] as! [Any] {
                        var model = GetFeatureDetailsResponseBody.Terraform.SupportedVersions.ProviderVersions()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.providerVersions = tmp
                }
                if dict.keys.contains("TerraformVersion") {
                    self.terraformVersion = dict["TerraformVersion"] as! String
                }
                if dict.keys.contains("Transform") {
                    self.transform = dict["Transform"] as! String
                }
                if dict.keys.contains("UpdateAllowedTransforms") {
                    self.updateAllowedTransforms = dict["UpdateAllowedTransforms"] as! [String]
                }
            }
        }
        public var supportedResourceTypes: GetFeatureDetailsResponseBody.Terraform.SupportedResourceTypes?

        public var supportedVersions: [GetFeatureDetailsResponseBody.Terraform.SupportedVersions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.supportedResourceTypes?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.supportedResourceTypes != nil {
                map["SupportedResourceTypes"] = self.supportedResourceTypes?.toMap()
            }
            if self.supportedVersions != nil {
                var tmp : [Any] = []
                for k in self.supportedVersions! {
                    tmp.append(k.toMap())
                }
                map["SupportedVersions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SupportedResourceTypes") {
                var model = GetFeatureDetailsResponseBody.Terraform.SupportedResourceTypes()
                model.fromMap(dict["SupportedResourceTypes"] as! [String: Any])
                self.supportedResourceTypes = model
            }
            if dict.keys.contains("SupportedVersions") {
                var tmp : [GetFeatureDetailsResponseBody.Terraform.SupportedVersions] = []
                for v in dict["SupportedVersions"] as! [Any] {
                    var model = GetFeatureDetailsResponseBody.Terraform.SupportedVersions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.supportedVersions = tmp
            }
        }
    }
    public var driftDetection: GetFeatureDetailsResponseBody.DriftDetection?

    public var requestId: String?

    public var resourceCleaner: GetFeatureDetailsResponseBody.ResourceCleaner?

    public var resourceImport: GetFeatureDetailsResponseBody.ResourceImport?

    public var templateParameterConstraints: GetFeatureDetailsResponseBody.TemplateParameterConstraints?

    public var templateScratch: GetFeatureDetailsResponseBody.TemplateScratch?

    public var terraform: GetFeatureDetailsResponseBody.Terraform?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.driftDetection?.validate()
        try self.resourceCleaner?.validate()
        try self.resourceImport?.validate()
        try self.templateParameterConstraints?.validate()
        try self.templateScratch?.validate()
        try self.terraform?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.driftDetection != nil {
            map["DriftDetection"] = self.driftDetection?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceCleaner != nil {
            map["ResourceCleaner"] = self.resourceCleaner?.toMap()
        }
        if self.resourceImport != nil {
            map["ResourceImport"] = self.resourceImport?.toMap()
        }
        if self.templateParameterConstraints != nil {
            map["TemplateParameterConstraints"] = self.templateParameterConstraints?.toMap()
        }
        if self.templateScratch != nil {
            map["TemplateScratch"] = self.templateScratch?.toMap()
        }
        if self.terraform != nil {
            map["Terraform"] = self.terraform?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DriftDetection") {
            var model = GetFeatureDetailsResponseBody.DriftDetection()
            model.fromMap(dict["DriftDetection"] as! [String: Any])
            self.driftDetection = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceCleaner") {
            var model = GetFeatureDetailsResponseBody.ResourceCleaner()
            model.fromMap(dict["ResourceCleaner"] as! [String: Any])
            self.resourceCleaner = model
        }
        if dict.keys.contains("ResourceImport") {
            var model = GetFeatureDetailsResponseBody.ResourceImport()
            model.fromMap(dict["ResourceImport"] as! [String: Any])
            self.resourceImport = model
        }
        if dict.keys.contains("TemplateParameterConstraints") {
            var model = GetFeatureDetailsResponseBody.TemplateParameterConstraints()
            model.fromMap(dict["TemplateParameterConstraints"] as! [String: Any])
            self.templateParameterConstraints = model
        }
        if dict.keys.contains("TemplateScratch") {
            var model = GetFeatureDetailsResponseBody.TemplateScratch()
            model.fromMap(dict["TemplateScratch"] as! [String: Any])
            self.templateScratch = model
        }
        if dict.keys.contains("Terraform") {
            var model = GetFeatureDetailsResponseBody.Terraform()
            model.fromMap(dict["Terraform"] as! [String: Any])
            self.terraform = model
        }
    }
}

public class GetFeatureDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFeatureDetailsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetFeatureDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceTypeRequest : Tea.TeaModel {
    public var resourceType: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class GetResourceTypeResponseBody : Tea.TeaModel {
    public var attributes: [String: Any]?

    public var createTime: String?

    public var defaultVersionId: String?

    public var description_: String?

    public var entityType: String?

    public var isDefaultVersion: Bool?

    public var latestVersionId: String?

    public var properties: [String: Any]?

    public var provider: String?

    public var requestId: String?

    public var resourceType: String?

    public var supportDriftDetection: Bool?

    public var supportScratchDetection: Bool?

    public var templateBody: String?

    public var totalVersionCount: Int32?

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
        if self.attributes != nil {
            map["Attributes"] = self.attributes!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.defaultVersionId != nil {
            map["DefaultVersionId"] = self.defaultVersionId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.isDefaultVersion != nil {
            map["IsDefaultVersion"] = self.isDefaultVersion!
        }
        if self.latestVersionId != nil {
            map["LatestVersionId"] = self.latestVersionId!
        }
        if self.properties != nil {
            map["Properties"] = self.properties!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.supportDriftDetection != nil {
            map["SupportDriftDetection"] = self.supportDriftDetection!
        }
        if self.supportScratchDetection != nil {
            map["SupportScratchDetection"] = self.supportScratchDetection!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.totalVersionCount != nil {
            map["TotalVersionCount"] = self.totalVersionCount!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Attributes") {
            self.attributes = dict["Attributes"] as! [String: Any]
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("DefaultVersionId") {
            self.defaultVersionId = dict["DefaultVersionId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("IsDefaultVersion") {
            self.isDefaultVersion = dict["IsDefaultVersion"] as! Bool
        }
        if dict.keys.contains("LatestVersionId") {
            self.latestVersionId = dict["LatestVersionId"] as! String
        }
        if dict.keys.contains("Properties") {
            self.properties = dict["Properties"] as! [String: Any]
        }
        if dict.keys.contains("Provider") {
            self.provider = dict["Provider"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SupportDriftDetection") {
            self.supportDriftDetection = dict["SupportDriftDetection"] as! Bool
        }
        if dict.keys.contains("SupportScratchDetection") {
            self.supportScratchDetection = dict["SupportScratchDetection"] as! Bool
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TotalVersionCount") {
            self.totalVersionCount = dict["TotalVersionCount"] as! Int32
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class GetResourceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceTypeResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetResourceTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceTypeTemplateRequest : Tea.TeaModel {
    public var resourceType: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class GetResourceTypeTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var templateBody: [String: Any]?

    public var templateContent: String?

    public override init() {
        super.init()
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
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! [String: Any]
        }
        if dict.keys.contains("TemplateContent") {
            self.templateContent = dict["TemplateContent"] as! String
        }
    }
}

public class GetResourceTypeTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceTypeTemplateResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetResourceTypeTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetServiceProvisionsRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public class Services : Tea.TeaModel {
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
                map["ServiceName"] = self.serviceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
        }
    }
    public var parameters: [GetServiceProvisionsRequest.Parameters]?

    public var regionId: String?

    public var services: [GetServiceProvisionsRequest.Services]?

    public var templateBody: String?

    public var templateId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.services != nil {
            var tmp : [Any] = []
            for k in self.services! {
                tmp.append(k.toMap())
            }
            map["Services"] = tmp
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parameters") {
            var tmp : [GetServiceProvisionsRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = GetServiceProvisionsRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Services") {
            var tmp : [GetServiceProvisionsRequest.Services] = []
            for v in dict["Services"] as! [Any] {
                var model = GetServiceProvisionsRequest.Services()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.services = tmp
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class GetServiceProvisionsResponseBody : Tea.TeaModel {
    public class ServiceProvisions : Tea.TeaModel {
        public class RoleProvision : Tea.TeaModel {
            public class Roles : Tea.TeaModel {
                public class ApiForCreation : Tea.TeaModel {
                    public var apiName: String?

                    public var apiProductId: String?

                    public var apiType: String?

                    public var parameters: [String: Any]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.apiName != nil {
                            map["ApiName"] = self.apiName!
                        }
                        if self.apiProductId != nil {
                            map["ApiProductId"] = self.apiProductId!
                        }
                        if self.apiType != nil {
                            map["ApiType"] = self.apiType!
                        }
                        if self.parameters != nil {
                            map["Parameters"] = self.parameters!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ApiName") {
                            self.apiName = dict["ApiName"] as! String
                        }
                        if dict.keys.contains("ApiProductId") {
                            self.apiProductId = dict["ApiProductId"] as! String
                        }
                        if dict.keys.contains("ApiType") {
                            self.apiType = dict["ApiType"] as! String
                        }
                        if dict.keys.contains("Parameters") {
                            self.parameters = dict["Parameters"] as! [String: Any]
                        }
                    }
                }
                public var apiForCreation: GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles.ApiForCreation?

                public var created: Bool?

                public var function: String?

                public var roleName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.apiForCreation?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.apiForCreation != nil {
                        map["ApiForCreation"] = self.apiForCreation?.toMap()
                    }
                    if self.created != nil {
                        map["Created"] = self.created!
                    }
                    if self.function != nil {
                        map["Function"] = self.function!
                    }
                    if self.roleName != nil {
                        map["RoleName"] = self.roleName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ApiForCreation") {
                        var model = GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles.ApiForCreation()
                        model.fromMap(dict["ApiForCreation"] as! [String: Any])
                        self.apiForCreation = model
                    }
                    if dict.keys.contains("Created") {
                        self.created = dict["Created"] as! Bool
                    }
                    if dict.keys.contains("Function") {
                        self.function = dict["Function"] as! String
                    }
                    if dict.keys.contains("RoleName") {
                        self.roleName = dict["RoleName"] as! String
                    }
                }
            }
            public var authorizationURL: String?

            public var roles: [GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authorizationURL != nil {
                    map["AuthorizationURL"] = self.authorizationURL!
                }
                if self.roles != nil {
                    var tmp : [Any] = []
                    for k in self.roles! {
                        tmp.append(k.toMap())
                    }
                    map["Roles"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuthorizationURL") {
                    self.authorizationURL = dict["AuthorizationURL"] as! String
                }
                if dict.keys.contains("Roles") {
                    var tmp : [GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles] = []
                    for v in dict["Roles"] as! [Any] {
                        var model = GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.roles = tmp
                }
            }
        }
        public var autoEnableService: Bool?

        public var dependentServiceNames: [String]?

        public var enableURL: String?

        public var roleProvision: GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision?

        public var serviceName: String?

        public var status: String?

        public var statusReason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.roleProvision?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoEnableService != nil {
                map["AutoEnableService"] = self.autoEnableService!
            }
            if self.dependentServiceNames != nil {
                map["DependentServiceNames"] = self.dependentServiceNames!
            }
            if self.enableURL != nil {
                map["EnableURL"] = self.enableURL!
            }
            if self.roleProvision != nil {
                map["RoleProvision"] = self.roleProvision?.toMap()
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoEnableService") {
                self.autoEnableService = dict["AutoEnableService"] as! Bool
            }
            if dict.keys.contains("DependentServiceNames") {
                self.dependentServiceNames = dict["DependentServiceNames"] as! [String]
            }
            if dict.keys.contains("EnableURL") {
                self.enableURL = dict["EnableURL"] as! String
            }
            if dict.keys.contains("RoleProvision") {
                var model = GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision()
                model.fromMap(dict["RoleProvision"] as! [String: Any])
                self.roleProvision = model
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
        }
    }
    public var requestId: String?

    public var serviceProvisions: [GetServiceProvisionsResponseBody.ServiceProvisions]?

    public override init() {
        super.init()
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
        if self.serviceProvisions != nil {
            var tmp : [Any] = []
            for k in self.serviceProvisions! {
                tmp.append(k.toMap())
            }
            map["ServiceProvisions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceProvisions") {
            var tmp : [GetServiceProvisionsResponseBody.ServiceProvisions] = []
            for v in dict["ServiceProvisions"] as! [Any] {
                var model = GetServiceProvisionsResponseBody.ServiceProvisions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceProvisions = tmp
        }
    }
}

public class GetServiceProvisionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceProvisionsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetServiceProvisionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStackRequest : Tea.TeaModel {
    public var clientToken: String?

    public var logOption: String?

    public var outputOption: String?

    public var regionId: String?

    public var showResourceProgress: String?

    public var stackId: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.logOption != nil {
            map["LogOption"] = self.logOption!
        }
        if self.outputOption != nil {
            map["OutputOption"] = self.outputOption!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.showResourceProgress != nil {
            map["ShowResourceProgress"] = self.showResourceProgress!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("LogOption") {
            self.logOption = dict["LogOption"] as! String
        }
        if dict.keys.contains("OutputOption") {
            self.outputOption = dict["OutputOption"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ShowResourceProgress") {
            self.showResourceProgress = dict["ShowResourceProgress"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class GetStackResponseBody : Tea.TeaModel {
    public class Log : Tea.TeaModel {
        public class ResourceLogs : Tea.TeaModel {
            public class Logs : Tea.TeaModel {
                public var content: String?

                public var keys: [String]?

                public override init() {
                    super.init()
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
                    if self.keys != nil {
                        map["Keys"] = self.keys!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("Keys") {
                        self.keys = dict["Keys"] as! [String]
                    }
                }
            }
            public var logs: [GetStackResponseBody.Log.ResourceLogs.Logs]?

            public var resourceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.logs != nil {
                    var tmp : [Any] = []
                    for k in self.logs! {
                        tmp.append(k.toMap())
                    }
                    map["Logs"] = tmp
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Logs") {
                    var tmp : [GetStackResponseBody.Log.ResourceLogs.Logs] = []
                    for v in dict["Logs"] as! [Any] {
                        var model = GetStackResponseBody.Log.ResourceLogs.Logs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.logs = tmp
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
            }
        }
        public class TerraformLogs : Tea.TeaModel {
            public var command: String?

            public var content: String?

            public var stream: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.command != nil {
                    map["Command"] = self.command!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.stream != nil {
                    map["Stream"] = self.stream!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Command") {
                    self.command = dict["Command"] as! String
                }
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("Stream") {
                    self.stream = dict["Stream"] as! String
                }
            }
        }
        public var resourceLogs: [GetStackResponseBody.Log.ResourceLogs]?

        public var terraformLogs: [GetStackResponseBody.Log.TerraformLogs]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceLogs != nil {
                var tmp : [Any] = []
                for k in self.resourceLogs! {
                    tmp.append(k.toMap())
                }
                map["ResourceLogs"] = tmp
            }
            if self.terraformLogs != nil {
                var tmp : [Any] = []
                for k in self.terraformLogs! {
                    tmp.append(k.toMap())
                }
                map["TerraformLogs"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceLogs") {
                var tmp : [GetStackResponseBody.Log.ResourceLogs] = []
                for v in dict["ResourceLogs"] as! [Any] {
                    var model = GetStackResponseBody.Log.ResourceLogs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resourceLogs = tmp
            }
            if dict.keys.contains("TerraformLogs") {
                var tmp : [GetStackResponseBody.Log.TerraformLogs] = []
                for v in dict["TerraformLogs"] as! [Any] {
                    var model = GetStackResponseBody.Log.TerraformLogs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.terraformLogs = tmp
            }
        }
    }
    public class OperationInfo : Tea.TeaModel {
        public var action: String?

        public var code: String?

        public var logicalResourceId: String?

        public var message: String?

        public var requestId: String?

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
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.logicalResourceId != nil {
                map["LogicalResourceId"] = self.logicalResourceId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("LogicalResourceId") {
                self.logicalResourceId = dict["LogicalResourceId"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public class ResourceProgress : Tea.TeaModel {
        public class InProgressResourceDetails : Tea.TeaModel {
            public var progressTargetValue: Double?

            public var progressValue: Double?

            public var resourceName: String?

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
                if self.progressTargetValue != nil {
                    map["ProgressTargetValue"] = self.progressTargetValue!
                }
                if self.progressValue != nil {
                    map["ProgressValue"] = self.progressValue!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ProgressTargetValue") {
                    self.progressTargetValue = dict["ProgressTargetValue"] as! Double
                }
                if dict.keys.contains("ProgressValue") {
                    self.progressValue = dict["ProgressValue"] as! Double
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
            }
        }
        public var failedResourceCount: Int32?

        public var inProgressResourceCount: Int32?

        public var inProgressResourceDetails: [GetStackResponseBody.ResourceProgress.InProgressResourceDetails]?

        public var pendingResourceCount: Int32?

        public var stackActionProgress: Double?

        public var stackOperationProgress: Double?

        public var successResourceCount: Int32?

        public var totalResourceCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failedResourceCount != nil {
                map["FailedResourceCount"] = self.failedResourceCount!
            }
            if self.inProgressResourceCount != nil {
                map["InProgressResourceCount"] = self.inProgressResourceCount!
            }
            if self.inProgressResourceDetails != nil {
                var tmp : [Any] = []
                for k in self.inProgressResourceDetails! {
                    tmp.append(k.toMap())
                }
                map["InProgressResourceDetails"] = tmp
            }
            if self.pendingResourceCount != nil {
                map["PendingResourceCount"] = self.pendingResourceCount!
            }
            if self.stackActionProgress != nil {
                map["StackActionProgress"] = self.stackActionProgress!
            }
            if self.stackOperationProgress != nil {
                map["StackOperationProgress"] = self.stackOperationProgress!
            }
            if self.successResourceCount != nil {
                map["SuccessResourceCount"] = self.successResourceCount!
            }
            if self.totalResourceCount != nil {
                map["TotalResourceCount"] = self.totalResourceCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailedResourceCount") {
                self.failedResourceCount = dict["FailedResourceCount"] as! Int32
            }
            if dict.keys.contains("InProgressResourceCount") {
                self.inProgressResourceCount = dict["InProgressResourceCount"] as! Int32
            }
            if dict.keys.contains("InProgressResourceDetails") {
                var tmp : [GetStackResponseBody.ResourceProgress.InProgressResourceDetails] = []
                for v in dict["InProgressResourceDetails"] as! [Any] {
                    var model = GetStackResponseBody.ResourceProgress.InProgressResourceDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.inProgressResourceDetails = tmp
            }
            if dict.keys.contains("PendingResourceCount") {
                self.pendingResourceCount = dict["PendingResourceCount"] as! Int32
            }
            if dict.keys.contains("StackActionProgress") {
                self.stackActionProgress = dict["StackActionProgress"] as! Double
            }
            if dict.keys.contains("StackOperationProgress") {
                self.stackOperationProgress = dict["StackOperationProgress"] as! Double
            }
            if dict.keys.contains("SuccessResourceCount") {
                self.successResourceCount = dict["SuccessResourceCount"] as! Int32
            }
            if dict.keys.contains("TotalResourceCount") {
                self.totalResourceCount = dict["TotalResourceCount"] as! Int32
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
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var checkedStackResourceCount: Int32?

    public var createTime: String?

    public var deletionProtection: String?

    public var description_: String?

    public var disableRollback: Bool?

    public var driftDetectionTime: String?

    public var interface: String?

    public var log: GetStackResponseBody.Log?

    public var notCheckedStackResourceCount: Int32?

    public var notificationURLs: [String]?

    public var operationInfo: GetStackResponseBody.OperationInfo?

    public var orderIds: [String]?

    public var outputs: [[String: Any]]?

    public var parameters: [GetStackResponseBody.Parameters]?

    public var parentStackId: String?

    public var ramRoleName: String?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var resourceProgress: GetStackResponseBody.ResourceProgress?

    public var rollbackFailedRootReason: String?

    public var rootStackId: String?

    public var serviceManaged: Bool?

    public var serviceName: String?

    public var stackDriftStatus: String?

    public var stackId: String?

    public var stackName: String?

    public var stackType: String?

    public var status: String?

    public var statusReason: String?

    public var tags: [GetStackResponseBody.Tags]?

    public var templateDescription: String?

    public var templateId: String?

    public var templateScratchId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public var timeoutInMinutes: Int32?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.log?.validate()
        try self.operationInfo?.validate()
        try self.resourceProgress?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkedStackResourceCount != nil {
            map["CheckedStackResourceCount"] = self.checkedStackResourceCount!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.deletionProtection != nil {
            map["DeletionProtection"] = self.deletionProtection!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.disableRollback != nil {
            map["DisableRollback"] = self.disableRollback!
        }
        if self.driftDetectionTime != nil {
            map["DriftDetectionTime"] = self.driftDetectionTime!
        }
        if self.interface != nil {
            map["Interface"] = self.interface!
        }
        if self.log != nil {
            map["Log"] = self.log?.toMap()
        }
        if self.notCheckedStackResourceCount != nil {
            map["NotCheckedStackResourceCount"] = self.notCheckedStackResourceCount!
        }
        if self.notificationURLs != nil {
            map["NotificationURLs"] = self.notificationURLs!
        }
        if self.operationInfo != nil {
            map["OperationInfo"] = self.operationInfo?.toMap()
        }
        if self.orderIds != nil {
            map["OrderIds"] = self.orderIds!
        }
        if self.outputs != nil {
            map["Outputs"] = self.outputs!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.parentStackId != nil {
            map["ParentStackId"] = self.parentStackId!
        }
        if self.ramRoleName != nil {
            map["RamRoleName"] = self.ramRoleName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceProgress != nil {
            map["ResourceProgress"] = self.resourceProgress?.toMap()
        }
        if self.rollbackFailedRootReason != nil {
            map["RollbackFailedRootReason"] = self.rollbackFailedRootReason!
        }
        if self.rootStackId != nil {
            map["RootStackId"] = self.rootStackId!
        }
        if self.serviceManaged != nil {
            map["ServiceManaged"] = self.serviceManaged!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.stackDriftStatus != nil {
            map["StackDriftStatus"] = self.stackDriftStatus!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.stackName != nil {
            map["StackName"] = self.stackName!
        }
        if self.stackType != nil {
            map["StackType"] = self.stackType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusReason != nil {
            map["StatusReason"] = self.statusReason!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.templateDescription != nil {
            map["TemplateDescription"] = self.templateDescription!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateScratchId != nil {
            map["TemplateScratchId"] = self.templateScratchId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        if self.timeoutInMinutes != nil {
            map["TimeoutInMinutes"] = self.timeoutInMinutes!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckedStackResourceCount") {
            self.checkedStackResourceCount = dict["CheckedStackResourceCount"] as! Int32
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("DeletionProtection") {
            self.deletionProtection = dict["DeletionProtection"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisableRollback") {
            self.disableRollback = dict["DisableRollback"] as! Bool
        }
        if dict.keys.contains("DriftDetectionTime") {
            self.driftDetectionTime = dict["DriftDetectionTime"] as! String
        }
        if dict.keys.contains("Interface") {
            self.interface = dict["Interface"] as! String
        }
        if dict.keys.contains("Log") {
            var model = GetStackResponseBody.Log()
            model.fromMap(dict["Log"] as! [String: Any])
            self.log = model
        }
        if dict.keys.contains("NotCheckedStackResourceCount") {
            self.notCheckedStackResourceCount = dict["NotCheckedStackResourceCount"] as! Int32
        }
        if dict.keys.contains("NotificationURLs") {
            self.notificationURLs = dict["NotificationURLs"] as! [String]
        }
        if dict.keys.contains("OperationInfo") {
            var model = GetStackResponseBody.OperationInfo()
            model.fromMap(dict["OperationInfo"] as! [String: Any])
            self.operationInfo = model
        }
        if dict.keys.contains("OrderIds") {
            self.orderIds = dict["OrderIds"] as! [String]
        }
        if dict.keys.contains("Outputs") {
            self.outputs = dict["Outputs"] as! [[String: Any]]
        }
        if dict.keys.contains("Parameters") {
            var tmp : [GetStackResponseBody.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = GetStackResponseBody.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("ParentStackId") {
            self.parentStackId = dict["ParentStackId"] as! String
        }
        if dict.keys.contains("RamRoleName") {
            self.ramRoleName = dict["RamRoleName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceProgress") {
            var model = GetStackResponseBody.ResourceProgress()
            model.fromMap(dict["ResourceProgress"] as! [String: Any])
            self.resourceProgress = model
        }
        if dict.keys.contains("RollbackFailedRootReason") {
            self.rollbackFailedRootReason = dict["RollbackFailedRootReason"] as! String
        }
        if dict.keys.contains("RootStackId") {
            self.rootStackId = dict["RootStackId"] as! String
        }
        if dict.keys.contains("ServiceManaged") {
            self.serviceManaged = dict["ServiceManaged"] as! Bool
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("StackDriftStatus") {
            self.stackDriftStatus = dict["StackDriftStatus"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("StackName") {
            self.stackName = dict["StackName"] as! String
        }
        if dict.keys.contains("StackType") {
            self.stackType = dict["StackType"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StatusReason") {
            self.statusReason = dict["StatusReason"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [GetStackResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = GetStackResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TemplateDescription") {
            self.templateDescription = dict["TemplateDescription"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateScratchId") {
            self.templateScratchId = dict["TemplateScratchId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
        if dict.keys.contains("TimeoutInMinutes") {
            self.timeoutInMinutes = dict["TimeoutInMinutes"] as! Int32
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class GetStackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStackResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetStackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStackDriftDetectionStatusRequest : Tea.TeaModel {
    public var driftDetectionId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.driftDetectionId != nil {
            map["DriftDetectionId"] = self.driftDetectionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DriftDetectionId") {
            self.driftDetectionId = dict["DriftDetectionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetStackDriftDetectionStatusResponseBody : Tea.TeaModel {
    public var driftDetectionId: String?

    public var driftDetectionStatus: String?

    public var driftDetectionStatusReason: String?

    public var driftDetectionTime: String?

    public var driftedStackResourceCount: Int32?

    public var requestId: String?

    public var stackDriftStatus: String?

    public var stackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.driftDetectionId != nil {
            map["DriftDetectionId"] = self.driftDetectionId!
        }
        if self.driftDetectionStatus != nil {
            map["DriftDetectionStatus"] = self.driftDetectionStatus!
        }
        if self.driftDetectionStatusReason != nil {
            map["DriftDetectionStatusReason"] = self.driftDetectionStatusReason!
        }
        if self.driftDetectionTime != nil {
            map["DriftDetectionTime"] = self.driftDetectionTime!
        }
        if self.driftedStackResourceCount != nil {
            map["DriftedStackResourceCount"] = self.driftedStackResourceCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stackDriftStatus != nil {
            map["StackDriftStatus"] = self.stackDriftStatus!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DriftDetectionId") {
            self.driftDetectionId = dict["DriftDetectionId"] as! String
        }
        if dict.keys.contains("DriftDetectionStatus") {
            self.driftDetectionStatus = dict["DriftDetectionStatus"] as! String
        }
        if dict.keys.contains("DriftDetectionStatusReason") {
            self.driftDetectionStatusReason = dict["DriftDetectionStatusReason"] as! String
        }
        if dict.keys.contains("DriftDetectionTime") {
            self.driftDetectionTime = dict["DriftDetectionTime"] as! String
        }
        if dict.keys.contains("DriftedStackResourceCount") {
            self.driftedStackResourceCount = dict["DriftedStackResourceCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackDriftStatus") {
            self.stackDriftStatus = dict["StackDriftStatus"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class GetStackDriftDetectionStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStackDriftDetectionStatusResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetStackDriftDetectionStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStackGroupRequest : Tea.TeaModel {
    public var regionId: String?

    public var stackGroupId: String?

    public var stackGroupName: String?

    public override init() {
        super.init()
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
            map["RegionId"] = self.regionId!
        }
        if self.stackGroupId != nil {
            map["StackGroupId"] = self.stackGroupId!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackGroupId") {
            self.stackGroupId = dict["StackGroupId"] as! String
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
    }
}

public class GetStackGroupResponseBody : Tea.TeaModel {
    public class StackGroup : Tea.TeaModel {
        public class AutoDeployment : Tea.TeaModel {
            public var enabled: Bool?

            public var retainStacksOnAccountRemoval: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.retainStacksOnAccountRemoval != nil {
                    map["RetainStacksOnAccountRemoval"] = self.retainStacksOnAccountRemoval!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Enabled") {
                    self.enabled = dict["Enabled"] as! Bool
                }
                if dict.keys.contains("RetainStacksOnAccountRemoval") {
                    self.retainStacksOnAccountRemoval = dict["RetainStacksOnAccountRemoval"] as! Bool
                }
            }
        }
        public class Parameters : Tea.TeaModel {
            public var parameterKey: String?

            public var parameterValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameterKey != nil {
                    map["ParameterKey"] = self.parameterKey!
                }
                if self.parameterValue != nil {
                    map["ParameterValue"] = self.parameterValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParameterKey") {
                    self.parameterKey = dict["ParameterKey"] as! String
                }
                if dict.keys.contains("ParameterValue") {
                    self.parameterValue = dict["ParameterValue"] as! String
                }
            }
        }
        public class StackGroupDriftDetectionDetail : Tea.TeaModel {
            public var cancelledStackInstancesCount: Int32?

            public var driftDetectionStatus: String?

            public var driftDetectionTime: String?

            public var driftedStackInstancesCount: Int32?

            public var failedStackInstancesCount: Int32?

            public var inProgressStackInstancesCount: Int32?

            public var inSyncStackInstancesCount: Int32?

            public var stackGroupDriftStatus: String?

            public var totalStackInstancesCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cancelledStackInstancesCount != nil {
                    map["CancelledStackInstancesCount"] = self.cancelledStackInstancesCount!
                }
                if self.driftDetectionStatus != nil {
                    map["DriftDetectionStatus"] = self.driftDetectionStatus!
                }
                if self.driftDetectionTime != nil {
                    map["DriftDetectionTime"] = self.driftDetectionTime!
                }
                if self.driftedStackInstancesCount != nil {
                    map["DriftedStackInstancesCount"] = self.driftedStackInstancesCount!
                }
                if self.failedStackInstancesCount != nil {
                    map["FailedStackInstancesCount"] = self.failedStackInstancesCount!
                }
                if self.inProgressStackInstancesCount != nil {
                    map["InProgressStackInstancesCount"] = self.inProgressStackInstancesCount!
                }
                if self.inSyncStackInstancesCount != nil {
                    map["InSyncStackInstancesCount"] = self.inSyncStackInstancesCount!
                }
                if self.stackGroupDriftStatus != nil {
                    map["StackGroupDriftStatus"] = self.stackGroupDriftStatus!
                }
                if self.totalStackInstancesCount != nil {
                    map["TotalStackInstancesCount"] = self.totalStackInstancesCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CancelledStackInstancesCount") {
                    self.cancelledStackInstancesCount = dict["CancelledStackInstancesCount"] as! Int32
                }
                if dict.keys.contains("DriftDetectionStatus") {
                    self.driftDetectionStatus = dict["DriftDetectionStatus"] as! String
                }
                if dict.keys.contains("DriftDetectionTime") {
                    self.driftDetectionTime = dict["DriftDetectionTime"] as! String
                }
                if dict.keys.contains("DriftedStackInstancesCount") {
                    self.driftedStackInstancesCount = dict["DriftedStackInstancesCount"] as! Int32
                }
                if dict.keys.contains("FailedStackInstancesCount") {
                    self.failedStackInstancesCount = dict["FailedStackInstancesCount"] as! Int32
                }
                if dict.keys.contains("InProgressStackInstancesCount") {
                    self.inProgressStackInstancesCount = dict["InProgressStackInstancesCount"] as! Int32
                }
                if dict.keys.contains("InSyncStackInstancesCount") {
                    self.inSyncStackInstancesCount = dict["InSyncStackInstancesCount"] as! Int32
                }
                if dict.keys.contains("StackGroupDriftStatus") {
                    self.stackGroupDriftStatus = dict["StackGroupDriftStatus"] as! String
                }
                if dict.keys.contains("TotalStackInstancesCount") {
                    self.totalStackInstancesCount = dict["TotalStackInstancesCount"] as! Int32
                }
            }
        }
        public var administrationRoleName: String?

        public var autoDeployment: GetStackGroupResponseBody.StackGroup.AutoDeployment?

        public var createTime: String?

        public var description_: String?

        public var executionRoleName: String?

        public var parameters: [GetStackGroupResponseBody.StackGroup.Parameters]?

        public var permissionModel: String?

        public var rdFolderIds: [String]?

        public var resourceGroupId: String?

        public var stackGroupDriftDetectionDetail: GetStackGroupResponseBody.StackGroup.StackGroupDriftDetectionDetail?

        public var stackGroupId: String?

        public var stackGroupName: String?

        public var status: String?

        public var templateBody: String?

        public var templateContent: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.autoDeployment?.validate()
            try self.stackGroupDriftDetectionDetail?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.administrationRoleName != nil {
                map["AdministrationRoleName"] = self.administrationRoleName!
            }
            if self.autoDeployment != nil {
                map["AutoDeployment"] = self.autoDeployment?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.executionRoleName != nil {
                map["ExecutionRoleName"] = self.executionRoleName!
            }
            if self.parameters != nil {
                var tmp : [Any] = []
                for k in self.parameters! {
                    tmp.append(k.toMap())
                }
                map["Parameters"] = tmp
            }
            if self.permissionModel != nil {
                map["PermissionModel"] = self.permissionModel!
            }
            if self.rdFolderIds != nil {
                map["RdFolderIds"] = self.rdFolderIds!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.stackGroupDriftDetectionDetail != nil {
                map["StackGroupDriftDetectionDetail"] = self.stackGroupDriftDetectionDetail?.toMap()
            }
            if self.stackGroupId != nil {
                map["StackGroupId"] = self.stackGroupId!
            }
            if self.stackGroupName != nil {
                map["StackGroupName"] = self.stackGroupName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.templateBody != nil {
                map["TemplateBody"] = self.templateBody!
            }
            if self.templateContent != nil {
                map["TemplateContent"] = self.templateContent!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdministrationRoleName") {
                self.administrationRoleName = dict["AdministrationRoleName"] as! String
            }
            if dict.keys.contains("AutoDeployment") {
                var model = GetStackGroupResponseBody.StackGroup.AutoDeployment()
                model.fromMap(dict["AutoDeployment"] as! [String: Any])
                self.autoDeployment = model
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExecutionRoleName") {
                self.executionRoleName = dict["ExecutionRoleName"] as! String
            }
            if dict.keys.contains("Parameters") {
                var tmp : [GetStackGroupResponseBody.StackGroup.Parameters] = []
                for v in dict["Parameters"] as! [Any] {
                    var model = GetStackGroupResponseBody.StackGroup.Parameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.parameters = tmp
            }
            if dict.keys.contains("PermissionModel") {
                self.permissionModel = dict["PermissionModel"] as! String
            }
            if dict.keys.contains("RdFolderIds") {
                self.rdFolderIds = dict["RdFolderIds"] as! [String]
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("StackGroupDriftDetectionDetail") {
                var model = GetStackGroupResponseBody.StackGroup.StackGroupDriftDetectionDetail()
                model.fromMap(dict["StackGroupDriftDetectionDetail"] as! [String: Any])
                self.stackGroupDriftDetectionDetail = model
            }
            if dict.keys.contains("StackGroupId") {
                self.stackGroupId = dict["StackGroupId"] as! String
            }
            if dict.keys.contains("StackGroupName") {
                self.stackGroupName = dict["StackGroupName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TemplateBody") {
                self.templateBody = dict["TemplateBody"] as! String
            }
            if dict.keys.contains("TemplateContent") {
                self.templateContent = dict["TemplateContent"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var stackGroup: GetStackGroupResponseBody.StackGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stackGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stackGroup != nil {
            map["StackGroup"] = self.stackGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackGroup") {
            var model = GetStackGroupResponseBody.StackGroup()
            model.fromMap(dict["StackGroup"] as! [String: Any])
            self.stackGroup = model
        }
    }
}

public class GetStackGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStackGroupResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetStackGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStackGroupOperationRequest : Tea.TeaModel {
    public var operationId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperationId") {
            self.operationId = dict["OperationId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetStackGroupOperationResponseBody : Tea.TeaModel {
    public class StackGroupOperation : Tea.TeaModel {
        public class DeploymentTargets : Tea.TeaModel {
            public var accountIds: [String]?

            public var rdFolderIds: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountIds != nil {
                    map["AccountIds"] = self.accountIds!
                }
                if self.rdFolderIds != nil {
                    map["RdFolderIds"] = self.rdFolderIds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountIds") {
                    self.accountIds = dict["AccountIds"] as! [String]
                }
                if dict.keys.contains("RdFolderIds") {
                    self.rdFolderIds = dict["RdFolderIds"] as! [String]
                }
            }
        }
        public class OperationPreferences : Tea.TeaModel {
            public var failureToleranceCount: Int32?

            public var failureTolerancePercentage: Int32?

            public var maxConcurrentCount: Int32?

            public var maxConcurrentPercentage: Int32?

            public var regionIdsOrder: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.failureToleranceCount != nil {
                    map["FailureToleranceCount"] = self.failureToleranceCount!
                }
                if self.failureTolerancePercentage != nil {
                    map["FailureTolerancePercentage"] = self.failureTolerancePercentage!
                }
                if self.maxConcurrentCount != nil {
                    map["MaxConcurrentCount"] = self.maxConcurrentCount!
                }
                if self.maxConcurrentPercentage != nil {
                    map["MaxConcurrentPercentage"] = self.maxConcurrentPercentage!
                }
                if self.regionIdsOrder != nil {
                    map["RegionIdsOrder"] = self.regionIdsOrder!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FailureToleranceCount") {
                    self.failureToleranceCount = dict["FailureToleranceCount"] as! Int32
                }
                if dict.keys.contains("FailureTolerancePercentage") {
                    self.failureTolerancePercentage = dict["FailureTolerancePercentage"] as! Int32
                }
                if dict.keys.contains("MaxConcurrentCount") {
                    self.maxConcurrentCount = dict["MaxConcurrentCount"] as! Int32
                }
                if dict.keys.contains("MaxConcurrentPercentage") {
                    self.maxConcurrentPercentage = dict["MaxConcurrentPercentage"] as! Int32
                }
                if dict.keys.contains("RegionIdsOrder") {
                    self.regionIdsOrder = dict["RegionIdsOrder"] as! [String]
                }
            }
        }
        public class StackGroupDriftDetectionDetail : Tea.TeaModel {
            public var cancelledStackInstancesCount: Int32?

            public var driftDetectionStatus: String?

            public var driftDetectionTime: String?

            public var driftedStackInstancesCount: Int32?

            public var failedStackInstancesCount: Int32?

            public var inProgressStackInstancesCount: Int32?

            public var inSyncStackInstancesCount: Int32?

            public var stackGroupDriftStatus: String?

            public var totalStackInstancesCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cancelledStackInstancesCount != nil {
                    map["CancelledStackInstancesCount"] = self.cancelledStackInstancesCount!
                }
                if self.driftDetectionStatus != nil {
                    map["DriftDetectionStatus"] = self.driftDetectionStatus!
                }
                if self.driftDetectionTime != nil {
                    map["DriftDetectionTime"] = self.driftDetectionTime!
                }
                if self.driftedStackInstancesCount != nil {
                    map["DriftedStackInstancesCount"] = self.driftedStackInstancesCount!
                }
                if self.failedStackInstancesCount != nil {
                    map["FailedStackInstancesCount"] = self.failedStackInstancesCount!
                }
                if self.inProgressStackInstancesCount != nil {
                    map["InProgressStackInstancesCount"] = self.inProgressStackInstancesCount!
                }
                if self.inSyncStackInstancesCount != nil {
                    map["InSyncStackInstancesCount"] = self.inSyncStackInstancesCount!
                }
                if self.stackGroupDriftStatus != nil {
                    map["StackGroupDriftStatus"] = self.stackGroupDriftStatus!
                }
                if self.totalStackInstancesCount != nil {
                    map["TotalStackInstancesCount"] = self.totalStackInstancesCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CancelledStackInstancesCount") {
                    self.cancelledStackInstancesCount = dict["CancelledStackInstancesCount"] as! Int32
                }
                if dict.keys.contains("DriftDetectionStatus") {
                    self.driftDetectionStatus = dict["DriftDetectionStatus"] as! String
                }
                if dict.keys.contains("DriftDetectionTime") {
                    self.driftDetectionTime = dict["DriftDetectionTime"] as! String
                }
                if dict.keys.contains("DriftedStackInstancesCount") {
                    self.driftedStackInstancesCount = dict["DriftedStackInstancesCount"] as! Int32
                }
                if dict.keys.contains("FailedStackInstancesCount") {
                    self.failedStackInstancesCount = dict["FailedStackInstancesCount"] as! Int32
                }
                if dict.keys.contains("InProgressStackInstancesCount") {
                    self.inProgressStackInstancesCount = dict["InProgressStackInstancesCount"] as! Int32
                }
                if dict.keys.contains("InSyncStackInstancesCount") {
                    self.inSyncStackInstancesCount = dict["InSyncStackInstancesCount"] as! Int32
                }
                if dict.keys.contains("StackGroupDriftStatus") {
                    self.stackGroupDriftStatus = dict["StackGroupDriftStatus"] as! String
                }
                if dict.keys.contains("TotalStackInstancesCount") {
                    self.totalStackInstancesCount = dict["TotalStackInstancesCount"] as! Int32
                }
            }
        }
        public var action: String?

        public var administrationRoleName: String?

        public var createTime: String?

        public var deploymentTargets: GetStackGroupOperationResponseBody.StackGroupOperation.DeploymentTargets?

        public var endTime: String?

        public var executionRoleName: String?

        public var operationDescription: String?

        public var operationId: String?

        public var operationPreferences: GetStackGroupOperationResponseBody.StackGroupOperation.OperationPreferences?

        public var retainStacks: Bool?

        public var stackGroupDriftDetectionDetail: GetStackGroupOperationResponseBody.StackGroupOperation.StackGroupDriftDetectionDetail?

        public var stackGroupId: String?

        public var stackGroupName: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.deploymentTargets?.validate()
            try self.operationPreferences?.validate()
            try self.stackGroupDriftDetectionDetail?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.administrationRoleName != nil {
                map["AdministrationRoleName"] = self.administrationRoleName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deploymentTargets != nil {
                map["DeploymentTargets"] = self.deploymentTargets?.toMap()
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.executionRoleName != nil {
                map["ExecutionRoleName"] = self.executionRoleName!
            }
            if self.operationDescription != nil {
                map["OperationDescription"] = self.operationDescription!
            }
            if self.operationId != nil {
                map["OperationId"] = self.operationId!
            }
            if self.operationPreferences != nil {
                map["OperationPreferences"] = self.operationPreferences?.toMap()
            }
            if self.retainStacks != nil {
                map["RetainStacks"] = self.retainStacks!
            }
            if self.stackGroupDriftDetectionDetail != nil {
                map["StackGroupDriftDetectionDetail"] = self.stackGroupDriftDetectionDetail?.toMap()
            }
            if self.stackGroupId != nil {
                map["StackGroupId"] = self.stackGroupId!
            }
            if self.stackGroupName != nil {
                map["StackGroupName"] = self.stackGroupName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("AdministrationRoleName") {
                self.administrationRoleName = dict["AdministrationRoleName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeploymentTargets") {
                var model = GetStackGroupOperationResponseBody.StackGroupOperation.DeploymentTargets()
                model.fromMap(dict["DeploymentTargets"] as! [String: Any])
                self.deploymentTargets = model
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("ExecutionRoleName") {
                self.executionRoleName = dict["ExecutionRoleName"] as! String
            }
            if dict.keys.contains("OperationDescription") {
                self.operationDescription = dict["OperationDescription"] as! String
            }
            if dict.keys.contains("OperationId") {
                self.operationId = dict["OperationId"] as! String
            }
            if dict.keys.contains("OperationPreferences") {
                var model = GetStackGroupOperationResponseBody.StackGroupOperation.OperationPreferences()
                model.fromMap(dict["OperationPreferences"] as! [String: Any])
                self.operationPreferences = model
            }
            if dict.keys.contains("RetainStacks") {
                self.retainStacks = dict["RetainStacks"] as! Bool
            }
            if dict.keys.contains("StackGroupDriftDetectionDetail") {
                var model = GetStackGroupOperationResponseBody.StackGroupOperation.StackGroupDriftDetectionDetail()
                model.fromMap(dict["StackGroupDriftDetectionDetail"] as! [String: Any])
                self.stackGroupDriftDetectionDetail = model
            }
            if dict.keys.contains("StackGroupId") {
                self.stackGroupId = dict["StackGroupId"] as! String
            }
            if dict.keys.contains("StackGroupName") {
                self.stackGroupName = dict["StackGroupName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var requestId: String?

    public var stackGroupOperation: GetStackGroupOperationResponseBody.StackGroupOperation?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stackGroupOperation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stackGroupOperation != nil {
            map["StackGroupOperation"] = self.stackGroupOperation?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackGroupOperation") {
            var model = GetStackGroupOperationResponseBody.StackGroupOperation()
            model.fromMap(dict["StackGroupOperation"] as! [String: Any])
            self.stackGroupOperation = model
        }
    }
}

public class GetStackGroupOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStackGroupOperationResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetStackGroupOperationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStackInstanceRequest : Tea.TeaModel {
    public var outputOption: String?

    public var regionId: String?

    public var stackGroupName: String?

    public var stackInstanceAccountId: String?

    public var stackInstanceRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outputOption != nil {
            map["OutputOption"] = self.outputOption!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        if self.stackInstanceAccountId != nil {
            map["StackInstanceAccountId"] = self.stackInstanceAccountId!
        }
        if self.stackInstanceRegionId != nil {
            map["StackInstanceRegionId"] = self.stackInstanceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OutputOption") {
            self.outputOption = dict["OutputOption"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
        if dict.keys.contains("StackInstanceAccountId") {
            self.stackInstanceAccountId = dict["StackInstanceAccountId"] as! String
        }
        if dict.keys.contains("StackInstanceRegionId") {
            self.stackInstanceRegionId = dict["StackInstanceRegionId"] as! String
        }
    }
}

public class GetStackInstanceResponseBody : Tea.TeaModel {
    public class StackInstance : Tea.TeaModel {
        public class ParameterOverrides : Tea.TeaModel {
            public var parameterKey: String?

            public var parameterValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameterKey != nil {
                    map["ParameterKey"] = self.parameterKey!
                }
                if self.parameterValue != nil {
                    map["ParameterValue"] = self.parameterValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParameterKey") {
                    self.parameterKey = dict["ParameterKey"] as! String
                }
                if dict.keys.contains("ParameterValue") {
                    self.parameterValue = dict["ParameterValue"] as! String
                }
            }
        }
        public var accountId: String?

        public var driftDetectionTime: String?

        public var outputs: [[String: Any]]?

        public var parameterOverrides: [GetStackInstanceResponseBody.StackInstance.ParameterOverrides]?

        public var rdFolderId: String?

        public var regionId: String?

        public var stackDriftStatus: String?

        public var stackGroupId: String?

        public var stackGroupName: String?

        public var stackId: String?

        public var status: String?

        public var statusReason: String?

        public override init() {
            super.init()
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
                map["AccountId"] = self.accountId!
            }
            if self.driftDetectionTime != nil {
                map["DriftDetectionTime"] = self.driftDetectionTime!
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs!
            }
            if self.parameterOverrides != nil {
                var tmp : [Any] = []
                for k in self.parameterOverrides! {
                    tmp.append(k.toMap())
                }
                map["ParameterOverrides"] = tmp
            }
            if self.rdFolderId != nil {
                map["RdFolderId"] = self.rdFolderId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.stackDriftStatus != nil {
                map["StackDriftStatus"] = self.stackDriftStatus!
            }
            if self.stackGroupId != nil {
                map["StackGroupId"] = self.stackGroupId!
            }
            if self.stackGroupName != nil {
                map["StackGroupName"] = self.stackGroupName!
            }
            if self.stackId != nil {
                map["StackId"] = self.stackId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("DriftDetectionTime") {
                self.driftDetectionTime = dict["DriftDetectionTime"] as! String
            }
            if dict.keys.contains("Outputs") {
                self.outputs = dict["Outputs"] as! [[String: Any]]
            }
            if dict.keys.contains("ParameterOverrides") {
                var tmp : [GetStackInstanceResponseBody.StackInstance.ParameterOverrides] = []
                for v in dict["ParameterOverrides"] as! [Any] {
                    var model = GetStackInstanceResponseBody.StackInstance.ParameterOverrides()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.parameterOverrides = tmp
            }
            if dict.keys.contains("RdFolderId") {
                self.rdFolderId = dict["RdFolderId"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("StackDriftStatus") {
                self.stackDriftStatus = dict["StackDriftStatus"] as! String
            }
            if dict.keys.contains("StackGroupId") {
                self.stackGroupId = dict["StackGroupId"] as! String
            }
            if dict.keys.contains("StackGroupName") {
                self.stackGroupName = dict["StackGroupName"] as! String
            }
            if dict.keys.contains("StackId") {
                self.stackId = dict["StackId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
        }
    }
    public var requestId: String?

    public var stackInstance: GetStackInstanceResponseBody.StackInstance?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stackInstance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stackInstance != nil {
            map["StackInstance"] = self.stackInstance?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackInstance") {
            var model = GetStackInstanceResponseBody.StackInstance()
            model.fromMap(dict["StackInstance"] as! [String: Any])
            self.stackInstance = model
        }
    }
}

public class GetStackInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStackInstanceResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetStackInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStackPolicyRequest : Tea.TeaModel {
    public var regionId: String?

    public var stackId: String?

    public override init() {
        super.init()
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
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class GetStackPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var stackPolicyBody: [String: Any]?

    public override init() {
        super.init()
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
        if self.stackPolicyBody != nil {
            map["StackPolicyBody"] = self.stackPolicyBody!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackPolicyBody") {
            self.stackPolicyBody = dict["StackPolicyBody"] as! [String: Any]
        }
    }
}

public class GetStackPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStackPolicyResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetStackPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStackResourceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var logicalResourceId: String?

    public var regionId: String?

    public var resourceAttributes: [String]?

    public var showResourceAttributes: Bool?

    public var stackId: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.logicalResourceId != nil {
            map["LogicalResourceId"] = self.logicalResourceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceAttributes != nil {
            map["ResourceAttributes"] = self.resourceAttributes!
        }
        if self.showResourceAttributes != nil {
            map["ShowResourceAttributes"] = self.showResourceAttributes!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("LogicalResourceId") {
            self.logicalResourceId = dict["LogicalResourceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceAttributes") {
            self.resourceAttributes = dict["ResourceAttributes"] as! [String]
        }
        if dict.keys.contains("ShowResourceAttributes") {
            self.showResourceAttributes = dict["ShowResourceAttributes"] as! Bool
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class GetStackResourceResponseBody : Tea.TeaModel {
    public class ModuleInfo : Tea.TeaModel {
        public var logicalIdHierarchy: String?

        public var typeHierarchy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logicalIdHierarchy != nil {
                map["LogicalIdHierarchy"] = self.logicalIdHierarchy!
            }
            if self.typeHierarchy != nil {
                map["TypeHierarchy"] = self.typeHierarchy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogicalIdHierarchy") {
                self.logicalIdHierarchy = dict["LogicalIdHierarchy"] as! String
            }
            if dict.keys.contains("TypeHierarchy") {
                self.typeHierarchy = dict["TypeHierarchy"] as! String
            }
        }
    }
    public var createTime: String?

    public var description_: String?

    public var driftDetectionTime: String?

    public var logicalResourceId: String?

    public var metadata: [String: Any]?

    public var moduleInfo: GetStackResourceResponseBody.ModuleInfo?

    public var physicalResourceId: String?

    public var requestId: String?

    public var resourceAttributes: [[String: Any]]?

    public var resourceDriftStatus: String?

    public var resourceType: String?

    public var stackId: String?

    public var stackName: String?

    public var status: String?

    public var statusReason: String?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.moduleInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.driftDetectionTime != nil {
            map["DriftDetectionTime"] = self.driftDetectionTime!
        }
        if self.logicalResourceId != nil {
            map["LogicalResourceId"] = self.logicalResourceId!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.moduleInfo != nil {
            map["ModuleInfo"] = self.moduleInfo?.toMap()
        }
        if self.physicalResourceId != nil {
            map["PhysicalResourceId"] = self.physicalResourceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceAttributes != nil {
            map["ResourceAttributes"] = self.resourceAttributes!
        }
        if self.resourceDriftStatus != nil {
            map["ResourceDriftStatus"] = self.resourceDriftStatus!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.stackName != nil {
            map["StackName"] = self.stackName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusReason != nil {
            map["StatusReason"] = self.statusReason!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DriftDetectionTime") {
            self.driftDetectionTime = dict["DriftDetectionTime"] as! String
        }
        if dict.keys.contains("LogicalResourceId") {
            self.logicalResourceId = dict["LogicalResourceId"] as! String
        }
        if dict.keys.contains("Metadata") {
            self.metadata = dict["Metadata"] as! [String: Any]
        }
        if dict.keys.contains("ModuleInfo") {
            var model = GetStackResourceResponseBody.ModuleInfo()
            model.fromMap(dict["ModuleInfo"] as! [String: Any])
            self.moduleInfo = model
        }
        if dict.keys.contains("PhysicalResourceId") {
            self.physicalResourceId = dict["PhysicalResourceId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceAttributes") {
            self.resourceAttributes = dict["ResourceAttributes"] as! [[String: Any]]
        }
        if dict.keys.contains("ResourceDriftStatus") {
            self.resourceDriftStatus = dict["ResourceDriftStatus"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("StackName") {
            self.stackName = dict["StackName"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StatusReason") {
            self.statusReason = dict["StatusReason"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class GetStackResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStackResourceResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetStackResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTemplateRequest : Tea.TeaModel {
    public var changeSetId: String?

    public var includePermission: String?

    public var includeTags: String?

    public var regionId: String?

    public var stackGroupName: String?

    public var stackId: String?

    public var templateId: String?

    public var templateStage: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeSetId != nil {
            map["ChangeSetId"] = self.changeSetId!
        }
        if self.includePermission != nil {
            map["IncludePermission"] = self.includePermission!
        }
        if self.includeTags != nil {
            map["IncludeTags"] = self.includeTags!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateStage != nil {
            map["TemplateStage"] = self.templateStage!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeSetId") {
            self.changeSetId = dict["ChangeSetId"] as! String
        }
        if dict.keys.contains("IncludePermission") {
            self.includePermission = dict["IncludePermission"] as! String
        }
        if dict.keys.contains("IncludeTags") {
            self.includeTags = dict["IncludeTags"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateStage") {
            self.templateStage = dict["TemplateStage"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class GetTemplateResponseBody : Tea.TeaModel {
    public class Permissions : Tea.TeaModel {
        public var accountId: String?

        public var shareOption: String?

        public var shareSource: String?

        public var templateVersion: String?

        public var versionOption: String?

        public override init() {
            super.init()
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
                map["AccountId"] = self.accountId!
            }
            if self.shareOption != nil {
                map["ShareOption"] = self.shareOption!
            }
            if self.shareSource != nil {
                map["ShareSource"] = self.shareSource!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.versionOption != nil {
                map["VersionOption"] = self.versionOption!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("ShareOption") {
                self.shareOption = dict["ShareOption"] as! String
            }
            if dict.keys.contains("ShareSource") {
                self.shareSource = dict["ShareSource"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("VersionOption") {
                self.versionOption = dict["VersionOption"] as! String
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
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var changeSetId: String?

    public var createTime: String?

    public var description_: String?

    public var interface: String?

    public var ownerId: String?

    public var permissions: [GetTemplateResponseBody.Permissions]?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var shareType: String?

    public var stackGroupName: String?

    public var stackId: String?

    public var tags: [GetTemplateResponseBody.Tags]?

    public var templateARN: String?

    public var templateBody: String?

    public var templateId: String?

    public var templateName: String?

    public var templateVersion: String?

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
        if self.changeSetId != nil {
            map["ChangeSetId"] = self.changeSetId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.interface != nil {
            map["Interface"] = self.interface!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.permissions != nil {
            var tmp : [Any] = []
            for k in self.permissions! {
                tmp.append(k.toMap())
            }
            map["Permissions"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.templateARN != nil {
            map["TemplateARN"] = self.templateARN!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeSetId") {
            self.changeSetId = dict["ChangeSetId"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Interface") {
            self.interface = dict["Interface"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("Permissions") {
            var tmp : [GetTemplateResponseBody.Permissions] = []
            for v in dict["Permissions"] as! [Any] {
                var model = GetTemplateResponseBody.Permissions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.permissions = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ShareType") {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [GetTemplateResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = GetTemplateResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TemplateARN") {
            self.templateARN = dict["TemplateARN"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class GetTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTemplateEstimateCostRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public var clientToken: String?

    public var parameters: [GetTemplateEstimateCostRequest.Parameters]?

    public var regionId: String?

    public var stackId: String?

    public var templateBody: String?

    public var templateId: String?

    public var templateScratchId: String?

    public var templateScratchRegionId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateScratchId != nil {
            map["TemplateScratchId"] = self.templateScratchId!
        }
        if self.templateScratchRegionId != nil {
            map["TemplateScratchRegionId"] = self.templateScratchRegionId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Parameters") {
            var tmp : [GetTemplateEstimateCostRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = GetTemplateEstimateCostRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateScratchId") {
            self.templateScratchId = dict["TemplateScratchId"] as! String
        }
        if dict.keys.contains("TemplateScratchRegionId") {
            self.templateScratchRegionId = dict["TemplateScratchRegionId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class GetTemplateEstimateCostResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resources: [String: Any]?

    public override init() {
        super.init()
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
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! [String: Any]
        }
    }
}

public class GetTemplateEstimateCostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateEstimateCostResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetTemplateEstimateCostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTemplateParameterConstraintsRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public var clientToken: String?

    public var parameters: [GetTemplateParameterConstraintsRequest.Parameters]?

    public var parametersKeyFilter: [String]?

    public var parametersOrder: [String]?

    public var regionId: String?

    public var stackId: String?

    public var templateBody: String?

    public var templateId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.parametersKeyFilter != nil {
            map["ParametersKeyFilter"] = self.parametersKeyFilter!
        }
        if self.parametersOrder != nil {
            map["ParametersOrder"] = self.parametersOrder!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Parameters") {
            var tmp : [GetTemplateParameterConstraintsRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = GetTemplateParameterConstraintsRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("ParametersKeyFilter") {
            self.parametersKeyFilter = dict["ParametersKeyFilter"] as! [String]
        }
        if dict.keys.contains("ParametersOrder") {
            self.parametersOrder = dict["ParametersOrder"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class GetTemplateParameterConstraintsShrinkRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public var clientToken: String?

    public var parameters: [GetTemplateParameterConstraintsShrinkRequest.Parameters]?

    public var parametersKeyFilterShrink: String?

    public var parametersOrderShrink: String?

    public var regionId: String?

    public var stackId: String?

    public var templateBody: String?

    public var templateId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.parametersKeyFilterShrink != nil {
            map["ParametersKeyFilter"] = self.parametersKeyFilterShrink!
        }
        if self.parametersOrderShrink != nil {
            map["ParametersOrder"] = self.parametersOrderShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Parameters") {
            var tmp : [GetTemplateParameterConstraintsShrinkRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = GetTemplateParameterConstraintsShrinkRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("ParametersKeyFilter") {
            self.parametersKeyFilterShrink = dict["ParametersKeyFilter"] as! String
        }
        if dict.keys.contains("ParametersOrder") {
            self.parametersOrderShrink = dict["ParametersOrder"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class GetTemplateParameterConstraintsResponseBody : Tea.TeaModel {
    public class ParameterConstraints : Tea.TeaModel {
        public class NotSupportResources : Tea.TeaModel {
            public var propertyName: String?

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
                if self.propertyName != nil {
                    map["PropertyName"] = self.propertyName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PropertyName") {
                    self.propertyName = dict["PropertyName"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
            }
        }
        public class OriginalConstraints : Tea.TeaModel {
            public var allowedValues: [Any]?

            public var propertyName: String?

            public var resourceName: String?

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
                if self.allowedValues != nil {
                    map["AllowedValues"] = self.allowedValues!
                }
                if self.propertyName != nil {
                    map["PropertyName"] = self.propertyName!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowedValues") {
                    self.allowedValues = dict["AllowedValues"] as! [Any]
                }
                if dict.keys.contains("PropertyName") {
                    self.propertyName = dict["PropertyName"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
            }
        }
        public class QueryErrors : Tea.TeaModel {
            public var errorMessage: String?

            public var resourceName: String?

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
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
            }
        }
        public class QueryTimeoutDetails : Tea.TeaModel {
            public var errorMessage: String?

            public var resourceName: String?

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
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
            }
        }
        public var allowedValues: [String]?

        public var associationParameterNames: [String]?

        public var behavior: String?

        public var behaviorReason: String?

        public var illegalValueByParameterConstraints: [Any]?

        public var illegalValueByRules: [Any]?

        public var notSupportResources: [GetTemplateParameterConstraintsResponseBody.ParameterConstraints.NotSupportResources]?

        public var originalConstraints: [GetTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints]?

        public var parameterKey: String?

        public var queryErrors: [GetTemplateParameterConstraintsResponseBody.ParameterConstraints.QueryErrors]?

        public var queryTimeoutDetails: [GetTemplateParameterConstraintsResponseBody.ParameterConstraints.QueryTimeoutDetails]?

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
            if self.allowedValues != nil {
                map["AllowedValues"] = self.allowedValues!
            }
            if self.associationParameterNames != nil {
                map["AssociationParameterNames"] = self.associationParameterNames!
            }
            if self.behavior != nil {
                map["Behavior"] = self.behavior!
            }
            if self.behaviorReason != nil {
                map["BehaviorReason"] = self.behaviorReason!
            }
            if self.illegalValueByParameterConstraints != nil {
                map["IllegalValueByParameterConstraints"] = self.illegalValueByParameterConstraints!
            }
            if self.illegalValueByRules != nil {
                map["IllegalValueByRules"] = self.illegalValueByRules!
            }
            if self.notSupportResources != nil {
                var tmp : [Any] = []
                for k in self.notSupportResources! {
                    tmp.append(k.toMap())
                }
                map["NotSupportResources"] = tmp
            }
            if self.originalConstraints != nil {
                var tmp : [Any] = []
                for k in self.originalConstraints! {
                    tmp.append(k.toMap())
                }
                map["OriginalConstraints"] = tmp
            }
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.queryErrors != nil {
                var tmp : [Any] = []
                for k in self.queryErrors! {
                    tmp.append(k.toMap())
                }
                map["QueryErrors"] = tmp
            }
            if self.queryTimeoutDetails != nil {
                var tmp : [Any] = []
                for k in self.queryTimeoutDetails! {
                    tmp.append(k.toMap())
                }
                map["QueryTimeoutDetails"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowedValues") {
                self.allowedValues = dict["AllowedValues"] as! [String]
            }
            if dict.keys.contains("AssociationParameterNames") {
                self.associationParameterNames = dict["AssociationParameterNames"] as! [String]
            }
            if dict.keys.contains("Behavior") {
                self.behavior = dict["Behavior"] as! String
            }
            if dict.keys.contains("BehaviorReason") {
                self.behaviorReason = dict["BehaviorReason"] as! String
            }
            if dict.keys.contains("IllegalValueByParameterConstraints") {
                self.illegalValueByParameterConstraints = dict["IllegalValueByParameterConstraints"] as! [Any]
            }
            if dict.keys.contains("IllegalValueByRules") {
                self.illegalValueByRules = dict["IllegalValueByRules"] as! [Any]
            }
            if dict.keys.contains("NotSupportResources") {
                var tmp : [GetTemplateParameterConstraintsResponseBody.ParameterConstraints.NotSupportResources] = []
                for v in dict["NotSupportResources"] as! [Any] {
                    var model = GetTemplateParameterConstraintsResponseBody.ParameterConstraints.NotSupportResources()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.notSupportResources = tmp
            }
            if dict.keys.contains("OriginalConstraints") {
                var tmp : [GetTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints] = []
                for v in dict["OriginalConstraints"] as! [Any] {
                    var model = GetTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.originalConstraints = tmp
            }
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("QueryErrors") {
                var tmp : [GetTemplateParameterConstraintsResponseBody.ParameterConstraints.QueryErrors] = []
                for v in dict["QueryErrors"] as! [Any] {
                    var model = GetTemplateParameterConstraintsResponseBody.ParameterConstraints.QueryErrors()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.queryErrors = tmp
            }
            if dict.keys.contains("QueryTimeoutDetails") {
                var tmp : [GetTemplateParameterConstraintsResponseBody.ParameterConstraints.QueryTimeoutDetails] = []
                for v in dict["QueryTimeoutDetails"] as! [Any] {
                    var model = GetTemplateParameterConstraintsResponseBody.ParameterConstraints.QueryTimeoutDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.queryTimeoutDetails = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var parameterConstraints: [GetTemplateParameterConstraintsResponseBody.ParameterConstraints]?

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
        if self.parameterConstraints != nil {
            var tmp : [Any] = []
            for k in self.parameterConstraints! {
                tmp.append(k.toMap())
            }
            map["ParameterConstraints"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ParameterConstraints") {
            var tmp : [GetTemplateParameterConstraintsResponseBody.ParameterConstraints] = []
            for v in dict["ParameterConstraints"] as! [Any] {
                var model = GetTemplateParameterConstraintsResponseBody.ParameterConstraints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameterConstraints = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetTemplateParameterConstraintsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateParameterConstraintsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetTemplateParameterConstraintsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTemplateRecommendParametersRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterCandidateValues: [String]?

        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterCandidateValues != nil {
                map["ParameterCandidateValues"] = self.parameterCandidateValues!
            }
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterCandidateValues") {
                self.parameterCandidateValues = dict["ParameterCandidateValues"] as! [String]
            }
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public var clientToken: String?

    public var parameters: [GetTemplateRecommendParametersRequest.Parameters]?

    public var regionId: String?

    public var templateBody: String?

    public var templateId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Parameters") {
            var tmp : [GetTemplateRecommendParametersRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = GetTemplateRecommendParametersRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class GetTemplateRecommendParametersResponseBody : Tea.TeaModel {
    public class RecommendParameterValues : Tea.TeaModel {
        public var parameterKey: String?

        public var recommendValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.recommendValue != nil {
                map["RecommendValue"] = self.recommendValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("RecommendValue") {
                self.recommendValue = dict["RecommendValue"] as! String
            }
        }
    }
    public var recommendParameterValues: [GetTemplateRecommendParametersResponseBody.RecommendParameterValues]?

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
        if self.recommendParameterValues != nil {
            var tmp : [Any] = []
            for k in self.recommendParameterValues! {
                tmp.append(k.toMap())
            }
            map["RecommendParameterValues"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecommendParameterValues") {
            var tmp : [GetTemplateRecommendParametersResponseBody.RecommendParameterValues] = []
            for v in dict["RecommendParameterValues"] as! [Any] {
                var model = GetTemplateRecommendParametersResponseBody.RecommendParameterValues()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.recommendParameterValues = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetTemplateRecommendParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateRecommendParametersResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetTemplateRecommendParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTemplateScratchRequest : Tea.TeaModel {
    public var regionId: String?

    public var showDataOption: String?

    public var templateScratchId: String?

    public override init() {
        super.init()
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
            map["RegionId"] = self.regionId!
        }
        if self.showDataOption != nil {
            map["ShowDataOption"] = self.showDataOption!
        }
        if self.templateScratchId != nil {
            map["TemplateScratchId"] = self.templateScratchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ShowDataOption") {
            self.showDataOption = dict["ShowDataOption"] as! String
        }
        if dict.keys.contains("TemplateScratchId") {
            self.templateScratchId = dict["TemplateScratchId"] as! String
        }
    }
}

public class GetTemplateScratchResponseBody : Tea.TeaModel {
    public class TemplateScratch : Tea.TeaModel {
        public class PreferenceParameters : Tea.TeaModel {
            public var parameterKey: String?

            public var parameterValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameterKey != nil {
                    map["ParameterKey"] = self.parameterKey!
                }
                if self.parameterValue != nil {
                    map["ParameterValue"] = self.parameterValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParameterKey") {
                    self.parameterKey = dict["ParameterKey"] as! String
                }
                if dict.keys.contains("ParameterValue") {
                    self.parameterValue = dict["ParameterValue"] as! String
                }
            }
        }
        public class SourceResourceGroup : Tea.TeaModel {
            public var resourceGroupId: String?

            public var resourceTypeFilter: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.resourceTypeFilter != nil {
                    map["ResourceTypeFilter"] = self.resourceTypeFilter!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("ResourceTypeFilter") {
                    self.resourceTypeFilter = dict["ResourceTypeFilter"] as! [String]
                }
            }
        }
        public class SourceResources : Tea.TeaModel {
            public var relatedResourceTypeFilter: [String]?

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
                if self.relatedResourceTypeFilter != nil {
                    map["RelatedResourceTypeFilter"] = self.relatedResourceTypeFilter!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RelatedResourceTypeFilter") {
                    self.relatedResourceTypeFilter = dict["RelatedResourceTypeFilter"] as! [String]
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
            }
        }
        public class SourceTag : Tea.TeaModel {
            public var resourceTags: [String: Any]?

            public var resourceTypeFilter: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceTags != nil {
                    map["ResourceTags"] = self.resourceTags!
                }
                if self.resourceTypeFilter != nil {
                    map["ResourceTypeFilter"] = self.resourceTypeFilter!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceTags") {
                    self.resourceTags = dict["ResourceTags"] as! [String: Any]
                }
                if dict.keys.contains("ResourceTypeFilter") {
                    self.resourceTypeFilter = dict["ResourceTypeFilter"] as! [String]
                }
            }
        }
        public class StackProvision : Tea.TeaModel {
            public var creatable: Bool?

            public var importable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.creatable != nil {
                    map["Creatable"] = self.creatable!
                }
                if self.importable != nil {
                    map["Importable"] = self.importable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Creatable") {
                    self.creatable = dict["Creatable"] as! Bool
                }
                if dict.keys.contains("Importable") {
                    self.importable = dict["Importable"] as! Bool
                }
            }
        }
        public class Stacks : Tea.TeaModel {
            public var regionId: String?

            public var stackId: String?

            public var usageType: String?

            public override init() {
                super.init()
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
                    map["RegionId"] = self.regionId!
                }
                if self.stackId != nil {
                    map["StackId"] = self.stackId!
                }
                if self.usageType != nil {
                    map["UsageType"] = self.usageType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("StackId") {
                    self.stackId = dict["StackId"] as! String
                }
                if dict.keys.contains("UsageType") {
                    self.usageType = dict["UsageType"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var failedCode: String?

        public var logicalIdStrategy: String?

        public var preferenceParameters: [GetTemplateScratchResponseBody.TemplateScratch.PreferenceParameters]?

        public var resourceGroupId: String?

        public var sourceResourceGroup: GetTemplateScratchResponseBody.TemplateScratch.SourceResourceGroup?

        public var sourceResources: [GetTemplateScratchResponseBody.TemplateScratch.SourceResources]?

        public var sourceTag: GetTemplateScratchResponseBody.TemplateScratch.SourceTag?

        public var stackProvision: GetTemplateScratchResponseBody.TemplateScratch.StackProvision?

        public var stacks: [GetTemplateScratchResponseBody.TemplateScratch.Stacks]?

        public var status: String?

        public var statusReason: String?

        public var templateScratchData: [String: Any]?

        public var templateScratchId: String?

        public var templateScratchType: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.sourceResourceGroup?.validate()
            try self.sourceTag?.validate()
            try self.stackProvision?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.failedCode != nil {
                map["FailedCode"] = self.failedCode!
            }
            if self.logicalIdStrategy != nil {
                map["LogicalIdStrategy"] = self.logicalIdStrategy!
            }
            if self.preferenceParameters != nil {
                var tmp : [Any] = []
                for k in self.preferenceParameters! {
                    tmp.append(k.toMap())
                }
                map["PreferenceParameters"] = tmp
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.sourceResourceGroup != nil {
                map["SourceResourceGroup"] = self.sourceResourceGroup?.toMap()
            }
            if self.sourceResources != nil {
                var tmp : [Any] = []
                for k in self.sourceResources! {
                    tmp.append(k.toMap())
                }
                map["SourceResources"] = tmp
            }
            if self.sourceTag != nil {
                map["SourceTag"] = self.sourceTag?.toMap()
            }
            if self.stackProvision != nil {
                map["StackProvision"] = self.stackProvision?.toMap()
            }
            if self.stacks != nil {
                var tmp : [Any] = []
                for k in self.stacks! {
                    tmp.append(k.toMap())
                }
                map["Stacks"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            if self.templateScratchData != nil {
                map["TemplateScratchData"] = self.templateScratchData!
            }
            if self.templateScratchId != nil {
                map["TemplateScratchId"] = self.templateScratchId!
            }
            if self.templateScratchType != nil {
                map["TemplateScratchType"] = self.templateScratchType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("FailedCode") {
                self.failedCode = dict["FailedCode"] as! String
            }
            if dict.keys.contains("LogicalIdStrategy") {
                self.logicalIdStrategy = dict["LogicalIdStrategy"] as! String
            }
            if dict.keys.contains("PreferenceParameters") {
                var tmp : [GetTemplateScratchResponseBody.TemplateScratch.PreferenceParameters] = []
                for v in dict["PreferenceParameters"] as! [Any] {
                    var model = GetTemplateScratchResponseBody.TemplateScratch.PreferenceParameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.preferenceParameters = tmp
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SourceResourceGroup") {
                var model = GetTemplateScratchResponseBody.TemplateScratch.SourceResourceGroup()
                model.fromMap(dict["SourceResourceGroup"] as! [String: Any])
                self.sourceResourceGroup = model
            }
            if dict.keys.contains("SourceResources") {
                var tmp : [GetTemplateScratchResponseBody.TemplateScratch.SourceResources] = []
                for v in dict["SourceResources"] as! [Any] {
                    var model = GetTemplateScratchResponseBody.TemplateScratch.SourceResources()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sourceResources = tmp
            }
            if dict.keys.contains("SourceTag") {
                var model = GetTemplateScratchResponseBody.TemplateScratch.SourceTag()
                model.fromMap(dict["SourceTag"] as! [String: Any])
                self.sourceTag = model
            }
            if dict.keys.contains("StackProvision") {
                var model = GetTemplateScratchResponseBody.TemplateScratch.StackProvision()
                model.fromMap(dict["StackProvision"] as! [String: Any])
                self.stackProvision = model
            }
            if dict.keys.contains("Stacks") {
                var tmp : [GetTemplateScratchResponseBody.TemplateScratch.Stacks] = []
                for v in dict["Stacks"] as! [Any] {
                    var model = GetTemplateScratchResponseBody.TemplateScratch.Stacks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.stacks = tmp
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
            if dict.keys.contains("TemplateScratchData") {
                self.templateScratchData = dict["TemplateScratchData"] as! [String: Any]
            }
            if dict.keys.contains("TemplateScratchId") {
                self.templateScratchId = dict["TemplateScratchId"] as! String
            }
            if dict.keys.contains("TemplateScratchType") {
                self.templateScratchType = dict["TemplateScratchType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var templateScratch: GetTemplateScratchResponseBody.TemplateScratch?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.templateScratch?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateScratch != nil {
            map["TemplateScratch"] = self.templateScratch?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateScratch") {
            var model = GetTemplateScratchResponseBody.TemplateScratch()
            model.fromMap(dict["TemplateScratch"] as! [String: Any])
            self.templateScratch = model
        }
    }
}

public class GetTemplateScratchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateScratchResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetTemplateScratchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTemplateSummaryRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public var changeSetId: String?

    public var clientToken: String?

    public var parameters: [GetTemplateSummaryRequest.Parameters]?

    public var regionId: String?

    public var stackGroupName: String?

    public var stackId: String?

    public var templateBody: String?

    public var templateId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeSetId != nil {
            map["ChangeSetId"] = self.changeSetId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeSetId") {
            self.changeSetId = dict["ChangeSetId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Parameters") {
            var tmp : [GetTemplateSummaryRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = GetTemplateSummaryRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class GetTemplateSummaryResponseBody : Tea.TeaModel {
    public class ResourceIdentifierSummaries : Tea.TeaModel {
        public var logicalResourceIds: [String]?

        public var resourceIdentifiers: [String]?

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
            if self.logicalResourceIds != nil {
                map["LogicalResourceIds"] = self.logicalResourceIds!
            }
            if self.resourceIdentifiers != nil {
                map["ResourceIdentifiers"] = self.resourceIdentifiers!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogicalResourceIds") {
                self.logicalResourceIds = dict["LogicalResourceIds"] as! [String]
            }
            if dict.keys.contains("ResourceIdentifiers") {
                self.resourceIdentifiers = dict["ResourceIdentifiers"] as! [String]
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var description_: String?

    public var metadata: [String: Any]?

    public var parameters: [[String: Any]]?

    public var requestId: String?

    public var resourceIdentifierSummaries: [GetTemplateSummaryResponseBody.ResourceIdentifierSummaries]?

    public var resourceTypes: [String]?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceIdentifierSummaries != nil {
            var tmp : [Any] = []
            for k in self.resourceIdentifierSummaries! {
                tmp.append(k.toMap())
            }
            map["ResourceIdentifierSummaries"] = tmp
        }
        if self.resourceTypes != nil {
            map["ResourceTypes"] = self.resourceTypes!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Metadata") {
            self.metadata = dict["Metadata"] as! [String: Any]
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceIdentifierSummaries") {
            var tmp : [GetTemplateSummaryResponseBody.ResourceIdentifierSummaries] = []
            for v in dict["ResourceIdentifierSummaries"] as! [Any] {
                var model = GetTemplateSummaryResponseBody.ResourceIdentifierSummaries()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceIdentifierSummaries = tmp
        }
        if dict.keys.contains("ResourceTypes") {
            self.resourceTypes = dict["ResourceTypes"] as! [String]
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetTemplateSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateSummaryResponseBody?

    public override init() {
        super.init()
    }

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
            var model = GetTemplateSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportStacksToStackGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var operationDescription: String?

    public var operationPreferences: [String: Any]?

    public var regionId: String?

    public var resourceDirectoryFolderIds: [String]?

    public var stackArns: [String]?

    public var stackGroupName: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.operationDescription != nil {
            map["OperationDescription"] = self.operationDescription!
        }
        if self.operationPreferences != nil {
            map["OperationPreferences"] = self.operationPreferences!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceDirectoryFolderIds != nil {
            map["ResourceDirectoryFolderIds"] = self.resourceDirectoryFolderIds!
        }
        if self.stackArns != nil {
            map["StackArns"] = self.stackArns!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OperationDescription") {
            self.operationDescription = dict["OperationDescription"] as! String
        }
        if dict.keys.contains("OperationPreferences") {
            self.operationPreferences = dict["OperationPreferences"] as! [String: Any]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceDirectoryFolderIds") {
            self.resourceDirectoryFolderIds = dict["ResourceDirectoryFolderIds"] as! [String]
        }
        if dict.keys.contains("StackArns") {
            self.stackArns = dict["StackArns"] as! [String]
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
    }
}

public class ImportStacksToStackGroupShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var operationDescription: String?

    public var operationPreferencesShrink: String?

    public var regionId: String?

    public var resourceDirectoryFolderIdsShrink: String?

    public var stackArnsShrink: String?

    public var stackGroupName: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.operationDescription != nil {
            map["OperationDescription"] = self.operationDescription!
        }
        if self.operationPreferencesShrink != nil {
            map["OperationPreferences"] = self.operationPreferencesShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceDirectoryFolderIdsShrink != nil {
            map["ResourceDirectoryFolderIds"] = self.resourceDirectoryFolderIdsShrink!
        }
        if self.stackArnsShrink != nil {
            map["StackArns"] = self.stackArnsShrink!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OperationDescription") {
            self.operationDescription = dict["OperationDescription"] as! String
        }
        if dict.keys.contains("OperationPreferences") {
            self.operationPreferencesShrink = dict["OperationPreferences"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceDirectoryFolderIds") {
            self.resourceDirectoryFolderIdsShrink = dict["ResourceDirectoryFolderIds"] as! String
        }
        if dict.keys.contains("StackArns") {
            self.stackArnsShrink = dict["StackArns"] as! String
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
    }
}

public class ImportStacksToStackGroupResponseBody : Tea.TeaModel {
    public var operationId: String?

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
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperationId") {
            self.operationId = dict["OperationId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ImportStacksToStackGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportStacksToStackGroupResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ImportStacksToStackGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAITaskEventsRequest : Tea.TeaModel {
    public var maxResults: String?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ListAITaskEventsResponseBody : Tea.TeaModel {
    public class Events : Tea.TeaModel {
        public var agentType: String?

        public var createTime: String?

        public var estimatedProcessingTime: String?

        public var eventData: String?

        public var handlerProcessStatus: String?

        public var handlerType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentType != nil {
                map["AgentType"] = self.agentType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.estimatedProcessingTime != nil {
                map["EstimatedProcessingTime"] = self.estimatedProcessingTime!
            }
            if self.eventData != nil {
                map["EventData"] = self.eventData!
            }
            if self.handlerProcessStatus != nil {
                map["HandlerProcessStatus"] = self.handlerProcessStatus!
            }
            if self.handlerType != nil {
                map["HandlerType"] = self.handlerType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgentType") {
                self.agentType = dict["AgentType"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EstimatedProcessingTime") {
                self.estimatedProcessingTime = dict["EstimatedProcessingTime"] as! String
            }
            if dict.keys.contains("EventData") {
                self.eventData = dict["EventData"] as! String
            }
            if dict.keys.contains("HandlerProcessStatus") {
                self.handlerProcessStatus = dict["HandlerProcessStatus"] as! String
            }
            if dict.keys.contains("HandlerType") {
                self.handlerType = dict["HandlerType"] as! String
            }
        }
    }
    public var code: String?

    public var events: [ListAITaskEventsResponseBody.Events]?

    public var httpStatusCode: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var success: String?

    public var taskId: String?

    public var taskStatus: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["Events"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Events") {
            var tmp : [ListAITaskEventsResponseBody.Events] = []
            for v in dict["Events"] as! [Any] {
                var model = ListAITaskEventsResponseBody.Events()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.events = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
    }
}

public class ListAITaskEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAITaskEventsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListAITaskEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAITasksRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var taskId: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
    }
}

public class ListAITasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var createTime: String?

        public var prompt: String?

        public var status: String?

        public var statusReason: String?

        public var taskId: String?

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
            if self.prompt != nil {
                map["Prompt"] = self.prompt!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Prompt") {
                self.prompt = dict["Prompt"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var httpStatusCode: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: String?

    public var tasks: [ListAITasksResponseBody.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("Tasks") {
            var tmp : [ListAITasksResponseBody.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = ListAITasksResponseBody.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
    }
}

public class ListAITasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAITasksResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListAITasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListChangeSetsRequest : Tea.TeaModel {
    public var changeSetId: String?

    public var changeSetName: [String]?

    public var executionStatus: [String]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var stackId: String?

    public var status: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeSetId != nil {
            map["ChangeSetId"] = self.changeSetId!
        }
        if self.changeSetName != nil {
            map["ChangeSetName"] = self.changeSetName!
        }
        if self.executionStatus != nil {
            map["ExecutionStatus"] = self.executionStatus!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeSetId") {
            self.changeSetId = dict["ChangeSetId"] as! String
        }
        if dict.keys.contains("ChangeSetName") {
            self.changeSetName = dict["ChangeSetName"] as! [String]
        }
        if dict.keys.contains("ExecutionStatus") {
            self.executionStatus = dict["ExecutionStatus"] as! [String]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! [String]
        }
    }
}

public class ListChangeSetsResponseBody : Tea.TeaModel {
    public class ChangeSets : Tea.TeaModel {
        public var changeSetId: String?

        public var changeSetName: String?

        public var changeSetType: String?

        public var createTime: String?

        public var description_: String?

        public var executionStatus: String?

        public var regionId: String?

        public var stackId: String?

        public var stackName: String?

        public var status: String?

        public var statusReason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeSetId != nil {
                map["ChangeSetId"] = self.changeSetId!
            }
            if self.changeSetName != nil {
                map["ChangeSetName"] = self.changeSetName!
            }
            if self.changeSetType != nil {
                map["ChangeSetType"] = self.changeSetType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.executionStatus != nil {
                map["ExecutionStatus"] = self.executionStatus!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.stackId != nil {
                map["StackId"] = self.stackId!
            }
            if self.stackName != nil {
                map["StackName"] = self.stackName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeSetId") {
                self.changeSetId = dict["ChangeSetId"] as! String
            }
            if dict.keys.contains("ChangeSetName") {
                self.changeSetName = dict["ChangeSetName"] as! String
            }
            if dict.keys.contains("ChangeSetType") {
                self.changeSetType = dict["ChangeSetType"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExecutionStatus") {
                self.executionStatus = dict["ExecutionStatus"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("StackId") {
                self.stackId = dict["StackId"] as! String
            }
            if dict.keys.contains("StackName") {
                self.stackName = dict["StackName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
        }
    }
    public var changeSets: [ListChangeSetsResponseBody.ChangeSets]?

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
        if self.changeSets != nil {
            var tmp : [Any] = []
            for k in self.changeSets! {
                tmp.append(k.toMap())
            }
            map["ChangeSets"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if dict.keys.contains("ChangeSets") {
            var tmp : [ListChangeSetsResponseBody.ChangeSets] = []
            for v in dict["ChangeSets"] as! [Any] {
                var model = ListChangeSetsResponseBody.ChangeSets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.changeSets = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListChangeSetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChangeSetsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListChangeSetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDiagnosticsRequest : Tea.TeaModel {
    public var diagnosticKey: String?

    public var diagnosticProduct: String?

    public var maxResults: String?

    public var nextToken: String?

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
        if self.diagnosticKey != nil {
            map["DiagnosticKey"] = self.diagnosticKey!
        }
        if self.diagnosticProduct != nil {
            map["DiagnosticProduct"] = self.diagnosticProduct!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiagnosticKey") {
            self.diagnosticKey = dict["DiagnosticKey"] as! String
        }
        if dict.keys.contains("DiagnosticProduct") {
            self.diagnosticProduct = dict["DiagnosticProduct"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListDiagnosticsResponseBody : Tea.TeaModel {
    public class Diagnostics : Tea.TeaModel {
        public var createTime: String?

        public var diagnosticKey: String?

        public var diagnosticProduct: String?

        public var reportId: String?

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
                map["CreateTime"] = self.createTime!
            }
            if self.diagnosticKey != nil {
                map["DiagnosticKey"] = self.diagnosticKey!
            }
            if self.diagnosticProduct != nil {
                map["DiagnosticProduct"] = self.diagnosticProduct!
            }
            if self.reportId != nil {
                map["ReportId"] = self.reportId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DiagnosticKey") {
                self.diagnosticKey = dict["DiagnosticKey"] as! String
            }
            if dict.keys.contains("DiagnosticProduct") {
                self.diagnosticProduct = dict["DiagnosticProduct"] as! String
            }
            if dict.keys.contains("ReportId") {
                self.reportId = dict["ReportId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var diagnostics: [ListDiagnosticsResponseBody.Diagnostics]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diagnostics != nil {
            var tmp : [Any] = []
            for k in self.diagnostics! {
                tmp.append(k.toMap())
            }
            map["Diagnostics"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Diagnostics") {
            var tmp : [ListDiagnosticsResponseBody.Diagnostics] = []
            for v in dict["Diagnostics"] as! [Any] {
                var model = ListDiagnosticsResponseBody.Diagnostics()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.diagnostics = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class ListDiagnosticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDiagnosticsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListDiagnosticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourceTypeRegistrationsRequest : Tea.TeaModel {
    public var entityType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var registrationId: String?

    public var resourceType: String?

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
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.registrationId != nil {
            map["RegistrationId"] = self.registrationId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegistrationId") {
            self.registrationId = dict["RegistrationId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListResourceTypeRegistrationsResponseBody : Tea.TeaModel {
    public class Registrations : Tea.TeaModel {
        public var createTime: String?

        public var entityType: String?

        public var registrationId: String?

        public var resourceType: String?

        public var status: String?

        public var statusReason: String?

        public var versionId: String?

        public override init() {
            super.init()
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
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.registrationId != nil {
                map["RegistrationId"] = self.registrationId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EntityType") {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("RegistrationId") {
                self.registrationId = dict["RegistrationId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
            if dict.keys.contains("VersionId") {
                self.versionId = dict["VersionId"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var registrations: [ListResourceTypeRegistrationsResponseBody.Registrations]?

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
            map["PageNumber"] = self.pageNumber!
        }
        if self.registrations != nil {
            var tmp : [Any] = []
            for k in self.registrations! {
                tmp.append(k.toMap())
            }
            map["Registrations"] = tmp
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
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("Registrations") {
            var tmp : [ListResourceTypeRegistrationsResponseBody.Registrations] = []
            for v in dict["Registrations"] as! [Any] {
                var model = ListResourceTypeRegistrationsResponseBody.Registrations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.registrations = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListResourceTypeRegistrationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceTypeRegistrationsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListResourceTypeRegistrationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourceTypeVersionsRequest : Tea.TeaModel {
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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ListResourceTypeVersionsResponseBody : Tea.TeaModel {
    public class ResourceTypeVersions : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var entityType: String?

        public var isDefaultVersion: Bool?

        public var provider: String?

        public var resourceType: String?

        public var updateTime: String?

        public var versionId: String?

        public override init() {
            super.init()
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
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.isDefaultVersion != nil {
                map["IsDefaultVersion"] = self.isDefaultVersion!
            }
            if self.provider != nil {
                map["Provider"] = self.provider!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EntityType") {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("IsDefaultVersion") {
                self.isDefaultVersion = dict["IsDefaultVersion"] as! Bool
            }
            if dict.keys.contains("Provider") {
                self.provider = dict["Provider"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("VersionId") {
                self.versionId = dict["VersionId"] as! String
            }
        }
    }
    public var requestId: String?

    public var resourceTypeVersions: [ListResourceTypeVersionsResponseBody.ResourceTypeVersions]?

    public override init() {
        super.init()
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
        if self.resourceTypeVersions != nil {
            var tmp : [Any] = []
            for k in self.resourceTypeVersions! {
                tmp.append(k.toMap())
            }
            map["ResourceTypeVersions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceTypeVersions") {
            var tmp : [ListResourceTypeVersionsResponseBody.ResourceTypeVersions] = []
            for v in dict["ResourceTypeVersions"] as! [Any] {
                var model = ListResourceTypeVersionsResponseBody.ResourceTypeVersions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceTypeVersions = tmp
        }
    }
}

public class ListResourceTypeVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceTypeVersionsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListResourceTypeVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourceTypesRequest : Tea.TeaModel {
    public var entityType: String?

    public var provider: String?

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
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Provider") {
            self.provider = dict["Provider"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ListResourceTypesResponseBody : Tea.TeaModel {
    public class ResourceTypeSummaries : Tea.TeaModel {
        public var createTime: String?

        public var defaultVersionId: String?

        public var description_: String?

        public var entityType: String?

        public var latestVersionId: String?

        public var provider: String?

        public var resourceType: String?

        public var totalVersionCount: Int32?

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
            if self.defaultVersionId != nil {
                map["DefaultVersionId"] = self.defaultVersionId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.latestVersionId != nil {
                map["LatestVersionId"] = self.latestVersionId!
            }
            if self.provider != nil {
                map["Provider"] = self.provider!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.totalVersionCount != nil {
                map["TotalVersionCount"] = self.totalVersionCount!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DefaultVersionId") {
                self.defaultVersionId = dict["DefaultVersionId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EntityType") {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("LatestVersionId") {
                self.latestVersionId = dict["LatestVersionId"] as! String
            }
            if dict.keys.contains("Provider") {
                self.provider = dict["Provider"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("TotalVersionCount") {
                self.totalVersionCount = dict["TotalVersionCount"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var resourceTypeSummaries: [ListResourceTypesResponseBody.ResourceTypeSummaries]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceTypeSummaries != nil {
            var tmp : [Any] = []
            for k in self.resourceTypeSummaries! {
                tmp.append(k.toMap())
            }
            map["ResourceTypeSummaries"] = tmp
        }
        if self.resourceTypes != nil {
            map["ResourceTypes"] = self.resourceTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceTypeSummaries") {
            var tmp : [ListResourceTypesResponseBody.ResourceTypeSummaries] = []
            for v in dict["ResourceTypeSummaries"] as! [Any] {
                var model = ListResourceTypesResponseBody.ResourceTypeSummaries()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceTypeSummaries = tmp
        }
        if dict.keys.contains("ResourceTypes") {
            self.resourceTypes = dict["ResourceTypes"] as! [String]
        }
    }
}

public class ListResourceTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceTypesResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListResourceTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListStackEventsRequest : Tea.TeaModel {
    public var logicalResourceId: [String]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var resourceType: [String]?

    public var stackId: String?

    public var status: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logicalResourceId != nil {
            map["LogicalResourceId"] = self.logicalResourceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogicalResourceId") {
            self.logicalResourceId = dict["LogicalResourceId"] as! [String]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! [String]
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! [String]
        }
    }
}

public class ListStackEventsResponseBody : Tea.TeaModel {
    public class Events : Tea.TeaModel {
        public var createTime: String?

        public var eventId: String?

        public var logicalResourceId: String?

        public var physicalResourceId: String?

        public var resourceType: String?

        public var stackId: String?

        public var stackName: String?

        public var status: String?

        public var statusReason: String?

        public override init() {
            super.init()
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
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.logicalResourceId != nil {
                map["LogicalResourceId"] = self.logicalResourceId!
            }
            if self.physicalResourceId != nil {
                map["PhysicalResourceId"] = self.physicalResourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.stackId != nil {
                map["StackId"] = self.stackId!
            }
            if self.stackName != nil {
                map["StackName"] = self.stackName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EventId") {
                self.eventId = dict["EventId"] as! String
            }
            if dict.keys.contains("LogicalResourceId") {
                self.logicalResourceId = dict["LogicalResourceId"] as! String
            }
            if dict.keys.contains("PhysicalResourceId") {
                self.physicalResourceId = dict["PhysicalResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("StackId") {
                self.stackId = dict["StackId"] as! String
            }
            if dict.keys.contains("StackName") {
                self.stackName = dict["StackName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
        }
    }
    public var events: [ListStackEventsResponseBody.Events]?

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
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["Events"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if dict.keys.contains("Events") {
            var tmp : [ListStackEventsResponseBody.Events] = []
            for v in dict["Events"] as! [Any] {
                var model = ListStackEventsResponseBody.Events()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.events = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListStackEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStackEventsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListStackEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListStackGroupOperationResultsRequest : Tea.TeaModel {
    public var operationId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperationId") {
            self.operationId = dict["OperationId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListStackGroupOperationResultsResponseBody : Tea.TeaModel {
    public class StackGroupOperationResults : Tea.TeaModel {
        public var accountId: String?

        public var rdFolderId: String?

        public var regionId: String?

        public var status: String?

        public var statusReason: String?

        public override init() {
            super.init()
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
                map["AccountId"] = self.accountId!
            }
            if self.rdFolderId != nil {
                map["RdFolderId"] = self.rdFolderId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("RdFolderId") {
                self.rdFolderId = dict["RdFolderId"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var stackGroupOperationResults: [ListStackGroupOperationResultsResponseBody.StackGroupOperationResults]?

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
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stackGroupOperationResults != nil {
            var tmp : [Any] = []
            for k in self.stackGroupOperationResults! {
                tmp.append(k.toMap())
            }
            map["StackGroupOperationResults"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackGroupOperationResults") {
            var tmp : [ListStackGroupOperationResultsResponseBody.StackGroupOperationResults] = []
            for v in dict["StackGroupOperationResults"] as! [Any] {
                var model = ListStackGroupOperationResultsResponseBody.StackGroupOperationResults()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.stackGroupOperationResults = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListStackGroupOperationResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStackGroupOperationResultsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListStackGroupOperationResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListStackGroupOperationsRequest : Tea.TeaModel {
    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var stackGroupName: String?

    public override init() {
        super.init()
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
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
    }
}

public class ListStackGroupOperationsResponseBody : Tea.TeaModel {
    public class StackGroupOperations : Tea.TeaModel {
        public var action: String?

        public var createTime: String?

        public var endTime: String?

        public var operationDescription: String?

        public var operationId: String?

        public var stackGroupId: String?

        public var stackGroupName: String?

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
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.operationDescription != nil {
                map["OperationDescription"] = self.operationDescription!
            }
            if self.operationId != nil {
                map["OperationId"] = self.operationId!
            }
            if self.stackGroupId != nil {
                map["StackGroupId"] = self.stackGroupId!
            }
            if self.stackGroupName != nil {
                map["StackGroupName"] = self.stackGroupName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("OperationDescription") {
                self.operationDescription = dict["OperationDescription"] as! String
            }
            if dict.keys.contains("OperationId") {
                self.operationId = dict["OperationId"] as! String
            }
            if dict.keys.contains("StackGroupId") {
                self.stackGroupId = dict["StackGroupId"] as! String
            }
            if dict.keys.contains("StackGroupName") {
                self.stackGroupName = dict["StackGroupName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var stackGroupOperations: [ListStackGroupOperationsResponseBody.StackGroupOperations]?

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
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stackGroupOperations != nil {
            var tmp : [Any] = []
            for k in self.stackGroupOperations! {
                tmp.append(k.toMap())
            }
            map["StackGroupOperations"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackGroupOperations") {
            var tmp : [ListStackGroupOperationsResponseBody.StackGroupOperations] = []
            for v in dict["StackGroupOperations"] as! [Any] {
                var model = ListStackGroupOperationsResponseBody.StackGroupOperations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.stackGroupOperations = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListStackGroupOperationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStackGroupOperationsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListStackGroupOperationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListStackGroupsRequest : Tea.TeaModel {
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
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var status: String?

    public var tags: [ListStackGroupsRequest.Tags]?

    public override init() {
        super.init()
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
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [ListStackGroupsRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = ListStackGroupsRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class ListStackGroupsResponseBody : Tea.TeaModel {
    public class StackGroups : Tea.TeaModel {
        public class AutoDeployment : Tea.TeaModel {
            public var enabled: Bool?

            public var retainStacksOnAccountRemoval: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.retainStacksOnAccountRemoval != nil {
                    map["RetainStacksOnAccountRemoval"] = self.retainStacksOnAccountRemoval!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Enabled") {
                    self.enabled = dict["Enabled"] as! Bool
                }
                if dict.keys.contains("RetainStacksOnAccountRemoval") {
                    self.retainStacksOnAccountRemoval = dict["RetainStacksOnAccountRemoval"] as! Bool
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
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var autoDeployment: ListStackGroupsResponseBody.StackGroups.AutoDeployment?

        public var createTime: String?

        public var description_: String?

        public var driftDetectionTime: String?

        public var permissionModel: String?

        public var resourceGroupId: String?

        public var stackGroupDriftStatus: String?

        public var stackGroupId: String?

        public var stackGroupName: String?

        public var status: String?

        public var tags: [ListStackGroupsResponseBody.StackGroups.Tags]?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.autoDeployment?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoDeployment != nil {
                map["AutoDeployment"] = self.autoDeployment?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.driftDetectionTime != nil {
                map["DriftDetectionTime"] = self.driftDetectionTime!
            }
            if self.permissionModel != nil {
                map["PermissionModel"] = self.permissionModel!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.stackGroupDriftStatus != nil {
                map["StackGroupDriftStatus"] = self.stackGroupDriftStatus!
            }
            if self.stackGroupId != nil {
                map["StackGroupId"] = self.stackGroupId!
            }
            if self.stackGroupName != nil {
                map["StackGroupName"] = self.stackGroupName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoDeployment") {
                var model = ListStackGroupsResponseBody.StackGroups.AutoDeployment()
                model.fromMap(dict["AutoDeployment"] as! [String: Any])
                self.autoDeployment = model
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DriftDetectionTime") {
                self.driftDetectionTime = dict["DriftDetectionTime"] as! String
            }
            if dict.keys.contains("PermissionModel") {
                self.permissionModel = dict["PermissionModel"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("StackGroupDriftStatus") {
                self.stackGroupDriftStatus = dict["StackGroupDriftStatus"] as! String
            }
            if dict.keys.contains("StackGroupId") {
                self.stackGroupId = dict["StackGroupId"] as! String
            }
            if dict.keys.contains("StackGroupName") {
                self.stackGroupName = dict["StackGroupName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListStackGroupsResponseBody.StackGroups.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListStackGroupsResponseBody.StackGroups.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var stackGroups: [ListStackGroupsResponseBody.StackGroups]?

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
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stackGroups != nil {
            var tmp : [Any] = []
            for k in self.stackGroups! {
                tmp.append(k.toMap())
            }
            map["StackGroups"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackGroups") {
            var tmp : [ListStackGroupsResponseBody.StackGroups] = []
            for v in dict["StackGroups"] as! [Any] {
                var model = ListStackGroupsResponseBody.StackGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.stackGroups = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListStackGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStackGroupsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListStackGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListStackInstancesRequest : Tea.TeaModel {
    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var stackGroupName: String?

    public var stackInstanceAccountId: String?

    public var stackInstanceRegionId: String?

    public override init() {
        super.init()
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
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        if self.stackInstanceAccountId != nil {
            map["StackInstanceAccountId"] = self.stackInstanceAccountId!
        }
        if self.stackInstanceRegionId != nil {
            map["StackInstanceRegionId"] = self.stackInstanceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
        if dict.keys.contains("StackInstanceAccountId") {
            self.stackInstanceAccountId = dict["StackInstanceAccountId"] as! String
        }
        if dict.keys.contains("StackInstanceRegionId") {
            self.stackInstanceRegionId = dict["StackInstanceRegionId"] as! String
        }
    }
}

public class ListStackInstancesResponseBody : Tea.TeaModel {
    public class StackInstances : Tea.TeaModel {
        public var accountId: String?

        public var driftDetectionTime: String?

        public var rdFolderId: String?

        public var regionId: String?

        public var stackDriftStatus: String?

        public var stackGroupId: String?

        public var stackGroupName: String?

        public var stackId: String?

        public var status: String?

        public var statusReason: String?

        public override init() {
            super.init()
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
                map["AccountId"] = self.accountId!
            }
            if self.driftDetectionTime != nil {
                map["DriftDetectionTime"] = self.driftDetectionTime!
            }
            if self.rdFolderId != nil {
                map["RdFolderId"] = self.rdFolderId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.stackDriftStatus != nil {
                map["StackDriftStatus"] = self.stackDriftStatus!
            }
            if self.stackGroupId != nil {
                map["StackGroupId"] = self.stackGroupId!
            }
            if self.stackGroupName != nil {
                map["StackGroupName"] = self.stackGroupName!
            }
            if self.stackId != nil {
                map["StackId"] = self.stackId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("DriftDetectionTime") {
                self.driftDetectionTime = dict["DriftDetectionTime"] as! String
            }
            if dict.keys.contains("RdFolderId") {
                self.rdFolderId = dict["RdFolderId"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("StackDriftStatus") {
                self.stackDriftStatus = dict["StackDriftStatus"] as! String
            }
            if dict.keys.contains("StackGroupId") {
                self.stackGroupId = dict["StackGroupId"] as! String
            }
            if dict.keys.contains("StackGroupName") {
                self.stackGroupName = dict["StackGroupName"] as! String
            }
            if dict.keys.contains("StackId") {
                self.stackId = dict["StackId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var stackInstances: [ListStackInstancesResponseBody.StackInstances]?

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
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stackInstances != nil {
            var tmp : [Any] = []
            for k in self.stackInstances! {
                tmp.append(k.toMap())
            }
            map["StackInstances"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackInstances") {
            var tmp : [ListStackInstancesResponseBody.StackInstances] = []
            for v in dict["StackInstances"] as! [Any] {
                var model = ListStackInstancesResponseBody.StackInstances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.stackInstances = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListStackInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStackInstancesResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListStackInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListStackOperationRisksRequest : Tea.TeaModel {
    public var clientToken: String?

    public var operationType: String?

    public var ramRoleName: String?

    public var regionId: String?

    public var retainAllResources: Bool?

    public var retainResources: [String]?

    public var stackId: String?

    public var templateBody: String?

    public var templateId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.ramRoleName != nil {
            map["RamRoleName"] = self.ramRoleName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.retainAllResources != nil {
            map["RetainAllResources"] = self.retainAllResources!
        }
        if self.retainResources != nil {
            map["RetainResources"] = self.retainResources!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OperationType") {
            self.operationType = dict["OperationType"] as! String
        }
        if dict.keys.contains("RamRoleName") {
            self.ramRoleName = dict["RamRoleName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RetainAllResources") {
            self.retainAllResources = dict["RetainAllResources"] as! Bool
        }
        if dict.keys.contains("RetainResources") {
            self.retainResources = dict["RetainResources"] as! [String]
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class ListStackOperationRisksResponseBody : Tea.TeaModel {
    public class RiskResources : Tea.TeaModel {
        public var code: String?

        public var logicalResourceId: String?

        public var message: String?

        public var physicalResourceId: String?

        public var reason: String?

        public var requestId: String?

        public var resourceType: String?

        public var riskType: String?

        public override init() {
            super.init()
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
                map["Code"] = self.code!
            }
            if self.logicalResourceId != nil {
                map["LogicalResourceId"] = self.logicalResourceId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.physicalResourceId != nil {
                map["PhysicalResourceId"] = self.physicalResourceId!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.riskType != nil {
                map["RiskType"] = self.riskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("LogicalResourceId") {
                self.logicalResourceId = dict["LogicalResourceId"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("PhysicalResourceId") {
                self.physicalResourceId = dict["PhysicalResourceId"] as! String
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("RiskType") {
                self.riskType = dict["RiskType"] as! String
            }
        }
    }
    public var missingPolicyActions: [String]?

    public var requestId: String?

    public var riskResources: [ListStackOperationRisksResponseBody.RiskResources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.missingPolicyActions != nil {
            map["MissingPolicyActions"] = self.missingPolicyActions!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.riskResources != nil {
            var tmp : [Any] = []
            for k in self.riskResources! {
                tmp.append(k.toMap())
            }
            map["RiskResources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MissingPolicyActions") {
            self.missingPolicyActions = dict["MissingPolicyActions"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RiskResources") {
            var tmp : [ListStackOperationRisksResponseBody.RiskResources] = []
            for v in dict["RiskResources"] as! [Any] {
                var model = ListStackOperationRisksResponseBody.RiskResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.riskResources = tmp
        }
    }
}

public class ListStackOperationRisksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStackOperationRisksResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListStackOperationRisksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListStackResourceDriftsRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var nextToken: String?

    public var regionId: String?

    public var resourceDriftStatus: [String]?

    public var stackId: String?

    public override init() {
        super.init()
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
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceDriftStatus != nil {
            map["ResourceDriftStatus"] = self.resourceDriftStatus!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceDriftStatus") {
            self.resourceDriftStatus = dict["ResourceDriftStatus"] as! [String]
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class ListStackResourceDriftsResponseBody : Tea.TeaModel {
    public class ResourceDrifts : Tea.TeaModel {
        public class ModuleInfo : Tea.TeaModel {
            public var logicalIdHierarchy: String?

            public var typeHierarchy: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.logicalIdHierarchy != nil {
                    map["LogicalIdHierarchy"] = self.logicalIdHierarchy!
                }
                if self.typeHierarchy != nil {
                    map["TypeHierarchy"] = self.typeHierarchy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LogicalIdHierarchy") {
                    self.logicalIdHierarchy = dict["LogicalIdHierarchy"] as! String
                }
                if dict.keys.contains("TypeHierarchy") {
                    self.typeHierarchy = dict["TypeHierarchy"] as! String
                }
            }
        }
        public class PropertyDifferences : Tea.TeaModel {
            public var actualValue: String?

            public var differenceType: String?

            public var expectedValue: String?

            public var propertyPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.actualValue != nil {
                    map["ActualValue"] = self.actualValue!
                }
                if self.differenceType != nil {
                    map["DifferenceType"] = self.differenceType!
                }
                if self.expectedValue != nil {
                    map["ExpectedValue"] = self.expectedValue!
                }
                if self.propertyPath != nil {
                    map["PropertyPath"] = self.propertyPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActualValue") {
                    self.actualValue = dict["ActualValue"] as! String
                }
                if dict.keys.contains("DifferenceType") {
                    self.differenceType = dict["DifferenceType"] as! String
                }
                if dict.keys.contains("ExpectedValue") {
                    self.expectedValue = dict["ExpectedValue"] as! String
                }
                if dict.keys.contains("PropertyPath") {
                    self.propertyPath = dict["PropertyPath"] as! String
                }
            }
        }
        public var actualProperties: String?

        public var driftDetectionTime: String?

        public var expectedProperties: String?

        public var logicalResourceId: String?

        public var moduleInfo: ListStackResourceDriftsResponseBody.ResourceDrifts.ModuleInfo?

        public var physicalResourceId: String?

        public var propertyDifferences: [ListStackResourceDriftsResponseBody.ResourceDrifts.PropertyDifferences]?

        public var resourceDriftStatus: String?

        public var resourceType: String?

        public var stackId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.moduleInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actualProperties != nil {
                map["ActualProperties"] = self.actualProperties!
            }
            if self.driftDetectionTime != nil {
                map["DriftDetectionTime"] = self.driftDetectionTime!
            }
            if self.expectedProperties != nil {
                map["ExpectedProperties"] = self.expectedProperties!
            }
            if self.logicalResourceId != nil {
                map["LogicalResourceId"] = self.logicalResourceId!
            }
            if self.moduleInfo != nil {
                map["ModuleInfo"] = self.moduleInfo?.toMap()
            }
            if self.physicalResourceId != nil {
                map["PhysicalResourceId"] = self.physicalResourceId!
            }
            if self.propertyDifferences != nil {
                var tmp : [Any] = []
                for k in self.propertyDifferences! {
                    tmp.append(k.toMap())
                }
                map["PropertyDifferences"] = tmp
            }
            if self.resourceDriftStatus != nil {
                map["ResourceDriftStatus"] = self.resourceDriftStatus!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.stackId != nil {
                map["StackId"] = self.stackId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActualProperties") {
                self.actualProperties = dict["ActualProperties"] as! String
            }
            if dict.keys.contains("DriftDetectionTime") {
                self.driftDetectionTime = dict["DriftDetectionTime"] as! String
            }
            if dict.keys.contains("ExpectedProperties") {
                self.expectedProperties = dict["ExpectedProperties"] as! String
            }
            if dict.keys.contains("LogicalResourceId") {
                self.logicalResourceId = dict["LogicalResourceId"] as! String
            }
            if dict.keys.contains("ModuleInfo") {
                var model = ListStackResourceDriftsResponseBody.ResourceDrifts.ModuleInfo()
                model.fromMap(dict["ModuleInfo"] as! [String: Any])
                self.moduleInfo = model
            }
            if dict.keys.contains("PhysicalResourceId") {
                self.physicalResourceId = dict["PhysicalResourceId"] as! String
            }
            if dict.keys.contains("PropertyDifferences") {
                var tmp : [ListStackResourceDriftsResponseBody.ResourceDrifts.PropertyDifferences] = []
                for v in dict["PropertyDifferences"] as! [Any] {
                    var model = ListStackResourceDriftsResponseBody.ResourceDrifts.PropertyDifferences()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.propertyDifferences = tmp
            }
            if dict.keys.contains("ResourceDriftStatus") {
                self.resourceDriftStatus = dict["ResourceDriftStatus"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("StackId") {
                self.stackId = dict["StackId"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var resourceDrifts: [ListStackResourceDriftsResponseBody.ResourceDrifts]?

    public override init() {
        super.init()
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
        if self.resourceDrifts != nil {
            var tmp : [Any] = []
            for k in self.resourceDrifts! {
                tmp.append(k.toMap())
            }
            map["ResourceDrifts"] = tmp
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
        if dict.keys.contains("ResourceDrifts") {
            var tmp : [ListStackResourceDriftsResponseBody.ResourceDrifts] = []
            for v in dict["ResourceDrifts"] as! [Any] {
                var model = ListStackResourceDriftsResponseBody.ResourceDrifts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceDrifts = tmp
        }
    }
}

public class ListStackResourceDriftsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStackResourceDriftsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListStackResourceDriftsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListStackResourcesRequest : Tea.TeaModel {
    public var regionId: String?

    public var stackId: String?

    public override init() {
        super.init()
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
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class ListStackResourcesResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public class ModuleInfo : Tea.TeaModel {
            public var logicalIdHierarchy: String?

            public var typeHierarchy: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.logicalIdHierarchy != nil {
                    map["LogicalIdHierarchy"] = self.logicalIdHierarchy!
                }
                if self.typeHierarchy != nil {
                    map["TypeHierarchy"] = self.typeHierarchy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LogicalIdHierarchy") {
                    self.logicalIdHierarchy = dict["LogicalIdHierarchy"] as! String
                }
                if dict.keys.contains("TypeHierarchy") {
                    self.typeHierarchy = dict["TypeHierarchy"] as! String
                }
            }
        }
        public var createTime: String?

        public var driftDetectionTime: String?

        public var logicalResourceId: String?

        public var moduleInfo: ListStackResourcesResponseBody.Resources.ModuleInfo?

        public var physicalResourceId: String?

        public var resourceDriftStatus: String?

        public var resourceType: String?

        public var stackId: String?

        public var stackName: String?

        public var status: String?

        public var statusReason: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.moduleInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.driftDetectionTime != nil {
                map["DriftDetectionTime"] = self.driftDetectionTime!
            }
            if self.logicalResourceId != nil {
                map["LogicalResourceId"] = self.logicalResourceId!
            }
            if self.moduleInfo != nil {
                map["ModuleInfo"] = self.moduleInfo?.toMap()
            }
            if self.physicalResourceId != nil {
                map["PhysicalResourceId"] = self.physicalResourceId!
            }
            if self.resourceDriftStatus != nil {
                map["ResourceDriftStatus"] = self.resourceDriftStatus!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.stackId != nil {
                map["StackId"] = self.stackId!
            }
            if self.stackName != nil {
                map["StackName"] = self.stackName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DriftDetectionTime") {
                self.driftDetectionTime = dict["DriftDetectionTime"] as! String
            }
            if dict.keys.contains("LogicalResourceId") {
                self.logicalResourceId = dict["LogicalResourceId"] as! String
            }
            if dict.keys.contains("ModuleInfo") {
                var model = ListStackResourcesResponseBody.Resources.ModuleInfo()
                model.fromMap(dict["ModuleInfo"] as! [String: Any])
                self.moduleInfo = model
            }
            if dict.keys.contains("PhysicalResourceId") {
                self.physicalResourceId = dict["PhysicalResourceId"] as! String
            }
            if dict.keys.contains("ResourceDriftStatus") {
                self.resourceDriftStatus = dict["ResourceDriftStatus"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("StackId") {
                self.stackId = dict["StackId"] as! String
            }
            if dict.keys.contains("StackName") {
                self.stackName = dict["StackName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var resources: [ListStackResourcesResponseBody.Resources]?

    public override init() {
        super.init()
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
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") {
            var tmp : [ListStackResourcesResponseBody.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = ListStackResourcesResponseBody.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
        }
    }
}

public class ListStackResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStackResourcesResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListStackResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListStacksRequest : Tea.TeaModel {
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
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var endTime: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var parentStackId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var showNestedStack: Bool?

    public var stackId: String?

    public var stackIds: [String]?

    public var stackName: [String]?

    public var startTime: String?

    public var status: [String]?

    public var tag: [ListStacksRequest.Tag]?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentStackId != nil {
            map["ParentStackId"] = self.parentStackId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.showNestedStack != nil {
            map["ShowNestedStack"] = self.showNestedStack!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.stackIds != nil {
            map["StackIds"] = self.stackIds!
        }
        if self.stackName != nil {
            map["StackName"] = self.stackName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ParentStackId") {
            self.parentStackId = dict["ParentStackId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ShowNestedStack") {
            self.showNestedStack = dict["ShowNestedStack"] as! Bool
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("StackIds") {
            self.stackIds = dict["StackIds"] as! [String]
        }
        if dict.keys.contains("StackName") {
            self.stackName = dict["StackName"] as! [String]
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! [String]
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListStacksRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListStacksRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListStacksResponseBody : Tea.TeaModel {
    public class Stacks : Tea.TeaModel {
        public class OperationInfo : Tea.TeaModel {
            public var action: String?

            public var code: String?

            public var logicalResourceId: String?

            public var message: String?

            public var requestId: String?

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
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.logicalResourceId != nil {
                    map["LogicalResourceId"] = self.logicalResourceId!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.requestId != nil {
                    map["RequestId"] = self.requestId!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("LogicalResourceId") {
                    self.logicalResourceId = dict["LogicalResourceId"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("RequestId") {
                    self.requestId = dict["RequestId"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
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
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var createTime: String?

        public var deletionProtection: String?

        public var disableRollback: Bool?

        public var driftDetectionTime: String?

        public var operationInfo: ListStacksResponseBody.Stacks.OperationInfo?

        public var parentStackId: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var serviceManaged: Bool?

        public var serviceName: String?

        public var stackDriftStatus: String?

        public var stackId: String?

        public var stackName: String?

        public var stackType: String?

        public var status: String?

        public var statusReason: String?

        public var tags: [ListStacksResponseBody.Stacks.Tags]?

        public var timeoutInMinutes: Int32?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.operationInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deletionProtection != nil {
                map["DeletionProtection"] = self.deletionProtection!
            }
            if self.disableRollback != nil {
                map["DisableRollback"] = self.disableRollback!
            }
            if self.driftDetectionTime != nil {
                map["DriftDetectionTime"] = self.driftDetectionTime!
            }
            if self.operationInfo != nil {
                map["OperationInfo"] = self.operationInfo?.toMap()
            }
            if self.parentStackId != nil {
                map["ParentStackId"] = self.parentStackId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.serviceManaged != nil {
                map["ServiceManaged"] = self.serviceManaged!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.stackDriftStatus != nil {
                map["StackDriftStatus"] = self.stackDriftStatus!
            }
            if self.stackId != nil {
                map["StackId"] = self.stackId!
            }
            if self.stackName != nil {
                map["StackName"] = self.stackName!
            }
            if self.stackType != nil {
                map["StackType"] = self.stackType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.timeoutInMinutes != nil {
                map["TimeoutInMinutes"] = self.timeoutInMinutes!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeletionProtection") {
                self.deletionProtection = dict["DeletionProtection"] as! String
            }
            if dict.keys.contains("DisableRollback") {
                self.disableRollback = dict["DisableRollback"] as! Bool
            }
            if dict.keys.contains("DriftDetectionTime") {
                self.driftDetectionTime = dict["DriftDetectionTime"] as! String
            }
            if dict.keys.contains("OperationInfo") {
                var model = ListStacksResponseBody.Stacks.OperationInfo()
                model.fromMap(dict["OperationInfo"] as! [String: Any])
                self.operationInfo = model
            }
            if dict.keys.contains("ParentStackId") {
                self.parentStackId = dict["ParentStackId"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ServiceManaged") {
                self.serviceManaged = dict["ServiceManaged"] as! Bool
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("StackDriftStatus") {
                self.stackDriftStatus = dict["StackDriftStatus"] as! String
            }
            if dict.keys.contains("StackId") {
                self.stackId = dict["StackId"] as! String
            }
            if dict.keys.contains("StackName") {
                self.stackName = dict["StackName"] as! String
            }
            if dict.keys.contains("StackType") {
                self.stackType = dict["StackType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListStacksResponseBody.Stacks.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListStacksResponseBody.Stacks.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("TimeoutInMinutes") {
                self.timeoutInMinutes = dict["TimeoutInMinutes"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var stacks: [ListStacksResponseBody.Stacks]?

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
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stacks != nil {
            var tmp : [Any] = []
            for k in self.stacks! {
                tmp.append(k.toMap())
            }
            map["Stacks"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Stacks") {
            var tmp : [ListStacksResponseBody.Stacks] = []
            for v in dict["Stacks"] as! [Any] {
                var model = ListStacksResponseBody.Stacks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.stacks = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListStacksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStacksResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListStacksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagKeysRequest : Tea.TeaModel {
    public var nextToken: String?

    public var regionId: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ListTagKeysResponseBody : Tea.TeaModel {
    public var keys: [String]?

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
        if self.keys != nil {
            map["Keys"] = self.keys!
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
        if dict.keys.contains("Keys") {
            self.keys = dict["Keys"] as! [String]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListTagKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagKeysResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListTagKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
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
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var nextToken: String?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListTagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public var resourceId: String?

        public var resourceType: String?

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
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("TagKey") {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") {
                self.tagValue = dict["TagValue"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

    public override init() {
        super.init()
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
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["TagResources"] = tmp
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
        if dict.keys.contains("TagResources") {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in dict["TagResources"] as! [Any] {
                var model = ListTagResourcesResponseBody.TagResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagResources = tmp
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagValuesRequest : Tea.TeaModel {
    public var key: String?

    public var nextToken: String?

    public var regionId: String?

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
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ListTagValuesResponseBody : Tea.TeaModel {
    public var nextToken: String?

    public var requestId: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.values != nil {
            map["Values"] = self.values!
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
        if dict.keys.contains("Values") {
            self.values = dict["Values"] as! [String]
        }
    }
}

public class ListTagValuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagValuesResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListTagValuesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTemplateScratchesRequest : Tea.TeaModel {
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
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var status: String?

    public var tags: [ListTemplateScratchesRequest.Tags]?

    public var templateScratchId: String?

    public var templateScratchType: String?

    public override init() {
        super.init()
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
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.templateScratchId != nil {
            map["TemplateScratchId"] = self.templateScratchId!
        }
        if self.templateScratchType != nil {
            map["TemplateScratchType"] = self.templateScratchType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [ListTemplateScratchesRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = ListTemplateScratchesRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TemplateScratchId") {
            self.templateScratchId = dict["TemplateScratchId"] as! String
        }
        if dict.keys.contains("TemplateScratchType") {
            self.templateScratchType = dict["TemplateScratchType"] as! String
        }
    }
}

public class ListTemplateScratchesResponseBody : Tea.TeaModel {
    public class TemplateScratches : Tea.TeaModel {
        public class PreferenceParameters : Tea.TeaModel {
            public var parameterKey: String?

            public var parameterValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameterKey != nil {
                    map["ParameterKey"] = self.parameterKey!
                }
                if self.parameterValue != nil {
                    map["ParameterValue"] = self.parameterValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParameterKey") {
                    self.parameterKey = dict["ParameterKey"] as! String
                }
                if dict.keys.contains("ParameterValue") {
                    self.parameterValue = dict["ParameterValue"] as! String
                }
            }
        }
        public class SourceResourceGroup : Tea.TeaModel {
            public var resourceGroupId: String?

            public var resourceTypeFilter: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.resourceTypeFilter != nil {
                    map["ResourceTypeFilter"] = self.resourceTypeFilter!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("ResourceTypeFilter") {
                    self.resourceTypeFilter = dict["ResourceTypeFilter"] as! [String]
                }
            }
        }
        public class SourceResources : Tea.TeaModel {
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
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
            }
        }
        public class SourceTag : Tea.TeaModel {
            public var resourceTags: [String: Any]?

            public var resourceTypeFilter: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceTags != nil {
                    map["ResourceTags"] = self.resourceTags!
                }
                if self.resourceTypeFilter != nil {
                    map["ResourceTypeFilter"] = self.resourceTypeFilter!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceTags") {
                    self.resourceTags = dict["ResourceTags"] as! [String: Any]
                }
                if dict.keys.contains("ResourceTypeFilter") {
                    self.resourceTypeFilter = dict["ResourceTypeFilter"] as! [String]
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
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var failedCode: String?

        public var logicalIdStrategy: String?

        public var preferenceParameters: [ListTemplateScratchesResponseBody.TemplateScratches.PreferenceParameters]?

        public var resourceGroupId: String?

        public var sourceResourceGroup: ListTemplateScratchesResponseBody.TemplateScratches.SourceResourceGroup?

        public var sourceResources: [ListTemplateScratchesResponseBody.TemplateScratches.SourceResources]?

        public var sourceTag: ListTemplateScratchesResponseBody.TemplateScratches.SourceTag?

        public var status: String?

        public var statusReason: String?

        public var tags: [ListTemplateScratchesResponseBody.TemplateScratches.Tags]?

        public var templateScratchId: String?

        public var templateScratchType: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.sourceResourceGroup?.validate()
            try self.sourceTag?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.failedCode != nil {
                map["FailedCode"] = self.failedCode!
            }
            if self.logicalIdStrategy != nil {
                map["LogicalIdStrategy"] = self.logicalIdStrategy!
            }
            if self.preferenceParameters != nil {
                var tmp : [Any] = []
                for k in self.preferenceParameters! {
                    tmp.append(k.toMap())
                }
                map["PreferenceParameters"] = tmp
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.sourceResourceGroup != nil {
                map["SourceResourceGroup"] = self.sourceResourceGroup?.toMap()
            }
            if self.sourceResources != nil {
                var tmp : [Any] = []
                for k in self.sourceResources! {
                    tmp.append(k.toMap())
                }
                map["SourceResources"] = tmp
            }
            if self.sourceTag != nil {
                map["SourceTag"] = self.sourceTag?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.templateScratchId != nil {
                map["TemplateScratchId"] = self.templateScratchId!
            }
            if self.templateScratchType != nil {
                map["TemplateScratchType"] = self.templateScratchType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("FailedCode") {
                self.failedCode = dict["FailedCode"] as! String
            }
            if dict.keys.contains("LogicalIdStrategy") {
                self.logicalIdStrategy = dict["LogicalIdStrategy"] as! String
            }
            if dict.keys.contains("PreferenceParameters") {
                var tmp : [ListTemplateScratchesResponseBody.TemplateScratches.PreferenceParameters] = []
                for v in dict["PreferenceParameters"] as! [Any] {
                    var model = ListTemplateScratchesResponseBody.TemplateScratches.PreferenceParameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.preferenceParameters = tmp
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SourceResourceGroup") {
                var model = ListTemplateScratchesResponseBody.TemplateScratches.SourceResourceGroup()
                model.fromMap(dict["SourceResourceGroup"] as! [String: Any])
                self.sourceResourceGroup = model
            }
            if dict.keys.contains("SourceResources") {
                var tmp : [ListTemplateScratchesResponseBody.TemplateScratches.SourceResources] = []
                for v in dict["SourceResources"] as! [Any] {
                    var model = ListTemplateScratchesResponseBody.TemplateScratches.SourceResources()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sourceResources = tmp
            }
            if dict.keys.contains("SourceTag") {
                var model = ListTemplateScratchesResponseBody.TemplateScratches.SourceTag()
                model.fromMap(dict["SourceTag"] as! [String: Any])
                self.sourceTag = model
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListTemplateScratchesResponseBody.TemplateScratches.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListTemplateScratchesResponseBody.TemplateScratches.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("TemplateScratchId") {
                self.templateScratchId = dict["TemplateScratchId"] as! String
            }
            if dict.keys.contains("TemplateScratchType") {
                self.templateScratchType = dict["TemplateScratchType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var templateScratches: [ListTemplateScratchesResponseBody.TemplateScratches]?

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
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateScratches != nil {
            var tmp : [Any] = []
            for k in self.templateScratches! {
                tmp.append(k.toMap())
            }
            map["TemplateScratches"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateScratches") {
            var tmp : [ListTemplateScratchesResponseBody.TemplateScratches] = []
            for v in dict["TemplateScratches"] as! [Any] {
                var model = ListTemplateScratchesResponseBody.TemplateScratches()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.templateScratches = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListTemplateScratchesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTemplateScratchesResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListTemplateScratchesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTemplateVersionsRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var nextToken: String?

    public var templateId: String?

    public override init() {
        super.init()
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
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class ListTemplateVersionsResponseBody : Tea.TeaModel {
    public class Versions : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

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
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var versions: [ListTemplateVersionsResponseBody.Versions]?

    public override init() {
        super.init()
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
        if self.versions != nil {
            var tmp : [Any] = []
            for k in self.versions! {
                tmp.append(k.toMap())
            }
            map["Versions"] = tmp
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
        if dict.keys.contains("Versions") {
            var tmp : [ListTemplateVersionsResponseBody.Versions] = []
            for v in dict["Versions"] as! [Any] {
                var model = ListTemplateVersionsResponseBody.Versions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.versions = tmp
        }
    }
}

public class ListTemplateVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTemplateVersionsResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListTemplateVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTemplatesRequest : Tea.TeaModel {
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
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var includeTags: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceGroupId: String?

    public var shareType: String?

    public var tag: [ListTemplatesRequest.Tag]?

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
        if self.includeTags != nil {
            map["IncludeTags"] = self.includeTags!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncludeTags") {
            self.includeTags = dict["IncludeTags"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ShareType") {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListTemplatesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListTemplatesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class ListTemplatesResponseBody : Tea.TeaModel {
    public class Templates : Tea.TeaModel {
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
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var ownerId: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [ListTemplatesResponseBody.Templates.Tags]?

        public var templateARN: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

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
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.templateARN != nil {
                map["TemplateARN"] = self.templateARN!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListTemplatesResponseBody.Templates.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListTemplatesResponseBody.Templates.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("TemplateARN") {
                self.templateARN = dict["TemplateARN"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var templates: [ListTemplatesResponseBody.Templates]?

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
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templates != nil {
            var tmp : [Any] = []
            for k in self.templates! {
                tmp.append(k.toMap())
            }
            map["Templates"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Templates") {
            var tmp : [ListTemplatesResponseBody.Templates] = []
            for v in dict["Templates"] as! [Any] {
                var model = ListTemplatesResponseBody.Templates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.templates = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTemplatesResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ListTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MoveResourceGroupRequest : Tea.TeaModel {
    public var newResourceGroupId: String?

    public var regionId: String?

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
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewResourceGroupId") {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class MoveResourceGroupResponseBody : Tea.TeaModel {
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

public class MoveResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveResourceGroupResponseBody?

    public override init() {
        super.init()
    }

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
            var model = MoveResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PreviewStackRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public var clientToken: String?

    public var disableRollback: Bool?

    public var enablePreConfig: Bool?

    public var parallelism: Int64?

    public var parameters: [PreviewStackRequest.Parameters]?

    public var regionId: String?

    public var stackId: String?

    public var stackName: String?

    public var stackPolicyBody: String?

    public var stackPolicyURL: String?

    public var templateBody: String?

    public var templateId: String?

    public var templateScratchId: String?

    public var templateScratchRegionId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public var timeoutInMinutes: Int64?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.disableRollback != nil {
            map["DisableRollback"] = self.disableRollback!
        }
        if self.enablePreConfig != nil {
            map["EnablePreConfig"] = self.enablePreConfig!
        }
        if self.parallelism != nil {
            map["Parallelism"] = self.parallelism!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.stackName != nil {
            map["StackName"] = self.stackName!
        }
        if self.stackPolicyBody != nil {
            map["StackPolicyBody"] = self.stackPolicyBody!
        }
        if self.stackPolicyURL != nil {
            map["StackPolicyURL"] = self.stackPolicyURL!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateScratchId != nil {
            map["TemplateScratchId"] = self.templateScratchId!
        }
        if self.templateScratchRegionId != nil {
            map["TemplateScratchRegionId"] = self.templateScratchRegionId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        if self.timeoutInMinutes != nil {
            map["TimeoutInMinutes"] = self.timeoutInMinutes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DisableRollback") {
            self.disableRollback = dict["DisableRollback"] as! Bool
        }
        if dict.keys.contains("EnablePreConfig") {
            self.enablePreConfig = dict["EnablePreConfig"] as! Bool
        }
        if dict.keys.contains("Parallelism") {
            self.parallelism = dict["Parallelism"] as! Int64
        }
        if dict.keys.contains("Parameters") {
            var tmp : [PreviewStackRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = PreviewStackRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("StackName") {
            self.stackName = dict["StackName"] as! String
        }
        if dict.keys.contains("StackPolicyBody") {
            self.stackPolicyBody = dict["StackPolicyBody"] as! String
        }
        if dict.keys.contains("StackPolicyURL") {
            self.stackPolicyURL = dict["StackPolicyURL"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateScratchId") {
            self.templateScratchId = dict["TemplateScratchId"] as! String
        }
        if dict.keys.contains("TemplateScratchRegionId") {
            self.templateScratchRegionId = dict["TemplateScratchRegionId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
        if dict.keys.contains("TimeoutInMinutes") {
            self.timeoutInMinutes = dict["TimeoutInMinutes"] as! Int64
        }
    }
}

public class PreviewStackResponseBody : Tea.TeaModel {
    public class Stack : Tea.TeaModel {
        public class Log : Tea.TeaModel {
            public class TerraformLogs : Tea.TeaModel {
                public var command: String?

                public var content: String?

                public var stream: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.command != nil {
                        map["Command"] = self.command!
                    }
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.stream != nil {
                        map["Stream"] = self.stream!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Command") {
                        self.command = dict["Command"] as! String
                    }
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("Stream") {
                        self.stream = dict["Stream"] as! String
                    }
                }
            }
            public var terraformLogs: [PreviewStackResponseBody.Stack.Log.TerraformLogs]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.terraformLogs != nil {
                    var tmp : [Any] = []
                    for k in self.terraformLogs! {
                        tmp.append(k.toMap())
                    }
                    map["TerraformLogs"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TerraformLogs") {
                    var tmp : [PreviewStackResponseBody.Stack.Log.TerraformLogs] = []
                    for v in dict["TerraformLogs"] as! [Any] {
                        var model = PreviewStackResponseBody.Stack.Log.TerraformLogs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.terraformLogs = tmp
                }
            }
        }
        public class Parameters : Tea.TeaModel {
            public var parameterKey: String?

            public var parameterValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameterKey != nil {
                    map["ParameterKey"] = self.parameterKey!
                }
                if self.parameterValue != nil {
                    map["ParameterValue"] = self.parameterValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParameterKey") {
                    self.parameterKey = dict["ParameterKey"] as! String
                }
                if dict.keys.contains("ParameterValue") {
                    self.parameterValue = dict["ParameterValue"] as! String
                }
            }
        }
        public class Resources : Tea.TeaModel {
            public var acsResourceType: String?

            public var action: String?

            public var description_: String?

            public var logicalResourceId: String?

            public var physicalResourceId: String?

            public var properties: [String: Any]?

            public var replacement: String?

            public var requiredBy: [String]?

            public var resourceType: String?

            public var stack: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.acsResourceType != nil {
                    map["AcsResourceType"] = self.acsResourceType!
                }
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.logicalResourceId != nil {
                    map["LogicalResourceId"] = self.logicalResourceId!
                }
                if self.physicalResourceId != nil {
                    map["PhysicalResourceId"] = self.physicalResourceId!
                }
                if self.properties != nil {
                    map["Properties"] = self.properties!
                }
                if self.replacement != nil {
                    map["Replacement"] = self.replacement!
                }
                if self.requiredBy != nil {
                    map["RequiredBy"] = self.requiredBy!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.stack != nil {
                    map["Stack"] = self.stack!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AcsResourceType") {
                    self.acsResourceType = dict["AcsResourceType"] as! String
                }
                if dict.keys.contains("Action") {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("LogicalResourceId") {
                    self.logicalResourceId = dict["LogicalResourceId"] as! String
                }
                if dict.keys.contains("PhysicalResourceId") {
                    self.physicalResourceId = dict["PhysicalResourceId"] as! String
                }
                if dict.keys.contains("Properties") {
                    self.properties = dict["Properties"] as! [String: Any]
                }
                if dict.keys.contains("Replacement") {
                    self.replacement = dict["Replacement"] as! String
                }
                if dict.keys.contains("RequiredBy") {
                    self.requiredBy = dict["RequiredBy"] as! [String]
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Stack") {
                    self.stack = dict["Stack"] as! [String: Any]
                }
            }
        }
        public var description_: String?

        public var disableRollback: Bool?

        public var log: PreviewStackResponseBody.Stack.Log?

        public var parameters: [PreviewStackResponseBody.Stack.Parameters]?

        public var regionId: String?

        public var resources: [PreviewStackResponseBody.Stack.Resources]?

        public var stackName: String?

        public var stackPolicyBody: [String: Any]?

        public var templateDescription: String?

        public var timeoutInMinutes: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.log?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.disableRollback != nil {
                map["DisableRollback"] = self.disableRollback!
            }
            if self.log != nil {
                map["Log"] = self.log?.toMap()
            }
            if self.parameters != nil {
                var tmp : [Any] = []
                for k in self.parameters! {
                    tmp.append(k.toMap())
                }
                map["Parameters"] = tmp
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resources != nil {
                var tmp : [Any] = []
                for k in self.resources! {
                    tmp.append(k.toMap())
                }
                map["Resources"] = tmp
            }
            if self.stackName != nil {
                map["StackName"] = self.stackName!
            }
            if self.stackPolicyBody != nil {
                map["StackPolicyBody"] = self.stackPolicyBody!
            }
            if self.templateDescription != nil {
                map["TemplateDescription"] = self.templateDescription!
            }
            if self.timeoutInMinutes != nil {
                map["TimeoutInMinutes"] = self.timeoutInMinutes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisableRollback") {
                self.disableRollback = dict["DisableRollback"] as! Bool
            }
            if dict.keys.contains("Log") {
                var model = PreviewStackResponseBody.Stack.Log()
                model.fromMap(dict["Log"] as! [String: Any])
                self.log = model
            }
            if dict.keys.contains("Parameters") {
                var tmp : [PreviewStackResponseBody.Stack.Parameters] = []
                for v in dict["Parameters"] as! [Any] {
                    var model = PreviewStackResponseBody.Stack.Parameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.parameters = tmp
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Resources") {
                var tmp : [PreviewStackResponseBody.Stack.Resources] = []
                for v in dict["Resources"] as! [Any] {
                    var model = PreviewStackResponseBody.Stack.Resources()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resources = tmp
            }
            if dict.keys.contains("StackName") {
                self.stackName = dict["StackName"] as! String
            }
            if dict.keys.contains("StackPolicyBody") {
                self.stackPolicyBody = dict["StackPolicyBody"] as! [String: Any]
            }
            if dict.keys.contains("TemplateDescription") {
                self.templateDescription = dict["TemplateDescription"] as! String
            }
            if dict.keys.contains("TimeoutInMinutes") {
                self.timeoutInMinutes = dict["TimeoutInMinutes"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var stack: PreviewStackResponseBody.Stack?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stack?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stack != nil {
            map["Stack"] = self.stack?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Stack") {
            var model = PreviewStackResponseBody.Stack()
            model.fromMap(dict["Stack"] as! [String: Any])
            self.stack = model
        }
    }
}

public class PreviewStackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PreviewStackResponseBody?

    public override init() {
        super.init()
    }

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
            var model = PreviewStackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RegisterResourceTypeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var entityType: String?

    public var resourceType: String?

    public var templateBody: String?

    public var templateURL: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
    }
}

public class RegisterResourceTypeResponseBody : Tea.TeaModel {
    public var registrationId: String?

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
        if self.registrationId != nil {
            map["RegistrationId"] = self.registrationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegistrationId") {
            self.registrationId = dict["RegistrationId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RegisterResourceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterResourceTypeResponseBody?

    public override init() {
        super.init()
    }

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
            var model = RegisterResourceTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDeletionProtectionRequest : Tea.TeaModel {
    public var deletionProtection: String?

    public var regionId: String?

    public var stackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deletionProtection != nil {
            map["DeletionProtection"] = self.deletionProtection!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeletionProtection") {
            self.deletionProtection = dict["DeletionProtection"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class SetDeletionProtectionResponseBody : Tea.TeaModel {
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

public class SetDeletionProtectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDeletionProtectionResponseBody?

    public override init() {
        super.init()
    }

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
            var model = SetDeletionProtectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetResourceTypeRequest : Tea.TeaModel {
    public var defaultVersionId: String?

    public var description_: String?

    public var resourceType: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultVersionId != nil {
            map["DefaultVersionId"] = self.defaultVersionId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefaultVersionId") {
            self.defaultVersionId = dict["DefaultVersionId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class SetResourceTypeResponseBody : Tea.TeaModel {
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

public class SetResourceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetResourceTypeResponseBody?

    public override init() {
        super.init()
    }

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
            var model = SetResourceTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetStackPolicyRequest : Tea.TeaModel {
    public var regionId: String?

    public var stackId: String?

    public var stackPolicyBody: String?

    public var stackPolicyURL: String?

    public override init() {
        super.init()
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
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.stackPolicyBody != nil {
            map["StackPolicyBody"] = self.stackPolicyBody!
        }
        if self.stackPolicyURL != nil {
            map["StackPolicyURL"] = self.stackPolicyURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("StackPolicyBody") {
            self.stackPolicyBody = dict["StackPolicyBody"] as! String
        }
        if dict.keys.contains("StackPolicyURL") {
            self.stackPolicyURL = dict["StackPolicyURL"] as! String
        }
    }
}

public class SetStackPolicyResponseBody : Tea.TeaModel {
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

public class SetStackPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetStackPolicyResponseBody?

    public override init() {
        super.init()
    }

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
            var model = SetStackPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetTemplatePermissionRequest : Tea.TeaModel {
    public var accountIds: [String]?

    public var shareOption: String?

    public var templateId: String?

    public var templateVersion: String?

    public var versionOption: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIds != nil {
            map["AccountIds"] = self.accountIds!
        }
        if self.shareOption != nil {
            map["ShareOption"] = self.shareOption!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        if self.versionOption != nil {
            map["VersionOption"] = self.versionOption!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") {
            self.accountIds = dict["AccountIds"] as! [String]
        }
        if dict.keys.contains("ShareOption") {
            self.shareOption = dict["ShareOption"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
        if dict.keys.contains("VersionOption") {
            self.versionOption = dict["VersionOption"] as! String
        }
    }
}

public class SetTemplatePermissionResponseBody : Tea.TeaModel {
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

public class SetTemplatePermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetTemplatePermissionResponseBody?

    public override init() {
        super.init()
    }

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
            var model = SetTemplatePermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SignalResourceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var logicalResourceId: String?

    public var regionId: String?

    public var stackId: String?

    public var status: String?

    public var uniqueId: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.logicalResourceId != nil {
            map["LogicalResourceId"] = self.logicalResourceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.uniqueId != nil {
            map["UniqueId"] = self.uniqueId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("LogicalResourceId") {
            self.logicalResourceId = dict["LogicalResourceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UniqueId") {
            self.uniqueId = dict["UniqueId"] as! String
        }
    }
}

public class SignalResourceResponseBody : Tea.TeaModel {
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

public class SignalResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SignalResourceResponseBody?

    public override init() {
        super.init()
    }

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
            var model = SignalResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopStackGroupOperationRequest : Tea.TeaModel {
    public var operationId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperationId") {
            self.operationId = dict["OperationId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StopStackGroupOperationResponseBody : Tea.TeaModel {
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

public class StopStackGroupOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopStackGroupOperationResponseBody?

    public override init() {
        super.init()
    }

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
            var model = StopStackGroupOperationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
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
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
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
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = TagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
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

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! [String]
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
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

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

    public override init() {
        super.init()
    }

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
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateStackRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
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
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clientToken: String?

    public var disableRollback: Bool?

    public var dryRun: Bool?

    public var dryRunOptions: [String]?

    public var parallelism: Int64?

    public var parameters: [UpdateStackRequest.Parameters]?

    public var ramRoleName: String?

    public var regionId: String?

    public var replacementOption: String?

    public var resourceGroupId: String?

    public var stackId: String?

    public var stackPolicyBody: String?

    public var stackPolicyDuringUpdateBody: String?

    public var stackPolicyDuringUpdateURL: String?

    public var stackPolicyURL: String?

    public var tags: [UpdateStackRequest.Tags]?

    public var templateBody: String?

    public var templateId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public var timeoutInMinutes: Int64?

    public var usePreviousParameters: Bool?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.disableRollback != nil {
            map["DisableRollback"] = self.disableRollback!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.dryRunOptions != nil {
            map["DryRunOptions"] = self.dryRunOptions!
        }
        if self.parallelism != nil {
            map["Parallelism"] = self.parallelism!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.ramRoleName != nil {
            map["RamRoleName"] = self.ramRoleName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replacementOption != nil {
            map["ReplacementOption"] = self.replacementOption!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.stackPolicyBody != nil {
            map["StackPolicyBody"] = self.stackPolicyBody!
        }
        if self.stackPolicyDuringUpdateBody != nil {
            map["StackPolicyDuringUpdateBody"] = self.stackPolicyDuringUpdateBody!
        }
        if self.stackPolicyDuringUpdateURL != nil {
            map["StackPolicyDuringUpdateURL"] = self.stackPolicyDuringUpdateURL!
        }
        if self.stackPolicyURL != nil {
            map["StackPolicyURL"] = self.stackPolicyURL!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        if self.timeoutInMinutes != nil {
            map["TimeoutInMinutes"] = self.timeoutInMinutes!
        }
        if self.usePreviousParameters != nil {
            map["UsePreviousParameters"] = self.usePreviousParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DisableRollback") {
            self.disableRollback = dict["DisableRollback"] as! Bool
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("DryRunOptions") {
            self.dryRunOptions = dict["DryRunOptions"] as! [String]
        }
        if dict.keys.contains("Parallelism") {
            self.parallelism = dict["Parallelism"] as! Int64
        }
        if dict.keys.contains("Parameters") {
            var tmp : [UpdateStackRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = UpdateStackRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RamRoleName") {
            self.ramRoleName = dict["RamRoleName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplacementOption") {
            self.replacementOption = dict["ReplacementOption"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("StackPolicyBody") {
            self.stackPolicyBody = dict["StackPolicyBody"] as! String
        }
        if dict.keys.contains("StackPolicyDuringUpdateBody") {
            self.stackPolicyDuringUpdateBody = dict["StackPolicyDuringUpdateBody"] as! String
        }
        if dict.keys.contains("StackPolicyDuringUpdateURL") {
            self.stackPolicyDuringUpdateURL = dict["StackPolicyDuringUpdateURL"] as! String
        }
        if dict.keys.contains("StackPolicyURL") {
            self.stackPolicyURL = dict["StackPolicyURL"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [UpdateStackRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = UpdateStackRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
        if dict.keys.contains("TimeoutInMinutes") {
            self.timeoutInMinutes = dict["TimeoutInMinutes"] as! Int64
        }
        if dict.keys.contains("UsePreviousParameters") {
            self.usePreviousParameters = dict["UsePreviousParameters"] as! Bool
        }
    }
}

public class UpdateStackResponseBody : Tea.TeaModel {
    public class DryRunResult : Tea.TeaModel {
        public var parametersAllowedToBeModified: [String]?

        public var parametersCauseInterruptionIfModified: [String]?

        public var parametersCauseReplacementIfModified: [String]?

        public var parametersConditionallyAllowedToBeModified: [String]?

        public var parametersConditionallyCauseInterruptionIfModified: [String]?

        public var parametersConditionallyCauseReplacementIfModified: [String]?

        public var parametersNotAllowedToBeModified: [String]?

        public var parametersUncertainlyAllowedToBeModified: [String]?

        public var parametersUncertainlyCauseInterruptionIfModified: [String]?

        public var parametersUncertainlyCauseReplacementIfModified: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parametersAllowedToBeModified != nil {
                map["ParametersAllowedToBeModified"] = self.parametersAllowedToBeModified!
            }
            if self.parametersCauseInterruptionIfModified != nil {
                map["ParametersCauseInterruptionIfModified"] = self.parametersCauseInterruptionIfModified!
            }
            if self.parametersCauseReplacementIfModified != nil {
                map["ParametersCauseReplacementIfModified"] = self.parametersCauseReplacementIfModified!
            }
            if self.parametersConditionallyAllowedToBeModified != nil {
                map["ParametersConditionallyAllowedToBeModified"] = self.parametersConditionallyAllowedToBeModified!
            }
            if self.parametersConditionallyCauseInterruptionIfModified != nil {
                map["ParametersConditionallyCauseInterruptionIfModified"] = self.parametersConditionallyCauseInterruptionIfModified!
            }
            if self.parametersConditionallyCauseReplacementIfModified != nil {
                map["ParametersConditionallyCauseReplacementIfModified"] = self.parametersConditionallyCauseReplacementIfModified!
            }
            if self.parametersNotAllowedToBeModified != nil {
                map["ParametersNotAllowedToBeModified"] = self.parametersNotAllowedToBeModified!
            }
            if self.parametersUncertainlyAllowedToBeModified != nil {
                map["ParametersUncertainlyAllowedToBeModified"] = self.parametersUncertainlyAllowedToBeModified!
            }
            if self.parametersUncertainlyCauseInterruptionIfModified != nil {
                map["ParametersUncertainlyCauseInterruptionIfModified"] = self.parametersUncertainlyCauseInterruptionIfModified!
            }
            if self.parametersUncertainlyCauseReplacementIfModified != nil {
                map["ParametersUncertainlyCauseReplacementIfModified"] = self.parametersUncertainlyCauseReplacementIfModified!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParametersAllowedToBeModified") {
                self.parametersAllowedToBeModified = dict["ParametersAllowedToBeModified"] as! [String]
            }
            if dict.keys.contains("ParametersCauseInterruptionIfModified") {
                self.parametersCauseInterruptionIfModified = dict["ParametersCauseInterruptionIfModified"] as! [String]
            }
            if dict.keys.contains("ParametersCauseReplacementIfModified") {
                self.parametersCauseReplacementIfModified = dict["ParametersCauseReplacementIfModified"] as! [String]
            }
            if dict.keys.contains("ParametersConditionallyAllowedToBeModified") {
                self.parametersConditionallyAllowedToBeModified = dict["ParametersConditionallyAllowedToBeModified"] as! [String]
            }
            if dict.keys.contains("ParametersConditionallyCauseInterruptionIfModified") {
                self.parametersConditionallyCauseInterruptionIfModified = dict["ParametersConditionallyCauseInterruptionIfModified"] as! [String]
            }
            if dict.keys.contains("ParametersConditionallyCauseReplacementIfModified") {
                self.parametersConditionallyCauseReplacementIfModified = dict["ParametersConditionallyCauseReplacementIfModified"] as! [String]
            }
            if dict.keys.contains("ParametersNotAllowedToBeModified") {
                self.parametersNotAllowedToBeModified = dict["ParametersNotAllowedToBeModified"] as! [String]
            }
            if dict.keys.contains("ParametersUncertainlyAllowedToBeModified") {
                self.parametersUncertainlyAllowedToBeModified = dict["ParametersUncertainlyAllowedToBeModified"] as! [String]
            }
            if dict.keys.contains("ParametersUncertainlyCauseInterruptionIfModified") {
                self.parametersUncertainlyCauseInterruptionIfModified = dict["ParametersUncertainlyCauseInterruptionIfModified"] as! [String]
            }
            if dict.keys.contains("ParametersUncertainlyCauseReplacementIfModified") {
                self.parametersUncertainlyCauseReplacementIfModified = dict["ParametersUncertainlyCauseReplacementIfModified"] as! [String]
            }
        }
    }
    public var dryRunResult: UpdateStackResponseBody.DryRunResult?

    public var requestId: String?

    public var stackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dryRunResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRunResult != nil {
            map["DryRunResult"] = self.dryRunResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DryRunResult") {
            var model = UpdateStackResponseBody.DryRunResult()
            model.fromMap(dict["DryRunResult"] as! [String: Any])
            self.dryRunResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class UpdateStackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateStackResponseBody?

    public override init() {
        super.init()
    }

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
            var model = UpdateStackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateStackGroupRequest : Tea.TeaModel {
    public class AutoDeployment : Tea.TeaModel {
        public var enabled: Bool?

        public var retainStacksOnAccountRemoval: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.retainStacksOnAccountRemoval != nil {
                map["RetainStacksOnAccountRemoval"] = self.retainStacksOnAccountRemoval!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("RetainStacksOnAccountRemoval") {
                self.retainStacksOnAccountRemoval = dict["RetainStacksOnAccountRemoval"] as! Bool
            }
        }
    }
    public class DeploymentTargets : Tea.TeaModel {
        public var accountIds: [String]?

        public var rdFolderIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.rdFolderIds != nil {
                map["RdFolderIds"] = self.rdFolderIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountIds") {
                self.accountIds = dict["AccountIds"] as! [String]
            }
            if dict.keys.contains("RdFolderIds") {
                self.rdFolderIds = dict["RdFolderIds"] as! [String]
            }
        }
    }
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public var accountIds: [String]?

    public var administrationRoleName: String?

    public var autoDeployment: UpdateStackGroupRequest.AutoDeployment?

    public var capabilities: [String]?

    public var clientToken: String?

    public var deploymentOptions: [String]?

    public var deploymentTargets: UpdateStackGroupRequest.DeploymentTargets?

    public var description_: String?

    public var executionRoleName: String?

    public var operationDescription: String?

    public var operationPreferences: [String: Any]?

    public var parameters: [UpdateStackGroupRequest.Parameters]?

    public var permissionModel: String?

    public var regionId: String?

    public var regionIds: [String]?

    public var stackGroupName: String?

    public var templateBody: String?

    public var templateId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.autoDeployment?.validate()
        try self.deploymentTargets?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIds != nil {
            map["AccountIds"] = self.accountIds!
        }
        if self.administrationRoleName != nil {
            map["AdministrationRoleName"] = self.administrationRoleName!
        }
        if self.autoDeployment != nil {
            map["AutoDeployment"] = self.autoDeployment?.toMap()
        }
        if self.capabilities != nil {
            map["Capabilities"] = self.capabilities!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deploymentOptions != nil {
            map["DeploymentOptions"] = self.deploymentOptions!
        }
        if self.deploymentTargets != nil {
            map["DeploymentTargets"] = self.deploymentTargets?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.executionRoleName != nil {
            map["ExecutionRoleName"] = self.executionRoleName!
        }
        if self.operationDescription != nil {
            map["OperationDescription"] = self.operationDescription!
        }
        if self.operationPreferences != nil {
            map["OperationPreferences"] = self.operationPreferences!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.permissionModel != nil {
            map["PermissionModel"] = self.permissionModel!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.regionIds != nil {
            map["RegionIds"] = self.regionIds!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") {
            self.accountIds = dict["AccountIds"] as! [String]
        }
        if dict.keys.contains("AdministrationRoleName") {
            self.administrationRoleName = dict["AdministrationRoleName"] as! String
        }
        if dict.keys.contains("AutoDeployment") {
            var model = UpdateStackGroupRequest.AutoDeployment()
            model.fromMap(dict["AutoDeployment"] as! [String: Any])
            self.autoDeployment = model
        }
        if dict.keys.contains("Capabilities") {
            self.capabilities = dict["Capabilities"] as! [String]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeploymentOptions") {
            self.deploymentOptions = dict["DeploymentOptions"] as! [String]
        }
        if dict.keys.contains("DeploymentTargets") {
            var model = UpdateStackGroupRequest.DeploymentTargets()
            model.fromMap(dict["DeploymentTargets"] as! [String: Any])
            self.deploymentTargets = model
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExecutionRoleName") {
            self.executionRoleName = dict["ExecutionRoleName"] as! String
        }
        if dict.keys.contains("OperationDescription") {
            self.operationDescription = dict["OperationDescription"] as! String
        }
        if dict.keys.contains("OperationPreferences") {
            self.operationPreferences = dict["OperationPreferences"] as! [String: Any]
        }
        if dict.keys.contains("Parameters") {
            var tmp : [UpdateStackGroupRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = UpdateStackGroupRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("PermissionModel") {
            self.permissionModel = dict["PermissionModel"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RegionIds") {
            self.regionIds = dict["RegionIds"] as! [String]
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class UpdateStackGroupShrinkRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public var accountIdsShrink: String?

    public var administrationRoleName: String?

    public var autoDeploymentShrink: String?

    public var capabilities: [String]?

    public var clientToken: String?

    public var deploymentOptions: [String]?

    public var deploymentTargetsShrink: String?

    public var description_: String?

    public var executionRoleName: String?

    public var operationDescription: String?

    public var operationPreferencesShrink: String?

    public var parameters: [UpdateStackGroupShrinkRequest.Parameters]?

    public var permissionModel: String?

    public var regionId: String?

    public var regionIdsShrink: String?

    public var stackGroupName: String?

    public var templateBody: String?

    public var templateId: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIdsShrink != nil {
            map["AccountIds"] = self.accountIdsShrink!
        }
        if self.administrationRoleName != nil {
            map["AdministrationRoleName"] = self.administrationRoleName!
        }
        if self.autoDeploymentShrink != nil {
            map["AutoDeployment"] = self.autoDeploymentShrink!
        }
        if self.capabilities != nil {
            map["Capabilities"] = self.capabilities!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deploymentOptions != nil {
            map["DeploymentOptions"] = self.deploymentOptions!
        }
        if self.deploymentTargetsShrink != nil {
            map["DeploymentTargets"] = self.deploymentTargetsShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.executionRoleName != nil {
            map["ExecutionRoleName"] = self.executionRoleName!
        }
        if self.operationDescription != nil {
            map["OperationDescription"] = self.operationDescription!
        }
        if self.operationPreferencesShrink != nil {
            map["OperationPreferences"] = self.operationPreferencesShrink!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.permissionModel != nil {
            map["PermissionModel"] = self.permissionModel!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.regionIdsShrink != nil {
            map["RegionIds"] = self.regionIdsShrink!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") {
            self.accountIdsShrink = dict["AccountIds"] as! String
        }
        if dict.keys.contains("AdministrationRoleName") {
            self.administrationRoleName = dict["AdministrationRoleName"] as! String
        }
        if dict.keys.contains("AutoDeployment") {
            self.autoDeploymentShrink = dict["AutoDeployment"] as! String
        }
        if dict.keys.contains("Capabilities") {
            self.capabilities = dict["Capabilities"] as! [String]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeploymentOptions") {
            self.deploymentOptions = dict["DeploymentOptions"] as! [String]
        }
        if dict.keys.contains("DeploymentTargets") {
            self.deploymentTargetsShrink = dict["DeploymentTargets"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExecutionRoleName") {
            self.executionRoleName = dict["ExecutionRoleName"] as! String
        }
        if dict.keys.contains("OperationDescription") {
            self.operationDescription = dict["OperationDescription"] as! String
        }
        if dict.keys.contains("OperationPreferences") {
            self.operationPreferencesShrink = dict["OperationPreferences"] as! String
        }
        if dict.keys.contains("Parameters") {
            var tmp : [UpdateStackGroupShrinkRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = UpdateStackGroupShrinkRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("PermissionModel") {
            self.permissionModel = dict["PermissionModel"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RegionIds") {
            self.regionIdsShrink = dict["RegionIds"] as! String
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class UpdateStackGroupResponseBody : Tea.TeaModel {
    public var operationId: String?

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
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperationId") {
            self.operationId = dict["OperationId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateStackGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateStackGroupResponseBody?

    public override init() {
        super.init()
    }

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
            var model = UpdateStackGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateStackInstancesRequest : Tea.TeaModel {
    public class DeploymentTargets : Tea.TeaModel {
        public var accountIds: [String]?

        public var rdFolderIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountIds != nil {
                map["AccountIds"] = self.accountIds!
            }
            if self.rdFolderIds != nil {
                map["RdFolderIds"] = self.rdFolderIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountIds") {
                self.accountIds = dict["AccountIds"] as! [String]
            }
            if dict.keys.contains("RdFolderIds") {
                self.rdFolderIds = dict["RdFolderIds"] as! [String]
            }
        }
    }
    public class ParameterOverrides : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public var accountIds: [String]?

    public var clientToken: String?

    public var deploymentTargets: UpdateStackInstancesRequest.DeploymentTargets?

    public var operationDescription: String?

    public var operationPreferences: [String: Any]?

    public var parameterOverrides: [UpdateStackInstancesRequest.ParameterOverrides]?

    public var regionId: String?

    public var regionIds: [String]?

    public var stackGroupName: String?

    public var timeoutInMinutes: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deploymentTargets?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIds != nil {
            map["AccountIds"] = self.accountIds!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deploymentTargets != nil {
            map["DeploymentTargets"] = self.deploymentTargets?.toMap()
        }
        if self.operationDescription != nil {
            map["OperationDescription"] = self.operationDescription!
        }
        if self.operationPreferences != nil {
            map["OperationPreferences"] = self.operationPreferences!
        }
        if self.parameterOverrides != nil {
            var tmp : [Any] = []
            for k in self.parameterOverrides! {
                tmp.append(k.toMap())
            }
            map["ParameterOverrides"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.regionIds != nil {
            map["RegionIds"] = self.regionIds!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        if self.timeoutInMinutes != nil {
            map["TimeoutInMinutes"] = self.timeoutInMinutes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") {
            self.accountIds = dict["AccountIds"] as! [String]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeploymentTargets") {
            var model = UpdateStackInstancesRequest.DeploymentTargets()
            model.fromMap(dict["DeploymentTargets"] as! [String: Any])
            self.deploymentTargets = model
        }
        if dict.keys.contains("OperationDescription") {
            self.operationDescription = dict["OperationDescription"] as! String
        }
        if dict.keys.contains("OperationPreferences") {
            self.operationPreferences = dict["OperationPreferences"] as! [String: Any]
        }
        if dict.keys.contains("ParameterOverrides") {
            var tmp : [UpdateStackInstancesRequest.ParameterOverrides] = []
            for v in dict["ParameterOverrides"] as! [Any] {
                var model = UpdateStackInstancesRequest.ParameterOverrides()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameterOverrides = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RegionIds") {
            self.regionIds = dict["RegionIds"] as! [String]
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
        if dict.keys.contains("TimeoutInMinutes") {
            self.timeoutInMinutes = dict["TimeoutInMinutes"] as! Int64
        }
    }
}

public class UpdateStackInstancesShrinkRequest : Tea.TeaModel {
    public class ParameterOverrides : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public var accountIdsShrink: String?

    public var clientToken: String?

    public var deploymentTargetsShrink: String?

    public var operationDescription: String?

    public var operationPreferencesShrink: String?

    public var parameterOverrides: [UpdateStackInstancesShrinkRequest.ParameterOverrides]?

    public var regionId: String?

    public var regionIdsShrink: String?

    public var stackGroupName: String?

    public var timeoutInMinutes: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIdsShrink != nil {
            map["AccountIds"] = self.accountIdsShrink!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deploymentTargetsShrink != nil {
            map["DeploymentTargets"] = self.deploymentTargetsShrink!
        }
        if self.operationDescription != nil {
            map["OperationDescription"] = self.operationDescription!
        }
        if self.operationPreferencesShrink != nil {
            map["OperationPreferences"] = self.operationPreferencesShrink!
        }
        if self.parameterOverrides != nil {
            var tmp : [Any] = []
            for k in self.parameterOverrides! {
                tmp.append(k.toMap())
            }
            map["ParameterOverrides"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.regionIdsShrink != nil {
            map["RegionIds"] = self.regionIdsShrink!
        }
        if self.stackGroupName != nil {
            map["StackGroupName"] = self.stackGroupName!
        }
        if self.timeoutInMinutes != nil {
            map["TimeoutInMinutes"] = self.timeoutInMinutes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") {
            self.accountIdsShrink = dict["AccountIds"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeploymentTargets") {
            self.deploymentTargetsShrink = dict["DeploymentTargets"] as! String
        }
        if dict.keys.contains("OperationDescription") {
            self.operationDescription = dict["OperationDescription"] as! String
        }
        if dict.keys.contains("OperationPreferences") {
            self.operationPreferencesShrink = dict["OperationPreferences"] as! String
        }
        if dict.keys.contains("ParameterOverrides") {
            var tmp : [UpdateStackInstancesShrinkRequest.ParameterOverrides] = []
            for v in dict["ParameterOverrides"] as! [Any] {
                var model = UpdateStackInstancesShrinkRequest.ParameterOverrides()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameterOverrides = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RegionIds") {
            self.regionIdsShrink = dict["RegionIds"] as! String
        }
        if dict.keys.contains("StackGroupName") {
            self.stackGroupName = dict["StackGroupName"] as! String
        }
        if dict.keys.contains("TimeoutInMinutes") {
            self.timeoutInMinutes = dict["TimeoutInMinutes"] as! Int64
        }
    }
}

public class UpdateStackInstancesResponseBody : Tea.TeaModel {
    public var operationId: String?

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
        if self.operationId != nil {
            map["OperationId"] = self.operationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OperationId") {
            self.operationId = dict["OperationId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateStackInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateStackInstancesResponseBody?

    public override init() {
        super.init()
    }

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
            var model = UpdateStackInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateStackTemplateByResourcesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var logicalResourceId: [String]?

    public var regionId: String?

    public var stackId: String?

    public var templateFormat: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.logicalResourceId != nil {
            map["LogicalResourceId"] = self.logicalResourceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.templateFormat != nil {
            map["TemplateFormat"] = self.templateFormat!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LogicalResourceId") {
            self.logicalResourceId = dict["LogicalResourceId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("TemplateFormat") {
            self.templateFormat = dict["TemplateFormat"] as! String
        }
    }
}

public class UpdateStackTemplateByResourcesResponseBody : Tea.TeaModel {
    public var newTemplateBody: String?

    public var oldTemplateBody: String?

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
        if self.newTemplateBody != nil {
            map["NewTemplateBody"] = self.newTemplateBody!
        }
        if self.oldTemplateBody != nil {
            map["OldTemplateBody"] = self.oldTemplateBody!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewTemplateBody") {
            self.newTemplateBody = dict["NewTemplateBody"] as! String
        }
        if dict.keys.contains("OldTemplateBody") {
            self.oldTemplateBody = dict["OldTemplateBody"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateStackTemplateByResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateStackTemplateByResourcesResponseBody?

    public override init() {
        super.init()
    }

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
            var model = UpdateStackTemplateByResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTemplateRequest : Tea.TeaModel {
    public var description_: String?

    public var isDraft: Bool?

    public var rotateStrategy: String?

    public var templateBody: String?

    public var templateId: String?

    public var templateName: String?

    public var templateURL: String?

    public var validationOptions: [String]?

    public override init() {
        super.init()
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
            map["Description"] = self.description_!
        }
        if self.isDraft != nil {
            map["IsDraft"] = self.isDraft!
        }
        if self.rotateStrategy != nil {
            map["RotateStrategy"] = self.rotateStrategy!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.validationOptions != nil {
            map["ValidationOptions"] = self.validationOptions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("IsDraft") {
            self.isDraft = dict["IsDraft"] as! Bool
        }
        if dict.keys.contains("RotateStrategy") {
            self.rotateStrategy = dict["RotateStrategy"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("ValidationOptions") {
            self.validationOptions = dict["ValidationOptions"] as! [String]
        }
    }
}

public class UpdateTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var templateId: String?

    public var templateVersion: String?

    public override init() {
        super.init()
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class UpdateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTemplateResponseBody?

    public override init() {
        super.init()
    }

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
            var model = UpdateTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTemplateScratchRequest : Tea.TeaModel {
    public class PreferenceParameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public class SourceResourceGroup : Tea.TeaModel {
        public var resourceGroupId: String?

        public var resourceTypeFilter: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceTypeFilter != nil {
                map["ResourceTypeFilter"] = self.resourceTypeFilter!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ResourceTypeFilter") {
                self.resourceTypeFilter = dict["ResourceTypeFilter"] as! [String]
            }
        }
    }
    public class SourceResources : Tea.TeaModel {
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
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public class SourceTag : Tea.TeaModel {
        public var resourceTags: [String: Any]?

        public var resourceTypeFilter: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceTags != nil {
                map["ResourceTags"] = self.resourceTags!
            }
            if self.resourceTypeFilter != nil {
                map["ResourceTypeFilter"] = self.resourceTypeFilter!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceTags") {
                self.resourceTags = dict["ResourceTags"] as! [String: Any]
            }
            if dict.keys.contains("ResourceTypeFilter") {
                self.resourceTypeFilter = dict["ResourceTypeFilter"] as! [String]
            }
        }
    }
    public var clientToken: String?

    public var description_: String?

    public var executionMode: String?

    public var logicalIdStrategy: String?

    public var preferenceParameters: [UpdateTemplateScratchRequest.PreferenceParameters]?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sourceResourceGroup: UpdateTemplateScratchRequest.SourceResourceGroup?

    public var sourceResources: [UpdateTemplateScratchRequest.SourceResources]?

    public var sourceTag: UpdateTemplateScratchRequest.SourceTag?

    public var templateScratchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sourceResourceGroup?.validate()
        try self.sourceTag?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.executionMode != nil {
            map["ExecutionMode"] = self.executionMode!
        }
        if self.logicalIdStrategy != nil {
            map["LogicalIdStrategy"] = self.logicalIdStrategy!
        }
        if self.preferenceParameters != nil {
            var tmp : [Any] = []
            for k in self.preferenceParameters! {
                tmp.append(k.toMap())
            }
            map["PreferenceParameters"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourceResourceGroup != nil {
            map["SourceResourceGroup"] = self.sourceResourceGroup?.toMap()
        }
        if self.sourceResources != nil {
            var tmp : [Any] = []
            for k in self.sourceResources! {
                tmp.append(k.toMap())
            }
            map["SourceResources"] = tmp
        }
        if self.sourceTag != nil {
            map["SourceTag"] = self.sourceTag?.toMap()
        }
        if self.templateScratchId != nil {
            map["TemplateScratchId"] = self.templateScratchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExecutionMode") {
            self.executionMode = dict["ExecutionMode"] as! String
        }
        if dict.keys.contains("LogicalIdStrategy") {
            self.logicalIdStrategy = dict["LogicalIdStrategy"] as! String
        }
        if dict.keys.contains("PreferenceParameters") {
            var tmp : [UpdateTemplateScratchRequest.PreferenceParameters] = []
            for v in dict["PreferenceParameters"] as! [Any] {
                var model = UpdateTemplateScratchRequest.PreferenceParameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.preferenceParameters = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceResourceGroup") {
            var model = UpdateTemplateScratchRequest.SourceResourceGroup()
            model.fromMap(dict["SourceResourceGroup"] as! [String: Any])
            self.sourceResourceGroup = model
        }
        if dict.keys.contains("SourceResources") {
            var tmp : [UpdateTemplateScratchRequest.SourceResources] = []
            for v in dict["SourceResources"] as! [Any] {
                var model = UpdateTemplateScratchRequest.SourceResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sourceResources = tmp
        }
        if dict.keys.contains("SourceTag") {
            var model = UpdateTemplateScratchRequest.SourceTag()
            model.fromMap(dict["SourceTag"] as! [String: Any])
            self.sourceTag = model
        }
        if dict.keys.contains("TemplateScratchId") {
            self.templateScratchId = dict["TemplateScratchId"] as! String
        }
    }
}

public class UpdateTemplateScratchShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var executionMode: String?

    public var logicalIdStrategy: String?

    public var preferenceParametersShrink: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sourceResourceGroupShrink: String?

    public var sourceResourcesShrink: String?

    public var sourceTagShrink: String?

    public var templateScratchId: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.executionMode != nil {
            map["ExecutionMode"] = self.executionMode!
        }
        if self.logicalIdStrategy != nil {
            map["LogicalIdStrategy"] = self.logicalIdStrategy!
        }
        if self.preferenceParametersShrink != nil {
            map["PreferenceParameters"] = self.preferenceParametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourceResourceGroupShrink != nil {
            map["SourceResourceGroup"] = self.sourceResourceGroupShrink!
        }
        if self.sourceResourcesShrink != nil {
            map["SourceResources"] = self.sourceResourcesShrink!
        }
        if self.sourceTagShrink != nil {
            map["SourceTag"] = self.sourceTagShrink!
        }
        if self.templateScratchId != nil {
            map["TemplateScratchId"] = self.templateScratchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExecutionMode") {
            self.executionMode = dict["ExecutionMode"] as! String
        }
        if dict.keys.contains("LogicalIdStrategy") {
            self.logicalIdStrategy = dict["LogicalIdStrategy"] as! String
        }
        if dict.keys.contains("PreferenceParameters") {
            self.preferenceParametersShrink = dict["PreferenceParameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceResourceGroup") {
            self.sourceResourceGroupShrink = dict["SourceResourceGroup"] as! String
        }
        if dict.keys.contains("SourceResources") {
            self.sourceResourcesShrink = dict["SourceResources"] as! String
        }
        if dict.keys.contains("SourceTag") {
            self.sourceTagShrink = dict["SourceTag"] as! String
        }
        if dict.keys.contains("TemplateScratchId") {
            self.templateScratchId = dict["TemplateScratchId"] as! String
        }
    }
}

public class UpdateTemplateScratchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var templateScratchId: String?

    public override init() {
        super.init()
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
        if self.templateScratchId != nil {
            map["TemplateScratchId"] = self.templateScratchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateScratchId") {
            self.templateScratchId = dict["TemplateScratchId"] as! String
        }
    }
}

public class UpdateTemplateScratchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTemplateScratchResponseBody?

    public override init() {
        super.init()
    }

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
            var model = UpdateTemplateScratchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ValidateTemplateRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var templateBody: String?

    public var templateURL: String?

    public var updateInfoOptions: [String]?

    public var validationOption: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateBody != nil {
            map["TemplateBody"] = self.templateBody!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.updateInfoOptions != nil {
            map["UpdateInfoOptions"] = self.updateInfoOptions!
        }
        if self.validationOption != nil {
            map["ValidationOption"] = self.validationOption!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateBody") {
            self.templateBody = dict["TemplateBody"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("UpdateInfoOptions") {
            self.updateInfoOptions = dict["UpdateInfoOptions"] as! [String]
        }
        if dict.keys.contains("ValidationOption") {
            self.validationOption = dict["ValidationOption"] as! String
        }
    }
}

public class ValidateTemplateResponseBody : Tea.TeaModel {
    public class Outputs : Tea.TeaModel {
        public var description_: String?

        public var label: String?

        public var outputKey: String?

        public override init() {
            super.init()
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
                map["Description"] = self.description_!
            }
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.outputKey != nil {
                map["OutputKey"] = self.outputKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! String
            }
            if dict.keys.contains("OutputKey") {
                self.outputKey = dict["OutputKey"] as! String
            }
        }
    }
    public class ResourceTypes : Tea.TeaModel {
        public var dataSources: [String]?

        public var resources: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataSources != nil {
                map["DataSources"] = self.dataSources!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataSources") {
                self.dataSources = dict["DataSources"] as! [String]
            }
            if dict.keys.contains("Resources") {
                self.resources = dict["Resources"] as! [String]
            }
        }
    }
    public class Resources : Tea.TeaModel {
        public var logicalResourceIdPattern: String?

        public var resourcePath: String?

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
            if self.logicalResourceIdPattern != nil {
                map["LogicalResourceIdPattern"] = self.logicalResourceIdPattern!
            }
            if self.resourcePath != nil {
                map["ResourcePath"] = self.resourcePath!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogicalResourceIdPattern") {
                self.logicalResourceIdPattern = dict["LogicalResourceIdPattern"] as! String
            }
            if dict.keys.contains("ResourcePath") {
                self.resourcePath = dict["ResourcePath"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public class UpdateInfo : Tea.TeaModel {
        public var parametersAllowedToBeModified: [String]?

        public var parametersCauseInterruptionIfModified: [String]?

        public var parametersCauseReplacementIfModified: [String]?

        public var parametersConditionallyAllowedToBeModified: [String]?

        public var parametersConditionallyCauseInterruptionIfModified: [String]?

        public var parametersConditionallyCauseReplacementIfModified: [String]?

        public var parametersNotAllowedToBeModified: [String]?

        public var parametersUncertainlyAllowedToBeModified: [String]?

        public var parametersUncertainlyCauseInterruptionIfModified: [String]?

        public var parametersUncertainlyCauseReplacementIfModified: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parametersAllowedToBeModified != nil {
                map["ParametersAllowedToBeModified"] = self.parametersAllowedToBeModified!
            }
            if self.parametersCauseInterruptionIfModified != nil {
                map["ParametersCauseInterruptionIfModified"] = self.parametersCauseInterruptionIfModified!
            }
            if self.parametersCauseReplacementIfModified != nil {
                map["ParametersCauseReplacementIfModified"] = self.parametersCauseReplacementIfModified!
            }
            if self.parametersConditionallyAllowedToBeModified != nil {
                map["ParametersConditionallyAllowedToBeModified"] = self.parametersConditionallyAllowedToBeModified!
            }
            if self.parametersConditionallyCauseInterruptionIfModified != nil {
                map["ParametersConditionallyCauseInterruptionIfModified"] = self.parametersConditionallyCauseInterruptionIfModified!
            }
            if self.parametersConditionallyCauseReplacementIfModified != nil {
                map["ParametersConditionallyCauseReplacementIfModified"] = self.parametersConditionallyCauseReplacementIfModified!
            }
            if self.parametersNotAllowedToBeModified != nil {
                map["ParametersNotAllowedToBeModified"] = self.parametersNotAllowedToBeModified!
            }
            if self.parametersUncertainlyAllowedToBeModified != nil {
                map["ParametersUncertainlyAllowedToBeModified"] = self.parametersUncertainlyAllowedToBeModified!
            }
            if self.parametersUncertainlyCauseInterruptionIfModified != nil {
                map["ParametersUncertainlyCauseInterruptionIfModified"] = self.parametersUncertainlyCauseInterruptionIfModified!
            }
            if self.parametersUncertainlyCauseReplacementIfModified != nil {
                map["ParametersUncertainlyCauseReplacementIfModified"] = self.parametersUncertainlyCauseReplacementIfModified!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParametersAllowedToBeModified") {
                self.parametersAllowedToBeModified = dict["ParametersAllowedToBeModified"] as! [String]
            }
            if dict.keys.contains("ParametersCauseInterruptionIfModified") {
                self.parametersCauseInterruptionIfModified = dict["ParametersCauseInterruptionIfModified"] as! [String]
            }
            if dict.keys.contains("ParametersCauseReplacementIfModified") {
                self.parametersCauseReplacementIfModified = dict["ParametersCauseReplacementIfModified"] as! [String]
            }
            if dict.keys.contains("ParametersConditionallyAllowedToBeModified") {
                self.parametersConditionallyAllowedToBeModified = dict["ParametersConditionallyAllowedToBeModified"] as! [String]
            }
            if dict.keys.contains("ParametersConditionallyCauseInterruptionIfModified") {
                self.parametersConditionallyCauseInterruptionIfModified = dict["ParametersConditionallyCauseInterruptionIfModified"] as! [String]
            }
            if dict.keys.contains("ParametersConditionallyCauseReplacementIfModified") {
                self.parametersConditionallyCauseReplacementIfModified = dict["ParametersConditionallyCauseReplacementIfModified"] as! [String]
            }
            if dict.keys.contains("ParametersNotAllowedToBeModified") {
                self.parametersNotAllowedToBeModified = dict["ParametersNotAllowedToBeModified"] as! [String]
            }
            if dict.keys.contains("ParametersUncertainlyAllowedToBeModified") {
                self.parametersUncertainlyAllowedToBeModified = dict["ParametersUncertainlyAllowedToBeModified"] as! [String]
            }
            if dict.keys.contains("ParametersUncertainlyCauseInterruptionIfModified") {
                self.parametersUncertainlyCauseInterruptionIfModified = dict["ParametersUncertainlyCauseInterruptionIfModified"] as! [String]
            }
            if dict.keys.contains("ParametersUncertainlyCauseReplacementIfModified") {
                self.parametersUncertainlyCauseReplacementIfModified = dict["ParametersUncertainlyCauseReplacementIfModified"] as! [String]
            }
        }
    }
    public var description_: String?

    public var outputs: [ValidateTemplateResponseBody.Outputs]?

    public var parameters: [[String: Any]]?

    public var requestId: String?

    public var resourceTypes: ValidateTemplateResponseBody.ResourceTypes?

    public var resources: [ValidateTemplateResponseBody.Resources]?

    public var updateInfo: ValidateTemplateResponseBody.UpdateInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceTypes?.validate()
        try self.updateInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.outputs != nil {
            var tmp : [Any] = []
            for k in self.outputs! {
                tmp.append(k.toMap())
            }
            map["Outputs"] = tmp
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceTypes != nil {
            map["ResourceTypes"] = self.resourceTypes?.toMap()
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        if self.updateInfo != nil {
            map["UpdateInfo"] = self.updateInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Outputs") {
            var tmp : [ValidateTemplateResponseBody.Outputs] = []
            for v in dict["Outputs"] as! [Any] {
                var model = ValidateTemplateResponseBody.Outputs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.outputs = tmp
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceTypes") {
            var model = ValidateTemplateResponseBody.ResourceTypes()
            model.fromMap(dict["ResourceTypes"] as! [String: Any])
            self.resourceTypes = model
        }
        if dict.keys.contains("Resources") {
            var tmp : [ValidateTemplateResponseBody.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = ValidateTemplateResponseBody.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
        }
        if dict.keys.contains("UpdateInfo") {
            var model = ValidateTemplateResponseBody.UpdateInfo()
            model.fromMap(dict["UpdateInfo"] as! [String: Any])
            self.updateInfo = model
        }
    }
}

public class ValidateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateTemplateResponseBody?

    public override init() {
        super.init()
    }

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
            var model = ValidateTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
