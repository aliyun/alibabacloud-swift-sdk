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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowedStackOperations"] as? [String] {
            self.allowedStackOperations = value
        }
        if let value = dict["CancelType"] as? String {
            self.cancelType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelStackOperationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CancelType"] as? String {
            self.cancelType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelUpdateStackResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["Parallelism"] as? Int64 {
            self.parallelism = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [ContinueCreateStackRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = ContinueCreateStackRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RamRoleName"] as? String {
            self.ramRoleName = value
        }
        if let value = dict["RecreatingOptions"] as? [String] {
            self.recreatingOptions = value
        }
        if let value = dict["RecreatingResources"] as? [String] {
            self.recreatingResources = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParametersAllowedToBeModified"] as? [String] {
                self.parametersAllowedToBeModified = value
            }
            if let value = dict["ParametersConditionallyAllowedToBeModified"] as? [String] {
                self.parametersConditionallyAllowedToBeModified = value
            }
            if let value = dict["ParametersNotAllowedToBeModified"] as? [String] {
                self.parametersNotAllowedToBeModified = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRunResult"] as? [String: Any?] {
            var model = ContinueCreateStackResponseBody.DryRunResult()
            model.fromMap(value)
            self.dryRunResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ContinueCreateStackResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["Template"] as? String {
            self.template = value
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAITaskResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LogicalResourceId"] as? String {
                self.logicalResourceId = value
            }
            if let value = dict["ResourceIdentifier"] as? String {
                self.resourceIdentifier = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public var resourceGroupId: String?

    public var resourcesToImport: [CreateChangeSetRequest.ResourcesToImport]?

    public var stackId: String?

    public var stackName: String?

    public var stackPolicyBody: String?

    public var stackPolicyDuringUpdateBody: String?

    public var stackPolicyDuringUpdateURL: String?

    public var stackPolicyURL: String?

    public var tags: [CreateChangeSetRequest.Tags]?

    public var taintResources: [String]?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.taintResources != nil {
            map["TaintResources"] = self.taintResources!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeSetName"] as? String {
            self.changeSetName = value
        }
        if let value = dict["ChangeSetType"] as? String {
            self.changeSetType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisableRollback"] as? Bool {
            self.disableRollback = value
        }
        if let value = dict["NotificationURLs"] as? [String] {
            self.notificationURLs = value
        }
        if let value = dict["Parallelism"] as? Int64 {
            self.parallelism = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [CreateChangeSetRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = CreateChangeSetRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RamRoleName"] as? String {
            self.ramRoleName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplacementOption"] as? String {
            self.replacementOption = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourcesToImport"] as? [Any?] {
            var tmp : [CreateChangeSetRequest.ResourcesToImport] = []
            for v in value {
                if v != nil {
                    var model = CreateChangeSetRequest.ResourcesToImport()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourcesToImport = tmp
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["StackName"] as? String {
            self.stackName = value
        }
        if let value = dict["StackPolicyBody"] as? String {
            self.stackPolicyBody = value
        }
        if let value = dict["StackPolicyDuringUpdateBody"] as? String {
            self.stackPolicyDuringUpdateBody = value
        }
        if let value = dict["StackPolicyDuringUpdateURL"] as? String {
            self.stackPolicyDuringUpdateURL = value
        }
        if let value = dict["StackPolicyURL"] as? String {
            self.stackPolicyURL = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateChangeSetRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateChangeSetRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TaintResources"] as? [String] {
            self.taintResources = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateScratchId"] as? String {
            self.templateScratchId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
        if let value = dict["TimeoutInMinutes"] as? Int64 {
            self.timeoutInMinutes = value
        }
        if let value = dict["UsePreviousParameters"] as? Bool {
            self.usePreviousParameters = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeSetId"] as? String {
            self.changeSetId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateChangeSetResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DiagnosticKey"] as? String {
            self.diagnosticKey = value
        }
        if let value = dict["DiagnosticType"] as? String {
            self.diagnosticType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DiagnosticType"] as? String {
            self.diagnosticType = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDiagnosticResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CreateOption"] as? String {
            self.createOption = value
        }
        if let value = dict["CreateOptions"] as? [String] {
            self.createOptions = value
        }
        if let value = dict["DeletionProtection"] as? String {
            self.deletionProtection = value
        }
        if let value = dict["DisableRollback"] as? Bool {
            self.disableRollback = value
        }
        if let value = dict["NotificationURLs"] as? [String] {
            self.notificationURLs = value
        }
        if let value = dict["Parallelism"] as? Int64 {
            self.parallelism = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [CreateStackRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = CreateStackRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RamRoleName"] as? String {
            self.ramRoleName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StackName"] as? String {
            self.stackName = value
        }
        if let value = dict["StackPolicyBody"] as? String {
            self.stackPolicyBody = value
        }
        if let value = dict["StackPolicyURL"] as? String {
            self.stackPolicyURL = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateStackRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateStackRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateScratchId"] as? String {
            self.templateScratchId = value
        }
        if let value = dict["TemplateScratchRegionId"] as? String {
            self.templateScratchRegionId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
        if let value = dict["TimeoutInMinutes"] as? Int64 {
            self.timeoutInMinutes = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateStackResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["RetainStacksOnAccountRemoval"] as? Bool {
                self.retainStacksOnAccountRemoval = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdministrationRoleName"] as? String {
            self.administrationRoleName = value
        }
        if let value = dict["AutoDeployment"] as? [String: Any?] {
            var model = CreateStackGroupRequest.AutoDeployment()
            model.fromMap(value)
            self.autoDeployment = model
        }
        if let value = dict["Capabilities"] as? [String] {
            self.capabilities = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExecutionRoleName"] as? String {
            self.executionRoleName = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [CreateStackGroupRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = CreateStackGroupRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["PermissionModel"] as? String {
            self.permissionModel = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StackArn"] as? String {
            self.stackArn = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateStackGroupRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateStackGroupRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdministrationRoleName"] as? String {
            self.administrationRoleName = value
        }
        if let value = dict["AutoDeployment"] as? String {
            self.autoDeploymentShrink = value
        }
        if let value = dict["Capabilities"] as? [String] {
            self.capabilities = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExecutionRoleName"] as? String {
            self.executionRoleName = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [CreateStackGroupShrinkRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = CreateStackGroupShrinkRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["PermissionModel"] as? String {
            self.permissionModel = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StackArn"] as? String {
            self.stackArn = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateStackGroupShrinkRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateStackGroupShrinkRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StackGroupId"] as? String {
            self.stackGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateStackGroupResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [String] {
                self.accountIds = value
            }
            if let value = dict["RdFolderIds"] as? [String] {
                self.rdFolderIds = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [String] {
            self.accountIds = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeploymentOptions"] as? [String] {
            self.deploymentOptions = value
        }
        if let value = dict["DeploymentTargets"] as? [String: Any?] {
            var model = CreateStackInstancesRequest.DeploymentTargets()
            model.fromMap(value)
            self.deploymentTargets = model
        }
        if let value = dict["DisableRollback"] as? Bool {
            self.disableRollback = value
        }
        if let value = dict["OperationDescription"] as? String {
            self.operationDescription = value
        }
        if let value = dict["OperationPreferences"] as? [String: Any] {
            self.operationPreferences = value
        }
        if let value = dict["ParameterOverrides"] as? [Any?] {
            var tmp : [CreateStackInstancesRequest.ParameterOverrides] = []
            for v in value {
                if v != nil {
                    var model = CreateStackInstancesRequest.ParameterOverrides()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameterOverrides = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegionIds"] as? [String] {
            self.regionIds = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
        }
        if let value = dict["TimeoutInMinutes"] as? Int64 {
            self.timeoutInMinutes = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? String {
            self.accountIdsShrink = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeploymentOptions"] as? [String] {
            self.deploymentOptions = value
        }
        if let value = dict["DeploymentTargets"] as? String {
            self.deploymentTargetsShrink = value
        }
        if let value = dict["DisableRollback"] as? Bool {
            self.disableRollback = value
        }
        if let value = dict["OperationDescription"] as? String {
            self.operationDescription = value
        }
        if let value = dict["OperationPreferences"] as? String {
            self.operationPreferencesShrink = value
        }
        if let value = dict["ParameterOverrides"] as? [Any?] {
            var tmp : [CreateStackInstancesShrinkRequest.ParameterOverrides] = []
            for v in value {
                if v != nil {
                    var model = CreateStackInstancesShrinkRequest.ParameterOverrides()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameterOverrides = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegionIds"] as? String {
            self.regionIdsShrink = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
        }
        if let value = dict["TimeoutInMinutes"] as? Int64 {
            self.timeoutInMinutes = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationId"] as? String {
            self.operationId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateStackInstancesResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateTemplateRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateTemplateRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["ValidationOptions"] as? [String] {
            self.validationOptions = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTemplateResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceTypeFilter"] as? [String] {
                self.resourceTypeFilter = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RelatedResourceTypeFilter"] as? [String] {
                self.relatedResourceTypeFilter = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceTags"] as? [String: Any] {
                self.resourceTags = value
            }
            if let value = dict["ResourceTypeFilter"] as? [String] {
                self.resourceTypeFilter = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExecutionMode"] as? String {
            self.executionMode = value
        }
        if let value = dict["LogicalIdStrategy"] as? String {
            self.logicalIdStrategy = value
        }
        if let value = dict["PreferenceParameters"] as? [Any?] {
            var tmp : [CreateTemplateScratchRequest.PreferenceParameters] = []
            for v in value {
                if v != nil {
                    var model = CreateTemplateScratchRequest.PreferenceParameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.preferenceParameters = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SourceResourceGroup"] as? [String: Any?] {
            var model = CreateTemplateScratchRequest.SourceResourceGroup()
            model.fromMap(value)
            self.sourceResourceGroup = model
        }
        if let value = dict["SourceResources"] as? [Any?] {
            var tmp : [CreateTemplateScratchRequest.SourceResources] = []
            for v in value {
                if v != nil {
                    var model = CreateTemplateScratchRequest.SourceResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sourceResources = tmp
        }
        if let value = dict["SourceTag"] as? [String: Any?] {
            var model = CreateTemplateScratchRequest.SourceTag()
            model.fromMap(value)
            self.sourceTag = model
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateTemplateScratchRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateTemplateScratchRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TemplateScratchType"] as? String {
            self.templateScratchType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExecutionMode"] as? String {
            self.executionMode = value
        }
        if let value = dict["LogicalIdStrategy"] as? String {
            self.logicalIdStrategy = value
        }
        if let value = dict["PreferenceParameters"] as? String {
            self.preferenceParametersShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SourceResourceGroup"] as? String {
            self.sourceResourceGroupShrink = value
        }
        if let value = dict["SourceResources"] as? String {
            self.sourceResourcesShrink = value
        }
        if let value = dict["SourceTag"] as? String {
            self.sourceTagShrink = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateTemplateScratchShrinkRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateTemplateScratchShrinkRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TemplateScratchType"] as? String {
            self.templateScratchType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateScratchId"] as? String {
            self.templateScratchId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTemplateScratchResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeSetId"] as? String {
            self.changeSetId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteChangeSetResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDiagnosticResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeleteOptions"] as? [String] {
            self.deleteOptions = value
        }
        if let value = dict["Parallelism"] as? Int64 {
            self.parallelism = value
        }
        if let value = dict["RamRoleName"] as? String {
            self.ramRoleName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RetainAllResources"] as? Bool {
            self.retainAllResources = value
        }
        if let value = dict["RetainResources"] as? [String] {
            self.retainResources = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteStackResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteStackGroupResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [String] {
                self.accountIds = value
            }
            if let value = dict["RdFolderIds"] as? [String] {
                self.rdFolderIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [String] {
            self.accountIds = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeploymentTargets"] as? [String: Any?] {
            var model = DeleteStackInstancesRequest.DeploymentTargets()
            model.fromMap(value)
            self.deploymentTargets = model
        }
        if let value = dict["OperationDescription"] as? String {
            self.operationDescription = value
        }
        if let value = dict["OperationPreferences"] as? [String: Any] {
            self.operationPreferences = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegionIds"] as? [String] {
            self.regionIds = value
        }
        if let value = dict["RetainStacks"] as? Bool {
            self.retainStacks = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? String {
            self.accountIdsShrink = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeploymentTargets"] as? String {
            self.deploymentTargetsShrink = value
        }
        if let value = dict["OperationDescription"] as? String {
            self.operationDescription = value
        }
        if let value = dict["OperationPreferences"] as? String {
            self.operationPreferencesShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegionIds"] as? String {
            self.regionIdsShrink = value
        }
        if let value = dict["RetainStacks"] as? Bool {
            self.retainStacks = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationId"] as? String {
            self.operationId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteStackInstancesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTemplateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateScratchId"] as? String {
            self.templateScratchId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTemplateScratchResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeregisterResourceTypeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["RegionEndpoint"] as? String {
                self.regionEndpoint = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.Regions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["LogicalResourceId"] as? [String] {
            self.logicalResourceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DriftDetectionId"] as? String {
            self.driftDetectionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetectStackDriftResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OperationPreferences"] as? [String: Any] {
            self.operationPreferences = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OperationPreferences"] as? String {
            self.operationPreferencesShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationId"] as? String {
            self.operationId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetectStackGroupDriftResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["LogicalResourceId"] as? String {
            self.logicalResourceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActualValue"] as? String {
                self.actualValue = value
            }
            if let value = dict["DifferenceType"] as? String {
                self.differenceType = value
            }
            if let value = dict["ExpectedValue"] as? String {
                self.expectedValue = value
            }
            if let value = dict["PropertyPath"] as? String {
                self.propertyPath = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActualProperties"] as? String {
            self.actualProperties = value
        }
        if let value = dict["DriftDetectionTime"] as? String {
            self.driftDetectionTime = value
        }
        if let value = dict["ExpectedProperties"] as? String {
            self.expectedProperties = value
        }
        if let value = dict["LogicalResourceId"] as? String {
            self.logicalResourceId = value
        }
        if let value = dict["PhysicalResourceId"] as? String {
            self.physicalResourceId = value
        }
        if let value = dict["PropertyDifferences"] as? [Any?] {
            var tmp : [DetectStackResourceDriftResponseBody.PropertyDifferences] = []
            for v in value {
                if v != nil {
                    var model = DetectStackResourceDriftResponseBody.PropertyDifferences()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.propertyDifferences = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceDriftStatus"] as? String {
            self.resourceDriftStatus = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetectStackResourceDriftResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableServiceAccessResponseBody : Tea.TeaModel {
    public class ServiceAccessInfo : Tea.TeaModel {
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
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var requestId: String?

    public var serviceAccessInfo: EnableServiceAccessResponseBody.ServiceAccessInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serviceAccessInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceAccessInfo != nil {
            map["ServiceAccessInfo"] = self.serviceAccessInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceAccessInfo"] as? [String: Any?] {
            var model = EnableServiceAccessResponseBody.ServiceAccessInfo()
            model.fromMap(value)
            self.serviceAccessInfo = model
        }
    }
}

public class EnableServiceAccessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableServiceAccessResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableServiceAccessResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableServicesRequest : Tea.TeaModel {
    public var regionId: String?

    public var serviceNames: [String]?

    public override init() {
        super.init()
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
        if self.serviceNames != nil {
            map["ServiceNames"] = self.serviceNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceNames"] as? [String] {
            self.serviceNames = value
        }
    }
}

public class EnableServicesShrinkRequest : Tea.TeaModel {
    public var regionId: String?

    public var serviceNamesShrink: String?

    public override init() {
        super.init()
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
        if self.serviceNamesShrink != nil {
            map["ServiceNames"] = self.serviceNamesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceNames"] as? String {
            self.serviceNamesShrink = value
        }
    }
}

public class EnableServicesResponseBody : Tea.TeaModel {
    public class FailedServices : Tea.TeaModel {
        public var code: String?

        public var message: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
        }
    }
    public var failedServices: [EnableServicesResponseBody.FailedServices]?

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
        if self.failedServices != nil {
            var tmp : [Any] = []
            for k in self.failedServices! {
                tmp.append(k.toMap())
            }
            map["FailedServices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailedServices"] as? [Any?] {
            var tmp : [EnableServicesResponseBody.FailedServices] = []
            for v in value {
                if v != nil {
                    var model = EnableServicesResponseBody.FailedServices()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.failedServices = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnableServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableServicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableServicesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeSetId"] as? String {
            self.changeSetId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ExecuteChangeSetResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProvisionRegionId"] as? String {
            self.provisionRegionId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateScratchId"] as? String {
            self.templateScratchId = value
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LogicalResourceId"] as? String {
                self.logicalResourceId = value
            }
            if let value = dict["ResourceIdentifier"] as? [String: Any] {
                self.resourceIdentifier = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourcesToImport"] as? [Any?] {
            var tmp : [GenerateTemplateByScratchResponseBody.ResourcesToImport] = []
            for v in value {
                if v != nil {
                    var model = GenerateTemplateByScratchResponseBody.ResourcesToImport()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourcesToImport = tmp
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenerateTemplateByScratchResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationTypes"] as? [String] {
            self.operationTypes = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Action"] as? [String] {
                    self.action = value
                }
                if let value = dict["Condition"] as? [String: Any] {
                    self.condition = value
                }
                if let value = dict["Effect"] as? String {
                    self.effect = value
                }
                if let value = dict["Resource"] as? String {
                    self.resource = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Statement"] as? [Any?] {
                var tmp : [GenerateTemplatePolicyResponseBody.Policy.Statement] = []
                for v in value {
                    if v != nil {
                        var model = GenerateTemplatePolicyResponseBody.Policy.Statement()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.statement = tmp
            }
            if let value = dict["Version"] as? String {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = GenerateTemplatePolicyResponseBody.Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenerateTemplatePolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OutputOption"] as? String {
            self.outputOption = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusReason"] as? String {
            self.statusReason = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskOutput"] as? [String: Any] {
            self.taskOutput = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAITaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeSetId"] as? String {
            self.changeSetId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ShowTemplate"] as? Bool {
            self.showTemplate = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Command"] as? String {
                    self.command = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["Stream"] as? String {
                    self.stream = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TerraformLogs"] as? [Any?] {
                var tmp : [GetChangeSetResponseBody.Log.TerraformLogs] = []
                for v in value {
                    if v != nil {
                        var model = GetChangeSetResponseBody.Log.TerraformLogs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public var resourceGroupId: String?

    public var stackId: String?

    public var stackName: String?

    public var status: String?

    public var statusReason: String?

    public var tags: [GetChangeSetResponseBody.Tags]?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if self.timeoutInMinutes != nil {
            map["TimeoutInMinutes"] = self.timeoutInMinutes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeSetId"] as? String {
            self.changeSetId = value
        }
        if let value = dict["ChangeSetName"] as? String {
            self.changeSetName = value
        }
        if let value = dict["ChangeSetType"] as? String {
            self.changeSetType = value
        }
        if let value = dict["Changes"] as? [[String: Any]] {
            self.changes = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisableRollback"] as? Bool {
            self.disableRollback = value
        }
        if let value = dict["ExecutionStatus"] as? String {
            self.executionStatus = value
        }
        if let value = dict["Log"] as? [String: Any?] {
            var model = GetChangeSetResponseBody.Log()
            model.fromMap(value)
            self.log = model
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [GetChangeSetResponseBody.Parameters] = []
            for v in value {
                if v != nil {
                    var model = GetChangeSetResponseBody.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["StackName"] as? String {
            self.stackName = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusReason"] as? String {
            self.statusReason = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetChangeSetResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetChangeSetResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TimeoutInMinutes"] as? Int32 {
            self.timeoutInMinutes = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetChangeSetResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailedResources"] as? [String: Any] {
                self.failedResources = value
            }
            if let value = dict["RosActionMessages"] as? [String: Any] {
                self.rosActionMessages = value
            }
            if let value = dict["StackMessages"] as? [String: Any] {
                self.stackMessages = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DiagnosticKey"] as? String {
            self.diagnosticKey = value
        }
        if let value = dict["DiagnosticProduct"] as? String {
            self.diagnosticProduct = value
        }
        if let value = dict["DiagnosticResult"] as? [String: Any?] {
            var model = GetDiagnosticResponseBody.DiagnosticResult()
            model.fromMap(value)
            self.diagnosticResult = model
        }
        if let value = dict["DiagnosticTime"] as? String {
            self.diagnosticTime = value
        }
        if let value = dict["HttpCode"] as? String {
            self.httpCode = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Recommends"] as? [String: Any] {
            self.recommends = value
        }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusReason"] as? String {
            self.statusReason = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDiagnosticResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Feature"] as? String {
            self.feature = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SupportedResourceTypes"] as? [String] {
                self.supportedResourceTypes = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["SideEffects"] as? [String] {
                    self.sideEffects = value
                }
                if let value = dict["SupportedFilters"] as? [String] {
                    self.supportedFilters = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SupportedResourceTypes"] as? [Any?] {
                var tmp : [GetFeatureDetailsResponseBody.ResourceCleaner.SupportedResourceTypes] = []
                for v in value {
                    if v != nil {
                        var model = GetFeatureDetailsResponseBody.ResourceCleaner.SupportedResourceTypes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceIdentifiers"] as? [String] {
                    self.resourceIdentifiers = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SupportedResourceTypes"] as? [Any?] {
                var tmp : [GetFeatureDetailsResponseBody.ResourceImport.SupportedResourceTypes] = []
                for v in value {
                    if v != nil {
                        var model = GetFeatureDetailsResponseBody.ResourceImport.SupportedResourceTypes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Properties"] as? [String] {
                    self.properties = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SupportedResourceTypes"] as? [Any?] {
                var tmp : [GetFeatureDetailsResponseBody.TemplateParameterConstraints.SupportedResourceTypes] = []
                for v in value {
                    if v != nil {
                        var model = GetFeatureDetailsResponseBody.TemplateParameterConstraints.SupportedResourceTypes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["SourceResourceGroupSupported"] as? Bool {
                    self.sourceResourceGroupSupported = value
                }
                if let value = dict["SourceResourcesSupported"] as? Bool {
                    self.sourceResourcesSupported = value
                }
                if let value = dict["SourceSupported"] as? Bool {
                    self.sourceSupported = value
                }
                if let value = dict["SourceTagSupported"] as? Bool {
                    self.sourceTagSupported = value
                }
                if let value = dict["SupportedTemplateScratchTypes"] as? [String] {
                    self.supportedTemplateScratchTypes = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SupportedResourceTypes"] as? [Any?] {
                var tmp : [GetFeatureDetailsResponseBody.TemplateScratch.SupportedResourceTypes] = []
                for v in value {
                    if v != nil {
                        var model = GetFeatureDetailsResponseBody.TemplateScratch.SupportedResourceTypes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DeleteStack"] as? [String] {
                        self.deleteStack = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CustomTag"] as? [String] {
                    self.customTag = value
                }
                if let value = dict["EstimateCost"] as? [String] {
                    self.estimateCost = value
                }
                if let value = dict["ResourceGroup"] as? [String] {
                    self.resourceGroup = value
                }
                if let value = dict["StackOperationRisk"] as? [String: Any?] {
                    var model = GetFeatureDetailsResponseBody.Terraform.SupportedResourceTypes.StackOperationRisk()
                    model.fromMap(value)
                    self.stackOperationRisk = model
                }
                if let value = dict["SystemTag"] as? [String] {
                    self.systemTag = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ProviderName"] as? String {
                        self.providerName = value
                    }
                    if let value = dict["SupportedVersions"] as? [String] {
                        self.supportedVersions = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ProviderVersions"] as? [Any?] {
                    var tmp : [GetFeatureDetailsResponseBody.Terraform.SupportedVersions.ProviderVersions] = []
                    for v in value {
                        if v != nil {
                            var model = GetFeatureDetailsResponseBody.Terraform.SupportedVersions.ProviderVersions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.providerVersions = tmp
                }
                if let value = dict["TerraformVersion"] as? String {
                    self.terraformVersion = value
                }
                if let value = dict["Transform"] as? String {
                    self.transform = value
                }
                if let value = dict["UpdateAllowedTransforms"] as? [String] {
                    self.updateAllowedTransforms = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SupportedResourceTypes"] as? [String: Any?] {
                var model = GetFeatureDetailsResponseBody.Terraform.SupportedResourceTypes()
                model.fromMap(value)
                self.supportedResourceTypes = model
            }
            if let value = dict["SupportedVersions"] as? [Any?] {
                var tmp : [GetFeatureDetailsResponseBody.Terraform.SupportedVersions] = []
                for v in value {
                    if v != nil {
                        var model = GetFeatureDetailsResponseBody.Terraform.SupportedVersions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DriftDetection"] as? [String: Any?] {
            var model = GetFeatureDetailsResponseBody.DriftDetection()
            model.fromMap(value)
            self.driftDetection = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceCleaner"] as? [String: Any?] {
            var model = GetFeatureDetailsResponseBody.ResourceCleaner()
            model.fromMap(value)
            self.resourceCleaner = model
        }
        if let value = dict["ResourceImport"] as? [String: Any?] {
            var model = GetFeatureDetailsResponseBody.ResourceImport()
            model.fromMap(value)
            self.resourceImport = model
        }
        if let value = dict["TemplateParameterConstraints"] as? [String: Any?] {
            var model = GetFeatureDetailsResponseBody.TemplateParameterConstraints()
            model.fromMap(value)
            self.templateParameterConstraints = model
        }
        if let value = dict["TemplateScratch"] as? [String: Any?] {
            var model = GetFeatureDetailsResponseBody.TemplateScratch()
            model.fromMap(value)
            self.templateScratch = model
        }
        if let value = dict["Terraform"] as? [String: Any?] {
            var model = GetFeatureDetailsResponseBody.Terraform()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFeatureDetailsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Attributes"] as? [String: Any] {
            self.attributes = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DefaultVersionId"] as? String {
            self.defaultVersionId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EntityType"] as? String {
            self.entityType = value
        }
        if let value = dict["IsDefaultVersion"] as? Bool {
            self.isDefaultVersion = value
        }
        if let value = dict["LatestVersionId"] as? String {
            self.latestVersionId = value
        }
        if let value = dict["Properties"] as? [String: Any] {
            self.properties = value
        }
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SupportDriftDetection"] as? Bool {
            self.supportDriftDetection = value
        }
        if let value = dict["SupportScratchDetection"] as? Bool {
            self.supportScratchDetection = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TotalVersionCount"] as? Int32 {
            self.totalVersionCount = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetResourceTypeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateBody"] as? [String: Any] {
            self.templateBody = value
        }
        if let value = dict["TemplateContent"] as? String {
            self.templateContent = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetResourceTypeTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceAccessResponseBody : Tea.TeaModel {
    public class ServiceAccessInfo : Tea.TeaModel {
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
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var requestId: String?

    public var serviceAccessInfo: GetServiceAccessResponseBody.ServiceAccessInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serviceAccessInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceAccessInfo != nil {
            map["ServiceAccessInfo"] = self.serviceAccessInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceAccessInfo"] as? [String: Any?] {
            var model = GetServiceAccessResponseBody.ServiceAccessInfo()
            model.fromMap(value)
            self.serviceAccessInfo = model
        }
    }
}

public class GetServiceAccessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceAccessResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetServiceAccessResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [GetServiceProvisionsRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = GetServiceProvisionsRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Services"] as? [Any?] {
            var tmp : [GetServiceProvisionsRequest.Services] = []
            for v in value {
                if v != nil {
                    var model = GetServiceProvisionsRequest.Services()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.services = tmp
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
    }
}

public class GetServiceProvisionsResponseBody : Tea.TeaModel {
    public class ServiceProvisions : Tea.TeaModel {
        public class CommodityProvisions : Tea.TeaModel {
            public var commodityCode: String?

            public var enableURL: String?

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
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.enableURL != nil {
                    map["EnableURL"] = self.enableURL!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommodityCode"] as? String {
                    self.commodityCode = value
                }
                if let value = dict["EnableURL"] as? String {
                    self.enableURL = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ApiName"] as? String {
                            self.apiName = value
                        }
                        if let value = dict["ApiProductId"] as? String {
                            self.apiProductId = value
                        }
                        if let value = dict["ApiType"] as? String {
                            self.apiType = value
                        }
                        if let value = dict["Parameters"] as? [String: Any] {
                            self.parameters = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApiForCreation"] as? [String: Any?] {
                        var model = GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles.ApiForCreation()
                        model.fromMap(value)
                        self.apiForCreation = model
                    }
                    if let value = dict["Created"] as? Bool {
                        self.created = value
                    }
                    if let value = dict["Function"] as? String {
                        self.function = value
                    }
                    if let value = dict["RoleName"] as? String {
                        self.roleName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuthorizationURL"] as? String {
                    self.authorizationURL = value
                }
                if let value = dict["Roles"] as? [Any?] {
                    var tmp : [GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles] = []
                    for v in value {
                        if v != nil {
                            var model = GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.roles = tmp
                }
            }
        }
        public var autoEnableService: Bool?

        public var commodityProvisions: [GetServiceProvisionsResponseBody.ServiceProvisions.CommodityProvisions]?

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
            if self.commodityProvisions != nil {
                var tmp : [Any] = []
                for k in self.commodityProvisions! {
                    tmp.append(k.toMap())
                }
                map["CommodityProvisions"] = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoEnableService"] as? Bool {
                self.autoEnableService = value
            }
            if let value = dict["CommodityProvisions"] as? [Any?] {
                var tmp : [GetServiceProvisionsResponseBody.ServiceProvisions.CommodityProvisions] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceProvisionsResponseBody.ServiceProvisions.CommodityProvisions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.commodityProvisions = tmp
            }
            if let value = dict["DependentServiceNames"] as? [String] {
                self.dependentServiceNames = value
            }
            if let value = dict["EnableURL"] as? String {
                self.enableURL = value
            }
            if let value = dict["RoleProvision"] as? [String: Any?] {
                var model = GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision()
                model.fromMap(value)
                self.roleProvision = model
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceProvisions"] as? [Any?] {
            var tmp : [GetServiceProvisionsResponseBody.ServiceProvisions] = []
            for v in value {
                if v != nil {
                    var model = GetServiceProvisionsResponseBody.ServiceProvisions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetServiceProvisionsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["LogOption"] as? String {
            self.logOption = value
        }
        if let value = dict["OutputOption"] as? String {
            self.outputOption = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ShowResourceProgress"] as? String {
            self.showResourceProgress = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Content"] as? String {
                        self.content = value
                    }
                    if let value = dict["Keys"] as? [String] {
                        self.keys = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Logs"] as? [Any?] {
                    var tmp : [GetStackResponseBody.Log.ResourceLogs.Logs] = []
                    for v in value {
                        if v != nil {
                            var model = GetStackResponseBody.Log.ResourceLogs.Logs()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.logs = tmp
                }
                if let value = dict["ResourceName"] as? String {
                    self.resourceName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Command"] as? String {
                    self.command = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["Stream"] as? String {
                    self.stream = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceLogs"] as? [Any?] {
                var tmp : [GetStackResponseBody.Log.ResourceLogs] = []
                for v in value {
                    if v != nil {
                        var model = GetStackResponseBody.Log.ResourceLogs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.resourceLogs = tmp
            }
            if let value = dict["TerraformLogs"] as? [Any?] {
                var tmp : [GetStackResponseBody.Log.TerraformLogs] = []
                for v in value {
                    if v != nil {
                        var model = GetStackResponseBody.Log.TerraformLogs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Action"] as? String {
                self.action = value
            }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["LogicalResourceId"] as? String {
                self.logicalResourceId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ProgressTargetValue"] as? Double {
                    self.progressTargetValue = value
                }
                if let value = dict["ProgressValue"] as? Double {
                    self.progressValue = value
                }
                if let value = dict["ResourceName"] as? String {
                    self.resourceName = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailedResourceCount"] as? Int32 {
                self.failedResourceCount = value
            }
            if let value = dict["InProgressResourceCount"] as? Int32 {
                self.inProgressResourceCount = value
            }
            if let value = dict["InProgressResourceDetails"] as? [Any?] {
                var tmp : [GetStackResponseBody.ResourceProgress.InProgressResourceDetails] = []
                for v in value {
                    if v != nil {
                        var model = GetStackResponseBody.ResourceProgress.InProgressResourceDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.inProgressResourceDetails = tmp
            }
            if let value = dict["PendingResourceCount"] as? Int32 {
                self.pendingResourceCount = value
            }
            if let value = dict["StackActionProgress"] as? Double {
                self.stackActionProgress = value
            }
            if let value = dict["StackOperationProgress"] as? Double {
                self.stackOperationProgress = value
            }
            if let value = dict["SuccessResourceCount"] as? Int32 {
                self.successResourceCount = value
            }
            if let value = dict["TotalResourceCount"] as? Int32 {
                self.totalResourceCount = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckedStackResourceCount"] as? Int32 {
            self.checkedStackResourceCount = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DeletionProtection"] as? String {
            self.deletionProtection = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisableRollback"] as? Bool {
            self.disableRollback = value
        }
        if let value = dict["DriftDetectionTime"] as? String {
            self.driftDetectionTime = value
        }
        if let value = dict["Interface"] as? String {
            self.interface = value
        }
        if let value = dict["Log"] as? [String: Any?] {
            var model = GetStackResponseBody.Log()
            model.fromMap(value)
            self.log = model
        }
        if let value = dict["NotCheckedStackResourceCount"] as? Int32 {
            self.notCheckedStackResourceCount = value
        }
        if let value = dict["NotificationURLs"] as? [String] {
            self.notificationURLs = value
        }
        if let value = dict["OperationInfo"] as? [String: Any?] {
            var model = GetStackResponseBody.OperationInfo()
            model.fromMap(value)
            self.operationInfo = model
        }
        if let value = dict["OrderIds"] as? [String] {
            self.orderIds = value
        }
        if let value = dict["Outputs"] as? [[String: Any]] {
            self.outputs = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [GetStackResponseBody.Parameters] = []
            for v in value {
                if v != nil {
                    var model = GetStackResponseBody.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["ParentStackId"] as? String {
            self.parentStackId = value
        }
        if let value = dict["RamRoleName"] as? String {
            self.ramRoleName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceProgress"] as? [String: Any?] {
            var model = GetStackResponseBody.ResourceProgress()
            model.fromMap(value)
            self.resourceProgress = model
        }
        if let value = dict["RollbackFailedRootReason"] as? String {
            self.rollbackFailedRootReason = value
        }
        if let value = dict["RootStackId"] as? String {
            self.rootStackId = value
        }
        if let value = dict["ServiceManaged"] as? Bool {
            self.serviceManaged = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["StackDriftStatus"] as? String {
            self.stackDriftStatus = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["StackName"] as? String {
            self.stackName = value
        }
        if let value = dict["StackType"] as? String {
            self.stackType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusReason"] as? String {
            self.statusReason = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetStackResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetStackResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TemplateDescription"] as? String {
            self.templateDescription = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateScratchId"] as? String {
            self.templateScratchId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
        if let value = dict["TimeoutInMinutes"] as? Int32 {
            self.timeoutInMinutes = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetStackResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DriftDetectionId"] as? String {
            self.driftDetectionId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DriftDetectionId"] as? String {
            self.driftDetectionId = value
        }
        if let value = dict["DriftDetectionStatus"] as? String {
            self.driftDetectionStatus = value
        }
        if let value = dict["DriftDetectionStatusReason"] as? String {
            self.driftDetectionStatusReason = value
        }
        if let value = dict["DriftDetectionTime"] as? String {
            self.driftDetectionTime = value
        }
        if let value = dict["DriftedStackResourceCount"] as? Int32 {
            self.driftedStackResourceCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StackDriftStatus"] as? String {
            self.stackDriftStatus = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetStackDriftDetectionStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackGroupId"] as? String {
            self.stackGroupId = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["RetainStacksOnAccountRemoval"] as? Bool {
                    self.retainStacksOnAccountRemoval = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ParameterKey"] as? String {
                    self.parameterKey = value
                }
                if let value = dict["ParameterValue"] as? String {
                    self.parameterValue = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CancelledStackInstancesCount"] as? Int32 {
                    self.cancelledStackInstancesCount = value
                }
                if let value = dict["DriftDetectionStatus"] as? String {
                    self.driftDetectionStatus = value
                }
                if let value = dict["DriftDetectionTime"] as? String {
                    self.driftDetectionTime = value
                }
                if let value = dict["DriftedStackInstancesCount"] as? Int32 {
                    self.driftedStackInstancesCount = value
                }
                if let value = dict["FailedStackInstancesCount"] as? Int32 {
                    self.failedStackInstancesCount = value
                }
                if let value = dict["InProgressStackInstancesCount"] as? Int32 {
                    self.inProgressStackInstancesCount = value
                }
                if let value = dict["InSyncStackInstancesCount"] as? Int32 {
                    self.inSyncStackInstancesCount = value
                }
                if let value = dict["StackGroupDriftStatus"] as? String {
                    self.stackGroupDriftStatus = value
                }
                if let value = dict["TotalStackInstancesCount"] as? Int32 {
                    self.totalStackInstancesCount = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdministrationRoleName"] as? String {
                self.administrationRoleName = value
            }
            if let value = dict["AutoDeployment"] as? [String: Any?] {
                var model = GetStackGroupResponseBody.StackGroup.AutoDeployment()
                model.fromMap(value)
                self.autoDeployment = model
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ExecutionRoleName"] as? String {
                self.executionRoleName = value
            }
            if let value = dict["Parameters"] as? [Any?] {
                var tmp : [GetStackGroupResponseBody.StackGroup.Parameters] = []
                for v in value {
                    if v != nil {
                        var model = GetStackGroupResponseBody.StackGroup.Parameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.parameters = tmp
            }
            if let value = dict["PermissionModel"] as? String {
                self.permissionModel = value
            }
            if let value = dict["RdFolderIds"] as? [String] {
                self.rdFolderIds = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["StackGroupDriftDetectionDetail"] as? [String: Any?] {
                var model = GetStackGroupResponseBody.StackGroup.StackGroupDriftDetectionDetail()
                model.fromMap(value)
                self.stackGroupDriftDetectionDetail = model
            }
            if let value = dict["StackGroupId"] as? String {
                self.stackGroupId = value
            }
            if let value = dict["StackGroupName"] as? String {
                self.stackGroupName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TemplateBody"] as? String {
                self.templateBody = value
            }
            if let value = dict["TemplateContent"] as? String {
                self.templateContent = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StackGroup"] as? [String: Any?] {
            var model = GetStackGroupResponseBody.StackGroup()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetStackGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationId"] as? String {
            self.operationId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountIds"] as? [String] {
                    self.accountIds = value
                }
                if let value = dict["RdFolderIds"] as? [String] {
                    self.rdFolderIds = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FailureToleranceCount"] as? Int32 {
                    self.failureToleranceCount = value
                }
                if let value = dict["FailureTolerancePercentage"] as? Int32 {
                    self.failureTolerancePercentage = value
                }
                if let value = dict["MaxConcurrentCount"] as? Int32 {
                    self.maxConcurrentCount = value
                }
                if let value = dict["MaxConcurrentPercentage"] as? Int32 {
                    self.maxConcurrentPercentage = value
                }
                if let value = dict["RegionIdsOrder"] as? [String] {
                    self.regionIdsOrder = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CancelledStackInstancesCount"] as? Int32 {
                    self.cancelledStackInstancesCount = value
                }
                if let value = dict["DriftDetectionStatus"] as? String {
                    self.driftDetectionStatus = value
                }
                if let value = dict["DriftDetectionTime"] as? String {
                    self.driftDetectionTime = value
                }
                if let value = dict["DriftedStackInstancesCount"] as? Int32 {
                    self.driftedStackInstancesCount = value
                }
                if let value = dict["FailedStackInstancesCount"] as? Int32 {
                    self.failedStackInstancesCount = value
                }
                if let value = dict["InProgressStackInstancesCount"] as? Int32 {
                    self.inProgressStackInstancesCount = value
                }
                if let value = dict["InSyncStackInstancesCount"] as? Int32 {
                    self.inSyncStackInstancesCount = value
                }
                if let value = dict["StackGroupDriftStatus"] as? String {
                    self.stackGroupDriftStatus = value
                }
                if let value = dict["TotalStackInstancesCount"] as? Int32 {
                    self.totalStackInstancesCount = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Action"] as? String {
                self.action = value
            }
            if let value = dict["AdministrationRoleName"] as? String {
                self.administrationRoleName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DeploymentTargets"] as? [String: Any?] {
                var model = GetStackGroupOperationResponseBody.StackGroupOperation.DeploymentTargets()
                model.fromMap(value)
                self.deploymentTargets = model
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ExecutionRoleName"] as? String {
                self.executionRoleName = value
            }
            if let value = dict["OperationDescription"] as? String {
                self.operationDescription = value
            }
            if let value = dict["OperationId"] as? String {
                self.operationId = value
            }
            if let value = dict["OperationPreferences"] as? [String: Any?] {
                var model = GetStackGroupOperationResponseBody.StackGroupOperation.OperationPreferences()
                model.fromMap(value)
                self.operationPreferences = model
            }
            if let value = dict["RetainStacks"] as? Bool {
                self.retainStacks = value
            }
            if let value = dict["StackGroupDriftDetectionDetail"] as? [String: Any?] {
                var model = GetStackGroupOperationResponseBody.StackGroupOperation.StackGroupDriftDetectionDetail()
                model.fromMap(value)
                self.stackGroupDriftDetectionDetail = model
            }
            if let value = dict["StackGroupId"] as? String {
                self.stackGroupId = value
            }
            if let value = dict["StackGroupName"] as? String {
                self.stackGroupName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StackGroupOperation"] as? [String: Any?] {
            var model = GetStackGroupOperationResponseBody.StackGroupOperation()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetStackGroupOperationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OutputOption"] as? String {
            self.outputOption = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
        }
        if let value = dict["StackInstanceAccountId"] as? String {
            self.stackInstanceAccountId = value
        }
        if let value = dict["StackInstanceRegionId"] as? String {
            self.stackInstanceRegionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ParameterKey"] as? String {
                    self.parameterKey = value
                }
                if let value = dict["ParameterValue"] as? String {
                    self.parameterValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["DriftDetectionTime"] as? String {
                self.driftDetectionTime = value
            }
            if let value = dict["Outputs"] as? [[String: Any]] {
                self.outputs = value
            }
            if let value = dict["ParameterOverrides"] as? [Any?] {
                var tmp : [GetStackInstanceResponseBody.StackInstance.ParameterOverrides] = []
                for v in value {
                    if v != nil {
                        var model = GetStackInstanceResponseBody.StackInstance.ParameterOverrides()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.parameterOverrides = tmp
            }
            if let value = dict["RdFolderId"] as? String {
                self.rdFolderId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["StackDriftStatus"] as? String {
                self.stackDriftStatus = value
            }
            if let value = dict["StackGroupId"] as? String {
                self.stackGroupId = value
            }
            if let value = dict["StackGroupName"] as? String {
                self.stackGroupName = value
            }
            if let value = dict["StackId"] as? String {
                self.stackId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StackInstance"] as? [String: Any?] {
            var model = GetStackInstanceResponseBody.StackInstance()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetStackInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StackPolicyBody"] as? [String: Any] {
            self.stackPolicyBody = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetStackPolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["LogicalResourceId"] as? String {
            self.logicalResourceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceAttributes"] as? [String] {
            self.resourceAttributes = value
        }
        if let value = dict["ShowResourceAttributes"] as? Bool {
            self.showResourceAttributes = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LogicalIdHierarchy"] as? String {
                self.logicalIdHierarchy = value
            }
            if let value = dict["TypeHierarchy"] as? String {
                self.typeHierarchy = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DriftDetectionTime"] as? String {
            self.driftDetectionTime = value
        }
        if let value = dict["LogicalResourceId"] as? String {
            self.logicalResourceId = value
        }
        if let value = dict["Metadata"] as? [String: Any] {
            self.metadata = value
        }
        if let value = dict["ModuleInfo"] as? [String: Any?] {
            var model = GetStackResourceResponseBody.ModuleInfo()
            model.fromMap(value)
            self.moduleInfo = model
        }
        if let value = dict["PhysicalResourceId"] as? String {
            self.physicalResourceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceAttributes"] as? [[String: Any]] {
            self.resourceAttributes = value
        }
        if let value = dict["ResourceDriftStatus"] as? String {
            self.resourceDriftStatus = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["StackName"] as? String {
            self.stackName = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusReason"] as? String {
            self.statusReason = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetStackResourceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeSetId"] as? String {
            self.changeSetId = value
        }
        if let value = dict["IncludePermission"] as? String {
            self.includePermission = value
        }
        if let value = dict["IncludeTags"] as? String {
            self.includeTags = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateStage"] as? String {
            self.templateStage = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["ShareOption"] as? String {
                self.shareOption = value
            }
            if let value = dict["ShareSource"] as? String {
                self.shareSource = value
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
            if let value = dict["VersionOption"] as? String {
                self.versionOption = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var additionalInfo: [String: Any]?

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
        if self.additionalInfo != nil {
            map["AdditionalInfo"] = self.additionalInfo!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdditionalInfo"] as? [String: Any] {
            self.additionalInfo = value
        }
        if let value = dict["ChangeSetId"] as? String {
            self.changeSetId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Interface"] as? String {
            self.interface = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["Permissions"] as? [Any?] {
            var tmp : [GetTemplateResponseBody.Permissions] = []
            for v in value {
                if v != nil {
                    var model = GetTemplateResponseBody.Permissions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.permissions = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetTemplateResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetTemplateResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TemplateARN"] as? String {
            self.templateARN = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTemplateResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [GetTemplateEstimateCostRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = GetTemplateEstimateCostRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateScratchId"] as? String {
            self.templateScratchId = value
        }
        if let value = dict["TemplateScratchRegionId"] as? String {
            self.templateScratchRegionId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? [String: Any] {
            self.resources = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTemplateEstimateCostResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [GetTemplateParameterConstraintsRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = GetTemplateParameterConstraintsRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["ParametersKeyFilter"] as? [String] {
            self.parametersKeyFilter = value
        }
        if let value = dict["ParametersOrder"] as? [String] {
            self.parametersOrder = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [GetTemplateParameterConstraintsShrinkRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = GetTemplateParameterConstraintsShrinkRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["ParametersKeyFilter"] as? String {
            self.parametersKeyFilterShrink = value
        }
        if let value = dict["ParametersOrder"] as? String {
            self.parametersOrderShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PropertyName"] as? String {
                    self.propertyName = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
            }
        }
        public class OriginalConstraints : Tea.TeaModel {
            public var allowedValues: [Any]?

            public var behavior: String?

            public var behaviorReason: String?

            public var propertiesData: String?

            public var propertyName: String?

            public var requestInfo: String?

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
                if self.behavior != nil {
                    map["Behavior"] = self.behavior!
                }
                if self.behaviorReason != nil {
                    map["BehaviorReason"] = self.behaviorReason!
                }
                if self.propertiesData != nil {
                    map["PropertiesData"] = self.propertiesData!
                }
                if self.propertyName != nil {
                    map["PropertyName"] = self.propertyName!
                }
                if self.requestInfo != nil {
                    map["RequestInfo"] = self.requestInfo!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowedValues"] as? [Any] {
                    self.allowedValues = value
                }
                if let value = dict["Behavior"] as? String {
                    self.behavior = value
                }
                if let value = dict["BehaviorReason"] as? String {
                    self.behaviorReason = value
                }
                if let value = dict["PropertiesData"] as? String {
                    self.propertiesData = value
                }
                if let value = dict["PropertyName"] as? String {
                    self.propertyName = value
                }
                if let value = dict["RequestInfo"] as? String {
                    self.requestInfo = value
                }
                if let value = dict["ResourceName"] as? String {
                    self.resourceName = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["ResourceName"] as? String {
                    self.resourceName = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["ResourceName"] as? String {
                    self.resourceName = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowedValues"] as? [String] {
                self.allowedValues = value
            }
            if let value = dict["AssociationParameterNames"] as? [String] {
                self.associationParameterNames = value
            }
            if let value = dict["Behavior"] as? String {
                self.behavior = value
            }
            if let value = dict["BehaviorReason"] as? String {
                self.behaviorReason = value
            }
            if let value = dict["IllegalValueByParameterConstraints"] as? [Any] {
                self.illegalValueByParameterConstraints = value
            }
            if let value = dict["IllegalValueByRules"] as? [Any] {
                self.illegalValueByRules = value
            }
            if let value = dict["NotSupportResources"] as? [Any?] {
                var tmp : [GetTemplateParameterConstraintsResponseBody.ParameterConstraints.NotSupportResources] = []
                for v in value {
                    if v != nil {
                        var model = GetTemplateParameterConstraintsResponseBody.ParameterConstraints.NotSupportResources()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.notSupportResources = tmp
            }
            if let value = dict["OriginalConstraints"] as? [Any?] {
                var tmp : [GetTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints] = []
                for v in value {
                    if v != nil {
                        var model = GetTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.originalConstraints = tmp
            }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["QueryErrors"] as? [Any?] {
                var tmp : [GetTemplateParameterConstraintsResponseBody.ParameterConstraints.QueryErrors] = []
                for v in value {
                    if v != nil {
                        var model = GetTemplateParameterConstraintsResponseBody.ParameterConstraints.QueryErrors()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.queryErrors = tmp
            }
            if let value = dict["QueryTimeoutDetails"] as? [Any?] {
                var tmp : [GetTemplateParameterConstraintsResponseBody.ParameterConstraints.QueryTimeoutDetails] = []
                for v in value {
                    if v != nil {
                        var model = GetTemplateParameterConstraintsResponseBody.ParameterConstraints.QueryTimeoutDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.queryTimeoutDetails = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ParameterConstraints"] as? [Any?] {
            var tmp : [GetTemplateParameterConstraintsResponseBody.ParameterConstraints] = []
            for v in value {
                if v != nil {
                    var model = GetTemplateParameterConstraintsResponseBody.ParameterConstraints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameterConstraints = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTemplateParameterConstraintsResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterCandidateValues"] as? [String] {
                self.parameterCandidateValues = value
            }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [GetTemplateRecommendParametersRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = GetTemplateRecommendParametersRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["RecommendValue"] as? String {
                self.recommendValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RecommendParameterValues"] as? [Any?] {
            var tmp : [GetTemplateRecommendParametersResponseBody.RecommendParameterValues] = []
            for v in value {
                if v != nil {
                    var model = GetTemplateRecommendParametersResponseBody.RecommendParameterValues()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.recommendParameterValues = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTemplateRecommendParametersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ShowDataOption"] as? String {
            self.showDataOption = value
        }
        if let value = dict["TemplateScratchId"] as? String {
            self.templateScratchId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ParameterKey"] as? String {
                    self.parameterKey = value
                }
                if let value = dict["ParameterValue"] as? String {
                    self.parameterValue = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["ResourceTypeFilter"] as? [String] {
                    self.resourceTypeFilter = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RelatedResourceTypeFilter"] as? [String] {
                    self.relatedResourceTypeFilter = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceTags"] as? [String: Any] {
                    self.resourceTags = value
                }
                if let value = dict["ResourceTypeFilter"] as? [String] {
                    self.resourceTypeFilter = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Creatable"] as? Bool {
                    self.creatable = value
                }
                if let value = dict["Importable"] as? Bool {
                    self.importable = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["StackId"] as? String {
                    self.stackId = value
                }
                if let value = dict["UsageType"] as? String {
                    self.usageType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FailedCode"] as? String {
                self.failedCode = value
            }
            if let value = dict["LogicalIdStrategy"] as? String {
                self.logicalIdStrategy = value
            }
            if let value = dict["PreferenceParameters"] as? [Any?] {
                var tmp : [GetTemplateScratchResponseBody.TemplateScratch.PreferenceParameters] = []
                for v in value {
                    if v != nil {
                        var model = GetTemplateScratchResponseBody.TemplateScratch.PreferenceParameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.preferenceParameters = tmp
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["SourceResourceGroup"] as? [String: Any?] {
                var model = GetTemplateScratchResponseBody.TemplateScratch.SourceResourceGroup()
                model.fromMap(value)
                self.sourceResourceGroup = model
            }
            if let value = dict["SourceResources"] as? [Any?] {
                var tmp : [GetTemplateScratchResponseBody.TemplateScratch.SourceResources] = []
                for v in value {
                    if v != nil {
                        var model = GetTemplateScratchResponseBody.TemplateScratch.SourceResources()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sourceResources = tmp
            }
            if let value = dict["SourceTag"] as? [String: Any?] {
                var model = GetTemplateScratchResponseBody.TemplateScratch.SourceTag()
                model.fromMap(value)
                self.sourceTag = model
            }
            if let value = dict["StackProvision"] as? [String: Any?] {
                var model = GetTemplateScratchResponseBody.TemplateScratch.StackProvision()
                model.fromMap(value)
                self.stackProvision = model
            }
            if let value = dict["Stacks"] as? [Any?] {
                var tmp : [GetTemplateScratchResponseBody.TemplateScratch.Stacks] = []
                for v in value {
                    if v != nil {
                        var model = GetTemplateScratchResponseBody.TemplateScratch.Stacks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.stacks = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["TemplateScratchData"] as? [String: Any] {
                self.templateScratchData = value
            }
            if let value = dict["TemplateScratchId"] as? String {
                self.templateScratchId = value
            }
            if let value = dict["TemplateScratchType"] as? String {
                self.templateScratchType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateScratch"] as? [String: Any?] {
            var model = GetTemplateScratchResponseBody.TemplateScratch()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTemplateScratchResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeSetId"] as? String {
            self.changeSetId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [GetTemplateSummaryRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = GetTemplateSummaryRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LogicalResourceIds"] as? [String] {
                self.logicalResourceIds = value
            }
            if let value = dict["ResourceIdentifiers"] as? [String] {
                self.resourceIdentifiers = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Metadata"] as? [String: Any] {
            self.metadata = value
        }
        if let value = dict["Parameters"] as? [[String: Any]] {
            self.parameters = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceIdentifierSummaries"] as? [Any?] {
            var tmp : [GetTemplateSummaryResponseBody.ResourceIdentifierSummaries] = []
            for v in value {
                if v != nil {
                    var model = GetTemplateSummaryResponseBody.ResourceIdentifierSummaries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceIdentifierSummaries = tmp
        }
        if let value = dict["ResourceTypes"] as? [String] {
            self.resourceTypes = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTemplateSummaryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OperationDescription"] as? String {
            self.operationDescription = value
        }
        if let value = dict["OperationPreferences"] as? [String: Any] {
            self.operationPreferences = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceDirectoryFolderIds"] as? [String] {
            self.resourceDirectoryFolderIds = value
        }
        if let value = dict["StackArns"] as? [String] {
            self.stackArns = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OperationDescription"] as? String {
            self.operationDescription = value
        }
        if let value = dict["OperationPreferences"] as? String {
            self.operationPreferencesShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceDirectoryFolderIds"] as? String {
            self.resourceDirectoryFolderIdsShrink = value
        }
        if let value = dict["StackArns"] as? String {
            self.stackArnsShrink = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationId"] as? String {
            self.operationId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ImportStacksToStackGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentType"] as? String {
                self.agentType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EstimatedProcessingTime"] as? String {
                self.estimatedProcessingTime = value
            }
            if let value = dict["EventData"] as? String {
                self.eventData = value
            }
            if let value = dict["HandlerProcessStatus"] as? String {
                self.handlerProcessStatus = value
            }
            if let value = dict["HandlerType"] as? String {
                self.handlerType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Events"] as? [Any?] {
            var tmp : [ListAITaskEventsResponseBody.Events] = []
            for v in value {
                if v != nil {
                    var model = ListAITaskEventsResponseBody.Events()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.events = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAITaskEventsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Prompt"] as? String {
                self.prompt = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [ListAITasksResponseBody.Tasks] = []
            for v in value {
                if v != nil {
                    var model = ListAITasksResponseBody.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAITasksResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeSetId"] as? String {
            self.changeSetId = value
        }
        if let value = dict["ChangeSetName"] as? [String] {
            self.changeSetName = value
        }
        if let value = dict["ExecutionStatus"] as? [String] {
            self.executionStatus = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["Status"] as? [String] {
            self.status = value
        }
    }
}

public class ListChangeSetsResponseBody : Tea.TeaModel {
    public class ChangeSets : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var changeSetId: String?

        public var changeSetName: String?

        public var changeSetType: String?

        public var createTime: String?

        public var description_: String?

        public var executionStatus: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var stackId: String?

        public var stackName: String?

        public var status: String?

        public var statusReason: String?

        public var tags: [ListChangeSetsResponseBody.ChangeSets.Tags]?

        public override init() {
            super.init()
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
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
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
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChangeSetId"] as? String {
                self.changeSetId = value
            }
            if let value = dict["ChangeSetName"] as? String {
                self.changeSetName = value
            }
            if let value = dict["ChangeSetType"] as? String {
                self.changeSetType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ExecutionStatus"] as? String {
                self.executionStatus = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["StackId"] as? String {
                self.stackId = value
            }
            if let value = dict["StackName"] as? String {
                self.stackName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListChangeSetsResponseBody.ChangeSets.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListChangeSetsResponseBody.ChangeSets.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeSets"] as? [Any?] {
            var tmp : [ListChangeSetsResponseBody.ChangeSets] = []
            for v in value {
                if v != nil {
                    var model = ListChangeSetsResponseBody.ChangeSets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.changeSets = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListChangeSetsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DiagnosticKey"] as? String {
            self.diagnosticKey = value
        }
        if let value = dict["DiagnosticProduct"] as? String {
            self.diagnosticProduct = value
        }
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DiagnosticKey"] as? String {
                self.diagnosticKey = value
            }
            if let value = dict["DiagnosticProduct"] as? String {
                self.diagnosticProduct = value
            }
            if let value = dict["ReportId"] as? String {
                self.reportId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Diagnostics"] as? [Any?] {
            var tmp : [ListDiagnosticsResponseBody.Diagnostics] = []
            for v in value {
                if v != nil {
                    var model = ListDiagnosticsResponseBody.Diagnostics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.diagnostics = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDiagnosticsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntityType"] as? String {
            self.entityType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegistrationId"] as? String {
            self.registrationId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EntityType"] as? String {
                self.entityType = value
            }
            if let value = dict["RegistrationId"] as? String {
                self.registrationId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["VersionId"] as? String {
                self.versionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["Registrations"] as? [Any?] {
            var tmp : [ListResourceTypeRegistrationsResponseBody.Registrations] = []
            for v in value {
                if v != nil {
                    var model = ListResourceTypeRegistrationsResponseBody.Registrations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.registrations = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListResourceTypeRegistrationsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EntityType"] as? String {
                self.entityType = value
            }
            if let value = dict["IsDefaultVersion"] as? Bool {
                self.isDefaultVersion = value
            }
            if let value = dict["Provider"] as? String {
                self.provider = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["VersionId"] as? String {
                self.versionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceTypeVersions"] as? [Any?] {
            var tmp : [ListResourceTypeVersionsResponseBody.ResourceTypeVersions] = []
            for v in value {
                if v != nil {
                    var model = ListResourceTypeVersionsResponseBody.ResourceTypeVersions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListResourceTypeVersionsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntityType"] as? String {
            self.entityType = value
        }
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DefaultVersionId"] as? String {
                self.defaultVersionId = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EntityType"] as? String {
                self.entityType = value
            }
            if let value = dict["LatestVersionId"] as? String {
                self.latestVersionId = value
            }
            if let value = dict["Provider"] as? String {
                self.provider = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["TotalVersionCount"] as? Int32 {
                self.totalVersionCount = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceTypeSummaries"] as? [Any?] {
            var tmp : [ListResourceTypesResponseBody.ResourceTypeSummaries] = []
            for v in value {
                if v != nil {
                    var model = ListResourceTypesResponseBody.ResourceTypeSummaries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceTypeSummaries = tmp
        }
        if let value = dict["ResourceTypes"] as? [String] {
            self.resourceTypes = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListResourceTypesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogicalResourceId"] as? [String] {
            self.logicalResourceId = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? [String] {
            self.resourceType = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["Status"] as? [String] {
            self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EventId"] as? String {
                self.eventId = value
            }
            if let value = dict["LogicalResourceId"] as? String {
                self.logicalResourceId = value
            }
            if let value = dict["PhysicalResourceId"] as? String {
                self.physicalResourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["StackId"] as? String {
                self.stackId = value
            }
            if let value = dict["StackName"] as? String {
                self.stackName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Events"] as? [Any?] {
            var tmp : [ListStackEventsResponseBody.Events] = []
            for v in value {
                if v != nil {
                    var model = ListStackEventsResponseBody.Events()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.events = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListStackEventsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationId"] as? String {
            self.operationId = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["RdFolderId"] as? String {
                self.rdFolderId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StackGroupOperationResults"] as? [Any?] {
            var tmp : [ListStackGroupOperationResultsResponseBody.StackGroupOperationResults] = []
            for v in value {
                if v != nil {
                    var model = ListStackGroupOperationResultsResponseBody.StackGroupOperationResults()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.stackGroupOperationResults = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListStackGroupOperationResultsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Action"] as? String {
                self.action = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["OperationDescription"] as? String {
                self.operationDescription = value
            }
            if let value = dict["OperationId"] as? String {
                self.operationId = value
            }
            if let value = dict["StackGroupId"] as? String {
                self.stackGroupId = value
            }
            if let value = dict["StackGroupName"] as? String {
                self.stackGroupName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StackGroupOperations"] as? [Any?] {
            var tmp : [ListStackGroupOperationsResponseBody.StackGroupOperations] = []
            for v in value {
                if v != nil {
                    var model = ListStackGroupOperationsResponseBody.StackGroupOperations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.stackGroupOperations = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListStackGroupOperationsResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [ListStackGroupsRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = ListStackGroupsRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["RetainStacksOnAccountRemoval"] as? Bool {
                    self.retainStacksOnAccountRemoval = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoDeployment"] as? [String: Any?] {
                var model = ListStackGroupsResponseBody.StackGroups.AutoDeployment()
                model.fromMap(value)
                self.autoDeployment = model
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DriftDetectionTime"] as? String {
                self.driftDetectionTime = value
            }
            if let value = dict["PermissionModel"] as? String {
                self.permissionModel = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["StackGroupDriftStatus"] as? String {
                self.stackGroupDriftStatus = value
            }
            if let value = dict["StackGroupId"] as? String {
                self.stackGroupId = value
            }
            if let value = dict["StackGroupName"] as? String {
                self.stackGroupName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListStackGroupsResponseBody.StackGroups.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListStackGroupsResponseBody.StackGroups.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StackGroups"] as? [Any?] {
            var tmp : [ListStackGroupsResponseBody.StackGroups] = []
            for v in value {
                if v != nil {
                    var model = ListStackGroupsResponseBody.StackGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.stackGroups = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListStackGroupsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
        }
        if let value = dict["StackInstanceAccountId"] as? String {
            self.stackInstanceAccountId = value
        }
        if let value = dict["StackInstanceRegionId"] as? String {
            self.stackInstanceRegionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["DriftDetectionTime"] as? String {
                self.driftDetectionTime = value
            }
            if let value = dict["RdFolderId"] as? String {
                self.rdFolderId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["StackDriftStatus"] as? String {
                self.stackDriftStatus = value
            }
            if let value = dict["StackGroupId"] as? String {
                self.stackGroupId = value
            }
            if let value = dict["StackGroupName"] as? String {
                self.stackGroupName = value
            }
            if let value = dict["StackId"] as? String {
                self.stackId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StackInstances"] as? [Any?] {
            var tmp : [ListStackInstancesResponseBody.StackInstances] = []
            for v in value {
                if v != nil {
                    var model = ListStackInstancesResponseBody.StackInstances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.stackInstances = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListStackInstancesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
        if let value = dict["RamRoleName"] as? String {
            self.ramRoleName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RetainAllResources"] as? Bool {
            self.retainAllResources = value
        }
        if let value = dict["RetainResources"] as? [String] {
            self.retainResources = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["LogicalResourceId"] as? String {
                self.logicalResourceId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["PhysicalResourceId"] as? String {
                self.physicalResourceId = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["RiskType"] as? String {
                self.riskType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MissingPolicyActions"] as? [String] {
            self.missingPolicyActions = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RiskResources"] as? [Any?] {
            var tmp : [ListStackOperationRisksResponseBody.RiskResources] = []
            for v in value {
                if v != nil {
                    var model = ListStackOperationRisksResponseBody.RiskResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListStackOperationRisksResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceDriftStatus"] as? [String] {
            self.resourceDriftStatus = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LogicalIdHierarchy"] as? String {
                    self.logicalIdHierarchy = value
                }
                if let value = dict["TypeHierarchy"] as? String {
                    self.typeHierarchy = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActualValue"] as? String {
                    self.actualValue = value
                }
                if let value = dict["DifferenceType"] as? String {
                    self.differenceType = value
                }
                if let value = dict["ExpectedValue"] as? String {
                    self.expectedValue = value
                }
                if let value = dict["PropertyPath"] as? String {
                    self.propertyPath = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActualProperties"] as? String {
                self.actualProperties = value
            }
            if let value = dict["DriftDetectionTime"] as? String {
                self.driftDetectionTime = value
            }
            if let value = dict["ExpectedProperties"] as? String {
                self.expectedProperties = value
            }
            if let value = dict["LogicalResourceId"] as? String {
                self.logicalResourceId = value
            }
            if let value = dict["ModuleInfo"] as? [String: Any?] {
                var model = ListStackResourceDriftsResponseBody.ResourceDrifts.ModuleInfo()
                model.fromMap(value)
                self.moduleInfo = model
            }
            if let value = dict["PhysicalResourceId"] as? String {
                self.physicalResourceId = value
            }
            if let value = dict["PropertyDifferences"] as? [Any?] {
                var tmp : [ListStackResourceDriftsResponseBody.ResourceDrifts.PropertyDifferences] = []
                for v in value {
                    if v != nil {
                        var model = ListStackResourceDriftsResponseBody.ResourceDrifts.PropertyDifferences()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.propertyDifferences = tmp
            }
            if let value = dict["ResourceDriftStatus"] as? String {
                self.resourceDriftStatus = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["StackId"] as? String {
                self.stackId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceDrifts"] as? [Any?] {
            var tmp : [ListStackResourceDriftsResponseBody.ResourceDrifts] = []
            for v in value {
                if v != nil {
                    var model = ListStackResourceDriftsResponseBody.ResourceDrifts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListStackResourceDriftsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LogicalIdHierarchy"] as? String {
                    self.logicalIdHierarchy = value
                }
                if let value = dict["TypeHierarchy"] as? String {
                    self.typeHierarchy = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DriftDetectionTime"] as? String {
                self.driftDetectionTime = value
            }
            if let value = dict["LogicalResourceId"] as? String {
                self.logicalResourceId = value
            }
            if let value = dict["ModuleInfo"] as? [String: Any?] {
                var model = ListStackResourcesResponseBody.Resources.ModuleInfo()
                model.fromMap(value)
                self.moduleInfo = model
            }
            if let value = dict["PhysicalResourceId"] as? String {
                self.physicalResourceId = value
            }
            if let value = dict["ResourceDriftStatus"] as? String {
                self.resourceDriftStatus = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["StackId"] as? String {
                self.stackId = value
            }
            if let value = dict["StackName"] as? String {
                self.stackName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [ListStackResourcesResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = ListStackResourcesResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListStackResourcesResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ParentStackId"] as? String {
            self.parentStackId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ShowNestedStack"] as? Bool {
            self.showNestedStack = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["StackIds"] as? [String] {
            self.stackIds = value
        }
        if let value = dict["StackName"] as? [String] {
            self.stackName = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? [String] {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListStacksRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListStacksRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Action"] as? String {
                    self.action = value
                }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["LogicalResourceId"] as? String {
                    self.logicalResourceId = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["RequestId"] as? String {
                    self.requestId = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DeletionProtection"] as? String {
                self.deletionProtection = value
            }
            if let value = dict["DisableRollback"] as? Bool {
                self.disableRollback = value
            }
            if let value = dict["DriftDetectionTime"] as? String {
                self.driftDetectionTime = value
            }
            if let value = dict["OperationInfo"] as? [String: Any?] {
                var model = ListStacksResponseBody.Stacks.OperationInfo()
                model.fromMap(value)
                self.operationInfo = model
            }
            if let value = dict["ParentStackId"] as? String {
                self.parentStackId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ServiceManaged"] as? Bool {
                self.serviceManaged = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["StackDriftStatus"] as? String {
                self.stackDriftStatus = value
            }
            if let value = dict["StackId"] as? String {
                self.stackId = value
            }
            if let value = dict["StackName"] as? String {
                self.stackName = value
            }
            if let value = dict["StackType"] as? String {
                self.stackType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListStacksResponseBody.Stacks.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListStacksResponseBody.Stacks.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TimeoutInMinutes"] as? Int32 {
                self.timeoutInMinutes = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Stacks"] as? [Any?] {
            var tmp : [ListStacksResponseBody.Stacks] = []
            for v in value {
                if v != nil {
                    var model = ListStacksResponseBody.Stacks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.stacks = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListStacksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSummariesRequest : Tea.TeaModel {
    public var option: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.option != nil {
            map["Option"] = self.option!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Option"] as? String {
            self.option = value
        }
    }
}

public class ListSummariesResponseBody : Tea.TeaModel {
    public class CenterSummary : Tea.TeaModel {
        public var registeredResourceTypeCount: Int32?

        public var templateCount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.registeredResourceTypeCount != nil {
                map["RegisteredResourceTypeCount"] = self.registeredResourceTypeCount!
            }
            if self.templateCount != nil {
                map["TemplateCount"] = self.templateCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegisteredResourceTypeCount"] as? Int32 {
                self.registeredResourceTypeCount = value
            }
            if let value = dict["TemplateCount"] as? String {
                self.templateCount = value
            }
        }
    }
    public class RegionSummaries : Tea.TeaModel {
        public class StackDetails : Tea.TeaModel {
            public var briefStatus: String?

            public var count: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.briefStatus != nil {
                    map["BriefStatus"] = self.briefStatus!
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BriefStatus"] as? String {
                    self.briefStatus = value
                }
                if let value = dict["Count"] as? String {
                    self.count = value
                }
            }
        }
        public var regionId: String?

        public var stackCount: String?

        public var stackDetails: [ListSummariesResponseBody.RegionSummaries.StackDetails]?

        public var stackGroupCount: String?

        public var templateScratchCount: Int32?

        public override init() {
            super.init()
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
            if self.stackCount != nil {
                map["StackCount"] = self.stackCount!
            }
            if self.stackDetails != nil {
                var tmp : [Any] = []
                for k in self.stackDetails! {
                    tmp.append(k.toMap())
                }
                map["StackDetails"] = tmp
            }
            if self.stackGroupCount != nil {
                map["StackGroupCount"] = self.stackGroupCount!
            }
            if self.templateScratchCount != nil {
                map["TemplateScratchCount"] = self.templateScratchCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["StackCount"] as? String {
                self.stackCount = value
            }
            if let value = dict["StackDetails"] as? [Any?] {
                var tmp : [ListSummariesResponseBody.RegionSummaries.StackDetails] = []
                for v in value {
                    if v != nil {
                        var model = ListSummariesResponseBody.RegionSummaries.StackDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.stackDetails = tmp
            }
            if let value = dict["StackGroupCount"] as? String {
                self.stackGroupCount = value
            }
            if let value = dict["TemplateScratchCount"] as? Int32 {
                self.templateScratchCount = value
            }
        }
    }
    public var centerSummary: ListSummariesResponseBody.CenterSummary?

    public var regionSummaries: [ListSummariesResponseBody.RegionSummaries]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.centerSummary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.centerSummary != nil {
            map["CenterSummary"] = self.centerSummary?.toMap()
        }
        if self.regionSummaries != nil {
            var tmp : [Any] = []
            for k in self.regionSummaries! {
                tmp.append(k.toMap())
            }
            map["RegionSummaries"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CenterSummary"] as? [String: Any?] {
            var model = ListSummariesResponseBody.CenterSummary()
            model.fromMap(value)
            self.centerSummary = model
        }
        if let value = dict["RegionSummaries"] as? [Any?] {
            var tmp : [ListSummariesResponseBody.RegionSummaries] = []
            for v in value {
                if v != nil {
                    var model = ListSummariesResponseBody.RegionSummaries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regionSummaries = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListSummariesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSummariesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSummariesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keys"] as? [String] {
            self.keys = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagKeysResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [Any?] {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesResponseBody.TagResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Values"] as? [String] {
            self.values = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagValuesResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [ListTemplateScratchesRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = ListTemplateScratchesRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TemplateScratchId"] as? String {
            self.templateScratchId = value
        }
        if let value = dict["TemplateScratchType"] as? String {
            self.templateScratchType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ParameterKey"] as? String {
                    self.parameterKey = value
                }
                if let value = dict["ParameterValue"] as? String {
                    self.parameterValue = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["ResourceTypeFilter"] as? [String] {
                    self.resourceTypeFilter = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceTags"] as? [String: Any] {
                    self.resourceTags = value
                }
                if let value = dict["ResourceTypeFilter"] as? [String] {
                    self.resourceTypeFilter = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FailedCode"] as? String {
                self.failedCode = value
            }
            if let value = dict["LogicalIdStrategy"] as? String {
                self.logicalIdStrategy = value
            }
            if let value = dict["PreferenceParameters"] as? [Any?] {
                var tmp : [ListTemplateScratchesResponseBody.TemplateScratches.PreferenceParameters] = []
                for v in value {
                    if v != nil {
                        var model = ListTemplateScratchesResponseBody.TemplateScratches.PreferenceParameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.preferenceParameters = tmp
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["SourceResourceGroup"] as? [String: Any?] {
                var model = ListTemplateScratchesResponseBody.TemplateScratches.SourceResourceGroup()
                model.fromMap(value)
                self.sourceResourceGroup = model
            }
            if let value = dict["SourceResources"] as? [Any?] {
                var tmp : [ListTemplateScratchesResponseBody.TemplateScratches.SourceResources] = []
                for v in value {
                    if v != nil {
                        var model = ListTemplateScratchesResponseBody.TemplateScratches.SourceResources()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sourceResources = tmp
            }
            if let value = dict["SourceTag"] as? [String: Any?] {
                var model = ListTemplateScratchesResponseBody.TemplateScratches.SourceTag()
                model.fromMap(value)
                self.sourceTag = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListTemplateScratchesResponseBody.TemplateScratches.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListTemplateScratchesResponseBody.TemplateScratches.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TemplateScratchId"] as? String {
                self.templateScratchId = value
            }
            if let value = dict["TemplateScratchType"] as? String {
                self.templateScratchType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateScratches"] as? [Any?] {
            var tmp : [ListTemplateScratchesResponseBody.TemplateScratches] = []
            for v in value {
                if v != nil {
                    var model = ListTemplateScratchesResponseBody.TemplateScratches()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.templateScratches = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTemplateScratchesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Versions"] as? [Any?] {
            var tmp : [ListTemplateVersionsResponseBody.Versions] = []
            for v in value {
                if v != nil {
                    var model = ListTemplateVersionsResponseBody.Versions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTemplateVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTemplatesRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var name: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var filters: [ListTemplatesRequest.Filters]?

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
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [ListTemplatesRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = ListTemplatesRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["IncludeTags"] as? String {
            self.includeTags = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListTemplatesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTemplatesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var additionalInfo: [String: Any]?

        public var createTime: String?

        public var description_: String?

        public var ownerId: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [ListTemplatesResponseBody.Templates.Tags]?

        public var templateARN: String?

        public var templateId: String?

        public var templateName: String?

        public var templateUrl: String?

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
            if self.additionalInfo != nil {
                map["AdditionalInfo"] = self.additionalInfo!
            }
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
            if self.templateUrl != nil {
                map["TemplateUrl"] = self.templateUrl!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdditionalInfo"] as? [String: Any] {
                self.additionalInfo = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListTemplatesResponseBody.Templates.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListTemplatesResponseBody.Templates.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TemplateARN"] as? String {
                self.templateARN = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateUrl"] as? String {
                self.templateUrl = value
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Templates"] as? [Any?] {
            var tmp : [ListTemplatesResponseBody.Templates] = []
            for v in value {
                if v != nil {
                    var model = ListTemplatesResponseBody.Templates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.templates = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTemplatesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MoveResourceGroupResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

    public var taintResources: [String]?

    public var templateBody: String?

    public var templateId: String?

    public var templateScratchId: String?

    public var templateScratchRegionId: String?

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
        if self.taintResources != nil {
            map["TaintResources"] = self.taintResources!
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
        if self.usePreviousParameters != nil {
            map["UsePreviousParameters"] = self.usePreviousParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DisableRollback"] as? Bool {
            self.disableRollback = value
        }
        if let value = dict["EnablePreConfig"] as? Bool {
            self.enablePreConfig = value
        }
        if let value = dict["Parallelism"] as? Int64 {
            self.parallelism = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [PreviewStackRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = PreviewStackRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["StackName"] as? String {
            self.stackName = value
        }
        if let value = dict["StackPolicyBody"] as? String {
            self.stackPolicyBody = value
        }
        if let value = dict["StackPolicyURL"] as? String {
            self.stackPolicyURL = value
        }
        if let value = dict["TaintResources"] as? [String] {
            self.taintResources = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateScratchId"] as? String {
            self.templateScratchId = value
        }
        if let value = dict["TemplateScratchRegionId"] as? String {
            self.templateScratchRegionId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
        if let value = dict["TimeoutInMinutes"] as? Int64 {
            self.timeoutInMinutes = value
        }
        if let value = dict["UsePreviousParameters"] as? Bool {
            self.usePreviousParameters = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Command"] as? String {
                        self.command = value
                    }
                    if let value = dict["Content"] as? String {
                        self.content = value
                    }
                    if let value = dict["Stream"] as? String {
                        self.stream = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TerraformLogs"] as? [Any?] {
                    var tmp : [PreviewStackResponseBody.Stack.Log.TerraformLogs] = []
                    for v in value {
                        if v != nil {
                            var model = PreviewStackResponseBody.Stack.Log.TerraformLogs()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ParameterKey"] as? String {
                    self.parameterKey = value
                }
                if let value = dict["ParameterValue"] as? String {
                    self.parameterValue = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AcsResourceType"] as? String {
                    self.acsResourceType = value
                }
                if let value = dict["Action"] as? String {
                    self.action = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["LogicalResourceId"] as? String {
                    self.logicalResourceId = value
                }
                if let value = dict["PhysicalResourceId"] as? String {
                    self.physicalResourceId = value
                }
                if let value = dict["Properties"] as? [String: Any] {
                    self.properties = value
                }
                if let value = dict["Replacement"] as? String {
                    self.replacement = value
                }
                if let value = dict["RequiredBy"] as? [String] {
                    self.requiredBy = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["Stack"] as? [String: Any] {
                    self.stack = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisableRollback"] as? Bool {
                self.disableRollback = value
            }
            if let value = dict["Log"] as? [String: Any?] {
                var model = PreviewStackResponseBody.Stack.Log()
                model.fromMap(value)
                self.log = model
            }
            if let value = dict["Parameters"] as? [Any?] {
                var tmp : [PreviewStackResponseBody.Stack.Parameters] = []
                for v in value {
                    if v != nil {
                        var model = PreviewStackResponseBody.Stack.Parameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.parameters = tmp
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Resources"] as? [Any?] {
                var tmp : [PreviewStackResponseBody.Stack.Resources] = []
                for v in value {
                    if v != nil {
                        var model = PreviewStackResponseBody.Stack.Resources()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.resources = tmp
            }
            if let value = dict["StackName"] as? String {
                self.stackName = value
            }
            if let value = dict["StackPolicyBody"] as? [String: Any] {
                self.stackPolicyBody = value
            }
            if let value = dict["TemplateDescription"] as? String {
                self.templateDescription = value
            }
            if let value = dict["TimeoutInMinutes"] as? Int32 {
                self.timeoutInMinutes = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Stack"] as? [String: Any?] {
            var model = PreviewStackResponseBody.Stack()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PreviewStackResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EntityType"] as? String {
            self.entityType = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegistrationId"] as? String {
            self.registrationId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RegisterResourceTypeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeletionProtection"] as? String {
            self.deletionProtection = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetDeletionProtectionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultVersionId"] as? String {
            self.defaultVersionId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetResourceTypeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["StackPolicyBody"] as? String {
            self.stackPolicyBody = value
        }
        if let value = dict["StackPolicyURL"] as? String {
            self.stackPolicyURL = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetStackPolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [String] {
            self.accountIds = value
        }
        if let value = dict["ShareOption"] as? String {
            self.shareOption = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
        if let value = dict["VersionOption"] as? String {
            self.versionOption = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetTemplatePermissionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["LogicalResourceId"] as? String {
            self.logicalResourceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UniqueId"] as? String {
            self.uniqueId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SignalResourceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationId"] as? String {
            self.operationId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopStackGroupOperationResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TagResourcesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UntagResourcesResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public var taintResources: [String]?

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
        if self.taintResources != nil {
            map["TaintResources"] = self.taintResources!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DisableRollback"] as? Bool {
            self.disableRollback = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["DryRunOptions"] as? [String] {
            self.dryRunOptions = value
        }
        if let value = dict["Parallelism"] as? Int64 {
            self.parallelism = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [UpdateStackRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = UpdateStackRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RamRoleName"] as? String {
            self.ramRoleName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplacementOption"] as? String {
            self.replacementOption = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["StackPolicyBody"] as? String {
            self.stackPolicyBody = value
        }
        if let value = dict["StackPolicyDuringUpdateBody"] as? String {
            self.stackPolicyDuringUpdateBody = value
        }
        if let value = dict["StackPolicyDuringUpdateURL"] as? String {
            self.stackPolicyDuringUpdateURL = value
        }
        if let value = dict["StackPolicyURL"] as? String {
            self.stackPolicyURL = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [UpdateStackRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = UpdateStackRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TaintResources"] as? [String] {
            self.taintResources = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
        if let value = dict["TimeoutInMinutes"] as? Int64 {
            self.timeoutInMinutes = value
        }
        if let value = dict["UsePreviousParameters"] as? Bool {
            self.usePreviousParameters = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParametersAllowedToBeModified"] as? [String] {
                self.parametersAllowedToBeModified = value
            }
            if let value = dict["ParametersCauseInterruptionIfModified"] as? [String] {
                self.parametersCauseInterruptionIfModified = value
            }
            if let value = dict["ParametersCauseReplacementIfModified"] as? [String] {
                self.parametersCauseReplacementIfModified = value
            }
            if let value = dict["ParametersConditionallyAllowedToBeModified"] as? [String] {
                self.parametersConditionallyAllowedToBeModified = value
            }
            if let value = dict["ParametersConditionallyCauseInterruptionIfModified"] as? [String] {
                self.parametersConditionallyCauseInterruptionIfModified = value
            }
            if let value = dict["ParametersConditionallyCauseReplacementIfModified"] as? [String] {
                self.parametersConditionallyCauseReplacementIfModified = value
            }
            if let value = dict["ParametersNotAllowedToBeModified"] as? [String] {
                self.parametersNotAllowedToBeModified = value
            }
            if let value = dict["ParametersUncertainlyAllowedToBeModified"] as? [String] {
                self.parametersUncertainlyAllowedToBeModified = value
            }
            if let value = dict["ParametersUncertainlyCauseInterruptionIfModified"] as? [String] {
                self.parametersUncertainlyCauseInterruptionIfModified = value
            }
            if let value = dict["ParametersUncertainlyCauseReplacementIfModified"] as? [String] {
                self.parametersUncertainlyCauseReplacementIfModified = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRunResult"] as? [String: Any?] {
            var model = UpdateStackResponseBody.DryRunResult()
            model.fromMap(value)
            self.dryRunResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateStackResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["RetainStacksOnAccountRemoval"] as? Bool {
                self.retainStacksOnAccountRemoval = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [String] {
                self.accountIds = value
            }
            if let value = dict["RdFolderIds"] as? [String] {
                self.rdFolderIds = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [String] {
            self.accountIds = value
        }
        if let value = dict["AdministrationRoleName"] as? String {
            self.administrationRoleName = value
        }
        if let value = dict["AutoDeployment"] as? [String: Any?] {
            var model = UpdateStackGroupRequest.AutoDeployment()
            model.fromMap(value)
            self.autoDeployment = model
        }
        if let value = dict["Capabilities"] as? [String] {
            self.capabilities = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeploymentOptions"] as? [String] {
            self.deploymentOptions = value
        }
        if let value = dict["DeploymentTargets"] as? [String: Any?] {
            var model = UpdateStackGroupRequest.DeploymentTargets()
            model.fromMap(value)
            self.deploymentTargets = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExecutionRoleName"] as? String {
            self.executionRoleName = value
        }
        if let value = dict["OperationDescription"] as? String {
            self.operationDescription = value
        }
        if let value = dict["OperationPreferences"] as? [String: Any] {
            self.operationPreferences = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [UpdateStackGroupRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = UpdateStackGroupRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["PermissionModel"] as? String {
            self.permissionModel = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegionIds"] as? [String] {
            self.regionIds = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? String {
            self.accountIdsShrink = value
        }
        if let value = dict["AdministrationRoleName"] as? String {
            self.administrationRoleName = value
        }
        if let value = dict["AutoDeployment"] as? String {
            self.autoDeploymentShrink = value
        }
        if let value = dict["Capabilities"] as? [String] {
            self.capabilities = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeploymentOptions"] as? [String] {
            self.deploymentOptions = value
        }
        if let value = dict["DeploymentTargets"] as? String {
            self.deploymentTargetsShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExecutionRoleName"] as? String {
            self.executionRoleName = value
        }
        if let value = dict["OperationDescription"] as? String {
            self.operationDescription = value
        }
        if let value = dict["OperationPreferences"] as? String {
            self.operationPreferencesShrink = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [UpdateStackGroupShrinkRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = UpdateStackGroupShrinkRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["PermissionModel"] as? String {
            self.permissionModel = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegionIds"] as? String {
            self.regionIdsShrink = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationId"] as? String {
            self.operationId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateStackGroupResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountIds"] as? [String] {
                self.accountIds = value
            }
            if let value = dict["RdFolderIds"] as? [String] {
                self.rdFolderIds = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [String] {
            self.accountIds = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeploymentTargets"] as? [String: Any?] {
            var model = UpdateStackInstancesRequest.DeploymentTargets()
            model.fromMap(value)
            self.deploymentTargets = model
        }
        if let value = dict["OperationDescription"] as? String {
            self.operationDescription = value
        }
        if let value = dict["OperationPreferences"] as? [String: Any] {
            self.operationPreferences = value
        }
        if let value = dict["ParameterOverrides"] as? [Any?] {
            var tmp : [UpdateStackInstancesRequest.ParameterOverrides] = []
            for v in value {
                if v != nil {
                    var model = UpdateStackInstancesRequest.ParameterOverrides()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameterOverrides = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegionIds"] as? [String] {
            self.regionIds = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
        }
        if let value = dict["TimeoutInMinutes"] as? Int64 {
            self.timeoutInMinutes = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? String {
            self.accountIdsShrink = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeploymentTargets"] as? String {
            self.deploymentTargetsShrink = value
        }
        if let value = dict["OperationDescription"] as? String {
            self.operationDescription = value
        }
        if let value = dict["OperationPreferences"] as? String {
            self.operationPreferencesShrink = value
        }
        if let value = dict["ParameterOverrides"] as? [Any?] {
            var tmp : [UpdateStackInstancesShrinkRequest.ParameterOverrides] = []
            for v in value {
                if v != nil {
                    var model = UpdateStackInstancesShrinkRequest.ParameterOverrides()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameterOverrides = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegionIds"] as? String {
            self.regionIdsShrink = value
        }
        if let value = dict["StackGroupName"] as? String {
            self.stackGroupName = value
        }
        if let value = dict["TimeoutInMinutes"] as? Int64 {
            self.timeoutInMinutes = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationId"] as? String {
            self.operationId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateStackInstancesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LogicalResourceId"] as? [String] {
            self.logicalResourceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StackId"] as? String {
            self.stackId = value
        }
        if let value = dict["TemplateFormat"] as? String {
            self.templateFormat = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewTemplateBody"] as? String {
            self.newTemplateBody = value
        }
        if let value = dict["OldTemplateBody"] as? String {
            self.oldTemplateBody = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateStackTemplateByResourcesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["IsDraft"] as? Bool {
            self.isDraft = value
        }
        if let value = dict["RotateStrategy"] as? String {
            self.rotateStrategy = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["ValidationOptions"] as? [String] {
            self.validationOptions = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateTemplateResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceTypeFilter"] as? [String] {
                self.resourceTypeFilter = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceTags"] as? [String: Any] {
                self.resourceTags = value
            }
            if let value = dict["ResourceTypeFilter"] as? [String] {
                self.resourceTypeFilter = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExecutionMode"] as? String {
            self.executionMode = value
        }
        if let value = dict["LogicalIdStrategy"] as? String {
            self.logicalIdStrategy = value
        }
        if let value = dict["PreferenceParameters"] as? [Any?] {
            var tmp : [UpdateTemplateScratchRequest.PreferenceParameters] = []
            for v in value {
                if v != nil {
                    var model = UpdateTemplateScratchRequest.PreferenceParameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.preferenceParameters = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SourceResourceGroup"] as? [String: Any?] {
            var model = UpdateTemplateScratchRequest.SourceResourceGroup()
            model.fromMap(value)
            self.sourceResourceGroup = model
        }
        if let value = dict["SourceResources"] as? [Any?] {
            var tmp : [UpdateTemplateScratchRequest.SourceResources] = []
            for v in value {
                if v != nil {
                    var model = UpdateTemplateScratchRequest.SourceResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sourceResources = tmp
        }
        if let value = dict["SourceTag"] as? [String: Any?] {
            var model = UpdateTemplateScratchRequest.SourceTag()
            model.fromMap(value)
            self.sourceTag = model
        }
        if let value = dict["TemplateScratchId"] as? String {
            self.templateScratchId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExecutionMode"] as? String {
            self.executionMode = value
        }
        if let value = dict["LogicalIdStrategy"] as? String {
            self.logicalIdStrategy = value
        }
        if let value = dict["PreferenceParameters"] as? String {
            self.preferenceParametersShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SourceResourceGroup"] as? String {
            self.sourceResourceGroupShrink = value
        }
        if let value = dict["SourceResources"] as? String {
            self.sourceResourcesShrink = value
        }
        if let value = dict["SourceTag"] as? String {
            self.sourceTagShrink = value
        }
        if let value = dict["TemplateScratchId"] as? String {
            self.templateScratchId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateScratchId"] as? String {
            self.templateScratchId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateTemplateScratchResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateBody"] as? String {
            self.templateBody = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["UpdateInfoOptions"] as? [String] {
            self.updateInfoOptions = value
        }
        if let value = dict["ValidationOption"] as? String {
            self.validationOption = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["OutputKey"] as? String {
                self.outputKey = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataSources"] as? [String] {
                self.dataSources = value
            }
            if let value = dict["Resources"] as? [String] {
                self.resources = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LogicalResourceIdPattern"] as? String {
                self.logicalResourceIdPattern = value
            }
            if let value = dict["ResourcePath"] as? String {
                self.resourcePath = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParametersAllowedToBeModified"] as? [String] {
                self.parametersAllowedToBeModified = value
            }
            if let value = dict["ParametersCauseInterruptionIfModified"] as? [String] {
                self.parametersCauseInterruptionIfModified = value
            }
            if let value = dict["ParametersCauseReplacementIfModified"] as? [String] {
                self.parametersCauseReplacementIfModified = value
            }
            if let value = dict["ParametersConditionallyAllowedToBeModified"] as? [String] {
                self.parametersConditionallyAllowedToBeModified = value
            }
            if let value = dict["ParametersConditionallyCauseInterruptionIfModified"] as? [String] {
                self.parametersConditionallyCauseInterruptionIfModified = value
            }
            if let value = dict["ParametersConditionallyCauseReplacementIfModified"] as? [String] {
                self.parametersConditionallyCauseReplacementIfModified = value
            }
            if let value = dict["ParametersNotAllowedToBeModified"] as? [String] {
                self.parametersNotAllowedToBeModified = value
            }
            if let value = dict["ParametersUncertainlyAllowedToBeModified"] as? [String] {
                self.parametersUncertainlyAllowedToBeModified = value
            }
            if let value = dict["ParametersUncertainlyCauseInterruptionIfModified"] as? [String] {
                self.parametersUncertainlyCauseInterruptionIfModified = value
            }
            if let value = dict["ParametersUncertainlyCauseReplacementIfModified"] as? [String] {
                self.parametersUncertainlyCauseReplacementIfModified = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Outputs"] as? [Any?] {
            var tmp : [ValidateTemplateResponseBody.Outputs] = []
            for v in value {
                if v != nil {
                    var model = ValidateTemplateResponseBody.Outputs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.outputs = tmp
        }
        if let value = dict["Parameters"] as? [[String: Any]] {
            self.parameters = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceTypes"] as? [String: Any?] {
            var model = ValidateTemplateResponseBody.ResourceTypes()
            model.fromMap(value)
            self.resourceTypes = model
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [ValidateTemplateResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = ValidateTemplateResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
        if let value = dict["UpdateInfo"] as? [String: Any?] {
            var model = ValidateTemplateResponseBody.UpdateInfo()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ValidateTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
