import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddOrganizationMemberRequest : Tea.TeaModel {
    public var accountName: String?

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

    public var locale: String?

    public var seatType: String?

    public override init() {
        super.init()
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
        if self.locale != nil {
            map["Locale"] = self.locale!
        }
        if self.seatType != nil {
            map["SeatType"] = self.seatType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [String] {
            self.accountIds = value
        }
        if let value = dict["Locale"] as? String {
            self.locale = value
        }
        if let value = dict["SeatType"] as? String {
            self.seatType = value
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

public class BatchRevokeSeatsRequest : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
        }
    }
    public var items: [BatchRevokeSeatsRequest.Items]?

    public var locale: String?

    public override init() {
        super.init()
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
        if self.locale != nil {
            map["Locale"] = self.locale!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [BatchRevokeSeatsRequest.Items] = []
            for v in value {
                if v != nil {
                    var model = BatchRevokeSeatsRequest.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["Locale"] as? String {
            self.locale = value
        }
    }
}

public class BatchRevokeSeatsShrinkRequest : Tea.TeaModel {
    public var itemsShrink: String?

    public var locale: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.itemsShrink != nil {
            map["Items"] = self.itemsShrink!
        }
        if self.locale != nil {
            map["Locale"] = self.locale!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? String {
            self.itemsShrink = value
        }
        if let value = dict["Locale"] as? String {
            self.locale = value
        }
    }
}

public class BatchRevokeSeatsResponseBody : Tea.TeaModel {
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

public class BatchRevokeSeatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchRevokeSeatsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchRevokeSeatsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateApiKeyRequest : Tea.TeaModel {
    public class Auth : Tea.TeaModel {
        public class ModelAccessScope : Tea.TeaModel {
            public var accessibleModels: [String]?

            public var allowAllModels: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessibleModels != nil {
                    map["accessibleModels"] = self.accessibleModels!
                }
                if self.allowAllModels != nil {
                    map["allowAllModels"] = self.allowAllModels!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessibleModels"] as? [String] {
                    self.accessibleModels = value
                }
                if let value = dict["allowAllModels"] as? Bool {
                    self.allowAllModels = value
                }
            }
        }
        public var accessIps: [String]?

        public var modelAccessScope: CreateApiKeyRequest.Auth.ModelAccessScope?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.modelAccessScope?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessIps != nil {
                map["accessIps"] = self.accessIps!
            }
            if self.modelAccessScope != nil {
                map["modelAccessScope"] = self.modelAccessScope?.toMap()
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
            if let value = dict["modelAccessScope"] as? [String: Any?] {
                var model = CreateApiKeyRequest.Auth.ModelAccessScope()
                model.fromMap(value)
                self.modelAccessScope = model
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

public class CreateTokenPlanInviteLinkRequest : Tea.TeaModel {
    public var expireType: String?

    public var ssoSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expireType != nil {
            map["ExpireType"] = self.expireType!
        }
        if self.ssoSource != nil {
            map["SsoSource"] = self.ssoSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpireType"] as? String {
            self.expireType = value
        }
        if let value = dict["SsoSource"] as? String {
            self.ssoSource = value
        }
    }
}

public class CreateTokenPlanInviteLinkResponseBody : Tea.TeaModel {
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

    public var data: CreateTokenPlanInviteLinkResponseBody.Data?

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
            var model = CreateTokenPlanInviteLinkResponseBody.Data()
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

public class CreateTokenPlanInviteLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTokenPlanInviteLinkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTokenPlanInviteLinkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTokenPlanKeyRequest : Tea.TeaModel {
    public var accountId: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
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
            public class ModelAccessScope : Tea.TeaModel {
                public var accessibleModels: [String]?

                public var allowAllModels: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessibleModels != nil {
                        map["accessibleModels"] = self.accessibleModels!
                    }
                    if self.allowAllModels != nil {
                        map["allowAllModels"] = self.allowAllModels!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["accessibleModels"] as? [String] {
                        self.accessibleModels = value
                    }
                    if let value = dict["allowAllModels"] as? Bool {
                        self.allowAllModels = value
                    }
                }
            }
            public var accessIps: [String]?

            public var modelAccessScope: GetApiKeyResponseBody.ApiKey.Auth.ModelAccessScope?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.modelAccessScope?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessIps != nil {
                    map["accessIps"] = self.accessIps!
                }
                if self.modelAccessScope != nil {
                    map["modelAccessScope"] = self.modelAccessScope?.toMap()
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
                if let value = dict["modelAccessScope"] as? [String: Any?] {
                    var model = GetApiKeyResponseBody.ApiKey.Auth.ModelAccessScope()
                    model.fromMap(value)
                    self.modelAccessScope = model
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

public class GetOrganizationRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetOrganizationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var description_: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var name: String?

        public var namespaceId: String?

        public var orgId: String?

        public var ownerBizAccountId: String?

        public var ownerId: String?

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
                map["Description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.orgId != nil {
                map["OrgId"] = self.orgId!
            }
            if self.ownerBizAccountId != nil {
                map["OwnerBizAccountId"] = self.ownerBizAccountId!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NamespaceId"] as? String {
                self.namespaceId = value
            }
            if let value = dict["OrgId"] as? String {
                self.orgId = value
            }
            if let value = dict["OwnerBizAccountId"] as? String {
                self.ownerBizAccountId = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: GetOrganizationResponseBody.Data?

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
            var model = GetOrganizationResponseBody.Data()
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

public class GetOrganizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOrganizationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetOrganizationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOrganizationMemberSeatStatsRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetOrganizationMemberSeatStatsResponseBody : Tea.TeaModel {
    public var adminRoleUserCount: Int32?

    public var memberRoleUserCount: Int32?

    public var orgId: String?

    public var ownerRoleUserCount: Int32?

    public var seatedMemberCount: Int32?

    public var totalMemberCount: Int32?

    public var unseatedMemberCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adminRoleUserCount != nil {
            map["AdminRoleUserCount"] = self.adminRoleUserCount!
        }
        if self.memberRoleUserCount != nil {
            map["MemberRoleUserCount"] = self.memberRoleUserCount!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.ownerRoleUserCount != nil {
            map["OwnerRoleUserCount"] = self.ownerRoleUserCount!
        }
        if self.seatedMemberCount != nil {
            map["SeatedMemberCount"] = self.seatedMemberCount!
        }
        if self.totalMemberCount != nil {
            map["TotalMemberCount"] = self.totalMemberCount!
        }
        if self.unseatedMemberCount != nil {
            map["UnseatedMemberCount"] = self.unseatedMemberCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdminRoleUserCount"] as? Int32 {
            self.adminRoleUserCount = value
        }
        if let value = dict["MemberRoleUserCount"] as? Int32 {
            self.memberRoleUserCount = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OwnerRoleUserCount"] as? Int32 {
            self.ownerRoleUserCount = value
        }
        if let value = dict["SeatedMemberCount"] as? Int32 {
            self.seatedMemberCount = value
        }
        if let value = dict["TotalMemberCount"] as? Int32 {
            self.totalMemberCount = value
        }
        if let value = dict["UnseatedMemberCount"] as? Int32 {
            self.unseatedMemberCount = value
        }
    }
}

public class GetOrganizationMemberSeatStatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOrganizationMemberSeatStatsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetOrganizationMemberSeatStatsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSubscriptionSeatDetailsRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var queryAssigned: Bool?

    public var seatId: String?

    public var seatType: String?

    public var statusList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
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

public class GetSubscriptionStatsRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetSubscriptionStatsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var assignedSeats: Int64?

            public var seatCredits: Double?

            public var seatRefreshTime: Int64?

            public var seatRemainingCredits: Double?

            public var seatType: String?

            public var totalSeats: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.assignedSeats != nil {
                    map["AssignedSeats"] = self.assignedSeats!
                }
                if self.seatCredits != nil {
                    map["SeatCredits"] = self.seatCredits!
                }
                if self.seatRefreshTime != nil {
                    map["SeatRefreshTime"] = self.seatRefreshTime!
                }
                if self.seatRemainingCredits != nil {
                    map["SeatRemainingCredits"] = self.seatRemainingCredits!
                }
                if self.seatType != nil {
                    map["SeatType"] = self.seatType!
                }
                if self.totalSeats != nil {
                    map["TotalSeats"] = self.totalSeats!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AssignedSeats"] as? Int64 {
                    self.assignedSeats = value
                }
                if let value = dict["SeatCredits"] as? Double {
                    self.seatCredits = value
                }
                if let value = dict["SeatRefreshTime"] as? Int64 {
                    self.seatRefreshTime = value
                }
                if let value = dict["SeatRemainingCredits"] as? Double {
                    self.seatRemainingCredits = value
                }
                if let value = dict["SeatType"] as? String {
                    self.seatType = value
                }
                if let value = dict["TotalSeats"] as? Int64 {
                    self.totalSeats = value
                }
            }
        }
        public var items: [GetSubscriptionStatsResponseBody.Data.Items]?

        public var subscriptionEndTime: Int64?

        public var subscriptionStartTime: Int64?

        public override init() {
            super.init()
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
            if self.subscriptionEndTime != nil {
                map["SubscriptionEndTime"] = self.subscriptionEndTime!
            }
            if self.subscriptionStartTime != nil {
                map["SubscriptionStartTime"] = self.subscriptionStartTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Items"] as? [Any?] {
                var tmp : [GetSubscriptionStatsResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = GetSubscriptionStatsResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["SubscriptionEndTime"] as? Int64 {
                self.subscriptionEndTime = value
            }
            if let value = dict["SubscriptionStartTime"] as? Int64 {
                self.subscriptionStartTime = value
            }
        }
    }
    public var code: String?

    public var data: GetSubscriptionStatsResponseBody.Data?

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
            var model = GetSubscriptionStatsResponseBody.Data()
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

public class GetSubscriptionStatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubscriptionStatsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSubscriptionStatsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTokenPlanAccountDetailRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetTokenPlanAccountDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class OrgMemberships : Tea.TeaModel {
            public class Workspaces : Tea.TeaModel {
                public var memberStatus: String?

                public var roleCode: String?

                public var roleId: String?

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
                    if self.memberStatus != nil {
                        map["MemberStatus"] = self.memberStatus!
                    }
                    if self.roleCode != nil {
                        map["RoleCode"] = self.roleCode!
                    }
                    if self.roleId != nil {
                        map["RoleId"] = self.roleId!
                    }
                    if self.workspaceId != nil {
                        map["WorkspaceId"] = self.workspaceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MemberStatus"] as? String {
                        self.memberStatus = value
                    }
                    if let value = dict["RoleCode"] as? String {
                        self.roleCode = value
                    }
                    if let value = dict["RoleId"] as? String {
                        self.roleId = value
                    }
                    if let value = dict["WorkspaceId"] as? String {
                        self.workspaceId = value
                    }
                }
            }
            public var memberStatus: String?

            public var orgId: String?

            public var roleCode: String?

            public var roleId: String?

            public var workspaces: [GetTokenPlanAccountDetailResponseBody.Data.OrgMemberships.Workspaces]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.memberStatus != nil {
                    map["MemberStatus"] = self.memberStatus!
                }
                if self.orgId != nil {
                    map["OrgId"] = self.orgId!
                }
                if self.roleCode != nil {
                    map["RoleCode"] = self.roleCode!
                }
                if self.roleId != nil {
                    map["RoleId"] = self.roleId!
                }
                if self.workspaces != nil {
                    var tmp : [Any] = []
                    for k in self.workspaces! {
                        tmp.append(k.toMap())
                    }
                    map["Workspaces"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MemberStatus"] as? String {
                    self.memberStatus = value
                }
                if let value = dict["OrgId"] as? String {
                    self.orgId = value
                }
                if let value = dict["RoleCode"] as? String {
                    self.roleCode = value
                }
                if let value = dict["RoleId"] as? String {
                    self.roleId = value
                }
                if let value = dict["Workspaces"] as? [Any?] {
                    var tmp : [GetTokenPlanAccountDetailResponseBody.Data.OrgMemberships.Workspaces] = []
                    for v in value {
                        if v != nil {
                            var model = GetTokenPlanAccountDetailResponseBody.Data.OrgMemberships.Workspaces()
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
        public var accountId: String?

        public var accountType: String?

        public var aliyunUid: String?

        public var createdAt: String?

        public var email: String?

        public var isDeleted: Bool?

        public var name: String?

        public var orgMemberships: [GetTokenPlanAccountDetailResponseBody.Data.OrgMemberships]?

        public override init() {
            super.init()
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
            if self.accountType != nil {
                map["AccountType"] = self.accountType!
            }
            if self.aliyunUid != nil {
                map["AliyunUid"] = self.aliyunUid!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.isDeleted != nil {
                map["IsDeleted"] = self.isDeleted!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.orgMemberships != nil {
                var tmp : [Any] = []
                for k in self.orgMemberships! {
                    tmp.append(k.toMap())
                }
                map["OrgMemberships"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountType"] as? String {
                self.accountType = value
            }
            if let value = dict["AliyunUid"] as? String {
                self.aliyunUid = value
            }
            if let value = dict["CreatedAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["IsDeleted"] as? Bool {
                self.isDeleted = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OrgMemberships"] as? [Any?] {
                var tmp : [GetTokenPlanAccountDetailResponseBody.Data.OrgMemberships] = []
                for v in value {
                    if v != nil {
                        var model = GetTokenPlanAccountDetailResponseBody.Data.OrgMemberships()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.orgMemberships = tmp
            }
        }
    }
    public var code: String?

    public var data: GetTokenPlanAccountDetailResponseBody.Data?

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
            var model = GetTokenPlanAccountDetailResponseBody.Data()
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

public class GetTokenPlanAccountDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTokenPlanAccountDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTokenPlanAccountDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTokenPlanInviteLinkRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetTokenPlanInviteLinkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expireTime: Int64?

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
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["Token"] as? String {
                self.token = value
            }
        }
    }
    public var code: String?

    public var data: GetTokenPlanInviteLinkResponseBody.Data?

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
            var model = GetTokenPlanInviteLinkResponseBody.Data()
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

public class GetTokenPlanInviteLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTokenPlanInviteLinkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTokenPlanInviteLinkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTokenPlanOrgInviteConfigRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetTokenPlanOrgInviteConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var defaultRoleId: String?

        public var orgId: String?

        public var seatAssignStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defaultRoleId != nil {
                map["DefaultRoleId"] = self.defaultRoleId!
            }
            if self.orgId != nil {
                map["OrgId"] = self.orgId!
            }
            if self.seatAssignStrategy != nil {
                map["SeatAssignStrategy"] = self.seatAssignStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefaultRoleId"] as? String {
                self.defaultRoleId = value
            }
            if let value = dict["OrgId"] as? String {
                self.orgId = value
            }
            if let value = dict["SeatAssignStrategy"] as? String {
                self.seatAssignStrategy = value
            }
        }
    }
    public var code: String?

    public var data: GetTokenPlanOrgInviteConfigResponseBody.Data?

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
            var model = GetTokenPlanOrgInviteConfigResponseBody.Data()
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

public class GetTokenPlanOrgInviteConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTokenPlanOrgInviteConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTokenPlanOrgInviteConfigResponseBody()
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

    public var order: String?

    public var orderBy: String?

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
        if self.order != nil {
            map["order"] = self.order!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
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
        if let value = dict["order"] as? String {
            self.order = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListApiKeysResponseBody : Tea.TeaModel {
    public class ApiKeys : Tea.TeaModel {
        public class Auth : Tea.TeaModel {
            public class ModelAccessScope : Tea.TeaModel {
                public var accessibleModels: [String]?

                public var allowAllModels: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessibleModels != nil {
                        map["accessibleModels"] = self.accessibleModels!
                    }
                    if self.allowAllModels != nil {
                        map["allowAllModels"] = self.allowAllModels!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["accessibleModels"] as? [String] {
                        self.accessibleModels = value
                    }
                    if let value = dict["allowAllModels"] as? Bool {
                        self.allowAllModels = value
                    }
                }
            }
            public var accessIps: [String]?

            public var modelAccessScope: ListApiKeysResponseBody.ApiKeys.Auth.ModelAccessScope?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.modelAccessScope?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessIps != nil {
                    map["accessIps"] = self.accessIps!
                }
                if self.modelAccessScope != nil {
                    map["modelAccessScope"] = self.modelAccessScope?.toMap()
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
                if let value = dict["modelAccessScope"] as? [String: Any?] {
                    var model = ListApiKeysResponseBody.ApiKeys.Auth.ModelAccessScope()
                    model.fromMap(value)
                    self.modelAccessScope = model
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

public class ListOrganizationMembersRequest : Tea.TeaModel {
    public var hasSeat: Bool?

    public var name: String?

    public var pageNum: Int32?

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
        if self.hasSeat != nil {
            map["HasSeat"] = self.hasSeat!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HasSeat"] as? Bool {
            self.hasSeat = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListOrganizationMembersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountBizId: String?

        public var accountId: String?

        public var accountName: String?

        public var apiKeyId: String?

        public var email: String?

        public var gmtCreate: String?

        public var maskedApiKey: String?

        public var orgId: String?

        public var roles: [String]?

        public var seatId: String?

        public var specType: String?

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
            if self.accountBizId != nil {
                map["AccountBizId"] = self.accountBizId!
            }
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.apiKeyId != nil {
                map["ApiKeyId"] = self.apiKeyId!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.maskedApiKey != nil {
                map["MaskedApiKey"] = self.maskedApiKey!
            }
            if self.orgId != nil {
                map["OrgId"] = self.orgId!
            }
            if self.roles != nil {
                map["Roles"] = self.roles!
            }
            if self.seatId != nil {
                map["SeatId"] = self.seatId!
            }
            if self.specType != nil {
                map["SpecType"] = self.specType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountBizId"] as? String {
                self.accountBizId = value
            }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["ApiKeyId"] as? String {
                self.apiKeyId = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["MaskedApiKey"] as? String {
                self.maskedApiKey = value
            }
            if let value = dict["OrgId"] as? String {
                self.orgId = value
            }
            if let value = dict["Roles"] as? [String] {
                self.roles = value
            }
            if let value = dict["SeatId"] as? String {
                self.seatId = value
            }
            if let value = dict["SpecType"] as? String {
                self.specType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: [ListOrganizationMembersResponseBody.Data]?

    public var message: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var success: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListOrganizationMembersResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListOrganizationMembersResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListOrganizationMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOrganizationMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListOrganizationMembersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSubscriptionSharedPackagesRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var statusList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.statusList != nil {
            map["StatusList"] = self.statusList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StatusList"] as? [String] {
            self.statusList = value
        }
    }
}

public class ListSubscriptionSharedPackagesResponseBody : Tea.TeaModel {
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
            public var equityList: [ListSubscriptionSharedPackagesResponseBody.Data.Items.EquityList]?

            public var instanceCode: String?

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
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EquityList"] as? [Any?] {
                    var tmp : [ListSubscriptionSharedPackagesResponseBody.Data.Items.EquityList] = []
                    for v in value {
                        if v != nil {
                            var model = ListSubscriptionSharedPackagesResponseBody.Data.Items.EquityList()
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
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var items: [ListSubscriptionSharedPackagesResponseBody.Data.Items]?

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
                var tmp : [ListSubscriptionSharedPackagesResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = ListSubscriptionSharedPackagesResponseBody.Data.Items()
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

    public var data: ListSubscriptionSharedPackagesResponseBody.Data?

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
            var model = ListSubscriptionSharedPackagesResponseBody.Data()
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

public class ListSubscriptionSharedPackagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSubscriptionSharedPackagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSubscriptionSharedPackagesResponseBody()
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

public class RemoveOrganizationMemberRequest : Tea.TeaModel {
    public var accountIds: [String]?

    public var locale: String?

    public override init() {
        super.init()
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
        if self.locale != nil {
            map["Locale"] = self.locale!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [String] {
            self.accountIds = value
        }
        if let value = dict["Locale"] as? String {
            self.locale = value
        }
    }
}

public class RemoveOrganizationMemberResponseBody : Tea.TeaModel {
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

public class RemoveOrganizationMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveOrganizationMemberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveOrganizationMemberResponseBody()
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

public class RevokeTokenPlanInviteLinkRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class RevokeTokenPlanInviteLinkResponseBody : Tea.TeaModel {
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

public class RevokeTokenPlanInviteLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeTokenPlanInviteLinkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RevokeTokenPlanInviteLinkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RotateTokenPlanKeyRequest : Tea.TeaModel {
    public var apiKeyId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKeyId"] as? String {
            self.apiKeyId = value
        }
    }
}

public class RotateTokenPlanKeyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var apiKeyId: String?

        public var maskedApiKey: String?

        public var plainApiKey: String?

        public var resetAt: String?

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
            if self.maskedApiKey != nil {
                map["MaskedApiKey"] = self.maskedApiKey!
            }
            if self.plainApiKey != nil {
                map["PlainApiKey"] = self.plainApiKey!
            }
            if self.resetAt != nil {
                map["ResetAt"] = self.resetAt!
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
            if let value = dict["MaskedApiKey"] as? String {
                self.maskedApiKey = value
            }
            if let value = dict["PlainApiKey"] as? String {
                self.plainApiKey = value
            }
            if let value = dict["ResetAt"] as? String {
                self.resetAt = value
            }
            if let value = dict["SourceId"] as? String {
                self.sourceId = value
            }
        }
    }
    public var code: String?

    public var data: RotateTokenPlanKeyResponseBody.Data?

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
            var model = RotateTokenPlanKeyResponseBody.Data()
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

public class RotateTokenPlanKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RotateTokenPlanKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RotateTokenPlanKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetTokenPlanOrgInviteConfigRequest : Tea.TeaModel {
    public var defaultRoleId: String?

    public var seatAssignStrategy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultRoleId != nil {
            map["DefaultRoleId"] = self.defaultRoleId!
        }
        if self.seatAssignStrategy != nil {
            map["SeatAssignStrategy"] = self.seatAssignStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultRoleId"] as? String {
            self.defaultRoleId = value
        }
        if let value = dict["SeatAssignStrategy"] as? String {
            self.seatAssignStrategy = value
        }
    }
}

public class SetTokenPlanOrgInviteConfigResponseBody : Tea.TeaModel {
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

public class SetTokenPlanOrgInviteConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetTokenPlanOrgInviteConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetTokenPlanOrgInviteConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateApiKeyRequest : Tea.TeaModel {
    public class Auth : Tea.TeaModel {
        public class ModelAccessScope : Tea.TeaModel {
            public var accessibleModels: [String]?

            public var allowAllModels: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessibleModels != nil {
                    map["accessibleModels"] = self.accessibleModels!
                }
                if self.allowAllModels != nil {
                    map["allowAllModels"] = self.allowAllModels!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessibleModels"] as? [String] {
                    self.accessibleModels = value
                }
                if let value = dict["allowAllModels"] as? Bool {
                    self.allowAllModels = value
                }
            }
        }
        public var accessIps: [String]?

        public var modelAccessScope: UpdateApiKeyRequest.Auth.ModelAccessScope?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.modelAccessScope?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessIps != nil {
                map["accessIps"] = self.accessIps!
            }
            if self.modelAccessScope != nil {
                map["modelAccessScope"] = self.modelAccessScope?.toMap()
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
            if let value = dict["modelAccessScope"] as? [String: Any?] {
                var model = UpdateApiKeyRequest.Auth.ModelAccessScope()
                model.fromMap(value)
                self.modelAccessScope = model
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

public class UpdateOrganizationRequest : Tea.TeaModel {
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

public class UpdateOrganizationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var description_: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var name: String?

        public var namespaceId: String?

        public var orgId: String?

        public var ownerBizAccountId: String?

        public var ownerId: String?

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
                map["Description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.orgId != nil {
                map["OrgId"] = self.orgId!
            }
            if self.ownerBizAccountId != nil {
                map["OwnerBizAccountId"] = self.ownerBizAccountId!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NamespaceId"] as? String {
                self.namespaceId = value
            }
            if let value = dict["OrgId"] as? String {
                self.orgId = value
            }
            if let value = dict["OwnerBizAccountId"] as? String {
                self.ownerBizAccountId = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: UpdateOrganizationResponseBody.Data?

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
            var model = UpdateOrganizationResponseBody.Data()
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

public class UpdateOrganizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOrganizationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateOrganizationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateOrganizationMemberRequest : Tea.TeaModel {
    public var accountIds: [String]?

    public var newRoleCode: String?

    public override init() {
        super.init()
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
        if self.newRoleCode != nil {
            map["NewRoleCode"] = self.newRoleCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [String] {
            self.accountIds = value
        }
        if let value = dict["NewRoleCode"] as? String {
            self.newRoleCode = value
        }
    }
}

public class UpdateOrganizationMemberResponseBody : Tea.TeaModel {
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
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateOrganizationMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOrganizationMemberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateOrganizationMemberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
