import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddOrganizationMemberRequest : Tea.TeaModel {
    public var accountName: String?

    public var callerUacAccountId: String?

    public var namespaceId: String?

    public var orgId: String?

    public var orgRoleCode: String?

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
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.callerUacAccountId != nil {
            map["CallerUacAccountId"] = self.callerUacAccountId!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgRoleCode != nil {
            map["OrgRoleCode"] = self.orgRoleCode!
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["CallerUacAccountId"] as? String {
            self.callerUacAccountId = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgRoleCode"] as? String {
            self.orgRoleCode = value
        }
        if let value = dict["SpecType"] as? String {
            self.specType = value
        }
    }
}

public class AddOrganizationMemberResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountId: String?

        public var seatAssigned: Bool?

        public override init() {
            super.init()
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
            if self.seatAssigned != nil {
                map["SeatAssigned"] = self.seatAssigned!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["SeatAssigned"] as? Bool {
                self.seatAssigned = value
            }
        }
    }
    public var code: String?

    public var data: AddOrganizationMemberResponseBody.Data?

    public var httpStatusCode: Int32?

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
            var model = AddOrganizationMemberResponseBody.Data()
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
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddOrganizationMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddOrganizationMemberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddOrganizationMemberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchAssignSeatsRequest : Tea.TeaModel {
    public var accountIds: [String]?

    public var accountIdsStr: String?

    public var callerUacAccountId: String?

    public var locale: String?

    public var namespaceId: String?

    public var seatType: String?

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
        if self.accountIds != nil {
            map["AccountIds"] = self.accountIds!
        }
        if self.accountIdsStr != nil {
            map["AccountIdsStr"] = self.accountIdsStr!
        }
        if self.callerUacAccountId != nil {
            map["CallerUacAccountId"] = self.callerUacAccountId!
        }
        if self.locale != nil {
            map["Locale"] = self.locale!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.seatType != nil {
            map["SeatType"] = self.seatType!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [String] {
            self.accountIds = value
        }
        if let value = dict["AccountIdsStr"] as? String {
            self.accountIdsStr = value
        }
        if let value = dict["CallerUacAccountId"] as? String {
            self.callerUacAccountId = value
        }
        if let value = dict["Locale"] as? String {
            self.locale = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["SeatType"] as? String {
            self.seatType = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class BatchAssignSeatsResponseBody : Tea.TeaModel {
    public var code: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class BatchAssignSeatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchAssignSeatsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchAssignSeatsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateApiKeyRequest : Tea.TeaModel {
    public class Auth : Tea.TeaModel {
        public var accessIps: [String]?

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
            if self.accessIps != nil {
                map["accessIps"] = self.accessIps!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accessIps"] as? [String] {
                self.accessIps = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var auth: CreateApiKeyRequest.Auth?

    public var description_: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.auth?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auth != nil {
            map["auth"] = self.auth?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["auth"] as? [String: Any?] {
            var model = CreateApiKeyRequest.Auth()
            model.fromMap(value)
            self.auth = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateApiKeyResponseBody : Tea.TeaModel {
    public class ApiKey : Tea.TeaModel {
        public var apiKeyId: Int64?

        public var apiKeyValue: String?

        public var createdBy: String?

        public var description_: String?

        public var gmtCreate: Int64?

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
            if self.apiKeyId != nil {
                map["apiKeyId"] = self.apiKeyId!
            }
            if self.apiKeyValue != nil {
                map["apiKeyValue"] = self.apiKeyValue!
            }
            if self.createdBy != nil {
                map["createdBy"] = self.createdBy!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKeyId"] as? Int64 {
                self.apiKeyId = value
            }
            if let value = dict["apiKeyValue"] as? String {
                self.apiKeyValue = value
            }
            if let value = dict["createdBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["gmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var apiKey: CreateApiKeyResponseBody.ApiKey?

    public var code: String?

    public var httpStatusCode: Int32?

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
        try self.apiKey?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey?.toMap()
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? [String: Any?] {
            var model = CreateApiKeyResponseBody.ApiKey()
            model.fromMap(value)
            self.apiKey = model
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateApiKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApiKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateApiKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTokenPlanKeyRequest : Tea.TeaModel {
    public var accountId: String?

    public var callerUacAccountId: String?

    public var description_: String?

    public var namespaceId: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.callerUacAccountId != nil {
            map["CallerUacAccountId"] = self.callerUacAccountId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["CallerUacAccountId"] as? String {
            self.callerUacAccountId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateTokenPlanKeyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var apiKeyId: String?

        public var createdAt: String?

        public var description_: String?

        public var maskedApiKey: String?

        public var plainApiKey: String?

        public var sourceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiKeyId != nil {
                map["ApiKeyId"] = self.apiKeyId!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.maskedApiKey != nil {
                map["MaskedApiKey"] = self.maskedApiKey!
            }
            if self.plainApiKey != nil {
                map["PlainApiKey"] = self.plainApiKey!
            }
            if self.sourceId != nil {
                map["SourceId"] = self.sourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApiKeyId"] as? String {
                self.apiKeyId = value
            }
            if let value = dict["CreatedAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["MaskedApiKey"] as? String {
                self.maskedApiKey = value
            }
            if let value = dict["PlainApiKey"] as? String {
                self.plainApiKey = value
            }
            if let value = dict["SourceId"] as? String {
                self.sourceId = value
            }
        }
    }
    public var code: String?

    public var data: CreateTokenPlanKeyResponseBody.Data?

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
        if self.message != nil {
            map["Message"] = self.message!
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
            var model = CreateTokenPlanKeyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateTokenPlanKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTokenPlanKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTokenPlanKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWorkspaceRequest : Tea.TeaModel {
    public var serviceSite: String?

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
        if self.serviceSite != nil {
            map["serviceSite"] = self.serviceSite!
        }
        if self.workspaceName != nil {
            map["workspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["serviceSite"] as? String {
            self.serviceSite = value
        }
        if let value = dict["workspaceName"] as? String {
            self.workspaceName = value
        }
    }
}

public class CreateWorkspaceResponseBody : Tea.TeaModel {
    public class Workspace : Tea.TeaModel {
        public var apiHost: String?

        public var gmtCreate: Int64?

        public var region: String?

        public var serviceSite: String?

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
            if self.apiHost != nil {
                map["apiHost"] = self.apiHost!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.serviceSite != nil {
                map["serviceSite"] = self.serviceSite!
            }
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
            if let value = dict["apiHost"] as? String {
                self.apiHost = value
            }
            if let value = dict["gmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
            if let value = dict["serviceSite"] as? String {
                self.serviceSite = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["workspaceName"] as? String {
                self.workspaceName = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var workspace: CreateWorkspaceResponseBody.Workspace?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.workspace?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if self.workspace != nil {
            map["workspace"] = self.workspace?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["workspace"] as? [String: Any?] {
            var model = CreateWorkspaceResponseBody.Workspace()
            model.fromMap(value)
            self.workspace = model
        }
    }
}

public class CreateWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteApiKeyResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteApiKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApiKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteApiKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWorkspaceRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteWorkspaceResponseBody : Tea.TeaModel {
    public class FailReasons : Tea.TeaModel {
        public var reason: String?

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
            if self.reason != nil {
                map["reason"] = self.reason!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["reason"] as? String {
                self.reason = value
            }
            if let value = dict["resourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var code: String?

    public var failReasons: [DeleteWorkspaceResponseBody.FailReasons]?

    public var httpStatusCode: Int32?

    public var isDeleted: Bool?

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
        if self.failReasons != nil {
            var tmp : [Any] = []
            for k in self.failReasons! {
                tmp.append(k.toMap())
            }
            map["failReasons"] = tmp
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.isDeleted != nil {
            map["isDeleted"] = self.isDeleted!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["failReasons"] as? [Any?] {
            var tmp : [DeleteWorkspaceResponseBody.FailReasons] = []
            for v in value {
                if v != nil {
                    var model = DeleteWorkspaceResponseBody.FailReasons()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.failReasons = tmp
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["isDeleted"] as? Bool {
            self.isDeleted = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableApiKeyRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DisableApiKeyResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DisableApiKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableApiKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableApiKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableApiKeyRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class EnableApiKeyResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class EnableApiKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableApiKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableApiKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApiKeyResponseBody : Tea.TeaModel {
    public class ApiKey : Tea.TeaModel {
        public class Auth : Tea.TeaModel {
            public var accessIps: [String]?

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
                if self.accessIps != nil {
                    map["accessIps"] = self.accessIps!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessIps"] as? [String] {
                    self.accessIps = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var apiKeyId: Int64?

        public var apiKeyValue: String?

        public var auth: GetApiKeyResponseBody.ApiKey.Auth?

        public var createdBy: String?

        public var description_: String?

        public var disabled: Int32?

        public var gmtCreate: Int64?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.auth?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiKeyId != nil {
                map["apiKeyId"] = self.apiKeyId!
            }
            if self.apiKeyValue != nil {
                map["apiKeyValue"] = self.apiKeyValue!
            }
            if self.auth != nil {
                map["auth"] = self.auth?.toMap()
            }
            if self.createdBy != nil {
                map["createdBy"] = self.createdBy!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.disabled != nil {
                map["disabled"] = self.disabled!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKeyId"] as? Int64 {
                self.apiKeyId = value
            }
            if let value = dict["apiKeyValue"] as? String {
                self.apiKeyValue = value
            }
            if let value = dict["auth"] as? [String: Any?] {
                var model = GetApiKeyResponseBody.ApiKey.Auth()
                model.fromMap(value)
                self.auth = model
            }
            if let value = dict["createdBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["disabled"] as? Int32 {
                self.disabled = value
            }
            if let value = dict["gmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var apiKey: GetApiKeyResponseBody.ApiKey?

    public var code: String?

    public var httpStatusCode: Int32?

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
        try self.apiKey?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey?.toMap()
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? [String: Any?] {
            var model = GetApiKeyResponseBody.ApiKey()
            model.fromMap(value)
            self.apiKey = model
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetApiKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApiKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetApiKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSubscriptionSeatDetailsRequest : Tea.TeaModel {
    public var callerUacAccountId: String?

    public var namespaceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var queryAssigned: Bool?

    public var seatId: String?

    public var seatType: String?

    public var statusList: [String]?

    public var statusListStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callerUacAccountId != nil {
            map["CallerUacAccountId"] = self.callerUacAccountId!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryAssigned != nil {
            map["QueryAssigned"] = self.queryAssigned!
        }
        if self.seatId != nil {
            map["SeatId"] = self.seatId!
        }
        if self.seatType != nil {
            map["SeatType"] = self.seatType!
        }
        if self.statusList != nil {
            map["StatusList"] = self.statusList!
        }
        if self.statusListStr != nil {
            map["StatusListStr"] = self.statusListStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallerUacAccountId"] as? String {
            self.callerUacAccountId = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryAssigned"] as? Bool {
            self.queryAssigned = value
        }
        if let value = dict["SeatId"] as? String {
            self.seatId = value
        }
        if let value = dict["SeatType"] as? String {
            self.seatType = value
        }
        if let value = dict["StatusList"] as? [String] {
            self.statusList = value
        }
        if let value = dict["StatusListStr"] as? String {
            self.statusListStr = value
        }
    }
}

public class GetSubscriptionSeatDetailsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class EquityList : Tea.TeaModel {
                public var cycleEndTime: Int64?

                public var cycleInstanceId: String?

                public var cycleStartTime: Int64?

                public var cycleSurplusValue: Double?

                public var cycleTotalValue: Double?

                public var cycleVersion: Int64?

                public var equityType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cycleEndTime != nil {
                        map["CycleEndTime"] = self.cycleEndTime!
                    }
                    if self.cycleInstanceId != nil {
                        map["CycleInstanceId"] = self.cycleInstanceId!
                    }
                    if self.cycleStartTime != nil {
                        map["CycleStartTime"] = self.cycleStartTime!
                    }
                    if self.cycleSurplusValue != nil {
                        map["CycleSurplusValue"] = self.cycleSurplusValue!
                    }
                    if self.cycleTotalValue != nil {
                        map["CycleTotalValue"] = self.cycleTotalValue!
                    }
                    if self.cycleVersion != nil {
                        map["CycleVersion"] = self.cycleVersion!
                    }
                    if self.equityType != nil {
                        map["EquityType"] = self.equityType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CycleEndTime"] as? Int64 {
                        self.cycleEndTime = value
                    }
                    if let value = dict["CycleInstanceId"] as? String {
                        self.cycleInstanceId = value
                    }
                    if let value = dict["CycleStartTime"] as? Int64 {
                        self.cycleStartTime = value
                    }
                    if let value = dict["CycleSurplusValue"] as? Double {
                        self.cycleSurplusValue = value
                    }
                    if let value = dict["CycleTotalValue"] as? Double {
                        self.cycleTotalValue = value
                    }
                    if let value = dict["CycleVersion"] as? Int64 {
                        self.cycleVersion = value
                    }
                    if let value = dict["EquityType"] as? String {
                        self.equityType = value
                    }
                }
            }
            public var accountEmail: String?

            public var accountId: String?

            public var accountName: String?

            public var assignedStatus: String?

            public var endTime: Int64?

            public var equityList: [GetSubscriptionSeatDetailsResponseBody.Data.Items.EquityList]?

            public var instanceCode: String?

            public var seatId: String?

            public var specType: String?

            public var startTime: Int64?

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
                if self.accountEmail != nil {
                    map["AccountEmail"] = self.accountEmail!
                }
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.accountName != nil {
                    map["AccountName"] = self.accountName!
                }
                if self.assignedStatus != nil {
                    map["AssignedStatus"] = self.assignedStatus!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.equityList != nil {
                    var tmp : [Any] = []
                    for k in self.equityList! {
                        tmp.append(k.toMap())
                    }
                    map["EquityList"] = tmp
                }
                if self.instanceCode != nil {
                    map["InstanceCode"] = self.instanceCode!
                }
                if self.seatId != nil {
                    map["SeatId"] = self.seatId!
                }
                if self.specType != nil {
                    map["SpecType"] = self.specType!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountEmail"] as? String {
                    self.accountEmail = value
                }
                if let value = dict["AccountId"] as? String {
                    self.accountId = value
                }
                if let value = dict["AccountName"] as? String {
                    self.accountName = value
                }
                if let value = dict["AssignedStatus"] as? String {
                    self.assignedStatus = value
                }
                if let value = dict["EndTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["EquityList"] as? [Any?] {
                    var tmp : [GetSubscriptionSeatDetailsResponseBody.Data.Items.EquityList] = []
                    for v in value {
                        if v != nil {
                            var model = GetSubscriptionSeatDetailsResponseBody.Data.Items.EquityList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.equityList = tmp
                }
                if let value = dict["InstanceCode"] as? String {
                    self.instanceCode = value
                }
                if let value = dict["SeatId"] as? String {
                    self.seatId = value
                }
                if let value = dict["SpecType"] as? String {
                    self.specType = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var items: [GetSubscriptionSeatDetailsResponseBody.Data.Items]?

        public var pageNo: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Items"] as? [Any?] {
                var tmp : [GetSubscriptionSeatDetailsResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = GetSubscriptionSeatDetailsResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["PageNo"] as? Int32 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: GetSubscriptionSeatDetailsResponseBody.Data?

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
        if self.message != nil {
            map["Message"] = self.message!
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
            var model = GetSubscriptionSeatDetailsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSubscriptionSeatDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubscriptionSeatDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSubscriptionSeatDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListApiKeysRequest : Tea.TeaModel {
    public var apiKeyId: Int64?

    public var description_: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.apiKeyId != nil {
            map["apiKeyId"] = self.apiKeyId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeyId"] as? Int64 {
            self.apiKeyId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListApiKeysResponseBody : Tea.TeaModel {
    public class ApiKeys : Tea.TeaModel {
        public class Auth : Tea.TeaModel {
            public var accessIps: [String]?

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
                if self.accessIps != nil {
                    map["accessIps"] = self.accessIps!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessIps"] as? [String] {
                    self.accessIps = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var apiKeyId: Int64?

        public var apiKeyValue: String?

        public var auth: ListApiKeysResponseBody.ApiKeys.Auth?

        public var createdBy: String?

        public var description_: String?

        public var disabled: Int32?

        public var gmtCreate: Int64?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.auth?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiKeyId != nil {
                map["apiKeyId"] = self.apiKeyId!
            }
            if self.apiKeyValue != nil {
                map["apiKeyValue"] = self.apiKeyValue!
            }
            if self.auth != nil {
                map["auth"] = self.auth?.toMap()
            }
            if self.createdBy != nil {
                map["createdBy"] = self.createdBy!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.disabled != nil {
                map["disabled"] = self.disabled!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKeyId"] as? Int64 {
                self.apiKeyId = value
            }
            if let value = dict["apiKeyValue"] as? String {
                self.apiKeyValue = value
            }
            if let value = dict["auth"] as? [String: Any?] {
                var model = ListApiKeysResponseBody.ApiKeys.Auth()
                model.fromMap(value)
                self.auth = model
            }
            if let value = dict["createdBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["disabled"] as? Int32 {
                self.disabled = value
            }
            if let value = dict["gmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var apiKeys: [ListApiKeysResponseBody.ApiKeys]?

    public var code: String?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.apiKeys != nil {
            var tmp : [Any] = []
            for k in self.apiKeys! {
                tmp.append(k.toMap())
            }
            map["apiKeys"] = tmp
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeys"] as? [Any?] {
            var tmp : [ListApiKeysResponseBody.ApiKeys] = []
            for v in value {
                if v != nil {
                    var model = ListApiKeysResponseBody.ApiKeys()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.apiKeys = tmp
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListApiKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApiKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListApiKeysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkspacesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
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
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["workspaceName"] as? String {
            self.workspaceName = value
        }
    }
}

public class ListWorkspacesResponseBody : Tea.TeaModel {
    public class Workspaces : Tea.TeaModel {
        public var apiHost: String?

        public var gmtCreate: Int64?

        public var region: String?

        public var serviceSite: String?

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
            if self.apiHost != nil {
                map["apiHost"] = self.apiHost!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.serviceSite != nil {
                map["serviceSite"] = self.serviceSite!
            }
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
            if let value = dict["apiHost"] as? String {
                self.apiHost = value
            }
            if let value = dict["gmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
            if let value = dict["serviceSite"] as? String {
                self.serviceSite = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["workspaceName"] as? String {
                self.workspaceName = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var workspaces: [ListWorkspacesResponseBody.Workspaces]?

    public override init() {
        super.init()
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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.workspaces != nil {
            var tmp : [Any] = []
            for k in self.workspaces! {
                tmp.append(k.toMap())
            }
            map["workspaces"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["workspaces"] as? [Any?] {
            var tmp : [ListWorkspacesResponseBody.Workspaces] = []
            for v in value {
                if v != nil {
                    var model = ListWorkspacesResponseBody.Workspaces()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.workspaces = tmp
        }
    }
}

public class ListWorkspacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkspacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListWorkspacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetApiKeyRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class ResetApiKeyResponseBody : Tea.TeaModel {
    public class ApiKey : Tea.TeaModel {
        public var apiKeyId: Int64?

        public var apiKeyValue: String?

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
            if self.apiKeyId != nil {
                map["apiKeyId"] = self.apiKeyId!
            }
            if self.apiKeyValue != nil {
                map["apiKeyValue"] = self.apiKeyValue!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKeyId"] as? Int64 {
                self.apiKeyId = value
            }
            if let value = dict["apiKeyValue"] as? String {
                self.apiKeyValue = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var apiKey: ResetApiKeyResponseBody.ApiKey?

    public var code: String?

    public var httpStatusCode: Int32?

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
        try self.apiKey?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey?.toMap()
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? [String: Any?] {
            var model = ResetApiKeyResponseBody.ApiKey()
            model.fromMap(value)
            self.apiKey = model
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ResetApiKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetApiKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResetApiKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateApiKeyRequest : Tea.TeaModel {
    public class Auth : Tea.TeaModel {
        public var accessIps: [String]?

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
            if self.accessIps != nil {
                map["accessIps"] = self.accessIps!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accessIps"] as? [String] {
                self.accessIps = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var auth: UpdateApiKeyRequest.Auth?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.auth?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auth != nil {
            map["auth"] = self.auth?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["auth"] as? [String: Any?] {
            var model = UpdateApiKeyRequest.Auth()
            model.fromMap(value)
            self.auth = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
    }
}

public class UpdateApiKeyResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateApiKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApiKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateApiKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
