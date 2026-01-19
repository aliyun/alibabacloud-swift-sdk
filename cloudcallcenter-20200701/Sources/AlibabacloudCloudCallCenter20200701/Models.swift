import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CampaignDetail : Tea.TeaModel {
    public var actualEndTime: Int64?

    public var actualStartTime: Int64?

    public var casesAborted: Int64?

    public var casesConnected: Int64?

    public var casesUncompleted: Int64?

    public var completedRate: Int64?

    public var createTime: Int64?

    public var id: String?

    public var maxAttemptCount: Int64?

    public var minAttemptInterval: Int64?

    public var name: String?

    public var planedEndTime: Int64?

    public var planedStartTime: Int64?

    public var queueName: String?

    public var state: String?

    public var totalCases: Int64?

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
        if self.actualEndTime != nil {
            map["ActualEndTime"] = self.actualEndTime!
        }
        if self.actualStartTime != nil {
            map["ActualStartTime"] = self.actualStartTime!
        }
        if self.casesAborted != nil {
            map["CasesAborted"] = self.casesAborted!
        }
        if self.casesConnected != nil {
            map["CasesConnected"] = self.casesConnected!
        }
        if self.casesUncompleted != nil {
            map["CasesUncompleted"] = self.casesUncompleted!
        }
        if self.completedRate != nil {
            map["CompletedRate"] = self.completedRate!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.maxAttemptCount != nil {
            map["MaxAttemptCount"] = self.maxAttemptCount!
        }
        if self.minAttemptInterval != nil {
            map["MinAttemptInterval"] = self.minAttemptInterval!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.planedEndTime != nil {
            map["PlanedEndTime"] = self.planedEndTime!
        }
        if self.planedStartTime != nil {
            map["PlanedStartTime"] = self.planedStartTime!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.totalCases != nil {
            map["TotalCases"] = self.totalCases!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActualEndTime"] as? Int64 {
            self.actualEndTime = value
        }
        if let value = dict["ActualStartTime"] as? Int64 {
            self.actualStartTime = value
        }
        if let value = dict["CasesAborted"] as? Int64 {
            self.casesAborted = value
        }
        if let value = dict["CasesConnected"] as? Int64 {
            self.casesConnected = value
        }
        if let value = dict["CasesUncompleted"] as? Int64 {
            self.casesUncompleted = value
        }
        if let value = dict["CompletedRate"] as? Int64 {
            self.completedRate = value
        }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["MaxAttemptCount"] as? Int64 {
            self.maxAttemptCount = value
        }
        if let value = dict["MinAttemptInterval"] as? Int64 {
            self.minAttemptInterval = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PlanedEndTime"] as? Int64 {
            self.planedEndTime = value
        }
        if let value = dict["PlanedStartTime"] as? Int64 {
            self.planedStartTime = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["TotalCases"] as? Int64 {
            self.totalCases = value
        }
        if let value = dict["UpdateTime"] as? Int64 {
            self.updateTime = value
        }
    }
}

public class DataSchemaPropertiesValue : Tea.TeaModel {
    public var displayName: String?

    public var description_: String?

    public var name: String?

    public var dataType: String?

    public var pattern: String?

    public var patternErrorMessage: String?

    public var minLength: Int32?

    public var maxLength: Int32?

    public var minimum: Double?

    public var maximum: Double?

    public var required_: Bool?

    public var system: Bool?

    public var disabled: Bool?

    public var array: Bool?

    public var readOnly: Bool?

    public var editorType: String?

    public var attributes: String?

    public var displayOrder: Int32?

    public var createdTime: Int64?

    public var updatedTime: Int64?

    public var createdBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.pattern != nil {
            map["Pattern"] = self.pattern!
        }
        if self.patternErrorMessage != nil {
            map["PatternErrorMessage"] = self.patternErrorMessage!
        }
        if self.minLength != nil {
            map["MinLength"] = self.minLength!
        }
        if self.maxLength != nil {
            map["MaxLength"] = self.maxLength!
        }
        if self.minimum != nil {
            map["Minimum"] = self.minimum!
        }
        if self.maximum != nil {
            map["Maximum"] = self.maximum!
        }
        if self.required_ != nil {
            map["Required"] = self.required_!
        }
        if self.system != nil {
            map["System"] = self.system!
        }
        if self.disabled != nil {
            map["Disabled"] = self.disabled!
        }
        if self.array != nil {
            map["Array"] = self.array!
        }
        if self.readOnly != nil {
            map["ReadOnly"] = self.readOnly!
        }
        if self.editorType != nil {
            map["EditorType"] = self.editorType!
        }
        if self.attributes != nil {
            map["Attributes"] = self.attributes!
        }
        if self.displayOrder != nil {
            map["DisplayOrder"] = self.displayOrder!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.updatedTime != nil {
            map["UpdatedTime"] = self.updatedTime!
        }
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["Pattern"] as? String {
            self.pattern = value
        }
        if let value = dict["PatternErrorMessage"] as? String {
            self.patternErrorMessage = value
        }
        if let value = dict["MinLength"] as? Int32 {
            self.minLength = value
        }
        if let value = dict["MaxLength"] as? Int32 {
            self.maxLength = value
        }
        if let value = dict["Minimum"] as? Double {
            self.minimum = value
        }
        if let value = dict["Maximum"] as? Double {
            self.maximum = value
        }
        if let value = dict["Required"] as? Bool {
            self.required_ = value
        }
        if let value = dict["System"] as? Bool {
            self.system = value
        }
        if let value = dict["Disabled"] as? Bool {
            self.disabled = value
        }
        if let value = dict["Array"] as? Bool {
            self.array = value
        }
        if let value = dict["ReadOnly"] as? Bool {
            self.readOnly = value
        }
        if let value = dict["EditorType"] as? String {
            self.editorType = value
        }
        if let value = dict["Attributes"] as? String {
            self.attributes = value
        }
        if let value = dict["DisplayOrder"] as? Int32 {
            self.displayOrder = value
        }
        if let value = dict["CreatedTime"] as? Int64 {
            self.createdTime = value
        }
        if let value = dict["UpdatedTime"] as? Int64 {
            self.updatedTime = value
        }
        if let value = dict["CreatedBy"] as? String {
            self.createdBy = value
        }
    }
}

public class AbortCampaignRequest : Tea.TeaModel {
    public var campaignId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.campaignId != nil {
            map["CampaignId"] = self.campaignId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CampaignId"] as? String {
            self.campaignId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class AbortCampaignResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AbortCampaignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AbortCampaignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AbortCampaignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AbortCasesRequest : Tea.TeaModel {
    public var campaignId: String?

    public var instanceId: String?

    public var phoneNumberList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.campaignId != nil {
            map["CampaignId"] = self.campaignId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.phoneNumberList != nil {
            map["PhoneNumberList"] = self.phoneNumberList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CampaignId"] as? String {
            self.campaignId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PhoneNumberList"] as? [String] {
            self.phoneNumberList = value
        }
    }
}

public class AbortCasesShrinkRequest : Tea.TeaModel {
    public var campaignId: String?

    public var instanceId: String?

    public var phoneNumberListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.campaignId != nil {
            map["CampaignId"] = self.campaignId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.phoneNumberListShrink != nil {
            map["PhoneNumberList"] = self.phoneNumberListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CampaignId"] as? String {
            self.campaignId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PhoneNumberList"] as? String {
            self.phoneNumberListShrink = value
        }
    }
}

public class AbortCasesResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AbortCasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AbortCasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AbortCasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckDemoInstanceExistsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckDemoInstanceExistsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDemoInstanceExistsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckDemoInstanceExistsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckMQRoleAssumptionAuthorityResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckMQRoleAssumptionAuthorityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckMQRoleAssumptionAuthorityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckMQRoleAssumptionAuthorityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCampaignRequest : Tea.TeaModel {
    public class CaseList : Tea.TeaModel {
        public var customVariables: String?

        public var phoneNumber: String?

        public var referenceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customVariables != nil {
                map["CustomVariables"] = self.customVariables!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.referenceId != nil {
                map["ReferenceId"] = self.referenceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomVariables"] as? String {
                self.customVariables = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
            if let value = dict["ReferenceId"] as? String {
                self.referenceId = value
            }
        }
    }
    public var callableTime: String?

    public var caseFileKey: String?

    public var caseList: [CreateCampaignRequest.CaseList]?

    public var contactFlowId: String?

    public var endTime: String?

    public var executingUntilTimeout: Bool?

    public var flashSmsParameters: String?

    public var instGroupId: String?

    public var instanceId: String?

    public var maxAttemptCount: Int64?

    public var minAttemptInterval: Int64?

    public var name: String?

    public var numberList: [String]?

    public var queueId: String?

    public var simulation: Bool?

    public var simulationParameters: String?

    public var startTime: String?

    public var strategyParameters: String?

    public var strategyType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callableTime != nil {
            map["CallableTime"] = self.callableTime!
        }
        if self.caseFileKey != nil {
            map["CaseFileKey"] = self.caseFileKey!
        }
        if self.caseList != nil {
            var tmp : [Any] = []
            for k in self.caseList! {
                tmp.append(k.toMap())
            }
            map["CaseList"] = tmp
        }
        if self.contactFlowId != nil {
            map["ContactFlowId"] = self.contactFlowId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.executingUntilTimeout != nil {
            map["ExecutingUntilTimeout"] = self.executingUntilTimeout!
        }
        if self.flashSmsParameters != nil {
            map["FlashSmsParameters"] = self.flashSmsParameters!
        }
        if self.instGroupId != nil {
            map["InstGroupId"] = self.instGroupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxAttemptCount != nil {
            map["MaxAttemptCount"] = self.maxAttemptCount!
        }
        if self.minAttemptInterval != nil {
            map["MinAttemptInterval"] = self.minAttemptInterval!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.numberList != nil {
            map["NumberList"] = self.numberList!
        }
        if self.queueId != nil {
            map["QueueId"] = self.queueId!
        }
        if self.simulation != nil {
            map["Simulation"] = self.simulation!
        }
        if self.simulationParameters != nil {
            map["SimulationParameters"] = self.simulationParameters!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.strategyParameters != nil {
            map["StrategyParameters"] = self.strategyParameters!
        }
        if self.strategyType != nil {
            map["StrategyType"] = self.strategyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallableTime"] as? String {
            self.callableTime = value
        }
        if let value = dict["CaseFileKey"] as? String {
            self.caseFileKey = value
        }
        if let value = dict["CaseList"] as? [Any?] {
            var tmp : [CreateCampaignRequest.CaseList] = []
            for v in value {
                if v != nil {
                    var model = CreateCampaignRequest.CaseList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.caseList = tmp
        }
        if let value = dict["ContactFlowId"] as? String {
            self.contactFlowId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["ExecutingUntilTimeout"] as? Bool {
            self.executingUntilTimeout = value
        }
        if let value = dict["FlashSmsParameters"] as? String {
            self.flashSmsParameters = value
        }
        if let value = dict["InstGroupId"] as? String {
            self.instGroupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxAttemptCount"] as? Int64 {
            self.maxAttemptCount = value
        }
        if let value = dict["MinAttemptInterval"] as? Int64 {
            self.minAttemptInterval = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NumberList"] as? [String] {
            self.numberList = value
        }
        if let value = dict["QueueId"] as? String {
            self.queueId = value
        }
        if let value = dict["Simulation"] as? Bool {
            self.simulation = value
        }
        if let value = dict["SimulationParameters"] as? String {
            self.simulationParameters = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["StrategyParameters"] as? String {
            self.strategyParameters = value
        }
        if let value = dict["StrategyType"] as? String {
            self.strategyType = value
        }
    }
}

public class CreateCampaignShrinkRequest : Tea.TeaModel {
    public var callableTime: String?

    public var caseFileKey: String?

    public var caseListShrink: String?

    public var contactFlowId: String?

    public var endTime: String?

    public var executingUntilTimeout: Bool?

    public var flashSmsParameters: String?

    public var instGroupId: String?

    public var instanceId: String?

    public var maxAttemptCount: Int64?

    public var minAttemptInterval: Int64?

    public var name: String?

    public var numberListShrink: String?

    public var queueId: String?

    public var simulation: Bool?

    public var simulationParameters: String?

    public var startTime: String?

    public var strategyParameters: String?

    public var strategyType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callableTime != nil {
            map["CallableTime"] = self.callableTime!
        }
        if self.caseFileKey != nil {
            map["CaseFileKey"] = self.caseFileKey!
        }
        if self.caseListShrink != nil {
            map["CaseList"] = self.caseListShrink!
        }
        if self.contactFlowId != nil {
            map["ContactFlowId"] = self.contactFlowId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.executingUntilTimeout != nil {
            map["ExecutingUntilTimeout"] = self.executingUntilTimeout!
        }
        if self.flashSmsParameters != nil {
            map["FlashSmsParameters"] = self.flashSmsParameters!
        }
        if self.instGroupId != nil {
            map["InstGroupId"] = self.instGroupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxAttemptCount != nil {
            map["MaxAttemptCount"] = self.maxAttemptCount!
        }
        if self.minAttemptInterval != nil {
            map["MinAttemptInterval"] = self.minAttemptInterval!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.numberListShrink != nil {
            map["NumberList"] = self.numberListShrink!
        }
        if self.queueId != nil {
            map["QueueId"] = self.queueId!
        }
        if self.simulation != nil {
            map["Simulation"] = self.simulation!
        }
        if self.simulationParameters != nil {
            map["SimulationParameters"] = self.simulationParameters!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.strategyParameters != nil {
            map["StrategyParameters"] = self.strategyParameters!
        }
        if self.strategyType != nil {
            map["StrategyType"] = self.strategyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallableTime"] as? String {
            self.callableTime = value
        }
        if let value = dict["CaseFileKey"] as? String {
            self.caseFileKey = value
        }
        if let value = dict["CaseList"] as? String {
            self.caseListShrink = value
        }
        if let value = dict["ContactFlowId"] as? String {
            self.contactFlowId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["ExecutingUntilTimeout"] as? Bool {
            self.executingUntilTimeout = value
        }
        if let value = dict["FlashSmsParameters"] as? String {
            self.flashSmsParameters = value
        }
        if let value = dict["InstGroupId"] as? String {
            self.instGroupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxAttemptCount"] as? Int64 {
            self.maxAttemptCount = value
        }
        if let value = dict["MinAttemptInterval"] as? Int64 {
            self.minAttemptInterval = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NumberList"] as? String {
            self.numberListShrink = value
        }
        if let value = dict["QueueId"] as? String {
            self.queueId = value
        }
        if let value = dict["Simulation"] as? Bool {
            self.simulation = value
        }
        if let value = dict["SimulationParameters"] as? String {
            self.simulationParameters = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["StrategyParameters"] as? String {
            self.strategyParameters = value
        }
        if let value = dict["StrategyType"] as? String {
            self.strategyType = value
        }
    }
}

public class CreateCampaignResponseBody : Tea.TeaModel {
    public var campaignId: String?

    public var code: String?

    public var httpStatusCode: Int64?

    public var message: String?

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
        if self.campaignId != nil {
            map["CampaignId"] = self.campaignId!
        }
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CampaignId"] as? String {
            self.campaignId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateCampaignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCampaignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateCampaignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateChatMediaUrlRequest : Tea.TeaModel {
    public var instanceId: String?

    public var mimeType: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mimeType != nil {
            map["MimeType"] = self.mimeType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MimeType"] as? String {
            self.mimeType = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateChatMediaUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var mediaId: String?

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
            if self.mediaId != nil {
                map["MediaId"] = self.mediaId!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MediaId"] as? String {
                self.mediaId = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var data: CreateChatMediaUrlResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateChatMediaUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateChatMediaUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChatMediaUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateChatMediaUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCorpNumberGroupRequest : Tea.TeaModel {
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class CreateCorpNumberGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliyunUid: String?

        public var description_: String?

        public var numberCount: String?

        public var numberGroupId: String?

        public var numberGroupName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunUid != nil {
                map["AliyunUid"] = self.aliyunUid!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.numberCount != nil {
                map["NumberCount"] = self.numberCount!
            }
            if self.numberGroupId != nil {
                map["NumberGroupId"] = self.numberGroupId!
            }
            if self.numberGroupName != nil {
                map["NumberGroupName"] = self.numberGroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliyunUid"] as? String {
                self.aliyunUid = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["NumberCount"] as? String {
                self.numberCount = value
            }
            if let value = dict["NumberGroupId"] as? String {
                self.numberGroupId = value
            }
            if let value = dict["NumberGroupName"] as? String {
                self.numberGroupName = value
            }
        }
    }
    public var code: String?

    public var data: CreateCorpNumberGroupResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateCorpNumberGroupResponseBody.Data()
            model.fromMap(value)
            self.data = model
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
    }
}

public class CreateCorpNumberGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCorpNumberGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateCorpNumberGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDemoInstanceRequest : Tea.TeaModel {
    public var outboundCallWhitelist: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outboundCallWhitelist != nil {
            map["OutboundCallWhitelist"] = self.outboundCallWhitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OutboundCallWhitelist"] as? String {
            self.outboundCallWhitelist = value
        }
    }
}

public class CreateDemoInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDemoInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDemoInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDemoInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccessChannelOfStagingRequest : Tea.TeaModel {
    public var searchPattern: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.searchPattern != nil {
            map["SearchPattern"] = self.searchPattern!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SearchPattern"] as? String {
            self.searchPattern = value
        }
    }
}

public class GetAccessChannelOfStagingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.token != nil {
                map["Token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Token"] as? String {
                self.token = value
            }
        }
    }
    public var code: String?

    public var data: GetAccessChannelOfStagingResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetAccessChannelOfStagingResponseBody.Data()
            model.fromMap(value)
            self.data = model
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
    }
}

public class GetAccessChannelOfStagingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessChannelOfStagingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAccessChannelOfStagingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCampaignRequest : Tea.TeaModel {
    public var campaignId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.campaignId != nil {
            map["CampaignId"] = self.campaignId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CampaignId"] as? String {
            self.campaignId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetCampaignResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var actualEndTime: Int64?

        public var actualStartTime: Int64?

        public var campaignId: String?

        public var casesAborted: Int64?

        public var casesConnected: Int64?

        public var casesUncompleted: Int64?

        public var completedRate: Int64?

        public var maxAttemptCount: Int64?

        public var minAttemptInterval: Int64?

        public var name: String?

        public var planedEndTime: Int64?

        public var planedStartTime: Int64?

        public var queueId: String?

        public var queueName: String?

        public var simulation: Bool?

        public var simulationParameters: String?

        public var state: String?

        public var strategyParameters: String?

        public var strategyType: String?

        public var totalCases: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actualEndTime != nil {
                map["ActualEndTime"] = self.actualEndTime!
            }
            if self.actualStartTime != nil {
                map["ActualStartTime"] = self.actualStartTime!
            }
            if self.campaignId != nil {
                map["CampaignId"] = self.campaignId!
            }
            if self.casesAborted != nil {
                map["CasesAborted"] = self.casesAborted!
            }
            if self.casesConnected != nil {
                map["CasesConnected"] = self.casesConnected!
            }
            if self.casesUncompleted != nil {
                map["CasesUncompleted"] = self.casesUncompleted!
            }
            if self.completedRate != nil {
                map["CompletedRate"] = self.completedRate!
            }
            if self.maxAttemptCount != nil {
                map["MaxAttemptCount"] = self.maxAttemptCount!
            }
            if self.minAttemptInterval != nil {
                map["MinAttemptInterval"] = self.minAttemptInterval!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.planedEndTime != nil {
                map["PlanedEndTime"] = self.planedEndTime!
            }
            if self.planedStartTime != nil {
                map["PlanedStartTime"] = self.planedStartTime!
            }
            if self.queueId != nil {
                map["QueueId"] = self.queueId!
            }
            if self.queueName != nil {
                map["QueueName"] = self.queueName!
            }
            if self.simulation != nil {
                map["Simulation"] = self.simulation!
            }
            if self.simulationParameters != nil {
                map["SimulationParameters"] = self.simulationParameters!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.strategyParameters != nil {
                map["StrategyParameters"] = self.strategyParameters!
            }
            if self.strategyType != nil {
                map["StrategyType"] = self.strategyType!
            }
            if self.totalCases != nil {
                map["TotalCases"] = self.totalCases!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActualEndTime"] as? Int64 {
                self.actualEndTime = value
            }
            if let value = dict["ActualStartTime"] as? Int64 {
                self.actualStartTime = value
            }
            if let value = dict["CampaignId"] as? String {
                self.campaignId = value
            }
            if let value = dict["CasesAborted"] as? Int64 {
                self.casesAborted = value
            }
            if let value = dict["CasesConnected"] as? Int64 {
                self.casesConnected = value
            }
            if let value = dict["CasesUncompleted"] as? Int64 {
                self.casesUncompleted = value
            }
            if let value = dict["CompletedRate"] as? Int64 {
                self.completedRate = value
            }
            if let value = dict["MaxAttemptCount"] as? Int64 {
                self.maxAttemptCount = value
            }
            if let value = dict["MinAttemptInterval"] as? Int64 {
                self.minAttemptInterval = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PlanedEndTime"] as? Int64 {
                self.planedEndTime = value
            }
            if let value = dict["PlanedStartTime"] as? Int64 {
                self.planedStartTime = value
            }
            if let value = dict["QueueId"] as? String {
                self.queueId = value
            }
            if let value = dict["QueueName"] as? String {
                self.queueName = value
            }
            if let value = dict["Simulation"] as? Bool {
                self.simulation = value
            }
            if let value = dict["SimulationParameters"] as? String {
                self.simulationParameters = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["StrategyParameters"] as? String {
                self.strategyParameters = value
            }
            if let value = dict["StrategyType"] as? String {
                self.strategyType = value
            }
            if let value = dict["TotalCases"] as? Int64 {
                self.totalCases = value
            }
        }
    }
    public var code: String?

    public var data: GetCampaignResponseBody.Data?

    public var httpStatusCode: Int64?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetCampaignResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetCampaignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCampaignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetCampaignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDocumentRequest : Tea.TeaModel {
    public var documentId: String?

    public var instanceId: String?

    public var requestId: String?

    public var schemaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.documentId != nil {
            map["DocumentId"] = self.documentId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schemaId != nil {
            map["SchemaId"] = self.schemaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DocumentId"] as? String {
            self.documentId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SchemaId"] as? String {
            self.schemaId = value
        }
    }
}

public class GetDocumentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Schema : Tea.TeaModel {
            public var createdTime: String?

            public var deleted: Bool?

            public var description_: String?

            public var id: String?

            public var instanceId: String?

            public var properties: [String: DataSchemaPropertiesValue]?

            public var updatedTime: String?

            public override init() {
                super.init()
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
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.properties != nil {
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.properties! {
                        tmp[k] = v.toMap()
                    }
                    map["Properties"] = tmp
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreatedTime"] as? String {
                    self.createdTime = value
                }
                if let value = dict["Deleted"] as? Bool {
                    self.deleted = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["Properties"] as? [String: Any?] {
                    var tmp : [String: DataSchemaPropertiesValue] = [:]
                    for (k, v) in value {
                        if v != nil {
                            var model = DataSchemaPropertiesValue()
                            model.fromMap(v as? [String: Any?])
                            tmp[k] = model
                        }
                    }
                    self.properties = tmp
                }
                if let value = dict["UpdatedTime"] as? String {
                    self.updatedTime = value
                }
            }
        }
        public var document: [String: Any]?

        public var schema: GetDocumentResponseBody.Data.Schema?

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
            if self.document != nil {
                map["Document"] = self.document!
            }
            if self.schema != nil {
                map["Schema"] = self.schema?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Document"] as? [String: Any] {
                self.document = value
            }
            if let value = dict["Schema"] as? [String: Any?] {
                var model = GetDocumentResponseBody.Data.Schema()
                model.fromMap(value)
                self.schema = model
            }
        }
    }
    public var code: String?

    public var data: GetDocumentResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetDocumentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocumentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDocumentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetHistoricalCampaignReportRequest : Tea.TeaModel {
    public var campaignId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.campaignId != nil {
            map["CampaignId"] = self.campaignId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CampaignId"] as? String {
            self.campaignId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetHistoricalCampaignReportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var abandonedRate: Double?

        public var callsAbandoned: Int64?

        public var callsConnected: Int64?

        public var callsDialed: Int64?

        public var connectedRate: Double?

        public var occupancyRate: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.abandonedRate != nil {
                map["AbandonedRate"] = self.abandonedRate!
            }
            if self.callsAbandoned != nil {
                map["CallsAbandoned"] = self.callsAbandoned!
            }
            if self.callsConnected != nil {
                map["CallsConnected"] = self.callsConnected!
            }
            if self.callsDialed != nil {
                map["CallsDialed"] = self.callsDialed!
            }
            if self.connectedRate != nil {
                map["ConnectedRate"] = self.connectedRate!
            }
            if self.occupancyRate != nil {
                map["OccupancyRate"] = self.occupancyRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AbandonedRate"] as? Double {
                self.abandonedRate = value
            }
            if let value = dict["CallsAbandoned"] as? Int64 {
                self.callsAbandoned = value
            }
            if let value = dict["CallsConnected"] as? Int64 {
                self.callsConnected = value
            }
            if let value = dict["CallsDialed"] as? Int64 {
                self.callsDialed = value
            }
            if let value = dict["ConnectedRate"] as? Double {
                self.connectedRate = value
            }
            if let value = dict["OccupancyRate"] as? Double {
                self.occupancyRate = value
            }
        }
    }
    public var code: String?

    public var data: GetHistoricalCampaignReportResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetHistoricalCampaignReportResponseBody.Data()
            model.fromMap(value)
            self.data = model
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
    }
}

public class GetHistoricalCampaignReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHistoricalCampaignReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetHistoricalCampaignReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceIdsByAliyunUidV2Request : Tea.TeaModel {
    public var aliyunUid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunUid != nil {
            map["AliyunUid"] = self.aliyunUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunUid"] as? String {
            self.aliyunUid = value
        }
    }
}

public class GetInstanceIdsByAliyunUidV2ResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int64?

    public var instanceIds: [String]?

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
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
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
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetInstanceIdsByAliyunUidV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceIdsByAliyunUidV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInstanceIdsByAliyunUidV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRealtimeCampaignStatsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var queueId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.queueId != nil {
            map["QueueId"] = self.queueId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["QueueId"] as? String {
            self.queueId = value
        }
    }
}

public class GetRealtimeCampaignStatsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var breakingAgents: Int64?

        public var caps: Int64?

        public var loggedInAgents: Int64?

        public var outboundScenarioBreakingAgents: Int64?

        public var outboundScenarioReadyAgents: Int64?

        public var outboundScenarioTalkingAgents: Int64?

        public var outboundScenarioWorkingAgents: Int64?

        public var readyAgents: Int64?

        public var talkingAgents: Int64?

        public var totalAgents: Int64?

        public var workingAgents: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.breakingAgents != nil {
                map["BreakingAgents"] = self.breakingAgents!
            }
            if self.caps != nil {
                map["Caps"] = self.caps!
            }
            if self.loggedInAgents != nil {
                map["LoggedInAgents"] = self.loggedInAgents!
            }
            if self.outboundScenarioBreakingAgents != nil {
                map["OutboundScenarioBreakingAgents"] = self.outboundScenarioBreakingAgents!
            }
            if self.outboundScenarioReadyAgents != nil {
                map["OutboundScenarioReadyAgents"] = self.outboundScenarioReadyAgents!
            }
            if self.outboundScenarioTalkingAgents != nil {
                map["OutboundScenarioTalkingAgents"] = self.outboundScenarioTalkingAgents!
            }
            if self.outboundScenarioWorkingAgents != nil {
                map["OutboundScenarioWorkingAgents"] = self.outboundScenarioWorkingAgents!
            }
            if self.readyAgents != nil {
                map["ReadyAgents"] = self.readyAgents!
            }
            if self.talkingAgents != nil {
                map["TalkingAgents"] = self.talkingAgents!
            }
            if self.totalAgents != nil {
                map["TotalAgents"] = self.totalAgents!
            }
            if self.workingAgents != nil {
                map["WorkingAgents"] = self.workingAgents!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BreakingAgents"] as? Int64 {
                self.breakingAgents = value
            }
            if let value = dict["Caps"] as? Int64 {
                self.caps = value
            }
            if let value = dict["LoggedInAgents"] as? Int64 {
                self.loggedInAgents = value
            }
            if let value = dict["OutboundScenarioBreakingAgents"] as? Int64 {
                self.outboundScenarioBreakingAgents = value
            }
            if let value = dict["OutboundScenarioReadyAgents"] as? Int64 {
                self.outboundScenarioReadyAgents = value
            }
            if let value = dict["OutboundScenarioTalkingAgents"] as? Int64 {
                self.outboundScenarioTalkingAgents = value
            }
            if let value = dict["OutboundScenarioWorkingAgents"] as? Int64 {
                self.outboundScenarioWorkingAgents = value
            }
            if let value = dict["ReadyAgents"] as? Int64 {
                self.readyAgents = value
            }
            if let value = dict["TalkingAgents"] as? Int64 {
                self.talkingAgents = value
            }
            if let value = dict["TotalAgents"] as? Int64 {
                self.totalAgents = value
            }
            if let value = dict["WorkingAgents"] as? Int64 {
                self.workingAgents = value
            }
        }
    }
    public var code: String?

    public var data: GetRealtimeCampaignStatsResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetRealtimeCampaignStatsResponseBody.Data()
            model.fromMap(value)
            self.data = model
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
    }
}

public class GetRealtimeCampaignStatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRealtimeCampaignStatsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetRealtimeCampaignStatsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImportAdminsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ramIdList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ramIdList != nil {
            map["RamIdList"] = self.ramIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RamIdList"] as? String {
            self.ramIdList = value
        }
    }
}

public class ImportAdminsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var extension_: String?

        public var instanceId: String?

        public var ramId: String?

        public var roleId: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extension_ != nil {
                map["Extension"] = self.extension_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.ramId != nil {
                map["RamId"] = self.ramId!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Extension"] as? String {
                self.extension_ = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["RamId"] as? String {
                self.ramId = value
            }
            if let value = dict["RoleId"] as? String {
                self.roleId = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var data: [ImportAdminsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ImportAdminsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ImportAdminsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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
    }
}

public class ImportAdminsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportAdminsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ImportAdminsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class IssueSoftphoneCommandRequest : Tea.TeaModel {
    public var data: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
    }
}

public class IssueSoftphoneCommandResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
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
    }
}

public class IssueSoftphoneCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IssueSoftphoneCommandResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = IssueSoftphoneCommandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAttemptsRequest : Tea.TeaModel {
    public var agentId: String?

    public var attemptId: String?

    public var callee: String?

    public var caller: String?

    public var campaignId: String?

    public var caseId: String?

    public var contactId: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queueId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentId != nil {
            map["AgentId"] = self.agentId!
        }
        if self.attemptId != nil {
            map["AttemptId"] = self.attemptId!
        }
        if self.callee != nil {
            map["Callee"] = self.callee!
        }
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.campaignId != nil {
            map["CampaignId"] = self.campaignId!
        }
        if self.caseId != nil {
            map["CaseId"] = self.caseId!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queueId != nil {
            map["QueueId"] = self.queueId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? String {
            self.agentId = value
        }
        if let value = dict["AttemptId"] as? String {
            self.attemptId = value
        }
        if let value = dict["Callee"] as? String {
            self.callee = value
        }
        if let value = dict["Caller"] as? String {
            self.caller = value
        }
        if let value = dict["CampaignId"] as? String {
            self.campaignId = value
        }
        if let value = dict["CaseId"] as? String {
            self.caseId = value
        }
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueueId"] as? String {
            self.queueId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class ListAttemptsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var agentEstablishedTime: Int64?

            public var agentId: String?

            public var agentRingDuration: Int64?

            public var assignAgentTime: Int64?

            public var attemptId: String?

            public var callee: String?

            public var caller: String?

            public var campaignId: String?

            public var caseId: String?

            public var contactId: String?

            public var customerEstablishedTime: Int64?

            public var customerReleasedTime: Int64?

            public var dialDuration: Int64?

            public var dialTime: Int64?

            public var enqueueTime: Int64?

            public var enterIvrTime: Int64?

            public var instanceId: String?

            public var ivrDuration: Int64?

            public var queueDuration: Int64?

            public var queueId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentEstablishedTime != nil {
                    map["AgentEstablishedTime"] = self.agentEstablishedTime!
                }
                if self.agentId != nil {
                    map["AgentId"] = self.agentId!
                }
                if self.agentRingDuration != nil {
                    map["AgentRingDuration"] = self.agentRingDuration!
                }
                if self.assignAgentTime != nil {
                    map["AssignAgentTime"] = self.assignAgentTime!
                }
                if self.attemptId != nil {
                    map["AttemptId"] = self.attemptId!
                }
                if self.callee != nil {
                    map["Callee"] = self.callee!
                }
                if self.caller != nil {
                    map["Caller"] = self.caller!
                }
                if self.campaignId != nil {
                    map["CampaignId"] = self.campaignId!
                }
                if self.caseId != nil {
                    map["CaseId"] = self.caseId!
                }
                if self.contactId != nil {
                    map["ContactId"] = self.contactId!
                }
                if self.customerEstablishedTime != nil {
                    map["CustomerEstablishedTime"] = self.customerEstablishedTime!
                }
                if self.customerReleasedTime != nil {
                    map["CustomerReleasedTime"] = self.customerReleasedTime!
                }
                if self.dialDuration != nil {
                    map["DialDuration"] = self.dialDuration!
                }
                if self.dialTime != nil {
                    map["DialTime"] = self.dialTime!
                }
                if self.enqueueTime != nil {
                    map["EnqueueTime"] = self.enqueueTime!
                }
                if self.enterIvrTime != nil {
                    map["EnterIvrTime"] = self.enterIvrTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.ivrDuration != nil {
                    map["IvrDuration"] = self.ivrDuration!
                }
                if self.queueDuration != nil {
                    map["QueueDuration"] = self.queueDuration!
                }
                if self.queueId != nil {
                    map["QueueId"] = self.queueId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentEstablishedTime"] as? Int64 {
                    self.agentEstablishedTime = value
                }
                if let value = dict["AgentId"] as? String {
                    self.agentId = value
                }
                if let value = dict["AgentRingDuration"] as? Int64 {
                    self.agentRingDuration = value
                }
                if let value = dict["AssignAgentTime"] as? Int64 {
                    self.assignAgentTime = value
                }
                if let value = dict["AttemptId"] as? String {
                    self.attemptId = value
                }
                if let value = dict["Callee"] as? String {
                    self.callee = value
                }
                if let value = dict["Caller"] as? String {
                    self.caller = value
                }
                if let value = dict["CampaignId"] as? String {
                    self.campaignId = value
                }
                if let value = dict["CaseId"] as? String {
                    self.caseId = value
                }
                if let value = dict["ContactId"] as? String {
                    self.contactId = value
                }
                if let value = dict["CustomerEstablishedTime"] as? Int64 {
                    self.customerEstablishedTime = value
                }
                if let value = dict["CustomerReleasedTime"] as? Int64 {
                    self.customerReleasedTime = value
                }
                if let value = dict["DialDuration"] as? Int64 {
                    self.dialDuration = value
                }
                if let value = dict["DialTime"] as? Int64 {
                    self.dialTime = value
                }
                if let value = dict["EnqueueTime"] as? Int64 {
                    self.enqueueTime = value
                }
                if let value = dict["EnterIvrTime"] as? Int64 {
                    self.enterIvrTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["IvrDuration"] as? Int64 {
                    self.ivrDuration = value
                }
                if let value = dict["QueueDuration"] as? Int64 {
                    self.queueDuration = value
                }
                if let value = dict["QueueId"] as? String {
                    self.queueId = value
                }
            }
        }
        public var list: [ListAttemptsResponseBody.Data.List]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [ListAttemptsResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListAttemptsResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListAttemptsResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListAttemptsResponseBody.Data()
            model.fromMap(value)
            self.data = model
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
    }
}

public class ListAttemptsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAttemptsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAttemptsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCampaignTrendingReportRequest : Tea.TeaModel {
    public var campaignId: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.campaignId != nil {
            map["CampaignId"] = self.campaignId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CampaignId"] as? String {
            self.campaignId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class ListCampaignTrendingReportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var breakAgents: Int64?

        public var concurrency: Int64?

        public var datetime: Int64?

        public var loggedInAgents: Int64?

        public var outboundScenarioBreakingAgents: String?

        public var outboundScenarioReadyAgents: String?

        public var outboundScenarioTalkingAgents: String?

        public var outboundScenarioWorkingAgents: String?

        public var readyAgents: Int64?

        public var talkAgents: Int64?

        public var workAgents: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.breakAgents != nil {
                map["BreakAgents"] = self.breakAgents!
            }
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
            }
            if self.datetime != nil {
                map["Datetime"] = self.datetime!
            }
            if self.loggedInAgents != nil {
                map["LoggedInAgents"] = self.loggedInAgents!
            }
            if self.outboundScenarioBreakingAgents != nil {
                map["OutboundScenarioBreakingAgents"] = self.outboundScenarioBreakingAgents!
            }
            if self.outboundScenarioReadyAgents != nil {
                map["OutboundScenarioReadyAgents"] = self.outboundScenarioReadyAgents!
            }
            if self.outboundScenarioTalkingAgents != nil {
                map["OutboundScenarioTalkingAgents"] = self.outboundScenarioTalkingAgents!
            }
            if self.outboundScenarioWorkingAgents != nil {
                map["OutboundScenarioWorkingAgents"] = self.outboundScenarioWorkingAgents!
            }
            if self.readyAgents != nil {
                map["ReadyAgents"] = self.readyAgents!
            }
            if self.talkAgents != nil {
                map["TalkAgents"] = self.talkAgents!
            }
            if self.workAgents != nil {
                map["WorkAgents"] = self.workAgents!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BreakAgents"] as? Int64 {
                self.breakAgents = value
            }
            if let value = dict["Concurrency"] as? Int64 {
                self.concurrency = value
            }
            if let value = dict["Datetime"] as? Int64 {
                self.datetime = value
            }
            if let value = dict["LoggedInAgents"] as? Int64 {
                self.loggedInAgents = value
            }
            if let value = dict["OutboundScenarioBreakingAgents"] as? String {
                self.outboundScenarioBreakingAgents = value
            }
            if let value = dict["OutboundScenarioReadyAgents"] as? String {
                self.outboundScenarioReadyAgents = value
            }
            if let value = dict["OutboundScenarioTalkingAgents"] as? String {
                self.outboundScenarioTalkingAgents = value
            }
            if let value = dict["OutboundScenarioWorkingAgents"] as? String {
                self.outboundScenarioWorkingAgents = value
            }
            if let value = dict["ReadyAgents"] as? Int64 {
                self.readyAgents = value
            }
            if let value = dict["TalkAgents"] as? Int64 {
                self.talkAgents = value
            }
            if let value = dict["WorkAgents"] as? Int64 {
                self.workAgents = value
            }
        }
    }
    public var code: String?

    public var data: [ListCampaignTrendingReportResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListCampaignTrendingReportResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListCampaignTrendingReportResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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
    }
}

public class ListCampaignTrendingReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCampaignTrendingReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListCampaignTrendingReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCampaignsRequest : Tea.TeaModel {
    public var actualStartTimeFrom: String?

    public var actualStartTimeTo: String?

    public var instanceId: String?

    public var name: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var planedStartTimeFrom: String?

    public var planedStartTimeTo: String?

    public var queueId: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actualStartTimeFrom != nil {
            map["ActualStartTimeFrom"] = self.actualStartTimeFrom!
        }
        if self.actualStartTimeTo != nil {
            map["ActualStartTimeTo"] = self.actualStartTimeTo!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.planedStartTimeFrom != nil {
            map["PlanedStartTimeFrom"] = self.planedStartTimeFrom!
        }
        if self.planedStartTimeTo != nil {
            map["PlanedStartTimeTo"] = self.planedStartTimeTo!
        }
        if self.queueId != nil {
            map["QueueId"] = self.queueId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActualStartTimeFrom"] as? String {
            self.actualStartTimeFrom = value
        }
        if let value = dict["ActualStartTimeTo"] as? String {
            self.actualStartTimeTo = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["PlanedStartTimeFrom"] as? String {
            self.planedStartTimeFrom = value
        }
        if let value = dict["PlanedStartTimeTo"] as? String {
            self.planedStartTimeTo = value
        }
        if let value = dict["QueueId"] as? String {
            self.queueId = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
    }
}

public class ListCampaignsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var actualEndTime: Int64?

            public var actualStartTime: Int64?

            public var campaignId: String?

            public var casesAborted: Int64?

            public var casesConnected: Int64?

            public var casesUncompleted: Int64?

            public var completedRate: Int64?

            public var maxAttemptCount: Int64?

            public var minAttemptInterval: Int64?

            public var name: String?

            public var planedEndTime: Int64?

            public var planedStartTime: Int64?

            public var queueId: String?

            public var queueName: String?

            public var simulation: Bool?

            public var state: String?

            public var strategyParameters: String?

            public var strategyType: String?

            public var totalCases: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.actualEndTime != nil {
                    map["ActualEndTime"] = self.actualEndTime!
                }
                if self.actualStartTime != nil {
                    map["ActualStartTime"] = self.actualStartTime!
                }
                if self.campaignId != nil {
                    map["CampaignId"] = self.campaignId!
                }
                if self.casesAborted != nil {
                    map["CasesAborted"] = self.casesAborted!
                }
                if self.casesConnected != nil {
                    map["CasesConnected"] = self.casesConnected!
                }
                if self.casesUncompleted != nil {
                    map["CasesUncompleted"] = self.casesUncompleted!
                }
                if self.completedRate != nil {
                    map["CompletedRate"] = self.completedRate!
                }
                if self.maxAttemptCount != nil {
                    map["MaxAttemptCount"] = self.maxAttemptCount!
                }
                if self.minAttemptInterval != nil {
                    map["MinAttemptInterval"] = self.minAttemptInterval!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.planedEndTime != nil {
                    map["PlanedEndTime"] = self.planedEndTime!
                }
                if self.planedStartTime != nil {
                    map["PlanedStartTime"] = self.planedStartTime!
                }
                if self.queueId != nil {
                    map["QueueId"] = self.queueId!
                }
                if self.queueName != nil {
                    map["QueueName"] = self.queueName!
                }
                if self.simulation != nil {
                    map["Simulation"] = self.simulation!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.strategyParameters != nil {
                    map["StrategyParameters"] = self.strategyParameters!
                }
                if self.strategyType != nil {
                    map["StrategyType"] = self.strategyType!
                }
                if self.totalCases != nil {
                    map["TotalCases"] = self.totalCases!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActualEndTime"] as? Int64 {
                    self.actualEndTime = value
                }
                if let value = dict["ActualStartTime"] as? Int64 {
                    self.actualStartTime = value
                }
                if let value = dict["CampaignId"] as? String {
                    self.campaignId = value
                }
                if let value = dict["CasesAborted"] as? Int64 {
                    self.casesAborted = value
                }
                if let value = dict["CasesConnected"] as? Int64 {
                    self.casesConnected = value
                }
                if let value = dict["CasesUncompleted"] as? Int64 {
                    self.casesUncompleted = value
                }
                if let value = dict["CompletedRate"] as? Int64 {
                    self.completedRate = value
                }
                if let value = dict["MaxAttemptCount"] as? Int64 {
                    self.maxAttemptCount = value
                }
                if let value = dict["MinAttemptInterval"] as? Int64 {
                    self.minAttemptInterval = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["PlanedEndTime"] as? Int64 {
                    self.planedEndTime = value
                }
                if let value = dict["PlanedStartTime"] as? Int64 {
                    self.planedStartTime = value
                }
                if let value = dict["QueueId"] as? String {
                    self.queueId = value
                }
                if let value = dict["QueueName"] as? String {
                    self.queueName = value
                }
                if let value = dict["Simulation"] as? Bool {
                    self.simulation = value
                }
                if let value = dict["State"] as? String {
                    self.state = value
                }
                if let value = dict["StrategyParameters"] as? String {
                    self.strategyParameters = value
                }
                if let value = dict["StrategyType"] as? String {
                    self.strategyType = value
                }
                if let value = dict["TotalCases"] as? Int64 {
                    self.totalCases = value
                }
            }
        }
        public var list: [ListCampaignsResponseBody.Data.List]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [ListCampaignsResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListCampaignsResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["PageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListCampaignsResponseBody.Data?

    public var httpStatusCode: Int64?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListCampaignsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListCampaignsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCampaignsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListCampaignsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCasesRequest : Tea.TeaModel {
    public var campaignId: String?

    public var instanceId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var phoneNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.campaignId != nil {
            map["CampaignId"] = self.campaignId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CampaignId"] as? String {
            self.campaignId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
    }
}

public class ListCasesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var abandonType: String?

            public var attemptCount: Int64?

            public var caseId: String?

            public var customVariables: String?

            public var expandInfo: String?

            public var failureReason: String?

            public var phoneNumber: String?

            public var state: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.abandonType != nil {
                    map["AbandonType"] = self.abandonType!
                }
                if self.attemptCount != nil {
                    map["AttemptCount"] = self.attemptCount!
                }
                if self.caseId != nil {
                    map["CaseId"] = self.caseId!
                }
                if self.customVariables != nil {
                    map["CustomVariables"] = self.customVariables!
                }
                if self.expandInfo != nil {
                    map["ExpandInfo"] = self.expandInfo!
                }
                if self.failureReason != nil {
                    map["FailureReason"] = self.failureReason!
                }
                if self.phoneNumber != nil {
                    map["PhoneNumber"] = self.phoneNumber!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AbandonType"] as? String {
                    self.abandonType = value
                }
                if let value = dict["AttemptCount"] as? Int64 {
                    self.attemptCount = value
                }
                if let value = dict["CaseId"] as? String {
                    self.caseId = value
                }
                if let value = dict["CustomVariables"] as? String {
                    self.customVariables = value
                }
                if let value = dict["ExpandInfo"] as? String {
                    self.expandInfo = value
                }
                if let value = dict["FailureReason"] as? String {
                    self.failureReason = value
                }
                if let value = dict["PhoneNumber"] as? String {
                    self.phoneNumber = value
                }
                if let value = dict["State"] as? String {
                    self.state = value
                }
            }
        }
        public var list: [ListCasesResponseBody.Data.List]?

        public var pageNumber: Int64?

        public var pageSize: Int64?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [ListCasesResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListCasesResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["PageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListCasesResponseBody.Data?

    public var httpStatusCode: Int64?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListCasesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListCasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListCasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFlashSmsSettingsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var skillGroupIdList: [String]?

    public var skillGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.skillGroupIdList != nil {
            map["SkillGroupIdList"] = self.skillGroupIdList!
        }
        if self.skillGroupName != nil {
            map["SkillGroupName"] = self.skillGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SkillGroupIdList"] as? [String] {
            self.skillGroupIdList = value
        }
        if let value = dict["SkillGroupName"] as? String {
            self.skillGroupName = value
        }
    }
}

public class ListFlashSmsSettingsShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var skillGroupIdListShrink: String?

    public var skillGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.skillGroupIdListShrink != nil {
            map["SkillGroupIdList"] = self.skillGroupIdListShrink!
        }
        if self.skillGroupName != nil {
            map["SkillGroupName"] = self.skillGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SkillGroupIdList"] as? String {
            self.skillGroupIdListShrink = value
        }
        if let value = dict["SkillGroupName"] as? String {
            self.skillGroupName = value
        }
    }
}

public class ListFlashSmsSettingsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var enabled: Bool?

            public var instanceId: String?

            public var skillGroupId: String?

            public var skillGroupName: String?

            public override init() {
                super.init()
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
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.skillGroupId != nil {
                    map["SkillGroupId"] = self.skillGroupId!
                }
                if self.skillGroupName != nil {
                    map["SkillGroupName"] = self.skillGroupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["SkillGroupId"] as? String {
                    self.skillGroupId = value
                }
                if let value = dict["SkillGroupName"] as? String {
                    self.skillGroupName = value
                }
            }
        }
        public var list: [ListFlashSmsSettingsResponseBody.Data.List]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [ListFlashSmsSettingsResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListFlashSmsSettingsResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListFlashSmsSettingsResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListFlashSmsSettingsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListFlashSmsSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlashSmsSettingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListFlashSmsSettingsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListHistoricalAgentSkillGroupReportRequest : Tea.TeaModel {
    public var agentIdList: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var mediaType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var skillGroupIdList: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentIdList != nil {
            map["AgentIdList"] = self.agentIdList!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.skillGroupIdList != nil {
            map["SkillGroupIdList"] = self.skillGroupIdList!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentIdList"] as? String {
            self.agentIdList = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MediaType"] as? String {
            self.mediaType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SkillGroupIdList"] as? String {
            self.skillGroupIdList = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class ListHistoricalAgentSkillGroupReportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class Back2Back : Tea.TeaModel {
                public var agentAnswerRate: Double?

                public var answerRate: Double?

                public var averageCustomerRingTime: Double?

                public var averageRingTime: Double?

                public var averageTalkTime: Int64?

                public var callsAnswered: Int64?

                public var callsCustomerHandled: Int64?

                public var callsDialed: Int64?

                public var customerHandleRate: Double?

                public var maxCustomerRingTime: Int64?

                public var maxRingTime: Int64?

                public var maxTalkTime: Int64?

                public var totalCustomerRingTime: Int64?

                public var totalRingTime: Int64?

                public var totalTalkTime: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.agentAnswerRate != nil {
                        map["AgentAnswerRate"] = self.agentAnswerRate!
                    }
                    if self.answerRate != nil {
                        map["AnswerRate"] = self.answerRate!
                    }
                    if self.averageCustomerRingTime != nil {
                        map["AverageCustomerRingTime"] = self.averageCustomerRingTime!
                    }
                    if self.averageRingTime != nil {
                        map["AverageRingTime"] = self.averageRingTime!
                    }
                    if self.averageTalkTime != nil {
                        map["AverageTalkTime"] = self.averageTalkTime!
                    }
                    if self.callsAnswered != nil {
                        map["CallsAnswered"] = self.callsAnswered!
                    }
                    if self.callsCustomerHandled != nil {
                        map["CallsCustomerHandled"] = self.callsCustomerHandled!
                    }
                    if self.callsDialed != nil {
                        map["CallsDialed"] = self.callsDialed!
                    }
                    if self.customerHandleRate != nil {
                        map["CustomerHandleRate"] = self.customerHandleRate!
                    }
                    if self.maxCustomerRingTime != nil {
                        map["MaxCustomerRingTime"] = self.maxCustomerRingTime!
                    }
                    if self.maxRingTime != nil {
                        map["MaxRingTime"] = self.maxRingTime!
                    }
                    if self.maxTalkTime != nil {
                        map["MaxTalkTime"] = self.maxTalkTime!
                    }
                    if self.totalCustomerRingTime != nil {
                        map["TotalCustomerRingTime"] = self.totalCustomerRingTime!
                    }
                    if self.totalRingTime != nil {
                        map["TotalRingTime"] = self.totalRingTime!
                    }
                    if self.totalTalkTime != nil {
                        map["TotalTalkTime"] = self.totalTalkTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AgentAnswerRate"] as? Double {
                        self.agentAnswerRate = value
                    }
                    if let value = dict["AnswerRate"] as? Double {
                        self.answerRate = value
                    }
                    if let value = dict["AverageCustomerRingTime"] as? Double {
                        self.averageCustomerRingTime = value
                    }
                    if let value = dict["AverageRingTime"] as? Double {
                        self.averageRingTime = value
                    }
                    if let value = dict["AverageTalkTime"] as? Int64 {
                        self.averageTalkTime = value
                    }
                    if let value = dict["CallsAnswered"] as? Int64 {
                        self.callsAnswered = value
                    }
                    if let value = dict["CallsCustomerHandled"] as? Int64 {
                        self.callsCustomerHandled = value
                    }
                    if let value = dict["CallsDialed"] as? Int64 {
                        self.callsDialed = value
                    }
                    if let value = dict["CustomerHandleRate"] as? Double {
                        self.customerHandleRate = value
                    }
                    if let value = dict["MaxCustomerRingTime"] as? Int64 {
                        self.maxCustomerRingTime = value
                    }
                    if let value = dict["MaxRingTime"] as? Int64 {
                        self.maxRingTime = value
                    }
                    if let value = dict["MaxTalkTime"] as? Int64 {
                        self.maxTalkTime = value
                    }
                    if let value = dict["TotalCustomerRingTime"] as? Int64 {
                        self.totalCustomerRingTime = value
                    }
                    if let value = dict["TotalRingTime"] as? Int64 {
                        self.totalRingTime = value
                    }
                    if let value = dict["TotalTalkTime"] as? Int64 {
                        self.totalTalkTime = value
                    }
                }
            }
            public class Inbound : Tea.TeaModel {
                public var averageFirstResponseTime: Double?

                public var averageHoldTime: Double?

                public var averageResponseTime: Double?

                public var averageRingTime: Double?

                public var averageTalkTime: Double?

                public var averageWorkTime: Double?

                public var callsAttendedTransferIn: Int64?

                public var callsAttendedTransferOut: Int64?

                public var callsBlindTransferIn: Int64?

                public var callsBlindTransferOut: Int64?

                public var callsHandled: Int64?

                public var callsHold: Int64?

                public var callsOffered: Int64?

                public var callsRinged: Int64?

                public var handleRate: Double?

                public var maxHoldTime: Int64?

                public var maxRingTime: Int64?

                public var maxTalkTime: Int64?

                public var maxWorkTime: Int64?

                public var satisfactionCount: Int64?

                public var satisfactionIndex: Double?

                public var satisfactionRate: Double?

                public var satisfactionSurveysOffered: Int64?

                public var satisfactionSurveysResponded: Int64?

                public var totalHoldTime: Int64?

                public var totalMessagesSent: Int64?

                public var totalMessagesSentByAgent: Int64?

                public var totalMessagesSentByCustomer: Int64?

                public var totalRingTime: Int64?

                public var totalTalkTime: Int64?

                public var totalWorkTime: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.averageFirstResponseTime != nil {
                        map["AverageFirstResponseTime"] = self.averageFirstResponseTime!
                    }
                    if self.averageHoldTime != nil {
                        map["AverageHoldTime"] = self.averageHoldTime!
                    }
                    if self.averageResponseTime != nil {
                        map["AverageResponseTime"] = self.averageResponseTime!
                    }
                    if self.averageRingTime != nil {
                        map["AverageRingTime"] = self.averageRingTime!
                    }
                    if self.averageTalkTime != nil {
                        map["AverageTalkTime"] = self.averageTalkTime!
                    }
                    if self.averageWorkTime != nil {
                        map["AverageWorkTime"] = self.averageWorkTime!
                    }
                    if self.callsAttendedTransferIn != nil {
                        map["CallsAttendedTransferIn"] = self.callsAttendedTransferIn!
                    }
                    if self.callsAttendedTransferOut != nil {
                        map["CallsAttendedTransferOut"] = self.callsAttendedTransferOut!
                    }
                    if self.callsBlindTransferIn != nil {
                        map["CallsBlindTransferIn"] = self.callsBlindTransferIn!
                    }
                    if self.callsBlindTransferOut != nil {
                        map["CallsBlindTransferOut"] = self.callsBlindTransferOut!
                    }
                    if self.callsHandled != nil {
                        map["CallsHandled"] = self.callsHandled!
                    }
                    if self.callsHold != nil {
                        map["CallsHold"] = self.callsHold!
                    }
                    if self.callsOffered != nil {
                        map["CallsOffered"] = self.callsOffered!
                    }
                    if self.callsRinged != nil {
                        map["CallsRinged"] = self.callsRinged!
                    }
                    if self.handleRate != nil {
                        map["HandleRate"] = self.handleRate!
                    }
                    if self.maxHoldTime != nil {
                        map["MaxHoldTime"] = self.maxHoldTime!
                    }
                    if self.maxRingTime != nil {
                        map["MaxRingTime"] = self.maxRingTime!
                    }
                    if self.maxTalkTime != nil {
                        map["MaxTalkTime"] = self.maxTalkTime!
                    }
                    if self.maxWorkTime != nil {
                        map["MaxWorkTime"] = self.maxWorkTime!
                    }
                    if self.satisfactionCount != nil {
                        map["SatisfactionCount"] = self.satisfactionCount!
                    }
                    if self.satisfactionIndex != nil {
                        map["SatisfactionIndex"] = self.satisfactionIndex!
                    }
                    if self.satisfactionRate != nil {
                        map["SatisfactionRate"] = self.satisfactionRate!
                    }
                    if self.satisfactionSurveysOffered != nil {
                        map["SatisfactionSurveysOffered"] = self.satisfactionSurveysOffered!
                    }
                    if self.satisfactionSurveysResponded != nil {
                        map["SatisfactionSurveysResponded"] = self.satisfactionSurveysResponded!
                    }
                    if self.totalHoldTime != nil {
                        map["TotalHoldTime"] = self.totalHoldTime!
                    }
                    if self.totalMessagesSent != nil {
                        map["TotalMessagesSent"] = self.totalMessagesSent!
                    }
                    if self.totalMessagesSentByAgent != nil {
                        map["TotalMessagesSentByAgent"] = self.totalMessagesSentByAgent!
                    }
                    if self.totalMessagesSentByCustomer != nil {
                        map["TotalMessagesSentByCustomer"] = self.totalMessagesSentByCustomer!
                    }
                    if self.totalRingTime != nil {
                        map["TotalRingTime"] = self.totalRingTime!
                    }
                    if self.totalTalkTime != nil {
                        map["TotalTalkTime"] = self.totalTalkTime!
                    }
                    if self.totalWorkTime != nil {
                        map["TotalWorkTime"] = self.totalWorkTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AverageFirstResponseTime"] as? Double {
                        self.averageFirstResponseTime = value
                    }
                    if let value = dict["AverageHoldTime"] as? Double {
                        self.averageHoldTime = value
                    }
                    if let value = dict["AverageResponseTime"] as? Double {
                        self.averageResponseTime = value
                    }
                    if let value = dict["AverageRingTime"] as? Double {
                        self.averageRingTime = value
                    }
                    if let value = dict["AverageTalkTime"] as? Double {
                        self.averageTalkTime = value
                    }
                    if let value = dict["AverageWorkTime"] as? Double {
                        self.averageWorkTime = value
                    }
                    if let value = dict["CallsAttendedTransferIn"] as? Int64 {
                        self.callsAttendedTransferIn = value
                    }
                    if let value = dict["CallsAttendedTransferOut"] as? Int64 {
                        self.callsAttendedTransferOut = value
                    }
                    if let value = dict["CallsBlindTransferIn"] as? Int64 {
                        self.callsBlindTransferIn = value
                    }
                    if let value = dict["CallsBlindTransferOut"] as? Int64 {
                        self.callsBlindTransferOut = value
                    }
                    if let value = dict["CallsHandled"] as? Int64 {
                        self.callsHandled = value
                    }
                    if let value = dict["CallsHold"] as? Int64 {
                        self.callsHold = value
                    }
                    if let value = dict["CallsOffered"] as? Int64 {
                        self.callsOffered = value
                    }
                    if let value = dict["CallsRinged"] as? Int64 {
                        self.callsRinged = value
                    }
                    if let value = dict["HandleRate"] as? Double {
                        self.handleRate = value
                    }
                    if let value = dict["MaxHoldTime"] as? Int64 {
                        self.maxHoldTime = value
                    }
                    if let value = dict["MaxRingTime"] as? Int64 {
                        self.maxRingTime = value
                    }
                    if let value = dict["MaxTalkTime"] as? Int64 {
                        self.maxTalkTime = value
                    }
                    if let value = dict["MaxWorkTime"] as? Int64 {
                        self.maxWorkTime = value
                    }
                    if let value = dict["SatisfactionCount"] as? Int64 {
                        self.satisfactionCount = value
                    }
                    if let value = dict["SatisfactionIndex"] as? Double {
                        self.satisfactionIndex = value
                    }
                    if let value = dict["SatisfactionRate"] as? Double {
                        self.satisfactionRate = value
                    }
                    if let value = dict["SatisfactionSurveysOffered"] as? Int64 {
                        self.satisfactionSurveysOffered = value
                    }
                    if let value = dict["SatisfactionSurveysResponded"] as? Int64 {
                        self.satisfactionSurveysResponded = value
                    }
                    if let value = dict["TotalHoldTime"] as? Int64 {
                        self.totalHoldTime = value
                    }
                    if let value = dict["TotalMessagesSent"] as? Int64 {
                        self.totalMessagesSent = value
                    }
                    if let value = dict["TotalMessagesSentByAgent"] as? Int64 {
                        self.totalMessagesSentByAgent = value
                    }
                    if let value = dict["TotalMessagesSentByCustomer"] as? Int64 {
                        self.totalMessagesSentByCustomer = value
                    }
                    if let value = dict["TotalRingTime"] as? Int64 {
                        self.totalRingTime = value
                    }
                    if let value = dict["TotalTalkTime"] as? Int64 {
                        self.totalTalkTime = value
                    }
                    if let value = dict["TotalWorkTime"] as? Int64 {
                        self.totalWorkTime = value
                    }
                }
            }
            public class Internal_ : Tea.TeaModel {
                public var averageTalkTime: Int64?

                public var callsAnswered: Int64?

                public var callsDialed: Int64?

                public var callsHandled: Int64?

                public var callsOffered: Int64?

                public var callsTalk: Int64?

                public var maxTalkTime: Int64?

                public var totalTalkTime: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.averageTalkTime != nil {
                        map["AverageTalkTime"] = self.averageTalkTime!
                    }
                    if self.callsAnswered != nil {
                        map["CallsAnswered"] = self.callsAnswered!
                    }
                    if self.callsDialed != nil {
                        map["CallsDialed"] = self.callsDialed!
                    }
                    if self.callsHandled != nil {
                        map["CallsHandled"] = self.callsHandled!
                    }
                    if self.callsOffered != nil {
                        map["CallsOffered"] = self.callsOffered!
                    }
                    if self.callsTalk != nil {
                        map["CallsTalk"] = self.callsTalk!
                    }
                    if self.maxTalkTime != nil {
                        map["MaxTalkTime"] = self.maxTalkTime!
                    }
                    if self.totalTalkTime != nil {
                        map["TotalTalkTime"] = self.totalTalkTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AverageTalkTime"] as? Int64 {
                        self.averageTalkTime = value
                    }
                    if let value = dict["CallsAnswered"] as? Int64 {
                        self.callsAnswered = value
                    }
                    if let value = dict["CallsDialed"] as? Int64 {
                        self.callsDialed = value
                    }
                    if let value = dict["CallsHandled"] as? Int64 {
                        self.callsHandled = value
                    }
                    if let value = dict["CallsOffered"] as? Int64 {
                        self.callsOffered = value
                    }
                    if let value = dict["CallsTalk"] as? Int64 {
                        self.callsTalk = value
                    }
                    if let value = dict["MaxTalkTime"] as? Int64 {
                        self.maxTalkTime = value
                    }
                    if let value = dict["TotalTalkTime"] as? Int64 {
                        self.totalTalkTime = value
                    }
                }
            }
            public class Outbound : Tea.TeaModel {
                public var answerRate: Double?

                public var averageDialingTime: Double?

                public var averageHoldTime: Double?

                public var averageRingTime: Double?

                public var averageTalkTime: Double?

                public var averageWorkTime: Double?

                public var callsAnswered: Int64?

                public var callsAttendedTransferIn: Int64?

                public var callsAttendedTransferOut: Int64?

                public var callsBlindTransferIn: Int64?

                public var callsBlindTransferOut: Int64?

                public var callsDialed: Int64?

                public var callsHold: Int64?

                public var callsRinged: Int64?

                public var maxDialingTime: Int64?

                public var maxHoldTime: Int64?

                public var maxRingTime: Int64?

                public var maxTalkTime: Int64?

                public var maxWorkTime: Int64?

                public var satisfactionCount: Int64?

                public var satisfactionIndex: Double?

                public var satisfactionRate: Double?

                public var satisfactionSurveysOffered: Int64?

                public var satisfactionSurveysResponded: Int64?

                public var totalDialingTime: Int64?

                public var totalHoldTime: Int64?

                public var totalRingTime: Int64?

                public var totalTalkTime: Int64?

                public var totalWorkTime: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.answerRate != nil {
                        map["AnswerRate"] = self.answerRate!
                    }
                    if self.averageDialingTime != nil {
                        map["AverageDialingTime"] = self.averageDialingTime!
                    }
                    if self.averageHoldTime != nil {
                        map["AverageHoldTime"] = self.averageHoldTime!
                    }
                    if self.averageRingTime != nil {
                        map["AverageRingTime"] = self.averageRingTime!
                    }
                    if self.averageTalkTime != nil {
                        map["AverageTalkTime"] = self.averageTalkTime!
                    }
                    if self.averageWorkTime != nil {
                        map["AverageWorkTime"] = self.averageWorkTime!
                    }
                    if self.callsAnswered != nil {
                        map["CallsAnswered"] = self.callsAnswered!
                    }
                    if self.callsAttendedTransferIn != nil {
                        map["CallsAttendedTransferIn"] = self.callsAttendedTransferIn!
                    }
                    if self.callsAttendedTransferOut != nil {
                        map["CallsAttendedTransferOut"] = self.callsAttendedTransferOut!
                    }
                    if self.callsBlindTransferIn != nil {
                        map["CallsBlindTransferIn"] = self.callsBlindTransferIn!
                    }
                    if self.callsBlindTransferOut != nil {
                        map["CallsBlindTransferOut"] = self.callsBlindTransferOut!
                    }
                    if self.callsDialed != nil {
                        map["CallsDialed"] = self.callsDialed!
                    }
                    if self.callsHold != nil {
                        map["CallsHold"] = self.callsHold!
                    }
                    if self.callsRinged != nil {
                        map["CallsRinged"] = self.callsRinged!
                    }
                    if self.maxDialingTime != nil {
                        map["MaxDialingTime"] = self.maxDialingTime!
                    }
                    if self.maxHoldTime != nil {
                        map["MaxHoldTime"] = self.maxHoldTime!
                    }
                    if self.maxRingTime != nil {
                        map["MaxRingTime"] = self.maxRingTime!
                    }
                    if self.maxTalkTime != nil {
                        map["MaxTalkTime"] = self.maxTalkTime!
                    }
                    if self.maxWorkTime != nil {
                        map["MaxWorkTime"] = self.maxWorkTime!
                    }
                    if self.satisfactionCount != nil {
                        map["SatisfactionCount"] = self.satisfactionCount!
                    }
                    if self.satisfactionIndex != nil {
                        map["SatisfactionIndex"] = self.satisfactionIndex!
                    }
                    if self.satisfactionRate != nil {
                        map["SatisfactionRate"] = self.satisfactionRate!
                    }
                    if self.satisfactionSurveysOffered != nil {
                        map["SatisfactionSurveysOffered"] = self.satisfactionSurveysOffered!
                    }
                    if self.satisfactionSurveysResponded != nil {
                        map["SatisfactionSurveysResponded"] = self.satisfactionSurveysResponded!
                    }
                    if self.totalDialingTime != nil {
                        map["TotalDialingTime"] = self.totalDialingTime!
                    }
                    if self.totalHoldTime != nil {
                        map["TotalHoldTime"] = self.totalHoldTime!
                    }
                    if self.totalRingTime != nil {
                        map["TotalRingTime"] = self.totalRingTime!
                    }
                    if self.totalTalkTime != nil {
                        map["TotalTalkTime"] = self.totalTalkTime!
                    }
                    if self.totalWorkTime != nil {
                        map["TotalWorkTime"] = self.totalWorkTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AnswerRate"] as? Double {
                        self.answerRate = value
                    }
                    if let value = dict["AverageDialingTime"] as? Double {
                        self.averageDialingTime = value
                    }
                    if let value = dict["AverageHoldTime"] as? Double {
                        self.averageHoldTime = value
                    }
                    if let value = dict["AverageRingTime"] as? Double {
                        self.averageRingTime = value
                    }
                    if let value = dict["AverageTalkTime"] as? Double {
                        self.averageTalkTime = value
                    }
                    if let value = dict["AverageWorkTime"] as? Double {
                        self.averageWorkTime = value
                    }
                    if let value = dict["CallsAnswered"] as? Int64 {
                        self.callsAnswered = value
                    }
                    if let value = dict["CallsAttendedTransferIn"] as? Int64 {
                        self.callsAttendedTransferIn = value
                    }
                    if let value = dict["CallsAttendedTransferOut"] as? Int64 {
                        self.callsAttendedTransferOut = value
                    }
                    if let value = dict["CallsBlindTransferIn"] as? Int64 {
                        self.callsBlindTransferIn = value
                    }
                    if let value = dict["CallsBlindTransferOut"] as? Int64 {
                        self.callsBlindTransferOut = value
                    }
                    if let value = dict["CallsDialed"] as? Int64 {
                        self.callsDialed = value
                    }
                    if let value = dict["CallsHold"] as? Int64 {
                        self.callsHold = value
                    }
                    if let value = dict["CallsRinged"] as? Int64 {
                        self.callsRinged = value
                    }
                    if let value = dict["MaxDialingTime"] as? Int64 {
                        self.maxDialingTime = value
                    }
                    if let value = dict["MaxHoldTime"] as? Int64 {
                        self.maxHoldTime = value
                    }
                    if let value = dict["MaxRingTime"] as? Int64 {
                        self.maxRingTime = value
                    }
                    if let value = dict["MaxTalkTime"] as? Int64 {
                        self.maxTalkTime = value
                    }
                    if let value = dict["MaxWorkTime"] as? Int64 {
                        self.maxWorkTime = value
                    }
                    if let value = dict["SatisfactionCount"] as? Int64 {
                        self.satisfactionCount = value
                    }
                    if let value = dict["SatisfactionIndex"] as? Double {
                        self.satisfactionIndex = value
                    }
                    if let value = dict["SatisfactionRate"] as? Double {
                        self.satisfactionRate = value
                    }
                    if let value = dict["SatisfactionSurveysOffered"] as? Int64 {
                        self.satisfactionSurveysOffered = value
                    }
                    if let value = dict["SatisfactionSurveysResponded"] as? Int64 {
                        self.satisfactionSurveysResponded = value
                    }
                    if let value = dict["TotalDialingTime"] as? Int64 {
                        self.totalDialingTime = value
                    }
                    if let value = dict["TotalHoldTime"] as? Int64 {
                        self.totalHoldTime = value
                    }
                    if let value = dict["TotalRingTime"] as? Int64 {
                        self.totalRingTime = value
                    }
                    if let value = dict["TotalTalkTime"] as? Int64 {
                        self.totalTalkTime = value
                    }
                    if let value = dict["TotalWorkTime"] as? Int64 {
                        self.totalWorkTime = value
                    }
                }
            }
            public class Overall : Tea.TeaModel {
                public class BreakCodeDetailList : Tea.TeaModel {
                    public var breakCode: String?

                    public var count: Int64?

                    public var duration: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.breakCode != nil {
                            map["BreakCode"] = self.breakCode!
                        }
                        if self.count != nil {
                            map["Count"] = self.count!
                        }
                        if self.duration != nil {
                            map["Duration"] = self.duration!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["BreakCode"] as? String {
                            self.breakCode = value
                        }
                        if let value = dict["Count"] as? Int64 {
                            self.count = value
                        }
                        if let value = dict["Duration"] as? Int64 {
                            self.duration = value
                        }
                    }
                }
                public var averageBreakTime: Double?

                public var averageHoldTime: Double?

                public var averageReadyTime: Double?

                public var averageTalkTime: Double?

                public var averageWorkTime: Double?

                public var breakCodeDetailList: [ListHistoricalAgentSkillGroupReportResponseBody.Data.List.Overall.BreakCodeDetailList]?

                public var firstCheckInTime: Int64?

                public var lastCheckOutTime: Int64?

                public var maxBreakTime: Int64?

                public var maxHoldTime: Int64?

                public var maxReadyTime: Int64?

                public var maxTalkTime: Int64?

                public var maxWorkTime: Int64?

                public var occupancyRate: Double?

                public var satisfactionCount: Int64?

                public var satisfactionIndex: Double?

                public var satisfactionRate: Double?

                public var satisfactionSurveysOffered: Int64?

                public var satisfactionSurveysResponded: Int64?

                public var totalBreakTime: Int64?

                public var totalCalls: Int64?

                public var totalHoldTime: Int64?

                public var totalLoggedInTime: Int64?

                public var totalOffSiteOnlineTime: Int64?

                public var totalOfficePhoneOnlineTime: Int64?

                public var totalOnSiteOnlineTime: Int64?

                public var totalOutboundScenarioReadyTime: Int64?

                public var totalOutboundScenarioTime: Int64?

                public var totalReadyTime: Int64?

                public var totalTalkTime: Int64?

                public var totalWorkTime: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.averageBreakTime != nil {
                        map["AverageBreakTime"] = self.averageBreakTime!
                    }
                    if self.averageHoldTime != nil {
                        map["AverageHoldTime"] = self.averageHoldTime!
                    }
                    if self.averageReadyTime != nil {
                        map["AverageReadyTime"] = self.averageReadyTime!
                    }
                    if self.averageTalkTime != nil {
                        map["AverageTalkTime"] = self.averageTalkTime!
                    }
                    if self.averageWorkTime != nil {
                        map["AverageWorkTime"] = self.averageWorkTime!
                    }
                    if self.breakCodeDetailList != nil {
                        var tmp : [Any] = []
                        for k in self.breakCodeDetailList! {
                            tmp.append(k.toMap())
                        }
                        map["BreakCodeDetailList"] = tmp
                    }
                    if self.firstCheckInTime != nil {
                        map["FirstCheckInTime"] = self.firstCheckInTime!
                    }
                    if self.lastCheckOutTime != nil {
                        map["LastCheckOutTime"] = self.lastCheckOutTime!
                    }
                    if self.maxBreakTime != nil {
                        map["MaxBreakTime"] = self.maxBreakTime!
                    }
                    if self.maxHoldTime != nil {
                        map["MaxHoldTime"] = self.maxHoldTime!
                    }
                    if self.maxReadyTime != nil {
                        map["MaxReadyTime"] = self.maxReadyTime!
                    }
                    if self.maxTalkTime != nil {
                        map["MaxTalkTime"] = self.maxTalkTime!
                    }
                    if self.maxWorkTime != nil {
                        map["MaxWorkTime"] = self.maxWorkTime!
                    }
                    if self.occupancyRate != nil {
                        map["OccupancyRate"] = self.occupancyRate!
                    }
                    if self.satisfactionCount != nil {
                        map["SatisfactionCount"] = self.satisfactionCount!
                    }
                    if self.satisfactionIndex != nil {
                        map["SatisfactionIndex"] = self.satisfactionIndex!
                    }
                    if self.satisfactionRate != nil {
                        map["SatisfactionRate"] = self.satisfactionRate!
                    }
                    if self.satisfactionSurveysOffered != nil {
                        map["SatisfactionSurveysOffered"] = self.satisfactionSurveysOffered!
                    }
                    if self.satisfactionSurveysResponded != nil {
                        map["SatisfactionSurveysResponded"] = self.satisfactionSurveysResponded!
                    }
                    if self.totalBreakTime != nil {
                        map["TotalBreakTime"] = self.totalBreakTime!
                    }
                    if self.totalCalls != nil {
                        map["TotalCalls"] = self.totalCalls!
                    }
                    if self.totalHoldTime != nil {
                        map["TotalHoldTime"] = self.totalHoldTime!
                    }
                    if self.totalLoggedInTime != nil {
                        map["TotalLoggedInTime"] = self.totalLoggedInTime!
                    }
                    if self.totalOffSiteOnlineTime != nil {
                        map["TotalOffSiteOnlineTime"] = self.totalOffSiteOnlineTime!
                    }
                    if self.totalOfficePhoneOnlineTime != nil {
                        map["TotalOfficePhoneOnlineTime"] = self.totalOfficePhoneOnlineTime!
                    }
                    if self.totalOnSiteOnlineTime != nil {
                        map["TotalOnSiteOnlineTime"] = self.totalOnSiteOnlineTime!
                    }
                    if self.totalOutboundScenarioReadyTime != nil {
                        map["TotalOutboundScenarioReadyTime"] = self.totalOutboundScenarioReadyTime!
                    }
                    if self.totalOutboundScenarioTime != nil {
                        map["TotalOutboundScenarioTime"] = self.totalOutboundScenarioTime!
                    }
                    if self.totalReadyTime != nil {
                        map["TotalReadyTime"] = self.totalReadyTime!
                    }
                    if self.totalTalkTime != nil {
                        map["TotalTalkTime"] = self.totalTalkTime!
                    }
                    if self.totalWorkTime != nil {
                        map["TotalWorkTime"] = self.totalWorkTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AverageBreakTime"] as? Double {
                        self.averageBreakTime = value
                    }
                    if let value = dict["AverageHoldTime"] as? Double {
                        self.averageHoldTime = value
                    }
                    if let value = dict["AverageReadyTime"] as? Double {
                        self.averageReadyTime = value
                    }
                    if let value = dict["AverageTalkTime"] as? Double {
                        self.averageTalkTime = value
                    }
                    if let value = dict["AverageWorkTime"] as? Double {
                        self.averageWorkTime = value
                    }
                    if let value = dict["BreakCodeDetailList"] as? [Any?] {
                        var tmp : [ListHistoricalAgentSkillGroupReportResponseBody.Data.List.Overall.BreakCodeDetailList] = []
                        for v in value {
                            if v != nil {
                                var model = ListHistoricalAgentSkillGroupReportResponseBody.Data.List.Overall.BreakCodeDetailList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.breakCodeDetailList = tmp
                    }
                    if let value = dict["FirstCheckInTime"] as? Int64 {
                        self.firstCheckInTime = value
                    }
                    if let value = dict["LastCheckOutTime"] as? Int64 {
                        self.lastCheckOutTime = value
                    }
                    if let value = dict["MaxBreakTime"] as? Int64 {
                        self.maxBreakTime = value
                    }
                    if let value = dict["MaxHoldTime"] as? Int64 {
                        self.maxHoldTime = value
                    }
                    if let value = dict["MaxReadyTime"] as? Int64 {
                        self.maxReadyTime = value
                    }
                    if let value = dict["MaxTalkTime"] as? Int64 {
                        self.maxTalkTime = value
                    }
                    if let value = dict["MaxWorkTime"] as? Int64 {
                        self.maxWorkTime = value
                    }
                    if let value = dict["OccupancyRate"] as? Double {
                        self.occupancyRate = value
                    }
                    if let value = dict["SatisfactionCount"] as? Int64 {
                        self.satisfactionCount = value
                    }
                    if let value = dict["SatisfactionIndex"] as? Double {
                        self.satisfactionIndex = value
                    }
                    if let value = dict["SatisfactionRate"] as? Double {
                        self.satisfactionRate = value
                    }
                    if let value = dict["SatisfactionSurveysOffered"] as? Int64 {
                        self.satisfactionSurveysOffered = value
                    }
                    if let value = dict["SatisfactionSurveysResponded"] as? Int64 {
                        self.satisfactionSurveysResponded = value
                    }
                    if let value = dict["TotalBreakTime"] as? Int64 {
                        self.totalBreakTime = value
                    }
                    if let value = dict["TotalCalls"] as? Int64 {
                        self.totalCalls = value
                    }
                    if let value = dict["TotalHoldTime"] as? Int64 {
                        self.totalHoldTime = value
                    }
                    if let value = dict["TotalLoggedInTime"] as? Int64 {
                        self.totalLoggedInTime = value
                    }
                    if let value = dict["TotalOffSiteOnlineTime"] as? Int64 {
                        self.totalOffSiteOnlineTime = value
                    }
                    if let value = dict["TotalOfficePhoneOnlineTime"] as? Int64 {
                        self.totalOfficePhoneOnlineTime = value
                    }
                    if let value = dict["TotalOnSiteOnlineTime"] as? Int64 {
                        self.totalOnSiteOnlineTime = value
                    }
                    if let value = dict["TotalOutboundScenarioReadyTime"] as? Int64 {
                        self.totalOutboundScenarioReadyTime = value
                    }
                    if let value = dict["TotalOutboundScenarioTime"] as? Int64 {
                        self.totalOutboundScenarioTime = value
                    }
                    if let value = dict["TotalReadyTime"] as? Int64 {
                        self.totalReadyTime = value
                    }
                    if let value = dict["TotalTalkTime"] as? Int64 {
                        self.totalTalkTime = value
                    }
                    if let value = dict["TotalWorkTime"] as? Int64 {
                        self.totalWorkTime = value
                    }
                }
            }
            public var agentId: String?

            public var agentName: String?

            public var back2Back: ListHistoricalAgentSkillGroupReportResponseBody.Data.List.Back2Back?

            public var displayId: String?

            public var inbound: ListHistoricalAgentSkillGroupReportResponseBody.Data.List.Inbound?

            public var internal_: ListHistoricalAgentSkillGroupReportResponseBody.Data.List.Internal_?

            public var outbound: ListHistoricalAgentSkillGroupReportResponseBody.Data.List.Outbound?

            public var overall: ListHistoricalAgentSkillGroupReportResponseBody.Data.List.Overall?

            public var skillGroupId: String?

            public var skillGroupName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.back2Back?.validate()
                try self.inbound?.validate()
                try self.internal_?.validate()
                try self.outbound?.validate()
                try self.overall?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentId != nil {
                    map["AgentId"] = self.agentId!
                }
                if self.agentName != nil {
                    map["AgentName"] = self.agentName!
                }
                if self.back2Back != nil {
                    map["Back2Back"] = self.back2Back?.toMap()
                }
                if self.displayId != nil {
                    map["DisplayId"] = self.displayId!
                }
                if self.inbound != nil {
                    map["Inbound"] = self.inbound?.toMap()
                }
                if self.internal_ != nil {
                    map["Internal"] = self.internal_?.toMap()
                }
                if self.outbound != nil {
                    map["Outbound"] = self.outbound?.toMap()
                }
                if self.overall != nil {
                    map["Overall"] = self.overall?.toMap()
                }
                if self.skillGroupId != nil {
                    map["SkillGroupId"] = self.skillGroupId!
                }
                if self.skillGroupName != nil {
                    map["SkillGroupName"] = self.skillGroupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentId"] as? String {
                    self.agentId = value
                }
                if let value = dict["AgentName"] as? String {
                    self.agentName = value
                }
                if let value = dict["Back2Back"] as? [String: Any?] {
                    var model = ListHistoricalAgentSkillGroupReportResponseBody.Data.List.Back2Back()
                    model.fromMap(value)
                    self.back2Back = model
                }
                if let value = dict["DisplayId"] as? String {
                    self.displayId = value
                }
                if let value = dict["Inbound"] as? [String: Any?] {
                    var model = ListHistoricalAgentSkillGroupReportResponseBody.Data.List.Inbound()
                    model.fromMap(value)
                    self.inbound = model
                }
                if let value = dict["Internal"] as? [String: Any?] {
                    var model = ListHistoricalAgentSkillGroupReportResponseBody.Data.List.Internal_()
                    model.fromMap(value)
                    self.internal_ = model
                }
                if let value = dict["Outbound"] as? [String: Any?] {
                    var model = ListHistoricalAgentSkillGroupReportResponseBody.Data.List.Outbound()
                    model.fromMap(value)
                    self.outbound = model
                }
                if let value = dict["Overall"] as? [String: Any?] {
                    var model = ListHistoricalAgentSkillGroupReportResponseBody.Data.List.Overall()
                    model.fromMap(value)
                    self.overall = model
                }
                if let value = dict["SkillGroupId"] as? String {
                    self.skillGroupId = value
                }
                if let value = dict["SkillGroupName"] as? String {
                    self.skillGroupName = value
                }
            }
        }
        public var list: [ListHistoricalAgentSkillGroupReportResponseBody.Data.List]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [ListHistoricalAgentSkillGroupReportResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListHistoricalAgentSkillGroupReportResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListHistoricalAgentSkillGroupReportResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListHistoricalAgentSkillGroupReportResponseBody.Data()
            model.fromMap(value)
            self.data = model
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
    }
}

public class ListHistoricalAgentSkillGroupReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHistoricalAgentSkillGroupReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListHistoricalAgentSkillGroupReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListIntervalAgentSkillGroupReportRequest : Tea.TeaModel {
    public var agentId: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var interval: String?

    public var mediaType: String?

    public var showDefaultIfEmpty: Bool?

    public var skillGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentId != nil {
            map["AgentId"] = self.agentId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.showDefaultIfEmpty != nil {
            map["ShowDefaultIfEmpty"] = self.showDefaultIfEmpty!
        }
        if self.skillGroupId != nil {
            map["SkillGroupId"] = self.skillGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? String {
            self.agentId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Interval"] as? String {
            self.interval = value
        }
        if let value = dict["MediaType"] as? String {
            self.mediaType = value
        }
        if let value = dict["ShowDefaultIfEmpty"] as? Bool {
            self.showDefaultIfEmpty = value
        }
        if let value = dict["SkillGroupId"] as? String {
            self.skillGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class ListIntervalAgentSkillGroupReportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Back2Back : Tea.TeaModel {
            public var agentAnswerRate: Double?

            public var answerRate: Double?

            public var averageCustomerRingTime: Double?

            public var averageRingTime: Double?

            public var averageTalkTime: Int64?

            public var callsAnswered: Int64?

            public var callsCustomerHandled: Int64?

            public var callsDialed: Int64?

            public var customerHandleRate: Double?

            public var maxCustomerRingTime: Int64?

            public var maxRingTime: Int64?

            public var maxTalkTime: Int64?

            public var totalCustomerRingTime: Int64?

            public var totalRingTime: Int64?

            public var totalTalkTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentAnswerRate != nil {
                    map["AgentAnswerRate"] = self.agentAnswerRate!
                }
                if self.answerRate != nil {
                    map["AnswerRate"] = self.answerRate!
                }
                if self.averageCustomerRingTime != nil {
                    map["AverageCustomerRingTime"] = self.averageCustomerRingTime!
                }
                if self.averageRingTime != nil {
                    map["AverageRingTime"] = self.averageRingTime!
                }
                if self.averageTalkTime != nil {
                    map["AverageTalkTime"] = self.averageTalkTime!
                }
                if self.callsAnswered != nil {
                    map["CallsAnswered"] = self.callsAnswered!
                }
                if self.callsCustomerHandled != nil {
                    map["CallsCustomerHandled"] = self.callsCustomerHandled!
                }
                if self.callsDialed != nil {
                    map["CallsDialed"] = self.callsDialed!
                }
                if self.customerHandleRate != nil {
                    map["CustomerHandleRate"] = self.customerHandleRate!
                }
                if self.maxCustomerRingTime != nil {
                    map["MaxCustomerRingTime"] = self.maxCustomerRingTime!
                }
                if self.maxRingTime != nil {
                    map["MaxRingTime"] = self.maxRingTime!
                }
                if self.maxTalkTime != nil {
                    map["MaxTalkTime"] = self.maxTalkTime!
                }
                if self.totalCustomerRingTime != nil {
                    map["TotalCustomerRingTime"] = self.totalCustomerRingTime!
                }
                if self.totalRingTime != nil {
                    map["TotalRingTime"] = self.totalRingTime!
                }
                if self.totalTalkTime != nil {
                    map["TotalTalkTime"] = self.totalTalkTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentAnswerRate"] as? Double {
                    self.agentAnswerRate = value
                }
                if let value = dict["AnswerRate"] as? Double {
                    self.answerRate = value
                }
                if let value = dict["AverageCustomerRingTime"] as? Double {
                    self.averageCustomerRingTime = value
                }
                if let value = dict["AverageRingTime"] as? Double {
                    self.averageRingTime = value
                }
                if let value = dict["AverageTalkTime"] as? Int64 {
                    self.averageTalkTime = value
                }
                if let value = dict["CallsAnswered"] as? Int64 {
                    self.callsAnswered = value
                }
                if let value = dict["CallsCustomerHandled"] as? Int64 {
                    self.callsCustomerHandled = value
                }
                if let value = dict["CallsDialed"] as? Int64 {
                    self.callsDialed = value
                }
                if let value = dict["CustomerHandleRate"] as? Double {
                    self.customerHandleRate = value
                }
                if let value = dict["MaxCustomerRingTime"] as? Int64 {
                    self.maxCustomerRingTime = value
                }
                if let value = dict["MaxRingTime"] as? Int64 {
                    self.maxRingTime = value
                }
                if let value = dict["MaxTalkTime"] as? Int64 {
                    self.maxTalkTime = value
                }
                if let value = dict["TotalCustomerRingTime"] as? Int64 {
                    self.totalCustomerRingTime = value
                }
                if let value = dict["TotalRingTime"] as? Int64 {
                    self.totalRingTime = value
                }
                if let value = dict["TotalTalkTime"] as? Int64 {
                    self.totalTalkTime = value
                }
            }
        }
        public class Inbound : Tea.TeaModel {
            public var averageFirstResponseTime: Double?

            public var averageHoldTime: Double?

            public var averageResponseTime: Double?

            public var averageRingTime: Double?

            public var averageTalkTime: Double?

            public var averageWorkTime: Double?

            public var callsAttendedTransferIn: Int64?

            public var callsAttendedTransferOut: Int64?

            public var callsBlindTransferIn: Int64?

            public var callsBlindTransferOut: Int64?

            public var callsHandled: Int64?

            public var callsHold: Int64?

            public var callsOffered: Int64?

            public var callsRinged: Int64?

            public var handleRate: Double?

            public var maxHoldTime: Int64?

            public var maxRingTime: Int64?

            public var maxTalkTime: Int64?

            public var maxWorkTime: Int64?

            public var satisfactionCount: Int64?

            public var satisfactionIndex: Double?

            public var satisfactionRate: Double?

            public var satisfactionSurveysOffered: Int64?

            public var satisfactionSurveysResponded: Int64?

            public var totalHoldTime: Int64?

            public var totalMessagesSent: Int64?

            public var totalMessagesSentByAgent: Int64?

            public var totalMessagesSentByCustomer: Int64?

            public var totalRingTime: Int64?

            public var totalTalkTime: Int64?

            public var totalWorkTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.averageFirstResponseTime != nil {
                    map["AverageFirstResponseTime"] = self.averageFirstResponseTime!
                }
                if self.averageHoldTime != nil {
                    map["AverageHoldTime"] = self.averageHoldTime!
                }
                if self.averageResponseTime != nil {
                    map["AverageResponseTime"] = self.averageResponseTime!
                }
                if self.averageRingTime != nil {
                    map["AverageRingTime"] = self.averageRingTime!
                }
                if self.averageTalkTime != nil {
                    map["AverageTalkTime"] = self.averageTalkTime!
                }
                if self.averageWorkTime != nil {
                    map["AverageWorkTime"] = self.averageWorkTime!
                }
                if self.callsAttendedTransferIn != nil {
                    map["CallsAttendedTransferIn"] = self.callsAttendedTransferIn!
                }
                if self.callsAttendedTransferOut != nil {
                    map["CallsAttendedTransferOut"] = self.callsAttendedTransferOut!
                }
                if self.callsBlindTransferIn != nil {
                    map["CallsBlindTransferIn"] = self.callsBlindTransferIn!
                }
                if self.callsBlindTransferOut != nil {
                    map["CallsBlindTransferOut"] = self.callsBlindTransferOut!
                }
                if self.callsHandled != nil {
                    map["CallsHandled"] = self.callsHandled!
                }
                if self.callsHold != nil {
                    map["CallsHold"] = self.callsHold!
                }
                if self.callsOffered != nil {
                    map["CallsOffered"] = self.callsOffered!
                }
                if self.callsRinged != nil {
                    map["CallsRinged"] = self.callsRinged!
                }
                if self.handleRate != nil {
                    map["HandleRate"] = self.handleRate!
                }
                if self.maxHoldTime != nil {
                    map["MaxHoldTime"] = self.maxHoldTime!
                }
                if self.maxRingTime != nil {
                    map["MaxRingTime"] = self.maxRingTime!
                }
                if self.maxTalkTime != nil {
                    map["MaxTalkTime"] = self.maxTalkTime!
                }
                if self.maxWorkTime != nil {
                    map["MaxWorkTime"] = self.maxWorkTime!
                }
                if self.satisfactionCount != nil {
                    map["SatisfactionCount"] = self.satisfactionCount!
                }
                if self.satisfactionIndex != nil {
                    map["SatisfactionIndex"] = self.satisfactionIndex!
                }
                if self.satisfactionRate != nil {
                    map["SatisfactionRate"] = self.satisfactionRate!
                }
                if self.satisfactionSurveysOffered != nil {
                    map["SatisfactionSurveysOffered"] = self.satisfactionSurveysOffered!
                }
                if self.satisfactionSurveysResponded != nil {
                    map["SatisfactionSurveysResponded"] = self.satisfactionSurveysResponded!
                }
                if self.totalHoldTime != nil {
                    map["TotalHoldTime"] = self.totalHoldTime!
                }
                if self.totalMessagesSent != nil {
                    map["TotalMessagesSent"] = self.totalMessagesSent!
                }
                if self.totalMessagesSentByAgent != nil {
                    map["TotalMessagesSentByAgent"] = self.totalMessagesSentByAgent!
                }
                if self.totalMessagesSentByCustomer != nil {
                    map["TotalMessagesSentByCustomer"] = self.totalMessagesSentByCustomer!
                }
                if self.totalRingTime != nil {
                    map["TotalRingTime"] = self.totalRingTime!
                }
                if self.totalTalkTime != nil {
                    map["TotalTalkTime"] = self.totalTalkTime!
                }
                if self.totalWorkTime != nil {
                    map["TotalWorkTime"] = self.totalWorkTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AverageFirstResponseTime"] as? Double {
                    self.averageFirstResponseTime = value
                }
                if let value = dict["AverageHoldTime"] as? Double {
                    self.averageHoldTime = value
                }
                if let value = dict["AverageResponseTime"] as? Double {
                    self.averageResponseTime = value
                }
                if let value = dict["AverageRingTime"] as? Double {
                    self.averageRingTime = value
                }
                if let value = dict["AverageTalkTime"] as? Double {
                    self.averageTalkTime = value
                }
                if let value = dict["AverageWorkTime"] as? Double {
                    self.averageWorkTime = value
                }
                if let value = dict["CallsAttendedTransferIn"] as? Int64 {
                    self.callsAttendedTransferIn = value
                }
                if let value = dict["CallsAttendedTransferOut"] as? Int64 {
                    self.callsAttendedTransferOut = value
                }
                if let value = dict["CallsBlindTransferIn"] as? Int64 {
                    self.callsBlindTransferIn = value
                }
                if let value = dict["CallsBlindTransferOut"] as? Int64 {
                    self.callsBlindTransferOut = value
                }
                if let value = dict["CallsHandled"] as? Int64 {
                    self.callsHandled = value
                }
                if let value = dict["CallsHold"] as? Int64 {
                    self.callsHold = value
                }
                if let value = dict["CallsOffered"] as? Int64 {
                    self.callsOffered = value
                }
                if let value = dict["CallsRinged"] as? Int64 {
                    self.callsRinged = value
                }
                if let value = dict["HandleRate"] as? Double {
                    self.handleRate = value
                }
                if let value = dict["MaxHoldTime"] as? Int64 {
                    self.maxHoldTime = value
                }
                if let value = dict["MaxRingTime"] as? Int64 {
                    self.maxRingTime = value
                }
                if let value = dict["MaxTalkTime"] as? Int64 {
                    self.maxTalkTime = value
                }
                if let value = dict["MaxWorkTime"] as? Int64 {
                    self.maxWorkTime = value
                }
                if let value = dict["SatisfactionCount"] as? Int64 {
                    self.satisfactionCount = value
                }
                if let value = dict["SatisfactionIndex"] as? Double {
                    self.satisfactionIndex = value
                }
                if let value = dict["SatisfactionRate"] as? Double {
                    self.satisfactionRate = value
                }
                if let value = dict["SatisfactionSurveysOffered"] as? Int64 {
                    self.satisfactionSurveysOffered = value
                }
                if let value = dict["SatisfactionSurveysResponded"] as? Int64 {
                    self.satisfactionSurveysResponded = value
                }
                if let value = dict["TotalHoldTime"] as? Int64 {
                    self.totalHoldTime = value
                }
                if let value = dict["TotalMessagesSent"] as? Int64 {
                    self.totalMessagesSent = value
                }
                if let value = dict["TotalMessagesSentByAgent"] as? Int64 {
                    self.totalMessagesSentByAgent = value
                }
                if let value = dict["TotalMessagesSentByCustomer"] as? Int64 {
                    self.totalMessagesSentByCustomer = value
                }
                if let value = dict["TotalRingTime"] as? Int64 {
                    self.totalRingTime = value
                }
                if let value = dict["TotalTalkTime"] as? Int64 {
                    self.totalTalkTime = value
                }
                if let value = dict["TotalWorkTime"] as? Int64 {
                    self.totalWorkTime = value
                }
            }
        }
        public class Internal_ : Tea.TeaModel {
            public var averageTalkTime: Double?

            public var callsAnswered: Int64?

            public var callsDialed: Int64?

            public var callsHandled: Int64?

            public var callsOffered: Int64?

            public var callsTalk: Int64?

            public var maxTalkTime: Int64?

            public var totalTalkTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.averageTalkTime != nil {
                    map["AverageTalkTime"] = self.averageTalkTime!
                }
                if self.callsAnswered != nil {
                    map["CallsAnswered"] = self.callsAnswered!
                }
                if self.callsDialed != nil {
                    map["CallsDialed"] = self.callsDialed!
                }
                if self.callsHandled != nil {
                    map["CallsHandled"] = self.callsHandled!
                }
                if self.callsOffered != nil {
                    map["CallsOffered"] = self.callsOffered!
                }
                if self.callsTalk != nil {
                    map["CallsTalk"] = self.callsTalk!
                }
                if self.maxTalkTime != nil {
                    map["MaxTalkTime"] = self.maxTalkTime!
                }
                if self.totalTalkTime != nil {
                    map["TotalTalkTime"] = self.totalTalkTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AverageTalkTime"] as? Double {
                    self.averageTalkTime = value
                }
                if let value = dict["CallsAnswered"] as? Int64 {
                    self.callsAnswered = value
                }
                if let value = dict["CallsDialed"] as? Int64 {
                    self.callsDialed = value
                }
                if let value = dict["CallsHandled"] as? Int64 {
                    self.callsHandled = value
                }
                if let value = dict["CallsOffered"] as? Int64 {
                    self.callsOffered = value
                }
                if let value = dict["CallsTalk"] as? Int64 {
                    self.callsTalk = value
                }
                if let value = dict["MaxTalkTime"] as? Int64 {
                    self.maxTalkTime = value
                }
                if let value = dict["TotalTalkTime"] as? Int64 {
                    self.totalTalkTime = value
                }
            }
        }
        public class Outbound : Tea.TeaModel {
            public var answerRate: Double?

            public var averageDialingTime: Double?

            public var averageHoldTime: Double?

            public var averageRingTime: Double?

            public var averageTalkTime: Double?

            public var averageWorkTime: Double?

            public var callsAnswered: Int64?

            public var callsAttendedTransferIn: Int64?

            public var callsAttendedTransferOut: Int64?

            public var callsBlindTransferIn: Int64?

            public var callsBlindTransferOut: Int64?

            public var callsDialed: Int64?

            public var callsHold: Int64?

            public var callsRinged: Int64?

            public var maxDialingTime: Int64?

            public var maxHoldTime: Int64?

            public var maxRingTime: Int64?

            public var maxTalkTime: Int64?

            public var maxWorkTime: Int64?

            public var satisfactionCount: Int64?

            public var satisfactionIndex: Double?

            public var satisfactionRate: Double?

            public var satisfactionSurveysOffered: Int64?

            public var satisfactionSurveysResponded: Int64?

            public var totalDialingTime: Int64?

            public var totalHoldTime: Int64?

            public var totalRingTime: Int64?

            public var totalTalkTime: Int64?

            public var totalWorkTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerRate != nil {
                    map["AnswerRate"] = self.answerRate!
                }
                if self.averageDialingTime != nil {
                    map["AverageDialingTime"] = self.averageDialingTime!
                }
                if self.averageHoldTime != nil {
                    map["AverageHoldTime"] = self.averageHoldTime!
                }
                if self.averageRingTime != nil {
                    map["AverageRingTime"] = self.averageRingTime!
                }
                if self.averageTalkTime != nil {
                    map["AverageTalkTime"] = self.averageTalkTime!
                }
                if self.averageWorkTime != nil {
                    map["AverageWorkTime"] = self.averageWorkTime!
                }
                if self.callsAnswered != nil {
                    map["CallsAnswered"] = self.callsAnswered!
                }
                if self.callsAttendedTransferIn != nil {
                    map["CallsAttendedTransferIn"] = self.callsAttendedTransferIn!
                }
                if self.callsAttendedTransferOut != nil {
                    map["CallsAttendedTransferOut"] = self.callsAttendedTransferOut!
                }
                if self.callsBlindTransferIn != nil {
                    map["CallsBlindTransferIn"] = self.callsBlindTransferIn!
                }
                if self.callsBlindTransferOut != nil {
                    map["CallsBlindTransferOut"] = self.callsBlindTransferOut!
                }
                if self.callsDialed != nil {
                    map["CallsDialed"] = self.callsDialed!
                }
                if self.callsHold != nil {
                    map["CallsHold"] = self.callsHold!
                }
                if self.callsRinged != nil {
                    map["CallsRinged"] = self.callsRinged!
                }
                if self.maxDialingTime != nil {
                    map["MaxDialingTime"] = self.maxDialingTime!
                }
                if self.maxHoldTime != nil {
                    map["MaxHoldTime"] = self.maxHoldTime!
                }
                if self.maxRingTime != nil {
                    map["MaxRingTime"] = self.maxRingTime!
                }
                if self.maxTalkTime != nil {
                    map["MaxTalkTime"] = self.maxTalkTime!
                }
                if self.maxWorkTime != nil {
                    map["MaxWorkTime"] = self.maxWorkTime!
                }
                if self.satisfactionCount != nil {
                    map["SatisfactionCount"] = self.satisfactionCount!
                }
                if self.satisfactionIndex != nil {
                    map["SatisfactionIndex"] = self.satisfactionIndex!
                }
                if self.satisfactionRate != nil {
                    map["SatisfactionRate"] = self.satisfactionRate!
                }
                if self.satisfactionSurveysOffered != nil {
                    map["SatisfactionSurveysOffered"] = self.satisfactionSurveysOffered!
                }
                if self.satisfactionSurveysResponded != nil {
                    map["SatisfactionSurveysResponded"] = self.satisfactionSurveysResponded!
                }
                if self.totalDialingTime != nil {
                    map["TotalDialingTime"] = self.totalDialingTime!
                }
                if self.totalHoldTime != nil {
                    map["TotalHoldTime"] = self.totalHoldTime!
                }
                if self.totalRingTime != nil {
                    map["TotalRingTime"] = self.totalRingTime!
                }
                if self.totalTalkTime != nil {
                    map["TotalTalkTime"] = self.totalTalkTime!
                }
                if self.totalWorkTime != nil {
                    map["TotalWorkTime"] = self.totalWorkTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AnswerRate"] as? Double {
                    self.answerRate = value
                }
                if let value = dict["AverageDialingTime"] as? Double {
                    self.averageDialingTime = value
                }
                if let value = dict["AverageHoldTime"] as? Double {
                    self.averageHoldTime = value
                }
                if let value = dict["AverageRingTime"] as? Double {
                    self.averageRingTime = value
                }
                if let value = dict["AverageTalkTime"] as? Double {
                    self.averageTalkTime = value
                }
                if let value = dict["AverageWorkTime"] as? Double {
                    self.averageWorkTime = value
                }
                if let value = dict["CallsAnswered"] as? Int64 {
                    self.callsAnswered = value
                }
                if let value = dict["CallsAttendedTransferIn"] as? Int64 {
                    self.callsAttendedTransferIn = value
                }
                if let value = dict["CallsAttendedTransferOut"] as? Int64 {
                    self.callsAttendedTransferOut = value
                }
                if let value = dict["CallsBlindTransferIn"] as? Int64 {
                    self.callsBlindTransferIn = value
                }
                if let value = dict["CallsBlindTransferOut"] as? Int64 {
                    self.callsBlindTransferOut = value
                }
                if let value = dict["CallsDialed"] as? Int64 {
                    self.callsDialed = value
                }
                if let value = dict["CallsHold"] as? Int64 {
                    self.callsHold = value
                }
                if let value = dict["CallsRinged"] as? Int64 {
                    self.callsRinged = value
                }
                if let value = dict["MaxDialingTime"] as? Int64 {
                    self.maxDialingTime = value
                }
                if let value = dict["MaxHoldTime"] as? Int64 {
                    self.maxHoldTime = value
                }
                if let value = dict["MaxRingTime"] as? Int64 {
                    self.maxRingTime = value
                }
                if let value = dict["MaxTalkTime"] as? Int64 {
                    self.maxTalkTime = value
                }
                if let value = dict["MaxWorkTime"] as? Int64 {
                    self.maxWorkTime = value
                }
                if let value = dict["SatisfactionCount"] as? Int64 {
                    self.satisfactionCount = value
                }
                if let value = dict["SatisfactionIndex"] as? Double {
                    self.satisfactionIndex = value
                }
                if let value = dict["SatisfactionRate"] as? Double {
                    self.satisfactionRate = value
                }
                if let value = dict["SatisfactionSurveysOffered"] as? Int64 {
                    self.satisfactionSurveysOffered = value
                }
                if let value = dict["SatisfactionSurveysResponded"] as? Int64 {
                    self.satisfactionSurveysResponded = value
                }
                if let value = dict["TotalDialingTime"] as? Int64 {
                    self.totalDialingTime = value
                }
                if let value = dict["TotalHoldTime"] as? Int64 {
                    self.totalHoldTime = value
                }
                if let value = dict["TotalRingTime"] as? Int64 {
                    self.totalRingTime = value
                }
                if let value = dict["TotalTalkTime"] as? Int64 {
                    self.totalTalkTime = value
                }
                if let value = dict["TotalWorkTime"] as? Int64 {
                    self.totalWorkTime = value
                }
            }
        }
        public class Overall : Tea.TeaModel {
            public class BreakCodeDetailList : Tea.TeaModel {
                public var breakCode: String?

                public var count: Int64?

                public var duration: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.breakCode != nil {
                        map["BreakCode"] = self.breakCode!
                    }
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BreakCode"] as? String {
                        self.breakCode = value
                    }
                    if let value = dict["Count"] as? Int64 {
                        self.count = value
                    }
                    if let value = dict["Duration"] as? Int64 {
                        self.duration = value
                    }
                }
            }
            public var averageBreakTime: Double?

            public var averageHoldTime: Double?

            public var averageReadyTime: Double?

            public var averageTalkTime: Double?

            public var averageWorkTime: Double?

            public var breakCodeDetailList: [ListIntervalAgentSkillGroupReportResponseBody.Data.Overall.BreakCodeDetailList]?

            public var firstCheckInTime: Int64?

            public var lastCheckoutTime: Int64?

            public var maxBreakTime: Int64?

            public var maxHoldTime: Int64?

            public var maxReadyTime: Int64?

            public var maxTalkTime: Int64?

            public var maxWorkTime: Int64?

            public var occupancyRate: Double?

            public var satisfactionCount: Int64?

            public var satisfactionIndex: Double?

            public var satisfactionRate: Double?

            public var satisfactionSurveysOffered: Int64?

            public var satisfactionSurveysResponded: Int64?

            public var totalBreakTime: Int64?

            public var totalCalls: Int64?

            public var totalHoldTime: Int64?

            public var totalLoggedInTime: Int64?

            public var totalOffSiteOnlineTime: Int64?

            public var totalOfficePhoneOnlineTime: Int64?

            public var totalOnSiteOnlineTime: Int64?

            public var totalOutboundScenarioReadyTime: Int64?

            public var totalOutboundScenarioTime: Int64?

            public var totalReadyTime: Int64?

            public var totalTalkTime: Int64?

            public var totalWorkTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.averageBreakTime != nil {
                    map["AverageBreakTime"] = self.averageBreakTime!
                }
                if self.averageHoldTime != nil {
                    map["AverageHoldTime"] = self.averageHoldTime!
                }
                if self.averageReadyTime != nil {
                    map["AverageReadyTime"] = self.averageReadyTime!
                }
                if self.averageTalkTime != nil {
                    map["AverageTalkTime"] = self.averageTalkTime!
                }
                if self.averageWorkTime != nil {
                    map["AverageWorkTime"] = self.averageWorkTime!
                }
                if self.breakCodeDetailList != nil {
                    var tmp : [Any] = []
                    for k in self.breakCodeDetailList! {
                        tmp.append(k.toMap())
                    }
                    map["BreakCodeDetailList"] = tmp
                }
                if self.firstCheckInTime != nil {
                    map["FirstCheckInTime"] = self.firstCheckInTime!
                }
                if self.lastCheckoutTime != nil {
                    map["LastCheckoutTime"] = self.lastCheckoutTime!
                }
                if self.maxBreakTime != nil {
                    map["MaxBreakTime"] = self.maxBreakTime!
                }
                if self.maxHoldTime != nil {
                    map["MaxHoldTime"] = self.maxHoldTime!
                }
                if self.maxReadyTime != nil {
                    map["MaxReadyTime"] = self.maxReadyTime!
                }
                if self.maxTalkTime != nil {
                    map["MaxTalkTime"] = self.maxTalkTime!
                }
                if self.maxWorkTime != nil {
                    map["MaxWorkTime"] = self.maxWorkTime!
                }
                if self.occupancyRate != nil {
                    map["OccupancyRate"] = self.occupancyRate!
                }
                if self.satisfactionCount != nil {
                    map["SatisfactionCount"] = self.satisfactionCount!
                }
                if self.satisfactionIndex != nil {
                    map["SatisfactionIndex"] = self.satisfactionIndex!
                }
                if self.satisfactionRate != nil {
                    map["SatisfactionRate"] = self.satisfactionRate!
                }
                if self.satisfactionSurveysOffered != nil {
                    map["SatisfactionSurveysOffered"] = self.satisfactionSurveysOffered!
                }
                if self.satisfactionSurveysResponded != nil {
                    map["SatisfactionSurveysResponded"] = self.satisfactionSurveysResponded!
                }
                if self.totalBreakTime != nil {
                    map["TotalBreakTime"] = self.totalBreakTime!
                }
                if self.totalCalls != nil {
                    map["TotalCalls"] = self.totalCalls!
                }
                if self.totalHoldTime != nil {
                    map["TotalHoldTime"] = self.totalHoldTime!
                }
                if self.totalLoggedInTime != nil {
                    map["TotalLoggedInTime"] = self.totalLoggedInTime!
                }
                if self.totalOffSiteOnlineTime != nil {
                    map["TotalOffSiteOnlineTime"] = self.totalOffSiteOnlineTime!
                }
                if self.totalOfficePhoneOnlineTime != nil {
                    map["TotalOfficePhoneOnlineTime"] = self.totalOfficePhoneOnlineTime!
                }
                if self.totalOnSiteOnlineTime != nil {
                    map["TotalOnSiteOnlineTime"] = self.totalOnSiteOnlineTime!
                }
                if self.totalOutboundScenarioReadyTime != nil {
                    map["TotalOutboundScenarioReadyTime"] = self.totalOutboundScenarioReadyTime!
                }
                if self.totalOutboundScenarioTime != nil {
                    map["TotalOutboundScenarioTime"] = self.totalOutboundScenarioTime!
                }
                if self.totalReadyTime != nil {
                    map["TotalReadyTime"] = self.totalReadyTime!
                }
                if self.totalTalkTime != nil {
                    map["TotalTalkTime"] = self.totalTalkTime!
                }
                if self.totalWorkTime != nil {
                    map["TotalWorkTime"] = self.totalWorkTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AverageBreakTime"] as? Double {
                    self.averageBreakTime = value
                }
                if let value = dict["AverageHoldTime"] as? Double {
                    self.averageHoldTime = value
                }
                if let value = dict["AverageReadyTime"] as? Double {
                    self.averageReadyTime = value
                }
                if let value = dict["AverageTalkTime"] as? Double {
                    self.averageTalkTime = value
                }
                if let value = dict["AverageWorkTime"] as? Double {
                    self.averageWorkTime = value
                }
                if let value = dict["BreakCodeDetailList"] as? [Any?] {
                    var tmp : [ListIntervalAgentSkillGroupReportResponseBody.Data.Overall.BreakCodeDetailList] = []
                    for v in value {
                        if v != nil {
                            var model = ListIntervalAgentSkillGroupReportResponseBody.Data.Overall.BreakCodeDetailList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.breakCodeDetailList = tmp
                }
                if let value = dict["FirstCheckInTime"] as? Int64 {
                    self.firstCheckInTime = value
                }
                if let value = dict["LastCheckoutTime"] as? Int64 {
                    self.lastCheckoutTime = value
                }
                if let value = dict["MaxBreakTime"] as? Int64 {
                    self.maxBreakTime = value
                }
                if let value = dict["MaxHoldTime"] as? Int64 {
                    self.maxHoldTime = value
                }
                if let value = dict["MaxReadyTime"] as? Int64 {
                    self.maxReadyTime = value
                }
                if let value = dict["MaxTalkTime"] as? Int64 {
                    self.maxTalkTime = value
                }
                if let value = dict["MaxWorkTime"] as? Int64 {
                    self.maxWorkTime = value
                }
                if let value = dict["OccupancyRate"] as? Double {
                    self.occupancyRate = value
                }
                if let value = dict["SatisfactionCount"] as? Int64 {
                    self.satisfactionCount = value
                }
                if let value = dict["SatisfactionIndex"] as? Double {
                    self.satisfactionIndex = value
                }
                if let value = dict["SatisfactionRate"] as? Double {
                    self.satisfactionRate = value
                }
                if let value = dict["SatisfactionSurveysOffered"] as? Int64 {
                    self.satisfactionSurveysOffered = value
                }
                if let value = dict["SatisfactionSurveysResponded"] as? Int64 {
                    self.satisfactionSurveysResponded = value
                }
                if let value = dict["TotalBreakTime"] as? Int64 {
                    self.totalBreakTime = value
                }
                if let value = dict["TotalCalls"] as? Int64 {
                    self.totalCalls = value
                }
                if let value = dict["TotalHoldTime"] as? Int64 {
                    self.totalHoldTime = value
                }
                if let value = dict["TotalLoggedInTime"] as? Int64 {
                    self.totalLoggedInTime = value
                }
                if let value = dict["TotalOffSiteOnlineTime"] as? Int64 {
                    self.totalOffSiteOnlineTime = value
                }
                if let value = dict["TotalOfficePhoneOnlineTime"] as? Int64 {
                    self.totalOfficePhoneOnlineTime = value
                }
                if let value = dict["TotalOnSiteOnlineTime"] as? Int64 {
                    self.totalOnSiteOnlineTime = value
                }
                if let value = dict["TotalOutboundScenarioReadyTime"] as? Int64 {
                    self.totalOutboundScenarioReadyTime = value
                }
                if let value = dict["TotalOutboundScenarioTime"] as? Int64 {
                    self.totalOutboundScenarioTime = value
                }
                if let value = dict["TotalReadyTime"] as? Int64 {
                    self.totalReadyTime = value
                }
                if let value = dict["TotalTalkTime"] as? Int64 {
                    self.totalTalkTime = value
                }
                if let value = dict["TotalWorkTime"] as? Int64 {
                    self.totalWorkTime = value
                }
            }
        }
        public var back2Back: ListIntervalAgentSkillGroupReportResponseBody.Data.Back2Back?

        public var inbound: ListIntervalAgentSkillGroupReportResponseBody.Data.Inbound?

        public var internal_: ListIntervalAgentSkillGroupReportResponseBody.Data.Internal_?

        public var outbound: ListIntervalAgentSkillGroupReportResponseBody.Data.Outbound?

        public var overall: ListIntervalAgentSkillGroupReportResponseBody.Data.Overall?

        public var statsTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.back2Back?.validate()
            try self.inbound?.validate()
            try self.internal_?.validate()
            try self.outbound?.validate()
            try self.overall?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.back2Back != nil {
                map["Back2Back"] = self.back2Back?.toMap()
            }
            if self.inbound != nil {
                map["Inbound"] = self.inbound?.toMap()
            }
            if self.internal_ != nil {
                map["Internal"] = self.internal_?.toMap()
            }
            if self.outbound != nil {
                map["Outbound"] = self.outbound?.toMap()
            }
            if self.overall != nil {
                map["Overall"] = self.overall?.toMap()
            }
            if self.statsTime != nil {
                map["StatsTime"] = self.statsTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Back2Back"] as? [String: Any?] {
                var model = ListIntervalAgentSkillGroupReportResponseBody.Data.Back2Back()
                model.fromMap(value)
                self.back2Back = model
            }
            if let value = dict["Inbound"] as? [String: Any?] {
                var model = ListIntervalAgentSkillGroupReportResponseBody.Data.Inbound()
                model.fromMap(value)
                self.inbound = model
            }
            if let value = dict["Internal"] as? [String: Any?] {
                var model = ListIntervalAgentSkillGroupReportResponseBody.Data.Internal_()
                model.fromMap(value)
                self.internal_ = model
            }
            if let value = dict["Outbound"] as? [String: Any?] {
                var model = ListIntervalAgentSkillGroupReportResponseBody.Data.Outbound()
                model.fromMap(value)
                self.outbound = model
            }
            if let value = dict["Overall"] as? [String: Any?] {
                var model = ListIntervalAgentSkillGroupReportResponseBody.Data.Overall()
                model.fromMap(value)
                self.overall = model
            }
            if let value = dict["StatsTime"] as? Int64 {
                self.statsTime = value
            }
        }
    }
    public var code: String?

    public var data: [ListIntervalAgentSkillGroupReportResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListIntervalAgentSkillGroupReportResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListIntervalAgentSkillGroupReportResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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
    }
}

public class ListIntervalAgentSkillGroupReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIntervalAgentSkillGroupReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListIntervalAgentSkillGroupReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMonoRecordingsRequest : Tea.TeaModel {
    public var contactId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListMonoRecordingsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agentId: String?

        public var agentName: String?

        public var contactId: String?

        public var duration: String?

        public var fileName: String?

        public var fileUrl: String?

        public var ramId: String?

        public var skillGroupId: String?

        public var startTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentId != nil {
                map["AgentId"] = self.agentId!
            }
            if self.agentName != nil {
                map["AgentName"] = self.agentName!
            }
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.ramId != nil {
                map["RamId"] = self.ramId!
            }
            if self.skillGroupId != nil {
                map["SkillGroupId"] = self.skillGroupId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentId"] as? String {
                self.agentId = value
            }
            if let value = dict["AgentName"] as? String {
                self.agentName = value
            }
            if let value = dict["ContactId"] as? String {
                self.contactId = value
            }
            if let value = dict["Duration"] as? String {
                self.duration = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FileUrl"] as? String {
                self.fileUrl = value
            }
            if let value = dict["RamId"] as? String {
                self.ramId = value
            }
            if let value = dict["SkillGroupId"] as? String {
                self.skillGroupId = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
        }
    }
    public var code: String?

    public var data: [ListMonoRecordingsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListMonoRecordingsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListMonoRecordingsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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
    }
}

public class ListMonoRecordingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMonoRecordingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMonoRecordingsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PauseCampaignRequest : Tea.TeaModel {
    public var campaignId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.campaignId != nil {
            map["CampaignId"] = self.campaignId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CampaignId"] as? String {
            self.campaignId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class PauseCampaignResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PauseCampaignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PauseCampaignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PauseCampaignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ProcessAliMeCallbackOfStagingRequest : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
    }
}

public class ProcessAliMeCallbackOfStagingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Result"] as? String {
                self.result = value
            }
        }
    }
    public var code: String?

    public var data: ProcessAliMeCallbackOfStagingResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ProcessAliMeCallbackOfStagingResponseBody.Data()
            model.fromMap(value)
            self.data = model
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
    }
}

public class ProcessAliMeCallbackOfStagingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ProcessAliMeCallbackOfStagingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ProcessAliMeCallbackOfStagingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ProcessCustomIMCallbackRequest : Tea.TeaModel {
    public var accessChannelId: String?

    public var conversationId: String?

    public var instanceId: String?

    public var messageContent: String?

    public var requestId: String?

    public var senderAvatarMediaId: String?

    public var senderId: String?

    public var senderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessChannelId != nil {
            map["AccessChannelId"] = self.accessChannelId!
        }
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.messageContent != nil {
            map["MessageContent"] = self.messageContent!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.senderAvatarMediaId != nil {
            map["SenderAvatarMediaId"] = self.senderAvatarMediaId!
        }
        if self.senderId != nil {
            map["SenderId"] = self.senderId!
        }
        if self.senderName != nil {
            map["SenderName"] = self.senderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessChannelId"] as? String {
            self.accessChannelId = value
        }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MessageContent"] as? String {
            self.messageContent = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SenderAvatarMediaId"] as? String {
            self.senderAvatarMediaId = value
        }
        if let value = dict["SenderId"] as? String {
            self.senderId = value
        }
        if let value = dict["SenderName"] as? String {
            self.senderName = value
        }
    }
}

public class ProcessCustomIMCallbackResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var jobId: String?

    public var message: String?

    public var params: [String]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ProcessCustomIMCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ProcessCustomIMCallbackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ProcessCustomIMCallbackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReplaceMigrationAvailableNumbersRequest : Tea.TeaModel {
    public var instanceId: String?

    public var operatorName: String?

    public var operatorUid: Int64?

    public var v1Numbers: String?

    public var v2Numbers: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.operatorName != nil {
            map["OperatorName"] = self.operatorName!
        }
        if self.operatorUid != nil {
            map["OperatorUid"] = self.operatorUid!
        }
        if self.v1Numbers != nil {
            map["V1Numbers"] = self.v1Numbers!
        }
        if self.v2Numbers != nil {
            map["V2Numbers"] = self.v2Numbers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OperatorName"] as? String {
            self.operatorName = value
        }
        if let value = dict["OperatorUid"] as? Int64 {
            self.operatorUid = value
        }
        if let value = dict["V1Numbers"] as? String {
            self.v1Numbers = value
        }
        if let value = dict["V2Numbers"] as? String {
            self.v2Numbers = value
        }
    }
}

public class ReplaceMigrationAvailableNumbersResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

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
    }
}

public class ReplaceMigrationAvailableNumbersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReplaceMigrationAvailableNumbersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ReplaceMigrationAvailableNumbersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResumeCampaignRequest : Tea.TeaModel {
    public var campaignId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.campaignId != nil {
            map["CampaignId"] = self.campaignId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CampaignId"] as? String {
            self.campaignId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ResumeCampaignResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ResumeCampaignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeCampaignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResumeCampaignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveRTCStatsV2Request : Tea.TeaModel {
    public var callId: String?

    public var generalInfo: String?

    public var googAddress: String?

    public var instanceId: String?

    public var receiverReport: String?

    public var senderReport: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.generalInfo != nil {
            map["GeneralInfo"] = self.generalInfo!
        }
        if self.googAddress != nil {
            map["GoogAddress"] = self.googAddress!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.receiverReport != nil {
            map["ReceiverReport"] = self.receiverReport!
        }
        if self.senderReport != nil {
            map["SenderReport"] = self.senderReport!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["GeneralInfo"] as? String {
            self.generalInfo = value
        }
        if let value = dict["GoogAddress"] as? String {
            self.googAddress = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ReceiverReport"] as? String {
            self.receiverReport = value
        }
        if let value = dict["SenderReport"] as? String {
            self.senderReport = value
        }
    }
}

public class SaveRTCStatsV2ResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int64?

    public var message: String?

    public var requestId: String?

    public var rowCount: Int64?

    public var success: Bool?

    public var timeStamp: Int64?

    public override init() {
        super.init()
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
        if self.rowCount != nil {
            map["RowCount"] = self.rowCount!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timeStamp != nil {
            map["TimeStamp"] = self.timeStamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RowCount"] as? Int64 {
            self.rowCount = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TimeStamp"] as? Int64 {
            self.timeStamp = value
        }
    }
}

public class SaveRTCStatsV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveRTCStatsV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SaveRTCStatsV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveTerminalLogRequest : Tea.TeaModel {
    public var appName: String?

    public var callId: String?

    public var content: String?

    public var dataType: Int32?

    public var instanceId: String?

    public var jobId: String?

    public var methodName: String?

    public var status: String?

    public var uniqueRequestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.methodName != nil {
            map["MethodName"] = self.methodName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.uniqueRequestId != nil {
            map["UniqueRequestId"] = self.uniqueRequestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["DataType"] as? Int32 {
            self.dataType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["MethodName"] as? String {
            self.methodName = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UniqueRequestId"] as? String {
            self.uniqueRequestId = value
        }
    }
}

public class SaveTerminalLogResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int64?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var timeStamp: Int64?

    public override init() {
        super.init()
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
        if self.timeStamp != nil {
            map["TimeStamp"] = self.timeStamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TimeStamp"] as? Int64 {
            self.timeStamp = value
        }
    }
}

public class SaveTerminalLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveTerminalLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SaveTerminalLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveWebRtcInfoRequest : Tea.TeaModel {
    public var callId: String?

    public var content: String?

    public var contentType: String?

    public var instanceId: String?

    public var jobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["ContentType"] as? String {
            self.contentType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class SaveWebRtcInfoResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int64?

    public var message: String?

    public var requestId: String?

    public var rowCount: Int64?

    public var success: Bool?

    public var timeStamp: Int64?

    public override init() {
        super.init()
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
        if self.rowCount != nil {
            map["RowCount"] = self.rowCount!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timeStamp != nil {
            map["TimeStamp"] = self.timeStamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RowCount"] as? Int64 {
            self.rowCount = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TimeStamp"] as? Int64 {
            self.timeStamp = value
        }
    }
}

public class SaveWebRtcInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveWebRtcInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SaveWebRtcInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendNotificationRequest : Tea.TeaModel {
    public var instanceId: String?

    public var messageBody: String?

    public var notificationTarget: String?

    public var notificationType: String?

    public var shardingKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.messageBody != nil {
            map["MessageBody"] = self.messageBody!
        }
        if self.notificationTarget != nil {
            map["NotificationTarget"] = self.notificationTarget!
        }
        if self.notificationType != nil {
            map["NotificationType"] = self.notificationType!
        }
        if self.shardingKey != nil {
            map["ShardingKey"] = self.shardingKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MessageBody"] as? String {
            self.messageBody = value
        }
        if let value = dict["NotificationTarget"] as? String {
            self.notificationTarget = value
        }
        if let value = dict["NotificationType"] as? String {
            self.notificationType = value
        }
        if let value = dict["ShardingKey"] as? String {
            self.shardingKey = value
        }
    }
}

public class SendNotificationResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SendNotificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendNotificationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SendNotificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitCampaignRequest : Tea.TeaModel {
    public var campaignId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.campaignId != nil {
            map["CampaignId"] = self.campaignId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CampaignId"] as? String {
            self.campaignId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class SubmitCampaignResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SubmitCampaignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitCampaignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitCampaignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnregisterDeviceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class UnregisterDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

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
    }
}

public class UnregisterDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnregisterDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnregisterDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
