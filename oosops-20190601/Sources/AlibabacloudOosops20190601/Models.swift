import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AuditPublicTemplateRegistrationRequest : Tea.TeaModel {
    public var auditAction: String?

    public var comment: String?

    public var regionId: String?

    public var registrationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditAction != nil {
            map["AuditAction"] = self.auditAction!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.registrationId != nil {
            map["RegistrationId"] = self.registrationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditAction") && dict["AuditAction"] != nil {
            self.auditAction = dict["AuditAction"] as! String
        }
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RegistrationId") && dict["RegistrationId"] != nil {
            self.registrationId = dict["RegistrationId"] as! String
        }
    }
}

public class AuditPublicTemplateRegistrationResponseBody : Tea.TeaModel {
    public var comment: String?

    public var detail: String?

    public var registrationId: String?

    public var requestId: String?

    public var status: String?

    public var templateId: String?

    public var templateName: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.registrationId != nil {
            map["RegistrationId"] = self.registrationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! String
        }
        if dict.keys.contains("RegistrationId") && dict["RegistrationId"] != nil {
            self.registrationId = dict["RegistrationId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class AuditPublicTemplateRegistrationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuditPublicTemplateRegistrationResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AuditPublicTemplateRegistrationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateActionRequest : Tea.TeaModel {
    public var actionName: String?

    public var actionType: String?

    public var content: String?

    public var popularity: Int32?

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
        if self.actionName != nil {
            map["ActionName"] = self.actionName!
        }
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.popularity != nil {
            map["Popularity"] = self.popularity!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionName") && dict["ActionName"] != nil {
            self.actionName = dict["ActionName"] as! String
        }
        if dict.keys.contains("ActionType") && dict["ActionType"] != nil {
            self.actionType = dict["ActionType"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Popularity") && dict["Popularity"] != nil {
            self.popularity = dict["Popularity"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateActionResponseBody : Tea.TeaModel {
    public var actionName: String?

    public var actionType: String?

    public var createdDate: String?

    public var description_: String?

    public var popularity: Int32?

    public var properties: String?

    public var requestId: String?

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
        if self.actionName != nil {
            map["ActionName"] = self.actionName!
        }
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.createdDate != nil {
            map["CreatedDate"] = self.createdDate!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.popularity != nil {
            map["Popularity"] = self.popularity!
        }
        if self.properties != nil {
            map["Properties"] = self.properties!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionName") && dict["ActionName"] != nil {
            self.actionName = dict["ActionName"] as! String
        }
        if dict.keys.contains("ActionType") && dict["ActionType"] != nil {
            self.actionType = dict["ActionType"] as! String
        }
        if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
            self.createdDate = dict["CreatedDate"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Popularity") && dict["Popularity"] != nil {
            self.popularity = dict["Popularity"] as! Int32
        }
        if dict.keys.contains("Properties") && dict["Properties"] != nil {
            self.properties = dict["Properties"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class CreateActionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateActionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateActionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePublicParameterRequest : Tea.TeaModel {
    public var clientToken: String?

    public var constraints: String?

    public var description_: String?

    public var name: String?

    public var parameterType: String?

    public var regionId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.constraints != nil {
            map["Constraints"] = self.constraints!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parameterType != nil {
            map["ParameterType"] = self.parameterType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Constraints") && dict["Constraints"] != nil {
            self.constraints = dict["Constraints"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
            self.parameterType = dict["ParameterType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class CreatePublicParameterResponseBody : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var regionId: String?

        public var shareType: String?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Constraints") && dict["Constraints"] != nil {
                self.constraints = dict["Constraints"] as! String
            }
            if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParameterVersion") && dict["ParameterVersion"] != nil {
                self.parameterVersion = dict["ParameterVersion"] as! Int32
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedBy") && dict["UpdatedBy"] != nil {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") && dict["UpdatedDate"] != nil {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var parameter: CreatePublicParameterResponseBody.Parameter?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameter != nil {
            map["Parameter"] = self.parameter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parameter") && dict["Parameter"] != nil {
            var model = CreatePublicParameterResponseBody.Parameter()
            model.fromMap(dict["Parameter"] as! [String: Any])
            self.parameter = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePublicParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePublicParameterResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreatePublicParameterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePublicPatchBaselineRequest : Tea.TeaModel {
    public var approvalRules: String?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var operationSystem: String?

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
        if self.approvalRules != nil {
            map["ApprovalRules"] = self.approvalRules!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operationSystem != nil {
            map["OperationSystem"] = self.operationSystem!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalRules") && dict["ApprovalRules"] != nil {
            self.approvalRules = dict["ApprovalRules"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OperationSystem") && dict["OperationSystem"] != nil {
            self.operationSystem = dict["OperationSystem"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreatePublicPatchBaselineResponseBody : Tea.TeaModel {
    public class PatchBaseline : Tea.TeaModel {
        public var approvalRules: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var operationSystem: String?

        public var shareType: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvalRules != nil {
                map["ApprovalRules"] = self.approvalRules!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationSystem != nil {
                map["OperationSystem"] = self.operationSystem!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApprovalRules") && dict["ApprovalRules"] != nil {
                self.approvalRules = dict["ApprovalRules"] as! String
            }
            if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperationSystem") && dict["OperationSystem"] != nil {
                self.operationSystem = dict["OperationSystem"] as! String
            }
            if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("UpdatedBy") && dict["UpdatedBy"] != nil {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") && dict["UpdatedDate"] != nil {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var patchBaseline: CreatePublicPatchBaselineResponseBody.PatchBaseline?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.patchBaseline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.patchBaseline != nil {
            map["PatchBaseline"] = self.patchBaseline?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PatchBaseline") && dict["PatchBaseline"] != nil {
            var model = CreatePublicPatchBaselineResponseBody.PatchBaseline()
            model.fromMap(dict["PatchBaseline"] as! [String: Any])
            self.patchBaseline = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePublicPatchBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePublicPatchBaselineResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreatePublicPatchBaselineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePublicTemplateRequest : Tea.TeaModel {
    public var category: String?

    public var content: String?

    public var popularity: Int32?

    public var publisher: String?

    public var regionId: String?

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
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.popularity != nil {
            map["Popularity"] = self.popularity!
        }
        if self.publisher != nil {
            map["Publisher"] = self.publisher!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Popularity") && dict["Popularity"] != nil {
            self.popularity = dict["Popularity"] as! Int32
        }
        if dict.keys.contains("Publisher") && dict["Publisher"] != nil {
            self.publisher = dict["Publisher"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class CreatePublicTemplateResponseBody : Tea.TeaModel {
    public class Template : Tea.TeaModel {
        public var category: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hash: String?

        public var popularity: Int32?

        public var shareType: String?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.popularity != nil {
                map["Popularity"] = self.popularity!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
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
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Hash") && dict["Hash"] != nil {
                self.hash = dict["Hash"] as! String
            }
            if dict.keys.contains("Popularity") && dict["Popularity"] != nil {
                self.popularity = dict["Popularity"] as! Int32
            }
            if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("TemplateFormat") && dict["TemplateFormat"] != nil {
                self.templateFormat = dict["TemplateFormat"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdatedBy") && dict["UpdatedBy"] != nil {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") && dict["UpdatedDate"] != nil {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var requestId: String?

    public var template: CreatePublicTemplateResponseBody.Template?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Template") && dict["Template"] != nil {
            var model = CreatePublicTemplateResponseBody.Template()
            model.fromMap(dict["Template"] as! [String: Any])
            self.template = model
        }
    }
}

public class CreatePublicTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePublicTemplateResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreatePublicTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFailureMsgRequest : Tea.TeaModel {
    public var operation: String?

    public var requestFingerprint: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operation != nil {
            map["Operation"] = self.operation!
        }
        if self.requestFingerprint != nil {
            map["RequestFingerprint"] = self.requestFingerprint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Operation") && dict["Operation"] != nil {
            self.operation = dict["Operation"] as! String
        }
        if dict.keys.contains("RequestFingerprint") && dict["RequestFingerprint"] != nil {
            self.requestFingerprint = dict["RequestFingerprint"] as! String
        }
    }
}

public class DeleteFailureMsgResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteFailureMsgResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFailureMsgResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteFailureMsgResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePublicParameterRequest : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeletePublicParameterResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeletePublicParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePublicParameterResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeletePublicParameterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePublicPatchBaselineRequest : Tea.TeaModel {
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
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class DeletePublicPatchBaselineResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeletePublicPatchBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePublicPatchBaselineResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeletePublicPatchBaselineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePublicTemplateRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class DeletePublicTemplateResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeletePublicTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePublicTemplateResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeletePublicTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DoCheckResourceRequest : Tea.TeaModel {
    public var bid: String?

    public var country: String?

    public var gmtWakeup: String?

    public var hid: Int32?

    public var interrupt: Bool?

    public var invoker: String?

    public var level: Int32?

    public var message: String?

    public var pk: String?

    public var prompt: String?

    public var success: Bool?

    public var taskExtraData: String?

    public var taskIdentifier: String?

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
        if self.bid != nil {
            map["bid"] = self.bid!
        }
        if self.country != nil {
            map["country"] = self.country!
        }
        if self.gmtWakeup != nil {
            map["gmtWakeup"] = self.gmtWakeup!
        }
        if self.hid != nil {
            map["hid"] = self.hid!
        }
        if self.interrupt != nil {
            map["interrupt"] = self.interrupt!
        }
        if self.invoker != nil {
            map["invoker"] = self.invoker!
        }
        if self.level != nil {
            map["level"] = self.level!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.pk != nil {
            map["pk"] = self.pk!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.taskExtraData != nil {
            map["taskExtraData"] = self.taskExtraData!
        }
        if self.taskIdentifier != nil {
            map["taskIdentifier"] = self.taskIdentifier!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bid") && dict["bid"] != nil {
            self.bid = dict["bid"] as! String
        }
        if dict.keys.contains("country") && dict["country"] != nil {
            self.country = dict["country"] as! String
        }
        if dict.keys.contains("gmtWakeup") && dict["gmtWakeup"] != nil {
            self.gmtWakeup = dict["gmtWakeup"] as! String
        }
        if dict.keys.contains("hid") && dict["hid"] != nil {
            self.hid = dict["hid"] as! Int32
        }
        if dict.keys.contains("interrupt") && dict["interrupt"] != nil {
            self.interrupt = dict["interrupt"] as! Bool
        }
        if dict.keys.contains("invoker") && dict["invoker"] != nil {
            self.invoker = dict["invoker"] as! String
        }
        if dict.keys.contains("level") && dict["level"] != nil {
            self.level = dict["level"] as! Int32
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("pk") && dict["pk"] != nil {
            self.pk = dict["pk"] as! String
        }
        if dict.keys.contains("prompt") && dict["prompt"] != nil {
            self.prompt = dict["prompt"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("taskExtraData") && dict["taskExtraData"] != nil {
            self.taskExtraData = dict["taskExtraData"] as! String
        }
        if dict.keys.contains("taskIdentifier") && dict["taskIdentifier"] != nil {
            self.taskIdentifier = dict["taskIdentifier"] as! String
        }
        if dict.keys.contains("url") && dict["url"] != nil {
            self.url = dict["url"] as! String
        }
    }
}

public class DoCheckResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var bid: String?

    public var country: String?

    public var gmtWakeup: String?

    public var hid: Int32?

    public var interrupt: Bool?

    public var invoker: String?

    public var level: Int32?

    public var message: String?

    public var pk: String?

    public var prompt: String?

    public var success: Bool?

    public var taskExtraData: String?

    public var taskIdentifier: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.bid != nil {
            map["bid"] = self.bid!
        }
        if self.country != nil {
            map["country"] = self.country!
        }
        if self.gmtWakeup != nil {
            map["gmtWakeup"] = self.gmtWakeup!
        }
        if self.hid != nil {
            map["hid"] = self.hid!
        }
        if self.interrupt != nil {
            map["interrupt"] = self.interrupt!
        }
        if self.invoker != nil {
            map["invoker"] = self.invoker!
        }
        if self.level != nil {
            map["level"] = self.level!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.pk != nil {
            map["pk"] = self.pk!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.taskExtraData != nil {
            map["taskExtraData"] = self.taskExtraData!
        }
        if self.taskIdentifier != nil {
            map["taskIdentifier"] = self.taskIdentifier!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("bid") && dict["bid"] != nil {
            self.bid = dict["bid"] as! String
        }
        if dict.keys.contains("country") && dict["country"] != nil {
            self.country = dict["country"] as! String
        }
        if dict.keys.contains("gmtWakeup") && dict["gmtWakeup"] != nil {
            self.gmtWakeup = dict["gmtWakeup"] as! String
        }
        if dict.keys.contains("hid") && dict["hid"] != nil {
            self.hid = dict["hid"] as! Int32
        }
        if dict.keys.contains("interrupt") && dict["interrupt"] != nil {
            self.interrupt = dict["interrupt"] as! Bool
        }
        if dict.keys.contains("invoker") && dict["invoker"] != nil {
            self.invoker = dict["invoker"] as! String
        }
        if dict.keys.contains("level") && dict["level"] != nil {
            self.level = dict["level"] as! Int32
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("pk") && dict["pk"] != nil {
            self.pk = dict["pk"] as! String
        }
        if dict.keys.contains("prompt") && dict["prompt"] != nil {
            self.prompt = dict["prompt"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("taskExtraData") && dict["taskExtraData"] != nil {
            self.taskExtraData = dict["taskExtraData"] as! String
        }
        if dict.keys.contains("taskIdentifier") && dict["taskIdentifier"] != nil {
            self.taskIdentifier = dict["taskIdentifier"] as! String
        }
        if dict.keys.contains("url") && dict["url"] != nil {
            self.url = dict["url"] as! String
        }
    }
}

public class DoCheckResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DoCheckResourceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DoCheckResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetActionRequest : Tea.TeaModel {
    public var actionName: String?

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
        if self.actionName != nil {
            map["ActionName"] = self.actionName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionName") && dict["ActionName"] != nil {
            self.actionName = dict["ActionName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetActionResponseBody : Tea.TeaModel {
    public var actionName: String?

    public var actionType: String?

    public var content: [UInt8]?

    public var createTime: String?

    public var modifiedTime: String?

    public var popularity: String?

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
        if self.actionName != nil {
            map["ActionName"] = self.actionName!
        }
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.popularity != nil {
            map["Popularity"] = self.popularity!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionName") && dict["ActionName"] != nil {
            self.actionName = dict["ActionName"] as! String
        }
        if dict.keys.contains("ActionType") && dict["ActionType"] != nil {
            self.actionType = dict["ActionType"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! [UInt8]
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("Popularity") && dict["Popularity"] != nil {
            self.popularity = dict["Popularity"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetActionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetActionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetActionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFlowControlRequest : Tea.TeaModel {
    public var api: String?

    public var service: String?

    public var type: Int32?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.api != nil {
            map["Api"] = self.api!
        }
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Api") && dict["Api"] != nil {
            self.api = dict["Api"] as! String
        }
        if dict.keys.contains("Service") && dict["Service"] != nil {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! Int32
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! String
        }
    }
}

public class GetFlowControlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var value: Int32?

    public override init() {
        super.init()
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
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! Int32
        }
    }
}

public class GetFlowControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFlowControlResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetFlowControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPublicParameterRequest : Tea.TeaModel {
    public var name: String?

    public var parameterVersion: Int32?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parameterVersion != nil {
            map["ParameterVersion"] = self.parameterVersion!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParameterVersion") && dict["ParameterVersion"] != nil {
            self.parameterVersion = dict["ParameterVersion"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetPublicParameterResponseBody : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var regionId: String?

        public var shareType: String?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

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
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Constraints") && dict["Constraints"] != nil {
                self.constraints = dict["Constraints"] as! String
            }
            if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParameterVersion") && dict["ParameterVersion"] != nil {
                self.parameterVersion = dict["ParameterVersion"] as! Int32
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedBy") && dict["UpdatedBy"] != nil {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") && dict["UpdatedDate"] != nil {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var parameter: GetPublicParameterResponseBody.Parameter?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameter != nil {
            map["Parameter"] = self.parameter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parameter") && dict["Parameter"] != nil {
            var model = GetPublicParameterResponseBody.Parameter()
            model.fromMap(dict["Parameter"] as! [String: Any])
            self.parameter = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPublicParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPublicParameterResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetPublicParameterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPublicPatchBaselineRequest : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetPublicPatchBaselineResponseBody : Tea.TeaModel {
    public class PatchBaseline : Tea.TeaModel {
        public var approvalRules: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var operationSystem: String?

        public var shareType: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvalRules != nil {
                map["ApprovalRules"] = self.approvalRules!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationSystem != nil {
                map["OperationSystem"] = self.operationSystem!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApprovalRules") && dict["ApprovalRules"] != nil {
                self.approvalRules = dict["ApprovalRules"] as! String
            }
            if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperationSystem") && dict["OperationSystem"] != nil {
                self.operationSystem = dict["OperationSystem"] as! String
            }
            if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("UpdatedBy") && dict["UpdatedBy"] != nil {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") && dict["UpdatedDate"] != nil {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var patchBaseline: GetPublicPatchBaselineResponseBody.PatchBaseline?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.patchBaseline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.patchBaseline != nil {
            map["PatchBaseline"] = self.patchBaseline?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PatchBaseline") && dict["PatchBaseline"] != nil {
            var model = GetPublicPatchBaselineResponseBody.PatchBaseline()
            model.fromMap(dict["PatchBaseline"] as! [String: Any])
            self.patchBaseline = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPublicPatchBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPublicPatchBaselineResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetPublicPatchBaselineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPublicTemplateRequest : Tea.TeaModel {
    public var regionId: String?

    public var templateName: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class GetPublicTemplateResponseBody : Tea.TeaModel {
    public class Template : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hash: String?

        public var popularity: Int32?

        public var shareType: String?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.popularity != nil {
                map["Popularity"] = self.popularity!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
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
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Hash") && dict["Hash"] != nil {
                self.hash = dict["Hash"] as! String
            }
            if dict.keys.contains("Popularity") && dict["Popularity"] != nil {
                self.popularity = dict["Popularity"] as! Int32
            }
            if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("TemplateFormat") && dict["TemplateFormat"] != nil {
                self.templateFormat = dict["TemplateFormat"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdatedBy") && dict["UpdatedBy"] != nil {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") && dict["UpdatedDate"] != nil {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var content: String?

    public var requestId: String?

    public var template: GetPublicTemplateResponseBody.Template?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Template") && dict["Template"] != nil {
            var model = GetPublicTemplateResponseBody.Template()
            model.fromMap(dict["Template"] as! [String: Any])
            self.template = model
        }
    }
}

public class GetPublicTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPublicTemplateResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetPublicTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetQuotaRequest : Tea.TeaModel {
    public var quotaName: String?

    public var regionId: String?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.quotaName != nil {
            map["QuotaName"] = self.quotaName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QuotaName") && dict["QuotaName"] != nil {
            self.quotaName = dict["QuotaName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! String
        }
    }
}

public class GetQuotaResponseBody : Tea.TeaModel {
    public class Quota : Tea.TeaModel {
        public var concurrentExecution: Int32?

        public var dailyTasks: Int32?

        public var totalTemplate: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.concurrentExecution != nil {
                map["ConcurrentExecution"] = self.concurrentExecution!
            }
            if self.dailyTasks != nil {
                map["DailyTasks"] = self.dailyTasks!
            }
            if self.totalTemplate != nil {
                map["TotalTemplate"] = self.totalTemplate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConcurrentExecution") && dict["ConcurrentExecution"] != nil {
                self.concurrentExecution = dict["ConcurrentExecution"] as! Int32
            }
            if dict.keys.contains("DailyTasks") && dict["DailyTasks"] != nil {
                self.dailyTasks = dict["DailyTasks"] as! Int32
            }
            if dict.keys.contains("TotalTemplate") && dict["TotalTemplate"] != nil {
                self.totalTemplate = dict["TotalTemplate"] as! Int32
            }
        }
    }
    public var quota: GetQuotaResponseBody.Quota?

    public var requestId: String?

    public var uid: String?

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
        if self.quota != nil {
            map["Quota"] = self.quota?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Quota") && dict["Quota"] != nil {
            var model = GetQuotaResponseBody.Quota()
            model.fromMap(dict["Quota"] as! [String: Any])
            self.quota = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! String
        }
    }
}

public class GetQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQuotaResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserExecutionTemplateRequest : Tea.TeaModel {
    public var aliUid: String?

    public var executionId: String?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("ExecutionId") && dict["ExecutionId"] != nil {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetUserExecutionTemplateResponseBody : Tea.TeaModel {
    public class Template : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hash: String?

        public var shareType: String?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
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
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Hash") && dict["Hash"] != nil {
                self.hash = dict["Hash"] as! String
            }
            if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("TemplateFormat") && dict["TemplateFormat"] != nil {
                self.templateFormat = dict["TemplateFormat"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdatedBy") && dict["UpdatedBy"] != nil {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") && dict["UpdatedDate"] != nil {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var content: String?

    public var requestId: String?

    public var template: GetUserExecutionTemplateResponseBody.Template?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Template") && dict["Template"] != nil {
            var model = GetUserExecutionTemplateResponseBody.Template()
            model.fromMap(dict["Template"] as! [String: Any])
            self.template = model
        }
    }
}

public class GetUserExecutionTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserExecutionTemplateResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetUserExecutionTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserTemplateRequest : Tea.TeaModel {
    public var aliUid: String?

    public var regionId: String?

    public var templateName: String?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class GetUserTemplateResponseBody : Tea.TeaModel {
    public class Template : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hash: String?

        public var shareType: String?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
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
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Hash") && dict["Hash"] != nil {
                self.hash = dict["Hash"] as! String
            }
            if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("TemplateFormat") && dict["TemplateFormat"] != nil {
                self.templateFormat = dict["TemplateFormat"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdatedBy") && dict["UpdatedBy"] != nil {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") && dict["UpdatedDate"] != nil {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var content: String?

    public var requestId: String?

    public var template: GetUserTemplateResponseBody.Template?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Template") && dict["Template"] != nil {
            var model = GetUserTemplateResponseBody.Template()
            model.fromMap(dict["Template"] as! [String: Any])
            self.template = model
        }
    }
}

public class GetUserTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserTemplateResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetUserTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListActionsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var OOSActionName: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.OOSActionName != nil {
            map["OOSActionName"] = self.OOSActionName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OOSActionName") && dict["OOSActionName"] != nil {
            self.OOSActionName = dict["OOSActionName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListActionsResponseBody : Tea.TeaModel {
    public class Actions : Tea.TeaModel {
        public var actionType: String?

        public var createdDate: String?

        public var description_: String?

        public var OOSActionName: String?

        public var popularity: Int32?

        public var properties: String?

        public var templateVersion: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.OOSActionName != nil {
                map["OOSActionName"] = self.OOSActionName!
            }
            if self.popularity != nil {
                map["Popularity"] = self.popularity!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActionType") && dict["ActionType"] != nil {
                self.actionType = dict["ActionType"] as! String
            }
            if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("OOSActionName") && dict["OOSActionName"] != nil {
                self.OOSActionName = dict["OOSActionName"] as! String
            }
            if dict.keys.contains("Popularity") && dict["Popularity"] != nil {
                self.popularity = dict["Popularity"] as! Int32
            }
            if dict.keys.contains("Properties") && dict["Properties"] != nil {
                self.properties = dict["Properties"] as! String
            }
            if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdateDate") && dict["UpdateDate"] != nil {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var actions: [ListActionsResponseBody.Actions]?

    public var maxResults: Int32?

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
        if self.actions != nil {
            var tmp : [Any] = []
            for k in self.actions! {
                tmp.append(k.toMap())
            }
            map["Actions"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
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
        if dict.keys.contains("Actions") && dict["Actions"] != nil {
            var tmp : [ListActionsResponseBody.Actions] = []
            for v in dict["Actions"] as! [Any] {
                var model = ListActionsResponseBody.Actions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.actions = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListActionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListActionsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListActionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDefaultQuotaResponseBody : Tea.TeaModel {
    public class Quotas : Tea.TeaModel {
        public var concurrentExecution: Int32?

        public var dailyTasks: Int32?

        public var totalTemplate: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.concurrentExecution != nil {
                map["ConcurrentExecution"] = self.concurrentExecution!
            }
            if self.dailyTasks != nil {
                map["DailyTasks"] = self.dailyTasks!
            }
            if self.totalTemplate != nil {
                map["TotalTemplate"] = self.totalTemplate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConcurrentExecution") && dict["ConcurrentExecution"] != nil {
                self.concurrentExecution = dict["ConcurrentExecution"] as! Int32
            }
            if dict.keys.contains("DailyTasks") && dict["DailyTasks"] != nil {
                self.dailyTasks = dict["DailyTasks"] as! Int32
            }
            if dict.keys.contains("TotalTemplate") && dict["TotalTemplate"] != nil {
                self.totalTemplate = dict["TotalTemplate"] as! Int32
            }
        }
    }
    public var quotas: [ListDefaultQuotaResponseBody.Quotas]?

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
        if self.quotas != nil {
            var tmp : [Any] = []
            for k in self.quotas! {
                tmp.append(k.toMap())
            }
            map["Quotas"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Quotas") && dict["Quotas"] != nil {
            var tmp : [ListDefaultQuotaResponseBody.Quotas] = []
            for v in dict["Quotas"] as! [Any] {
                var model = ListDefaultQuotaResponseBody.Quotas()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.quotas = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDefaultQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDefaultQuotaResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListDefaultQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFailureMsgsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestFingerprint: String?

    public override init() {
        super.init()
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
        if self.requestFingerprint != nil {
            map["RequestFingerprint"] = self.requestFingerprint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestFingerprint") && dict["RequestFingerprint"] != nil {
            self.requestFingerprint = dict["RequestFingerprint"] as! String
        }
    }
}

public class ListFailureMsgsResponseBody : Tea.TeaModel {
    public class FailureMsgs : Tea.TeaModel {
        public var aliUid: String?

        public var executionId: String?

        public var messageBody: String?

        public var reason: String?

        public var taskExecutionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.executionId != nil {
                map["ExecutionId"] = self.executionId!
            }
            if self.messageBody != nil {
                map["MessageBody"] = self.messageBody!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.taskExecutionId != nil {
                map["TaskExecutionId"] = self.taskExecutionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
                self.aliUid = dict["AliUid"] as! String
            }
            if dict.keys.contains("ExecutionId") && dict["ExecutionId"] != nil {
                self.executionId = dict["ExecutionId"] as! String
            }
            if dict.keys.contains("MessageBody") && dict["MessageBody"] != nil {
                self.messageBody = dict["MessageBody"] as! String
            }
            if dict.keys.contains("Reason") && dict["Reason"] != nil {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("TaskExecutionId") && dict["TaskExecutionId"] != nil {
                self.taskExecutionId = dict["TaskExecutionId"] as! String
            }
        }
    }
    public var failureMsgs: [ListFailureMsgsResponseBody.FailureMsgs]?

    public var maxResults: Int32?

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
        if self.failureMsgs != nil {
            var tmp : [Any] = []
            for k in self.failureMsgs! {
                tmp.append(k.toMap())
            }
            map["FailureMsgs"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
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
        if dict.keys.contains("FailureMsgs") && dict["FailureMsgs"] != nil {
            var tmp : [ListFailureMsgsResponseBody.FailureMsgs] = []
            for v in dict["FailureMsgs"] as! [Any] {
                var model = ListFailureMsgsResponseBody.FailureMsgs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.failureMsgs = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFailureMsgsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFailureMsgsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListFailureMsgsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOOSLogsRequest : Tea.TeaModel {
    public var endTime: String?

    public var executionId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var requestFingerprint: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestFingerprint != nil {
            map["RequestFingerprint"] = self.requestFingerprint!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ExecutionId") && dict["ExecutionId"] != nil {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestFingerprint") && dict["RequestFingerprint"] != nil {
            self.requestFingerprint = dict["RequestFingerprint"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class ListOOSLogsResponseBody : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var OOSLogs: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.OOSLogs != nil {
            map["OOSLogs"] = self.OOSLogs!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OOSLogs") && dict["OOSLogs"] != nil {
            self.OOSLogs = dict["OOSLogs"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListOOSLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOOSLogsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListOOSLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPublicParametersRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var parameterType: String?

    public var path: String?

    public var recursive: Bool?

    public var regionId: String?

    public var sortField: String?

    public var sortOrder: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parameterType != nil {
            map["ParameterType"] = self.parameterType!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.recursive != nil {
            map["Recursive"] = self.recursive!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
            self.parameterType = dict["ParameterType"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("Recursive") && dict["Recursive"] != nil {
            self.recursive = dict["Recursive"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SortField") && dict["SortField"] != nil {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
    }
}

public class ListPublicParametersResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var parameterVersion: String?

        public var regionId: String?

        public var shareType: String?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParameterVersion") && dict["ParameterVersion"] != nil {
                self.parameterVersion = dict["ParameterVersion"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedBy") && dict["UpdatedBy"] != nil {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") && dict["UpdatedDate"] != nil {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var parameters: [ListPublicParametersResponseBody.Parameters]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
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
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            var tmp : [ListPublicParametersResponseBody.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = ListPublicParametersResponseBody.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListPublicParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPublicParametersResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListPublicParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPublicPatchBaselinesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var operationSystem: String?

    public var regionId: String?

    public var shareType: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.operationSystem != nil {
            map["OperationSystem"] = self.operationSystem!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OperationSystem") && dict["OperationSystem"] != nil {
            self.operationSystem = dict["OperationSystem"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
            self.shareType = dict["ShareType"] as! String
        }
    }
}

public class ListPublicPatchBaselinesResponseBody : Tea.TeaModel {
    public class PatchBaselines : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var isDefault: Bool?

        public var name: String?

        public var operationSystem: String?

        public var shareType: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationSystem != nil {
                map["OperationSystem"] = self.operationSystem!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperationSystem") && dict["OperationSystem"] != nil {
                self.operationSystem = dict["OperationSystem"] as! String
            }
            if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("UpdatedBy") && dict["UpdatedBy"] != nil {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") && dict["UpdatedDate"] != nil {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var patchBaselines: [ListPublicPatchBaselinesResponseBody.PatchBaselines]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.patchBaselines != nil {
            var tmp : [Any] = []
            for k in self.patchBaselines! {
                tmp.append(k.toMap())
            }
            map["PatchBaselines"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PatchBaselines") && dict["PatchBaselines"] != nil {
            var tmp : [ListPublicPatchBaselinesResponseBody.PatchBaselines] = []
            for v in dict["PatchBaselines"] as! [Any] {
                var model = ListPublicPatchBaselinesResponseBody.PatchBaselines()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.patchBaselines = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPublicPatchBaselinesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPublicPatchBaselinesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListPublicPatchBaselinesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPublicTemplateRegistrationsRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var nextToken: String?

    public var regionId: String?

    public var registrationId: String?

    public var status: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.registrationId != nil {
            map["RegistrationId"] = self.registrationId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RegistrationId") && dict["RegistrationId"] != nil {
            self.registrationId = dict["RegistrationId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class ListPublicTemplateRegistrationsResponseBody : Tea.TeaModel {
    public class Registrations : Tea.TeaModel {
        public var comment: String?

        public var detail: String?

        public var registrationId: String?

        public var status: String?

        public var templateId: String?

        public var templateName: String?

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
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.detail != nil {
                map["Detail"] = self.detail!
            }
            if self.registrationId != nil {
                map["RegistrationId"] = self.registrationId!
            }
            if self.status != nil {
                map["Status"] = self.status!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("Detail") && dict["Detail"] != nil {
                self.detail = dict["Detail"] as! String
            }
            if dict.keys.contains("RegistrationId") && dict["RegistrationId"] != nil {
                self.registrationId = dict["RegistrationId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var registrations: [ListPublicTemplateRegistrationsResponseBody.Registrations]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Registrations") && dict["Registrations"] != nil {
            var tmp : [ListPublicTemplateRegistrationsResponseBody.Registrations] = []
            for v in dict["Registrations"] as! [Any] {
                var model = ListPublicTemplateRegistrationsResponseBody.Registrations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.registrations = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPublicTemplateRegistrationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPublicTemplateRegistrationsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListPublicTemplateRegistrationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPublicTemplatesRequest : Tea.TeaModel {
    public var createdBy: String?

    public var createdDateAfter: String?

    public var createdDateBefore: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var popularity: Int32?

    public var regionId: String?

    public var shareType: String?

    public var sortField: String?

    public var sortOrder: String?

    public var templateFormat: String?

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
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.createdDateAfter != nil {
            map["CreatedDateAfter"] = self.createdDateAfter!
        }
        if self.createdDateBefore != nil {
            map["CreatedDateBefore"] = self.createdDateBefore!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.popularity != nil {
            map["Popularity"] = self.popularity!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.templateFormat != nil {
            map["TemplateFormat"] = self.templateFormat!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
            self.createdBy = dict["CreatedBy"] as! String
        }
        if dict.keys.contains("CreatedDateAfter") && dict["CreatedDateAfter"] != nil {
            self.createdDateAfter = dict["CreatedDateAfter"] as! String
        }
        if dict.keys.contains("CreatedDateBefore") && dict["CreatedDateBefore"] != nil {
            self.createdDateBefore = dict["CreatedDateBefore"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Popularity") && dict["Popularity"] != nil {
            self.popularity = dict["Popularity"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("SortField") && dict["SortField"] != nil {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("TemplateFormat") && dict["TemplateFormat"] != nil {
            self.templateFormat = dict["TemplateFormat"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class ListPublicTemplatesResponseBody : Tea.TeaModel {
    public class Templates : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hash: String?

        public var popularity: Int32?

        public var shareType: String?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var totalExecutionCount: Int32?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.popularity != nil {
                map["Popularity"] = self.popularity!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
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
            if self.totalExecutionCount != nil {
                map["TotalExecutionCount"] = self.totalExecutionCount!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Hash") && dict["Hash"] != nil {
                self.hash = dict["Hash"] as! String
            }
            if dict.keys.contains("Popularity") && dict["Popularity"] != nil {
                self.popularity = dict["Popularity"] as! Int32
            }
            if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("TemplateFormat") && dict["TemplateFormat"] != nil {
                self.templateFormat = dict["TemplateFormat"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("TotalExecutionCount") && dict["TotalExecutionCount"] != nil {
                self.totalExecutionCount = dict["TotalExecutionCount"] as! Int32
            }
            if dict.keys.contains("UpdatedBy") && dict["UpdatedBy"] != nil {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") && dict["UpdatedDate"] != nil {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var templates: [ListPublicTemplatesResponseBody.Templates]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Templates") && dict["Templates"] != nil {
            var tmp : [ListPublicTemplatesResponseBody.Templates] = []
            for v in dict["Templates"] as! [Any] {
                var model = ListPublicTemplatesResponseBody.Templates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.templates = tmp
        }
    }
}

public class ListPublicTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPublicTemplatesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListPublicTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserExecutionLogsRequest : Tea.TeaModel {
    public var aliUid: String?

    public var executionId: String?

    public var logType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var taskExecutionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.logType != nil {
            map["LogType"] = self.logType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskExecutionId != nil {
            map["TaskExecutionId"] = self.taskExecutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("ExecutionId") && dict["ExecutionId"] != nil {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("LogType") && dict["LogType"] != nil {
            self.logType = dict["LogType"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskExecutionId") && dict["TaskExecutionId"] != nil {
            self.taskExecutionId = dict["TaskExecutionId"] as! String
        }
    }
}

public class ListUserExecutionLogsResponseBody : Tea.TeaModel {
    public class ExecutionLogs : Tea.TeaModel {
        public var logType: String?

        public var message: String?

        public var taskExecutionId: String?

        public var timestamp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logType != nil {
                map["LogType"] = self.logType!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.taskExecutionId != nil {
                map["TaskExecutionId"] = self.taskExecutionId!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogType") && dict["LogType"] != nil {
                self.logType = dict["LogType"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("TaskExecutionId") && dict["TaskExecutionId"] != nil {
                self.taskExecutionId = dict["TaskExecutionId"] as! String
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! String
            }
        }
    }
    public var executionLogs: [ListUserExecutionLogsResponseBody.ExecutionLogs]?

    public var maxResults: Int32?

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
        if self.executionLogs != nil {
            var tmp : [Any] = []
            for k in self.executionLogs! {
                tmp.append(k.toMap())
            }
            map["ExecutionLogs"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
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
        if dict.keys.contains("ExecutionLogs") && dict["ExecutionLogs"] != nil {
            var tmp : [ListUserExecutionLogsResponseBody.ExecutionLogs] = []
            for v in dict["ExecutionLogs"] as! [Any] {
                var model = ListUserExecutionLogsResponseBody.ExecutionLogs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.executionLogs = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListUserExecutionLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserExecutionLogsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListUserExecutionLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserExecutionsRequest : Tea.TeaModel {
    public var aliUid: String?

    public var endDateAfter: String?

    public var endDateBefore: String?

    public var executedBy: String?

    public var executionId: String?

    public var includeChildExecution: Bool?

    public var maxResults: Int32?

    public var mode: String?

    public var nextToken: String?

    public var parentExecutionId: String?

    public var ramRole: String?

    public var regionId: String?

    public var sortField: String?

    public var sortOrder: String?

    public var startDateAfter: String?

    public var startDateBefore: String?

    public var status: String?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.endDateAfter != nil {
            map["EndDateAfter"] = self.endDateAfter!
        }
        if self.endDateBefore != nil {
            map["EndDateBefore"] = self.endDateBefore!
        }
        if self.executedBy != nil {
            map["ExecutedBy"] = self.executedBy!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.includeChildExecution != nil {
            map["IncludeChildExecution"] = self.includeChildExecution!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parentExecutionId != nil {
            map["ParentExecutionId"] = self.parentExecutionId!
        }
        if self.ramRole != nil {
            map["RamRole"] = self.ramRole!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startDateAfter != nil {
            map["StartDateAfter"] = self.startDateAfter!
        }
        if self.startDateBefore != nil {
            map["StartDateBefore"] = self.startDateBefore!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("EndDateAfter") && dict["EndDateAfter"] != nil {
            self.endDateAfter = dict["EndDateAfter"] as! String
        }
        if dict.keys.contains("EndDateBefore") && dict["EndDateBefore"] != nil {
            self.endDateBefore = dict["EndDateBefore"] as! String
        }
        if dict.keys.contains("ExecutedBy") && dict["ExecutedBy"] != nil {
            self.executedBy = dict["ExecutedBy"] as! String
        }
        if dict.keys.contains("ExecutionId") && dict["ExecutionId"] != nil {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("IncludeChildExecution") && dict["IncludeChildExecution"] != nil {
            self.includeChildExecution = dict["IncludeChildExecution"] as! Bool
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Mode") && dict["Mode"] != nil {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ParentExecutionId") && dict["ParentExecutionId"] != nil {
            self.parentExecutionId = dict["ParentExecutionId"] as! String
        }
        if dict.keys.contains("RamRole") && dict["RamRole"] != nil {
            self.ramRole = dict["RamRole"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SortField") && dict["SortField"] != nil {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartDateAfter") && dict["StartDateAfter"] != nil {
            self.startDateAfter = dict["StartDateAfter"] as! String
        }
        if dict.keys.contains("StartDateBefore") && dict["StartDateBefore"] != nil {
            self.startDateBefore = dict["StartDateBefore"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class ListUserExecutionsResponseBody : Tea.TeaModel {
    public class Executions : Tea.TeaModel {
        public class CurrentTasks : Tea.TeaModel {
            public var taskAction: String?

            public var taskExecutionId: String?

            public var taskName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.taskAction != nil {
                    map["TaskAction"] = self.taskAction!
                }
                if self.taskExecutionId != nil {
                    map["TaskExecutionId"] = self.taskExecutionId!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TaskAction") && dict["TaskAction"] != nil {
                    self.taskAction = dict["TaskAction"] as! String
                }
                if dict.keys.contains("TaskExecutionId") && dict["TaskExecutionId"] != nil {
                    self.taskExecutionId = dict["TaskExecutionId"] as! String
                }
                if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
                    self.taskName = dict["TaskName"] as! String
                }
            }
        }
        public var counters: String?

        public var createDate: String?

        public var currentTasks: [ListUserExecutionsResponseBody.Executions.CurrentTasks]?

        public var endDate: String?

        public var executedBy: String?

        public var executionId: String?

        public var isParent: Bool?

        public var mode: String?

        public var outputs: String?

        public var parameters: String?

        public var parentExecutionId: String?

        public var ramRole: String?

        public var safetyCheck: String?

        public var startDate: String?

        public var status: String?

        public var statusMessage: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updateDate: String?

        public var waitingStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.counters != nil {
                map["Counters"] = self.counters!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.currentTasks != nil {
                var tmp : [Any] = []
                for k in self.currentTasks! {
                    tmp.append(k.toMap())
                }
                map["CurrentTasks"] = tmp
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.executedBy != nil {
                map["ExecutedBy"] = self.executedBy!
            }
            if self.executionId != nil {
                map["ExecutionId"] = self.executionId!
            }
            if self.isParent != nil {
                map["IsParent"] = self.isParent!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.parentExecutionId != nil {
                map["ParentExecutionId"] = self.parentExecutionId!
            }
            if self.ramRole != nil {
                map["RamRole"] = self.ramRole!
            }
            if self.safetyCheck != nil {
                map["SafetyCheck"] = self.safetyCheck!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
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
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.waitingStatus != nil {
                map["WaitingStatus"] = self.waitingStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Counters") && dict["Counters"] != nil {
                self.counters = dict["Counters"] as! String
            }
            if dict.keys.contains("CreateDate") && dict["CreateDate"] != nil {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("CurrentTasks") && dict["CurrentTasks"] != nil {
                var tmp : [ListUserExecutionsResponseBody.Executions.CurrentTasks] = []
                for v in dict["CurrentTasks"] as! [Any] {
                    var model = ListUserExecutionsResponseBody.Executions.CurrentTasks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.currentTasks = tmp
            }
            if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("ExecutedBy") && dict["ExecutedBy"] != nil {
                self.executedBy = dict["ExecutedBy"] as! String
            }
            if dict.keys.contains("ExecutionId") && dict["ExecutionId"] != nil {
                self.executionId = dict["ExecutionId"] as! String
            }
            if dict.keys.contains("IsParent") && dict["IsParent"] != nil {
                self.isParent = dict["IsParent"] as! Bool
            }
            if dict.keys.contains("Mode") && dict["Mode"] != nil {
                self.mode = dict["Mode"] as! String
            }
            if dict.keys.contains("Outputs") && dict["Outputs"] != nil {
                self.outputs = dict["Outputs"] as! String
            }
            if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
                self.parameters = dict["Parameters"] as! String
            }
            if dict.keys.contains("ParentExecutionId") && dict["ParentExecutionId"] != nil {
                self.parentExecutionId = dict["ParentExecutionId"] as! String
            }
            if dict.keys.contains("RamRole") && dict["RamRole"] != nil {
                self.ramRole = dict["RamRole"] as! String
            }
            if dict.keys.contains("SafetyCheck") && dict["SafetyCheck"] != nil {
                self.safetyCheck = dict["SafetyCheck"] as! String
            }
            if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
                self.startDate = dict["StartDate"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusMessage") && dict["StatusMessage"] != nil {
                self.statusMessage = dict["StatusMessage"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdateDate") && dict["UpdateDate"] != nil {
                self.updateDate = dict["UpdateDate"] as! String
            }
            if dict.keys.contains("WaitingStatus") && dict["WaitingStatus"] != nil {
                self.waitingStatus = dict["WaitingStatus"] as! String
            }
        }
    }
    public var executions: [ListUserExecutionsResponseBody.Executions]?

    public var maxResults: Int32?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
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
        if dict.keys.contains("Executions") && dict["Executions"] != nil {
            var tmp : [ListUserExecutionsResponseBody.Executions] = []
            for v in dict["Executions"] as! [Any] {
                var model = ListUserExecutionsResponseBody.Executions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.executions = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListUserExecutionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserExecutionsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListUserExecutionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserInstancePatchStatesRequest : Tea.TeaModel {
    public var aliUid: String?

    public var instanceIds: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIds = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListUserInstancePatchStatesResponseBody : Tea.TeaModel {
    public class InstancePatchStates : Tea.TeaModel {
        public var baselineId: String?

        public var failedCount: String?

        public var installedCount: String?

        public var installedOtherCount: String?

        public var installedPendingRebootCount: String?

        public var installedRejectedCount: String?

        public var instanceId: String?

        public var missingCount: String?

        public var operationEndTime: String?

        public var operationStartTime: String?

        public var operationType: String?

        public var ownerInformation: String?

        public var patchGroup: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.baselineId != nil {
                map["BaselineId"] = self.baselineId!
            }
            if self.failedCount != nil {
                map["FailedCount"] = self.failedCount!
            }
            if self.installedCount != nil {
                map["InstalledCount"] = self.installedCount!
            }
            if self.installedOtherCount != nil {
                map["InstalledOtherCount"] = self.installedOtherCount!
            }
            if self.installedPendingRebootCount != nil {
                map["InstalledPendingRebootCount"] = self.installedPendingRebootCount!
            }
            if self.installedRejectedCount != nil {
                map["InstalledRejectedCount"] = self.installedRejectedCount!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.missingCount != nil {
                map["MissingCount"] = self.missingCount!
            }
            if self.operationEndTime != nil {
                map["OperationEndTime"] = self.operationEndTime!
            }
            if self.operationStartTime != nil {
                map["OperationStartTime"] = self.operationStartTime!
            }
            if self.operationType != nil {
                map["OperationType"] = self.operationType!
            }
            if self.ownerInformation != nil {
                map["OwnerInformation"] = self.ownerInformation!
            }
            if self.patchGroup != nil {
                map["PatchGroup"] = self.patchGroup!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BaselineId") && dict["BaselineId"] != nil {
                self.baselineId = dict["BaselineId"] as! String
            }
            if dict.keys.contains("FailedCount") && dict["FailedCount"] != nil {
                self.failedCount = dict["FailedCount"] as! String
            }
            if dict.keys.contains("InstalledCount") && dict["InstalledCount"] != nil {
                self.installedCount = dict["InstalledCount"] as! String
            }
            if dict.keys.contains("InstalledOtherCount") && dict["InstalledOtherCount"] != nil {
                self.installedOtherCount = dict["InstalledOtherCount"] as! String
            }
            if dict.keys.contains("InstalledPendingRebootCount") && dict["InstalledPendingRebootCount"] != nil {
                self.installedPendingRebootCount = dict["InstalledPendingRebootCount"] as! String
            }
            if dict.keys.contains("InstalledRejectedCount") && dict["InstalledRejectedCount"] != nil {
                self.installedRejectedCount = dict["InstalledRejectedCount"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("MissingCount") && dict["MissingCount"] != nil {
                self.missingCount = dict["MissingCount"] as! String
            }
            if dict.keys.contains("OperationEndTime") && dict["OperationEndTime"] != nil {
                self.operationEndTime = dict["OperationEndTime"] as! String
            }
            if dict.keys.contains("OperationStartTime") && dict["OperationStartTime"] != nil {
                self.operationStartTime = dict["OperationStartTime"] as! String
            }
            if dict.keys.contains("OperationType") && dict["OperationType"] != nil {
                self.operationType = dict["OperationType"] as! String
            }
            if dict.keys.contains("OwnerInformation") && dict["OwnerInformation"] != nil {
                self.ownerInformation = dict["OwnerInformation"] as! String
            }
            if dict.keys.contains("PatchGroup") && dict["PatchGroup"] != nil {
                self.patchGroup = dict["PatchGroup"] as! String
            }
        }
    }
    public var instancePatchStates: [ListUserInstancePatchStatesResponseBody.InstancePatchStates]?

    public var maxResults: Int32?

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
        if self.instancePatchStates != nil {
            var tmp : [Any] = []
            for k in self.instancePatchStates! {
                tmp.append(k.toMap())
            }
            map["InstancePatchStates"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
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
        if dict.keys.contains("InstancePatchStates") && dict["InstancePatchStates"] != nil {
            var tmp : [ListUserInstancePatchStatesResponseBody.InstancePatchStates] = []
            for v in dict["InstancePatchStates"] as! [Any] {
                var model = ListUserInstancePatchStatesResponseBody.InstancePatchStates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instancePatchStates = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListUserInstancePatchStatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserInstancePatchStatesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListUserInstancePatchStatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserInstancePatchesRequest : Tea.TeaModel {
    public var aliUid: String?

    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListUserInstancePatchesResponseBody : Tea.TeaModel {
    public class Patches : Tea.TeaModel {
        public var classification: String?

        public var installedTime: String?

        public var KBId: String?

        public var severity: String?

        public var status: String?

        public var title: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.classification != nil {
                map["Classification"] = self.classification!
            }
            if self.installedTime != nil {
                map["InstalledTime"] = self.installedTime!
            }
            if self.KBId != nil {
                map["KBId"] = self.KBId!
            }
            if self.severity != nil {
                map["Severity"] = self.severity!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Classification") && dict["Classification"] != nil {
                self.classification = dict["Classification"] as! String
            }
            if dict.keys.contains("InstalledTime") && dict["InstalledTime"] != nil {
                self.installedTime = dict["InstalledTime"] as! String
            }
            if dict.keys.contains("KBId") && dict["KBId"] != nil {
                self.KBId = dict["KBId"] as! String
            }
            if dict.keys.contains("Severity") && dict["Severity"] != nil {
                self.severity = dict["Severity"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var patches: [ListUserInstancePatchesResponseBody.Patches]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.patches != nil {
            var tmp : [Any] = []
            for k in self.patches! {
                tmp.append(k.toMap())
            }
            map["Patches"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Patches") && dict["Patches"] != nil {
            var tmp : [ListUserInstancePatchesResponseBody.Patches] = []
            for v in dict["Patches"] as! [Any] {
                var model = ListUserInstancePatchesResponseBody.Patches()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.patches = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListUserInstancePatchesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserInstancePatchesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListUserInstancePatchesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserInventoryEntriesRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

        public var operator_: String?

        public var value: [String]?

        public override init() {
            super.init()
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
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Operator") && dict["Operator"] != nil {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! [String]
            }
        }
    }
    public var aliUid: String?

    public var filter: [ListUserInventoryEntriesRequest.Filter]?

    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var typeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.typeName != nil {
            map["TypeName"] = self.typeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            var tmp : [ListUserInventoryEntriesRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = ListUserInventoryEntriesRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TypeName") && dict["TypeName"] != nil {
            self.typeName = dict["TypeName"] as! String
        }
    }
}

public class ListUserInventoryEntriesResponseBody : Tea.TeaModel {
    public var captureTime: String?

    public var entries: [[String: Any]]?

    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var schemaVersion: String?

    public var typeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.captureTime != nil {
            map["CaptureTime"] = self.captureTime!
        }
        if self.entries != nil {
            map["Entries"] = self.entries!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.typeName != nil {
            map["TypeName"] = self.typeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CaptureTime") && dict["CaptureTime"] != nil {
            self.captureTime = dict["CaptureTime"] as! String
        }
        if dict.keys.contains("Entries") && dict["Entries"] != nil {
            self.entries = dict["Entries"] as! [[String: Any]]
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("TypeName") && dict["TypeName"] != nil {
            self.typeName = dict["TypeName"] as! String
        }
    }
}

public class ListUserInventoryEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserInventoryEntriesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListUserInventoryEntriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserTaskExecutionsRequest : Tea.TeaModel {
    public var aliUid: String?

    public var endDateAfter: String?

    public var endDateBefore: String?

    public var executionId: String?

    public var includeChildTaskExecution: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var parentTaskExecutionId: String?

    public var regionId: String?

    public var sortField: String?

    public var sortOrder: String?

    public var startDateAfter: String?

    public var startDateBefore: String?

    public var status: String?

    public var taskAction: String?

    public var taskExecutionId: String?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.endDateAfter != nil {
            map["EndDateAfter"] = self.endDateAfter!
        }
        if self.endDateBefore != nil {
            map["EndDateBefore"] = self.endDateBefore!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.includeChildTaskExecution != nil {
            map["IncludeChildTaskExecution"] = self.includeChildTaskExecution!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parentTaskExecutionId != nil {
            map["ParentTaskExecutionId"] = self.parentTaskExecutionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startDateAfter != nil {
            map["StartDateAfter"] = self.startDateAfter!
        }
        if self.startDateBefore != nil {
            map["StartDateBefore"] = self.startDateBefore!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskAction != nil {
            map["TaskAction"] = self.taskAction!
        }
        if self.taskExecutionId != nil {
            map["TaskExecutionId"] = self.taskExecutionId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("EndDateAfter") && dict["EndDateAfter"] != nil {
            self.endDateAfter = dict["EndDateAfter"] as! String
        }
        if dict.keys.contains("EndDateBefore") && dict["EndDateBefore"] != nil {
            self.endDateBefore = dict["EndDateBefore"] as! String
        }
        if dict.keys.contains("ExecutionId") && dict["ExecutionId"] != nil {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("IncludeChildTaskExecution") && dict["IncludeChildTaskExecution"] != nil {
            self.includeChildTaskExecution = dict["IncludeChildTaskExecution"] as! Bool
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ParentTaskExecutionId") && dict["ParentTaskExecutionId"] != nil {
            self.parentTaskExecutionId = dict["ParentTaskExecutionId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SortField") && dict["SortField"] != nil {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartDateAfter") && dict["StartDateAfter"] != nil {
            self.startDateAfter = dict["StartDateAfter"] as! String
        }
        if dict.keys.contains("StartDateBefore") && dict["StartDateBefore"] != nil {
            self.startDateBefore = dict["StartDateBefore"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskAction") && dict["TaskAction"] != nil {
            self.taskAction = dict["TaskAction"] as! String
        }
        if dict.keys.contains("TaskExecutionId") && dict["TaskExecutionId"] != nil {
            self.taskExecutionId = dict["TaskExecutionId"] as! String
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class ListUserTaskExecutionsResponseBody : Tea.TeaModel {
    public class TaskExecutions : Tea.TeaModel {
        public var childExecutionId: String?

        public var createDate: String?

        public var endDate: String?

        public var executionId: String?

        public var extraData: String?

        public var loop: String?

        public var loopBatchNumber: Int32?

        public var loopItem: String?

        public var outputs: String?

        public var parentTaskExecutionId: String?

        public var properties: String?

        public var startDate: String?

        public var status: String?

        public var statusMessage: String?

        public var taskAction: String?

        public var taskExecutionId: String?

        public var taskName: String?

        public var templateId: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.childExecutionId != nil {
                map["ChildExecutionId"] = self.childExecutionId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.executionId != nil {
                map["ExecutionId"] = self.executionId!
            }
            if self.extraData != nil {
                map["ExtraData"] = self.extraData!
            }
            if self.loop != nil {
                map["Loop"] = self.loop!
            }
            if self.loopBatchNumber != nil {
                map["LoopBatchNumber"] = self.loopBatchNumber!
            }
            if self.loopItem != nil {
                map["LoopItem"] = self.loopItem!
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs!
            }
            if self.parentTaskExecutionId != nil {
                map["ParentTaskExecutionId"] = self.parentTaskExecutionId!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            if self.taskAction != nil {
                map["TaskAction"] = self.taskAction!
            }
            if self.taskExecutionId != nil {
                map["TaskExecutionId"] = self.taskExecutionId!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChildExecutionId") && dict["ChildExecutionId"] != nil {
                self.childExecutionId = dict["ChildExecutionId"] as! String
            }
            if dict.keys.contains("CreateDate") && dict["CreateDate"] != nil {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("ExecutionId") && dict["ExecutionId"] != nil {
                self.executionId = dict["ExecutionId"] as! String
            }
            if dict.keys.contains("ExtraData") && dict["ExtraData"] != nil {
                self.extraData = dict["ExtraData"] as! String
            }
            if dict.keys.contains("Loop") && dict["Loop"] != nil {
                self.loop = dict["Loop"] as! String
            }
            if dict.keys.contains("LoopBatchNumber") && dict["LoopBatchNumber"] != nil {
                self.loopBatchNumber = dict["LoopBatchNumber"] as! Int32
            }
            if dict.keys.contains("LoopItem") && dict["LoopItem"] != nil {
                self.loopItem = dict["LoopItem"] as! String
            }
            if dict.keys.contains("Outputs") && dict["Outputs"] != nil {
                self.outputs = dict["Outputs"] as! String
            }
            if dict.keys.contains("ParentTaskExecutionId") && dict["ParentTaskExecutionId"] != nil {
                self.parentTaskExecutionId = dict["ParentTaskExecutionId"] as! String
            }
            if dict.keys.contains("Properties") && dict["Properties"] != nil {
                self.properties = dict["Properties"] as! String
            }
            if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
                self.startDate = dict["StartDate"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusMessage") && dict["StatusMessage"] != nil {
                self.statusMessage = dict["StatusMessage"] as! String
            }
            if dict.keys.contains("TaskAction") && dict["TaskAction"] != nil {
                self.taskAction = dict["TaskAction"] as! String
            }
            if dict.keys.contains("TaskExecutionId") && dict["TaskExecutionId"] != nil {
                self.taskExecutionId = dict["TaskExecutionId"] as! String
            }
            if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("UpdateDate") && dict["UpdateDate"] != nil {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var taskExecutions: [ListUserTaskExecutionsResponseBody.TaskExecutions]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskExecutions != nil {
            var tmp : [Any] = []
            for k in self.taskExecutions! {
                tmp.append(k.toMap())
            }
            map["TaskExecutions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskExecutions") && dict["TaskExecutions"] != nil {
            var tmp : [ListUserTaskExecutionsResponseBody.TaskExecutions] = []
            for v in dict["TaskExecutions"] as! [Any] {
                var model = ListUserTaskExecutionsResponseBody.TaskExecutions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taskExecutions = tmp
        }
    }
}

public class ListUserTaskExecutionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserTaskExecutionsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListUserTaskExecutionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserTemplatesRequest : Tea.TeaModel {
    public var aliUid: String?

    public var category: String?

    public var createdBy: String?

    public var createdDateAfter: String?

    public var createdDateBefore: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var popularity: Int32?

    public var regionId: String?

    public var shareType: String?

    public var sortField: String?

    public var sortOrder: String?

    public var templateFormat: String?

    public var templateName: String?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.createdDateAfter != nil {
            map["CreatedDateAfter"] = self.createdDateAfter!
        }
        if self.createdDateBefore != nil {
            map["CreatedDateBefore"] = self.createdDateBefore!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.popularity != nil {
            map["Popularity"] = self.popularity!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.templateFormat != nil {
            map["TemplateFormat"] = self.templateFormat!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
            self.createdBy = dict["CreatedBy"] as! String
        }
        if dict.keys.contains("CreatedDateAfter") && dict["CreatedDateAfter"] != nil {
            self.createdDateAfter = dict["CreatedDateAfter"] as! String
        }
        if dict.keys.contains("CreatedDateBefore") && dict["CreatedDateBefore"] != nil {
            self.createdDateBefore = dict["CreatedDateBefore"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Popularity") && dict["Popularity"] != nil {
            self.popularity = dict["Popularity"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("SortField") && dict["SortField"] != nil {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("TemplateFormat") && dict["TemplateFormat"] != nil {
            self.templateFormat = dict["TemplateFormat"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class ListUserTemplatesResponseBody : Tea.TeaModel {
    public class Templates : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hash: String?

        public var popularity: Int32?

        public var shareType: String?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var totalExecutionCount: Int32?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.popularity != nil {
                map["Popularity"] = self.popularity!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
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
            if self.totalExecutionCount != nil {
                map["TotalExecutionCount"] = self.totalExecutionCount!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Hash") && dict["Hash"] != nil {
                self.hash = dict["Hash"] as! String
            }
            if dict.keys.contains("Popularity") && dict["Popularity"] != nil {
                self.popularity = dict["Popularity"] as! Int32
            }
            if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("TemplateFormat") && dict["TemplateFormat"] != nil {
                self.templateFormat = dict["TemplateFormat"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("TotalExecutionCount") && dict["TotalExecutionCount"] != nil {
                self.totalExecutionCount = dict["TotalExecutionCount"] as! Int32
            }
            if dict.keys.contains("UpdatedBy") && dict["UpdatedBy"] != nil {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") && dict["UpdatedDate"] != nil {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var templates: [ListUserTemplatesResponseBody.Templates]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Templates") && dict["Templates"] != nil {
            var tmp : [ListUserTemplatesResponseBody.Templates] = []
            for v in dict["Templates"] as! [Any] {
                var model = ListUserTemplatesResponseBody.Templates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.templates = tmp
        }
    }
}

public class ListUserTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserTemplatesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListUserTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetTimerTriggerExecutionRequest : Tea.TeaModel {
    public var aliUid: String?

    public var executionId: String?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("ExecutionId") && dict["ExecutionId"] != nil {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ResetTimerTriggerExecutionResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ResetTimerTriggerExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetTimerTriggerExecutionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResetTimerTriggerExecutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetUserExecutionRequest : Tea.TeaModel {
    public var aliUid: String?

    public var executionId: String?

    public var regionId: String?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("ExecutionId") && dict["ExecutionId"] != nil {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class ResetUserExecutionResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ResetUserExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetUserExecutionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResetUserExecutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetFlowControlRequest : Tea.TeaModel {
    public var api: String?

    public var service: String?

    public var type: Int32?

    public var uid: String?

    public var value: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.api != nil {
            map["Api"] = self.api!
        }
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Api") && dict["Api"] != nil {
            self.api = dict["Api"] as! String
        }
        if dict.keys.contains("Service") && dict["Service"] != nil {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! Int32
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! Int32
        }
    }
}

public class SetFlowControlResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetFlowControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetFlowControlResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetFlowControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetQuotaRequest : Tea.TeaModel {
    public var quotaName: String?

    public var regionId: String?

    public var uid: String?

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
        if self.quotaName != nil {
            map["QuotaName"] = self.quotaName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QuotaName") && dict["QuotaName"] != nil {
            self.quotaName = dict["QuotaName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class SetQuotaResponseBody : Tea.TeaModel {
    public var quota: Int32?

    public var requestId: String?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.quota != nil {
            map["Quota"] = self.quota!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Quota") && dict["Quota"] != nil {
            self.quota = dict["Quota"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! String
        }
    }
}

public class SetQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetQuotaResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TerminateUserExecutionRequest : Tea.TeaModel {
    public var aliUid: String?

    public var executionId: String?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("ExecutionId") && dict["ExecutionId"] != nil {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class TerminateUserExecutionResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TerminateUserExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TerminateUserExecutionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TerminateUserExecutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateActionRequest : Tea.TeaModel {
    public var actionName: String?

    public var actionType: String?

    public var content: String?

    public var popularity: Int32?

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
        if self.actionName != nil {
            map["ActionName"] = self.actionName!
        }
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.popularity != nil {
            map["Popularity"] = self.popularity!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionName") && dict["ActionName"] != nil {
            self.actionName = dict["ActionName"] as! String
        }
        if dict.keys.contains("ActionType") && dict["ActionType"] != nil {
            self.actionType = dict["ActionType"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Popularity") && dict["Popularity"] != nil {
            self.popularity = dict["Popularity"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateActionResponseBody : Tea.TeaModel {
    public var actionName: String?

    public var actionType: String?

    public var createdDate: String?

    public var description_: String?

    public var popularity: Int32?

    public var properties: String?

    public var requestId: String?

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
        if self.actionName != nil {
            map["ActionName"] = self.actionName!
        }
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.createdDate != nil {
            map["CreatedDate"] = self.createdDate!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.popularity != nil {
            map["Popularity"] = self.popularity!
        }
        if self.properties != nil {
            map["Properties"] = self.properties!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionName") && dict["ActionName"] != nil {
            self.actionName = dict["ActionName"] as! String
        }
        if dict.keys.contains("ActionType") && dict["ActionType"] != nil {
            self.actionType = dict["ActionType"] as! String
        }
        if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
            self.createdDate = dict["CreatedDate"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Popularity") && dict["Popularity"] != nil {
            self.popularity = dict["Popularity"] as! Int32
        }
        if dict.keys.contains("Properties") && dict["Properties"] != nil {
            self.properties = dict["Properties"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class UpdateActionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateActionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateActionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePublicParameterRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var regionId: String?

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
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class UpdatePublicParameterResponseBody : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var regionId: String?

        public var shareType: String?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Constraints") && dict["Constraints"] != nil {
                self.constraints = dict["Constraints"] as! String
            }
            if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParameterVersion") && dict["ParameterVersion"] != nil {
                self.parameterVersion = dict["ParameterVersion"] as! Int32
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedBy") && dict["UpdatedBy"] != nil {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") && dict["UpdatedDate"] != nil {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var parameter: UpdatePublicParameterResponseBody.Parameter?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameter != nil {
            map["Parameter"] = self.parameter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parameter") && dict["Parameter"] != nil {
            var model = UpdatePublicParameterResponseBody.Parameter()
            model.fromMap(dict["Parameter"] as! [String: Any])
            self.parameter = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdatePublicParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePublicParameterResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdatePublicParameterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePublicPatchBaselineRequest : Tea.TeaModel {
    public var approvalRules: String?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

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
        if self.approvalRules != nil {
            map["ApprovalRules"] = self.approvalRules!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalRules") && dict["ApprovalRules"] != nil {
            self.approvalRules = dict["ApprovalRules"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdatePublicPatchBaselineResponseBody : Tea.TeaModel {
    public class PatchBaseline : Tea.TeaModel {
        public var approvalRules: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var operationSystem: String?

        public var shareType: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvalRules != nil {
                map["ApprovalRules"] = self.approvalRules!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationSystem != nil {
                map["OperationSystem"] = self.operationSystem!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApprovalRules") && dict["ApprovalRules"] != nil {
                self.approvalRules = dict["ApprovalRules"] as! String
            }
            if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperationSystem") && dict["OperationSystem"] != nil {
                self.operationSystem = dict["OperationSystem"] as! String
            }
            if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("UpdatedBy") && dict["UpdatedBy"] != nil {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") && dict["UpdatedDate"] != nil {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var patchBaseline: UpdatePublicPatchBaselineResponseBody.PatchBaseline?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.patchBaseline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.patchBaseline != nil {
            map["PatchBaseline"] = self.patchBaseline?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PatchBaseline") && dict["PatchBaseline"] != nil {
            var model = UpdatePublicPatchBaselineResponseBody.PatchBaseline()
            model.fromMap(dict["PatchBaseline"] as! [String: Any])
            self.patchBaseline = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdatePublicPatchBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePublicPatchBaselineResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdatePublicPatchBaselineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePublicTemplateRequest : Tea.TeaModel {
    public var category: String?

    public var content: String?

    public var popularity: Int32?

    public var publisher: String?

    public var regionId: String?

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
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.popularity != nil {
            map["Popularity"] = self.popularity!
        }
        if self.publisher != nil {
            map["Publisher"] = self.publisher!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Popularity") && dict["Popularity"] != nil {
            self.popularity = dict["Popularity"] as! Int32
        }
        if dict.keys.contains("Publisher") && dict["Publisher"] != nil {
            self.publisher = dict["Publisher"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class UpdatePublicTemplateResponseBody : Tea.TeaModel {
    public class Template : Tea.TeaModel {
        public var category: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hash: String?

        public var popularity: Int32?

        public var shareType: String?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.popularity != nil {
                map["Popularity"] = self.popularity!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
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
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("CreatedBy") && dict["CreatedBy"] != nil {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") && dict["CreatedDate"] != nil {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Hash") && dict["Hash"] != nil {
                self.hash = dict["Hash"] as! String
            }
            if dict.keys.contains("Popularity") && dict["Popularity"] != nil {
                self.popularity = dict["Popularity"] as! Int32
            }
            if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("TemplateFormat") && dict["TemplateFormat"] != nil {
                self.templateFormat = dict["TemplateFormat"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") && dict["TemplateVersion"] != nil {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdatedBy") && dict["UpdatedBy"] != nil {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") && dict["UpdatedDate"] != nil {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var requestId: String?

    public var template: UpdatePublicTemplateResponseBody.Template?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Template") && dict["Template"] != nil {
            var model = UpdatePublicTemplateResponseBody.Template()
            model.fromMap(dict["Template"] as! [String: Any])
            self.template = model
        }
    }
}

public class UpdatePublicTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePublicTemplateResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdatePublicTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ValidatePublicTemplateContentRequest : Tea.TeaModel {
    public var content: String?

    public var regionId: String?

    public var templateName: String?

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
            map["Content"] = self.content!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class ValidatePublicTemplateContentResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var outputs: String?

        public var properties: String?

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
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Outputs") && dict["Outputs"] != nil {
                self.outputs = dict["Outputs"] as! String
            }
            if dict.keys.contains("Properties") && dict["Properties"] != nil {
                self.properties = dict["Properties"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var description_: String?

    public var outputs: String?

    public var parameters: String?

    public var ramRole: String?

    public var requestId: String?

    public var tasks: [ValidatePublicTemplateContentResponseBody.Tasks]?

    public override init() {
        super.init()
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
        if self.outputs != nil {
            map["Outputs"] = self.outputs!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.ramRole != nil {
            map["RamRole"] = self.ramRole!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Outputs") && dict["Outputs"] != nil {
            self.outputs = dict["Outputs"] as! String
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("RamRole") && dict["RamRole"] != nil {
            self.ramRole = dict["RamRole"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tasks") && dict["Tasks"] != nil {
            var tmp : [ValidatePublicTemplateContentResponseBody.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = ValidatePublicTemplateContentResponseBody.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
    }
}

public class ValidatePublicTemplateContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidatePublicTemplateContentResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ValidatePublicTemplateContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
