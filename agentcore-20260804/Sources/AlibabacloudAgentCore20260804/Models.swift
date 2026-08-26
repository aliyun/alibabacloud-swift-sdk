import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BatchDeleteModelsRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var modelIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelIds != nil {
                map["modelIds"] = self.modelIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["modelIds"] as? [String] {
                self.modelIds = value
            }
        }
    }
    public var body: BatchDeleteModelsRequest.Body?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = BatchDeleteModelsRequest.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class BatchDeleteModelsShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class BatchDeleteModelsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var modelIds: [String]?

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
            if self.modelIds != nil {
                map["modelIds"] = self.modelIds!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["modelIds"] as? [String] {
                self.modelIds = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: BatchDeleteModelsResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = BatchDeleteModelsResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class BatchDeleteModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteModelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchDeleteModelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCredentialRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var credentialMetadata: String?

        public var credentialType: String?

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
            if self.credentialMetadata != nil {
                map["credentialMetadata"] = self.credentialMetadata!
            }
            if self.credentialType != nil {
                map["credentialType"] = self.credentialType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["credentialMetadata"] as? String {
                self.credentialMetadata = value
            }
            if let value = dict["credentialType"] as? String {
                self.credentialType = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var body: CreateCredentialRequest.Body?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateCredentialRequest.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateCredentialShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateCredentialResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var credentialId: String?

        public var credentialMetadata: String?

        public var credentialType: String?

        public var description_: String?

        public var name: String?

        public var regionId: String?

        public var updatedAt: String?

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
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.credentialId != nil {
                map["credentialId"] = self.credentialId!
            }
            if self.credentialMetadata != nil {
                map["credentialMetadata"] = self.credentialMetadata!
            }
            if self.credentialType != nil {
                map["credentialType"] = self.credentialType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["credentialId"] as? String {
                self.credentialId = value
            }
            if let value = dict["credentialMetadata"] as? String {
                self.credentialMetadata = value
            }
            if let value = dict["credentialType"] as? String {
                self.credentialType = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: CreateCredentialResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateCredentialResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class CreateCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCredentialResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateCredentialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateIdentityProviderRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class Metadata : Tea.TeaModel {
            public var appId: String?

            public var appKey: String?

            public var appSecret: String?

            public var corpId: String?

            public var encryptKey: String?

            public var verificationToken: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appId != nil {
                    map["appId"] = self.appId!
                }
                if self.appKey != nil {
                    map["appKey"] = self.appKey!
                }
                if self.appSecret != nil {
                    map["appSecret"] = self.appSecret!
                }
                if self.corpId != nil {
                    map["corpId"] = self.corpId!
                }
                if self.encryptKey != nil {
                    map["encryptKey"] = self.encryptKey!
                }
                if self.verificationToken != nil {
                    map["verificationToken"] = self.verificationToken!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["appId"] as? String {
                    self.appId = value
                }
                if let value = dict["appKey"] as? String {
                    self.appKey = value
                }
                if let value = dict["appSecret"] as? String {
                    self.appSecret = value
                }
                if let value = dict["corpId"] as? String {
                    self.corpId = value
                }
                if let value = dict["encryptKey"] as? String {
                    self.encryptKey = value
                }
                if let value = dict["verificationToken"] as? String {
                    self.verificationToken = value
                }
            }
        }
        public var identityProviderType: String?

        public var loginEnabled: Bool?

        public var metadata: CreateIdentityProviderRequest.Body.Metadata?

        public var syncEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.metadata?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.identityProviderType != nil {
                map["identityProviderType"] = self.identityProviderType!
            }
            if self.loginEnabled != nil {
                map["loginEnabled"] = self.loginEnabled!
            }
            if self.metadata != nil {
                map["metadata"] = self.metadata?.toMap()
            }
            if self.syncEnabled != nil {
                map["syncEnabled"] = self.syncEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["identityProviderType"] as? String {
                self.identityProviderType = value
            }
            if let value = dict["loginEnabled"] as? Bool {
                self.loginEnabled = value
            }
            if let value = dict["metadata"] as? [String: Any?] {
                var model = CreateIdentityProviderRequest.Body.Metadata()
                model.fromMap(value)
                self.metadata = model
            }
            if let value = dict["syncEnabled"] as? Bool {
                self.syncEnabled = value
            }
        }
    }
    public var body: CreateIdentityProviderRequest.Body?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateIdentityProviderRequest.Body()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateIdentityProviderShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
    }
}

public class CreateIdentityProviderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var identityProviderType: String?

        public var loginEnabled: Bool?

        public var status: String?

        public var syncEnabled: Bool?

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
            if self.identityProviderType != nil {
                map["identityProviderType"] = self.identityProviderType!
            }
            if self.loginEnabled != nil {
                map["loginEnabled"] = self.loginEnabled!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.syncEnabled != nil {
                map["syncEnabled"] = self.syncEnabled!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["identityProviderType"] as? String {
                self.identityProviderType = value
            }
            if let value = dict["loginEnabled"] as? Bool {
                self.loginEnabled = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["syncEnabled"] as? Bool {
                self.syncEnabled = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: CreateIdentityProviderResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateIdentityProviderResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class CreateIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIdentityProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateIdentityProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateManagedAgentRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class Environment : Tea.TeaModel {
            public class CredentialReferences : Tea.TeaModel {
                public var credentialId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.credentialId != nil {
                        map["credentialId"] = self.credentialId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["credentialId"] as? String {
                        self.credentialId = value
                    }
                }
            }
            public class Variables : Tea.TeaModel {
                public var name: String?

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
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["value"] as? String {
                        self.value = value
                    }
                }
            }
            public var credentialReferences: [CreateManagedAgentRequest.Body.Environment.CredentialReferences]?

            public var variables: [CreateManagedAgentRequest.Body.Environment.Variables]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.credentialReferences != nil {
                    var tmp : [Any] = []
                    for k in self.credentialReferences! {
                        tmp.append(k.toMap())
                    }
                    map["credentialReferences"] = tmp
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["credentialReferences"] as? [Any?] {
                    var tmp : [CreateManagedAgentRequest.Body.Environment.CredentialReferences] = []
                    for v in value {
                        if v != nil {
                            var model = CreateManagedAgentRequest.Body.Environment.CredentialReferences()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.credentialReferences = tmp
                }
                if let value = dict["variables"] as? [Any?] {
                    var tmp : [CreateManagedAgentRequest.Body.Environment.Variables] = []
                    for v in value {
                        if v != nil {
                            var model = CreateManagedAgentRequest.Body.Environment.Variables()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.variables = tmp
                }
            }
        }
        public class Model : Tea.TeaModel {
            public var modelConnectionId: String?

            public var modelName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.modelConnectionId != nil {
                    map["modelConnectionId"] = self.modelConnectionId!
                }
                if self.modelName != nil {
                    map["modelName"] = self.modelName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["modelConnectionId"] as? String {
                    self.modelConnectionId = value
                }
                if let value = dict["modelName"] as? String {
                    self.modelName = value
                }
            }
        }
        public class Network : Tea.TeaModel {
            public class AccessInternet : Tea.TeaModel {
                public var enabled: Bool?

                public override init() {
                    super.init()
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
                        map["enabled"] = self.enabled!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                }
            }
            public class AccessVpc : Tea.TeaModel {
                public var enabled: Bool?

                public override init() {
                    super.init()
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
                        map["enabled"] = self.enabled!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                }
            }
            public var accessInternet: CreateManagedAgentRequest.Body.Network.AccessInternet?

            public var accessVpc: CreateManagedAgentRequest.Body.Network.AccessVpc?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.accessInternet?.validate()
                try self.accessVpc?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessInternet != nil {
                    map["accessInternet"] = self.accessInternet?.toMap()
                }
                if self.accessVpc != nil {
                    map["accessVpc"] = self.accessVpc?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessInternet"] as? [String: Any?] {
                    var model = CreateManagedAgentRequest.Body.Network.AccessInternet()
                    model.fromMap(value)
                    self.accessInternet = model
                }
                if let value = dict["accessVpc"] as? [String: Any?] {
                    var model = CreateManagedAgentRequest.Body.Network.AccessVpc()
                    model.fromMap(value)
                    self.accessVpc = model
                }
            }
        }
        public class Runtime : Tea.TeaModel {
            public class Compute : Tea.TeaModel {
                public var computeClass: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.computeClass != nil {
                        map["computeClass"] = self.computeClass!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["computeClass"] as? String {
                        self.computeClass = value
                    }
                }
            }
            public class SessionPolicy : Tea.TeaModel {
                public var headerName: String?

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
                    if self.headerName != nil {
                        map["headerName"] = self.headerName!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["headerName"] as? String {
                        self.headerName = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public var compute: CreateManagedAgentRequest.Body.Runtime.Compute?

            public var sessionPolicy: CreateManagedAgentRequest.Body.Runtime.SessionPolicy?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.compute?.validate()
                try self.sessionPolicy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compute != nil {
                    map["compute"] = self.compute?.toMap()
                }
                if self.sessionPolicy != nil {
                    map["sessionPolicy"] = self.sessionPolicy?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["compute"] as? [String: Any?] {
                    var model = CreateManagedAgentRequest.Body.Runtime.Compute()
                    model.fromMap(value)
                    self.compute = model
                }
                if let value = dict["sessionPolicy"] as? [String: Any?] {
                    var model = CreateManagedAgentRequest.Body.Runtime.SessionPolicy()
                    model.fromMap(value)
                    self.sessionPolicy = model
                }
            }
        }
        public class Skills : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
            }
        }
        public class SubAgents : Tea.TeaModel {
            public var instruction: String?

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
                if self.instruction != nil {
                    map["instruction"] = self.instruction!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["instruction"] as? String {
                    self.instruction = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class Template : Tea.TeaModel {
            public class AiRegistry : Tea.TeaModel {
                public var name: String?

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
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.version != nil {
                        map["version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["version"] as? String {
                        self.version = value
                    }
                }
            }
            public var aiRegistry: CreateManagedAgentRequest.Body.Template.AiRegistry?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.aiRegistry?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aiRegistry != nil {
                    map["aiRegistry"] = self.aiRegistry?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["aiRegistry"] as? [String: Any?] {
                    var model = CreateManagedAgentRequest.Body.Template.AiRegistry()
                    model.fromMap(value)
                    self.aiRegistry = model
                }
            }
        }
        public class Tools : Tea.TeaModel {
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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var description_: String?

        public var environment: CreateManagedAgentRequest.Body.Environment?

        public var instruction: String?

        public var model: CreateManagedAgentRequest.Body.Model?

        public var name: String?

        public var network: CreateManagedAgentRequest.Body.Network?

        public var runtime: CreateManagedAgentRequest.Body.Runtime?

        public var skills: [CreateManagedAgentRequest.Body.Skills]?

        public var subAgents: [CreateManagedAgentRequest.Body.SubAgents]?

        public var template: CreateManagedAgentRequest.Body.Template?

        public var tools: [CreateManagedAgentRequest.Body.Tools]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.environment?.validate()
            try self.model?.validate()
            try self.network?.validate()
            try self.runtime?.validate()
            try self.template?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.environment != nil {
                map["environment"] = self.environment?.toMap()
            }
            if self.instruction != nil {
                map["instruction"] = self.instruction!
            }
            if self.model != nil {
                map["model"] = self.model?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.network != nil {
                map["network"] = self.network?.toMap()
            }
            if self.runtime != nil {
                map["runtime"] = self.runtime?.toMap()
            }
            if self.skills != nil {
                var tmp : [Any] = []
                for k in self.skills! {
                    tmp.append(k.toMap())
                }
                map["skills"] = tmp
            }
            if self.subAgents != nil {
                var tmp : [Any] = []
                for k in self.subAgents! {
                    tmp.append(k.toMap())
                }
                map["subAgents"] = tmp
            }
            if self.template != nil {
                map["template"] = self.template?.toMap()
            }
            if self.tools != nil {
                var tmp : [Any] = []
                for k in self.tools! {
                    tmp.append(k.toMap())
                }
                map["tools"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["environment"] as? [String: Any?] {
                var model = CreateManagedAgentRequest.Body.Environment()
                model.fromMap(value)
                self.environment = model
            }
            if let value = dict["instruction"] as? String {
                self.instruction = value
            }
            if let value = dict["model"] as? [String: Any?] {
                var model = CreateManagedAgentRequest.Body.Model()
                model.fromMap(value)
                self.model = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["network"] as? [String: Any?] {
                var model = CreateManagedAgentRequest.Body.Network()
                model.fromMap(value)
                self.network = model
            }
            if let value = dict["runtime"] as? [String: Any?] {
                var model = CreateManagedAgentRequest.Body.Runtime()
                model.fromMap(value)
                self.runtime = model
            }
            if let value = dict["skills"] as? [Any?] {
                var tmp : [CreateManagedAgentRequest.Body.Skills] = []
                for v in value {
                    if v != nil {
                        var model = CreateManagedAgentRequest.Body.Skills()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.skills = tmp
            }
            if let value = dict["subAgents"] as? [Any?] {
                var tmp : [CreateManagedAgentRequest.Body.SubAgents] = []
                for v in value {
                    if v != nil {
                        var model = CreateManagedAgentRequest.Body.SubAgents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subAgents = tmp
            }
            if let value = dict["template"] as? [String: Any?] {
                var model = CreateManagedAgentRequest.Body.Template()
                model.fromMap(value)
                self.template = model
            }
            if let value = dict["tools"] as? [Any?] {
                var tmp : [CreateManagedAgentRequest.Body.Tools] = []
                for v in value {
                    if v != nil {
                        var model = CreateManagedAgentRequest.Body.Tools()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tools = tmp
            }
        }
    }
    public var body: CreateManagedAgentRequest.Body?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateManagedAgentRequest.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateManagedAgentShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateManagedAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Environment : Tea.TeaModel {
            public class CredentialReferences : Tea.TeaModel {
                public var credentialId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.credentialId != nil {
                        map["credentialId"] = self.credentialId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["credentialId"] as? String {
                        self.credentialId = value
                    }
                }
            }
            public class Variables : Tea.TeaModel {
                public var name: String?

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
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["value"] as? String {
                        self.value = value
                    }
                }
            }
            public var credentialReferences: [CreateManagedAgentResponseBody.Data.Environment.CredentialReferences]?

            public var variables: [CreateManagedAgentResponseBody.Data.Environment.Variables]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.credentialReferences != nil {
                    var tmp : [Any] = []
                    for k in self.credentialReferences! {
                        tmp.append(k.toMap())
                    }
                    map["credentialReferences"] = tmp
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["credentialReferences"] as? [Any?] {
                    var tmp : [CreateManagedAgentResponseBody.Data.Environment.CredentialReferences] = []
                    for v in value {
                        if v != nil {
                            var model = CreateManagedAgentResponseBody.Data.Environment.CredentialReferences()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.credentialReferences = tmp
                }
                if let value = dict["variables"] as? [Any?] {
                    var tmp : [CreateManagedAgentResponseBody.Data.Environment.Variables] = []
                    for v in value {
                        if v != nil {
                            var model = CreateManagedAgentResponseBody.Data.Environment.Variables()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.variables = tmp
                }
            }
        }
        public class Model : Tea.TeaModel {
            public var modelConnectionId: String?

            public var modelName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.modelConnectionId != nil {
                    map["modelConnectionId"] = self.modelConnectionId!
                }
                if self.modelName != nil {
                    map["modelName"] = self.modelName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["modelConnectionId"] as? String {
                    self.modelConnectionId = value
                }
                if let value = dict["modelName"] as? String {
                    self.modelName = value
                }
            }
        }
        public class Network : Tea.TeaModel {
            public class AccessInternet : Tea.TeaModel {
                public var enabled: Bool?

                public override init() {
                    super.init()
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
                        map["enabled"] = self.enabled!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                }
            }
            public class AccessVpc : Tea.TeaModel {
                public var enabled: Bool?

                public override init() {
                    super.init()
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
                        map["enabled"] = self.enabled!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                }
            }
            public var accessInternet: CreateManagedAgentResponseBody.Data.Network.AccessInternet?

            public var accessVpc: CreateManagedAgentResponseBody.Data.Network.AccessVpc?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.accessInternet?.validate()
                try self.accessVpc?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessInternet != nil {
                    map["accessInternet"] = self.accessInternet?.toMap()
                }
                if self.accessVpc != nil {
                    map["accessVpc"] = self.accessVpc?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessInternet"] as? [String: Any?] {
                    var model = CreateManagedAgentResponseBody.Data.Network.AccessInternet()
                    model.fromMap(value)
                    self.accessInternet = model
                }
                if let value = dict["accessVpc"] as? [String: Any?] {
                    var model = CreateManagedAgentResponseBody.Data.Network.AccessVpc()
                    model.fromMap(value)
                    self.accessVpc = model
                }
            }
        }
        public class Runtime : Tea.TeaModel {
            public class Compute : Tea.TeaModel {
                public var computeClass: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.computeClass != nil {
                        map["computeClass"] = self.computeClass!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["computeClass"] as? String {
                        self.computeClass = value
                    }
                }
            }
            public class SessionPolicy : Tea.TeaModel {
                public var headerName: String?

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
                    if self.headerName != nil {
                        map["headerName"] = self.headerName!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["headerName"] as? String {
                        self.headerName = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public var compute: CreateManagedAgentResponseBody.Data.Runtime.Compute?

            public var sessionPolicy: CreateManagedAgentResponseBody.Data.Runtime.SessionPolicy?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.compute?.validate()
                try self.sessionPolicy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compute != nil {
                    map["compute"] = self.compute?.toMap()
                }
                if self.sessionPolicy != nil {
                    map["sessionPolicy"] = self.sessionPolicy?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["compute"] as? [String: Any?] {
                    var model = CreateManagedAgentResponseBody.Data.Runtime.Compute()
                    model.fromMap(value)
                    self.compute = model
                }
                if let value = dict["sessionPolicy"] as? [String: Any?] {
                    var model = CreateManagedAgentResponseBody.Data.Runtime.SessionPolicy()
                    model.fromMap(value)
                    self.sessionPolicy = model
                }
            }
        }
        public class Skills : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
            }
        }
        public class SubAgents : Tea.TeaModel {
            public var instruction: String?

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
                if self.instruction != nil {
                    map["instruction"] = self.instruction!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["instruction"] as? String {
                    self.instruction = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class Template : Tea.TeaModel {
            public class AiRegistry : Tea.TeaModel {
                public var name: String?

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
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.version != nil {
                        map["version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["version"] as? String {
                        self.version = value
                    }
                }
            }
            public var aiRegistry: CreateManagedAgentResponseBody.Data.Template.AiRegistry?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.aiRegistry?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aiRegistry != nil {
                    map["aiRegistry"] = self.aiRegistry?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["aiRegistry"] as? [String: Any?] {
                    var model = CreateManagedAgentResponseBody.Data.Template.AiRegistry()
                    model.fromMap(value)
                    self.aiRegistry = model
                }
            }
        }
        public class Tools : Tea.TeaModel {
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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var agentId: String?

        public var createMode: String?

        public var createdAt: String?

        public var deployType: String?

        public var description_: String?

        public var environment: CreateManagedAgentResponseBody.Data.Environment?

        public var instruction: String?

        public var latestSpecVersion: Int64?

        public var latestVersionStatus: String?

        public var model: CreateManagedAgentResponseBody.Data.Model?

        public var name: String?

        public var network: CreateManagedAgentResponseBody.Data.Network?

        public var regionId: String?

        public var runtime: CreateManagedAgentResponseBody.Data.Runtime?

        public var skills: [CreateManagedAgentResponseBody.Data.Skills]?

        public var status: String?

        public var subAgents: [CreateManagedAgentResponseBody.Data.SubAgents]?

        public var template: CreateManagedAgentResponseBody.Data.Template?

        public var tools: [CreateManagedAgentResponseBody.Data.Tools]?

        public var updatedAt: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.environment?.validate()
            try self.model?.validate()
            try self.network?.validate()
            try self.runtime?.validate()
            try self.template?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentId != nil {
                map["agentId"] = self.agentId!
            }
            if self.createMode != nil {
                map["createMode"] = self.createMode!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.deployType != nil {
                map["deployType"] = self.deployType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.environment != nil {
                map["environment"] = self.environment?.toMap()
            }
            if self.instruction != nil {
                map["instruction"] = self.instruction!
            }
            if self.latestSpecVersion != nil {
                map["latestSpecVersion"] = self.latestSpecVersion!
            }
            if self.latestVersionStatus != nil {
                map["latestVersionStatus"] = self.latestVersionStatus!
            }
            if self.model != nil {
                map["model"] = self.model?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.network != nil {
                map["network"] = self.network?.toMap()
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.runtime != nil {
                map["runtime"] = self.runtime?.toMap()
            }
            if self.skills != nil {
                var tmp : [Any] = []
                for k in self.skills! {
                    tmp.append(k.toMap())
                }
                map["skills"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.subAgents != nil {
                var tmp : [Any] = []
                for k in self.subAgents! {
                    tmp.append(k.toMap())
                }
                map["subAgents"] = tmp
            }
            if self.template != nil {
                map["template"] = self.template?.toMap()
            }
            if self.tools != nil {
                var tmp : [Any] = []
                for k in self.tools! {
                    tmp.append(k.toMap())
                }
                map["tools"] = tmp
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentId"] as? String {
                self.agentId = value
            }
            if let value = dict["createMode"] as? String {
                self.createMode = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["deployType"] as? String {
                self.deployType = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["environment"] as? [String: Any?] {
                var model = CreateManagedAgentResponseBody.Data.Environment()
                model.fromMap(value)
                self.environment = model
            }
            if let value = dict["instruction"] as? String {
                self.instruction = value
            }
            if let value = dict["latestSpecVersion"] as? Int64 {
                self.latestSpecVersion = value
            }
            if let value = dict["latestVersionStatus"] as? String {
                self.latestVersionStatus = value
            }
            if let value = dict["model"] as? [String: Any?] {
                var model = CreateManagedAgentResponseBody.Data.Model()
                model.fromMap(value)
                self.model = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["network"] as? [String: Any?] {
                var model = CreateManagedAgentResponseBody.Data.Network()
                model.fromMap(value)
                self.network = model
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["runtime"] as? [String: Any?] {
                var model = CreateManagedAgentResponseBody.Data.Runtime()
                model.fromMap(value)
                self.runtime = model
            }
            if let value = dict["skills"] as? [Any?] {
                var tmp : [CreateManagedAgentResponseBody.Data.Skills] = []
                for v in value {
                    if v != nil {
                        var model = CreateManagedAgentResponseBody.Data.Skills()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.skills = tmp
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["subAgents"] as? [Any?] {
                var tmp : [CreateManagedAgentResponseBody.Data.SubAgents] = []
                for v in value {
                    if v != nil {
                        var model = CreateManagedAgentResponseBody.Data.SubAgents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subAgents = tmp
            }
            if let value = dict["template"] as? [String: Any?] {
                var model = CreateManagedAgentResponseBody.Data.Template()
                model.fromMap(value)
                self.template = model
            }
            if let value = dict["tools"] as? [Any?] {
                var tmp : [CreateManagedAgentResponseBody.Data.Tools] = []
                for v in value {
                    if v != nil {
                        var model = CreateManagedAgentResponseBody.Data.Tools()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tools = tmp
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: CreateManagedAgentResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateManagedAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class CreateManagedAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateManagedAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateManagedAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateModelRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class Capabilities : Tea.TeaModel {
            public var audio: Bool?

            public var document: Bool?

            public var multiToolCall: Bool?

            public var reasoning: Bool?

            public var streamToolCall: Bool?

            public var toolCall: Bool?

            public var video: Bool?

            public var vision: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audio != nil {
                    map["audio"] = self.audio!
                }
                if self.document != nil {
                    map["document"] = self.document!
                }
                if self.multiToolCall != nil {
                    map["multiToolCall"] = self.multiToolCall!
                }
                if self.reasoning != nil {
                    map["reasoning"] = self.reasoning!
                }
                if self.streamToolCall != nil {
                    map["streamToolCall"] = self.streamToolCall!
                }
                if self.toolCall != nil {
                    map["toolCall"] = self.toolCall!
                }
                if self.video != nil {
                    map["video"] = self.video!
                }
                if self.vision != nil {
                    map["vision"] = self.vision!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["audio"] as? Bool {
                    self.audio = value
                }
                if let value = dict["document"] as? Bool {
                    self.document = value
                }
                if let value = dict["multiToolCall"] as? Bool {
                    self.multiToolCall = value
                }
                if let value = dict["reasoning"] as? Bool {
                    self.reasoning = value
                }
                if let value = dict["streamToolCall"] as? Bool {
                    self.streamToolCall = value
                }
                if let value = dict["toolCall"] as? Bool {
                    self.toolCall = value
                }
                if let value = dict["video"] as? Bool {
                    self.video = value
                }
                if let value = dict["vision"] as? Bool {
                    self.vision = value
                }
            }
        }
        public var capabilities: CreateModelRequest.Body.Capabilities?

        public var connectionId: String?

        public var contextSize: Int64?

        public var description_: String?

        public var maxTokens: Int64?

        public var modelName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.capabilities?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capabilities != nil {
                map["capabilities"] = self.capabilities?.toMap()
            }
            if self.connectionId != nil {
                map["connectionId"] = self.connectionId!
            }
            if self.contextSize != nil {
                map["contextSize"] = self.contextSize!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.maxTokens != nil {
                map["maxTokens"] = self.maxTokens!
            }
            if self.modelName != nil {
                map["modelName"] = self.modelName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["capabilities"] as? [String: Any?] {
                var model = CreateModelRequest.Body.Capabilities()
                model.fromMap(value)
                self.capabilities = model
            }
            if let value = dict["connectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["contextSize"] as? Int64 {
                self.contextSize = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["maxTokens"] as? Int64 {
                self.maxTokens = value
            }
            if let value = dict["modelName"] as? String {
                self.modelName = value
            }
        }
    }
    public var body: CreateModelRequest.Body?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateModelRequest.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateModelShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Capabilities : Tea.TeaModel {
            public var audio: Bool?

            public var document: Bool?

            public var multiToolCall: Bool?

            public var reasoning: Bool?

            public var streamToolCall: Bool?

            public var toolCall: Bool?

            public var video: Bool?

            public var vision: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audio != nil {
                    map["audio"] = self.audio!
                }
                if self.document != nil {
                    map["document"] = self.document!
                }
                if self.multiToolCall != nil {
                    map["multiToolCall"] = self.multiToolCall!
                }
                if self.reasoning != nil {
                    map["reasoning"] = self.reasoning!
                }
                if self.streamToolCall != nil {
                    map["streamToolCall"] = self.streamToolCall!
                }
                if self.toolCall != nil {
                    map["toolCall"] = self.toolCall!
                }
                if self.video != nil {
                    map["video"] = self.video!
                }
                if self.vision != nil {
                    map["vision"] = self.vision!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["audio"] as? Bool {
                    self.audio = value
                }
                if let value = dict["document"] as? Bool {
                    self.document = value
                }
                if let value = dict["multiToolCall"] as? Bool {
                    self.multiToolCall = value
                }
                if let value = dict["reasoning"] as? Bool {
                    self.reasoning = value
                }
                if let value = dict["streamToolCall"] as? Bool {
                    self.streamToolCall = value
                }
                if let value = dict["toolCall"] as? Bool {
                    self.toolCall = value
                }
                if let value = dict["video"] as? Bool {
                    self.video = value
                }
                if let value = dict["vision"] as? Bool {
                    self.vision = value
                }
            }
        }
        public var capabilities: CreateModelResponseBody.Data.Capabilities?

        public var connectionId: String?

        public var contextSize: Int64?

        public var createdAt: String?

        public var description_: String?

        public var maxTokens: Int64?

        public var modelId: String?

        public var modelName: String?

        public var updatedAt: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.capabilities?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capabilities != nil {
                map["capabilities"] = self.capabilities?.toMap()
            }
            if self.connectionId != nil {
                map["connectionId"] = self.connectionId!
            }
            if self.contextSize != nil {
                map["contextSize"] = self.contextSize!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.maxTokens != nil {
                map["maxTokens"] = self.maxTokens!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["modelName"] = self.modelName!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["capabilities"] as? [String: Any?] {
                var model = CreateModelResponseBody.Data.Capabilities()
                model.fromMap(value)
                self.capabilities = model
            }
            if let value = dict["connectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["contextSize"] as? Int64 {
                self.contextSize = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["maxTokens"] as? Int64 {
                self.maxTokens = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
            if let value = dict["modelName"] as? String {
                self.modelName = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: CreateModelResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateModelResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class CreateModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateModelConnectionRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var apiKeys: [String]?

        public var description_: String?

        public var endpoint: String?

        public var name: String?

        public var protocol_: String?

        public var providerType: String?

        public override init() {
            super.init()
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
                map["apiKeys"] = self.apiKeys!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            if self.providerType != nil {
                map["providerType"] = self.providerType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKeys"] as? [String] {
                self.apiKeys = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["providerType"] as? String {
                self.providerType = value
            }
        }
    }
    public var body: CreateModelConnectionRequest.Body?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateModelConnectionRequest.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateModelConnectionShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateModelConnectionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var apiKeyCount: Int32?

        public var connectionId: String?

        public var createdAt: String?

        public var credentialConfigured: Bool?

        public var description_: String?

        public var endpoint: String?

        public var name: String?

        public var protocol_: String?

        public var providerType: String?

        public var status: String?

        public var statusReason: String?

        public var updatedAt: String?

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
            if self.apiKeyCount != nil {
                map["apiKeyCount"] = self.apiKeyCount!
            }
            if self.connectionId != nil {
                map["connectionId"] = self.connectionId!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.credentialConfigured != nil {
                map["credentialConfigured"] = self.credentialConfigured!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            if self.providerType != nil {
                map["providerType"] = self.providerType!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusReason != nil {
                map["statusReason"] = self.statusReason!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKeyCount"] as? Int32 {
                self.apiKeyCount = value
            }
            if let value = dict["connectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["credentialConfigured"] as? Bool {
                self.credentialConfigured = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["providerType"] as? String {
                self.providerType = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["statusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: CreateModelConnectionResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateModelConnectionResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class CreateModelConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModelConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateModelConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTeamRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class Agents : Tea.TeaModel {
            public var agentId: String?

            public var teamRole: String?

            public override init() {
                super.init()
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
                    map["agentId"] = self.agentId!
                }
                if self.teamRole != nil {
                    map["teamRole"] = self.teamRole!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["agentId"] as? String {
                    self.agentId = value
                }
                if let value = dict["teamRole"] as? String {
                    self.teamRole = value
                }
            }
        }
        public class Users : Tea.TeaModel {
            public var teamRole: String?

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
                if self.teamRole != nil {
                    map["teamRole"] = self.teamRole!
                }
                if self.userId != nil {
                    map["userId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["teamRole"] as? String {
                    self.teamRole = value
                }
                if let value = dict["userId"] as? String {
                    self.userId = value
                }
            }
        }
        public var agents: [CreateTeamRequest.Body.Agents]?

        public var description_: String?

        public var name: String?

        public var users: [CreateTeamRequest.Body.Users]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agents != nil {
                var tmp : [Any] = []
                for k in self.agents! {
                    tmp.append(k.toMap())
                }
                map["agents"] = tmp
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.users != nil {
                var tmp : [Any] = []
                for k in self.users! {
                    tmp.append(k.toMap())
                }
                map["users"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agents"] as? [Any?] {
                var tmp : [CreateTeamRequest.Body.Agents] = []
                for v in value {
                    if v != nil {
                        var model = CreateTeamRequest.Body.Agents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agents = tmp
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["users"] as? [Any?] {
                var tmp : [CreateTeamRequest.Body.Users] = []
                for v in value {
                    if v != nil {
                        var model = CreateTeamRequest.Body.Users()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.users = tmp
            }
        }
    }
    public var body: CreateTeamRequest.Body?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTeamRequest.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateTeamShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateTeamResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Agents : Tea.TeaModel {
            public var agentId: String?

            public var teamRole: String?

            public override init() {
                super.init()
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
                    map["agentId"] = self.agentId!
                }
                if self.teamRole != nil {
                    map["teamRole"] = self.teamRole!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["agentId"] as? String {
                    self.agentId = value
                }
                if let value = dict["teamRole"] as? String {
                    self.teamRole = value
                }
            }
        }
        public class Users : Tea.TeaModel {
            public var teamRole: String?

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
                if self.teamRole != nil {
                    map["teamRole"] = self.teamRole!
                }
                if self.userId != nil {
                    map["userId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["teamRole"] as? String {
                    self.teamRole = value
                }
                if let value = dict["userId"] as? String {
                    self.userId = value
                }
            }
        }
        public var agents: [CreateTeamResponseBody.Data.Agents]?

        public var createdAt: String?

        public var description_: String?

        public var name: String?

        public var status: String?

        public var teamId: String?

        public var updatedAt: String?

        public var users: [CreateTeamResponseBody.Data.Users]?

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
            if self.agents != nil {
                var tmp : [Any] = []
                for k in self.agents! {
                    tmp.append(k.toMap())
                }
                map["agents"] = tmp
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.teamId != nil {
                map["teamId"] = self.teamId!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.users != nil {
                var tmp : [Any] = []
                for k in self.users! {
                    tmp.append(k.toMap())
                }
                map["users"] = tmp
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agents"] as? [Any?] {
                var tmp : [CreateTeamResponseBody.Data.Agents] = []
                for v in value {
                    if v != nil {
                        var model = CreateTeamResponseBody.Data.Agents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agents = tmp
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["teamId"] as? String {
                self.teamId = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["users"] as? [Any?] {
                var tmp : [CreateTeamResponseBody.Data.Users] = []
                for v in value {
                    if v != nil {
                        var model = CreateTeamResponseBody.Data.Users()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.users = tmp
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: CreateTeamResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateTeamResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class CreateTeamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTeamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTeamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUserRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var displayName: String?

        public var email: String?

        public var name: String?

        public var note: String?

        public var password: String?

        public override init() {
            super.init()
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
                map["displayName"] = self.displayName!
            }
            if self.email != nil {
                map["email"] = self.email!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.note != nil {
                map["note"] = self.note!
            }
            if self.password != nil {
                map["password"] = self.password!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["email"] as? String {
                self.email = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["note"] as? String {
                self.note = value
            }
            if let value = dict["password"] as? String {
                self.password = value
            }
        }
    }
    public var body: CreateUserRequest.Body?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateUserRequest.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateUserShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agentCoreUserId: String?

        public var authMethod: String?

        public var createdAt: String?

        public var displayName: String?

        public var email: String?

        public var initialPassword: String?

        public var name: String?

        public var note: String?

        public var regionId: String?

        public var status: String?

        public var updatedAt: String?

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
            if self.agentCoreUserId != nil {
                map["agentCoreUserId"] = self.agentCoreUserId!
            }
            if self.authMethod != nil {
                map["authMethod"] = self.authMethod!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.email != nil {
                map["email"] = self.email!
            }
            if self.initialPassword != nil {
                map["initialPassword"] = self.initialPassword!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.note != nil {
                map["note"] = self.note!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentCoreUserId"] as? String {
                self.agentCoreUserId = value
            }
            if let value = dict["authMethod"] as? String {
                self.authMethod = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["email"] as? String {
                self.email = value
            }
            if let value = dict["initialPassword"] as? String {
                self.initialPassword = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["note"] as? String {
                self.note = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: CreateUserResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateUserResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class CreateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWorkspaceRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class NetworkConfiguration : Tea.TeaModel {
            public class Vpc : Tea.TeaModel {
                public var enabled: Bool?

                public var vSwitchIds: [String]?

                public var vpcId: String?

                public override init() {
                    super.init()
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
                        map["enabled"] = self.enabled!
                    }
                    if self.vSwitchIds != nil {
                        map["vSwitchIds"] = self.vSwitchIds!
                    }
                    if self.vpcId != nil {
                        map["vpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                    if let value = dict["vSwitchIds"] as? [String] {
                        self.vSwitchIds = value
                    }
                    if let value = dict["vpcId"] as? String {
                        self.vpcId = value
                    }
                }
            }
            public var vpc: CreateWorkspaceRequest.Body.NetworkConfiguration.Vpc?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.vpc?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.vpc != nil {
                    map["vpc"] = self.vpc?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["vpc"] as? [String: Any?] {
                    var model = CreateWorkspaceRequest.Body.NetworkConfiguration.Vpc()
                    model.fromMap(value)
                    self.vpc = model
                }
            }
        }
        public var name: String?

        public var networkConfiguration: CreateWorkspaceRequest.Body.NetworkConfiguration?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.networkConfiguration?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.networkConfiguration != nil {
                map["networkConfiguration"] = self.networkConfiguration?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["networkConfiguration"] as? [String: Any?] {
                var model = CreateWorkspaceRequest.Body.NetworkConfiguration()
                model.fromMap(value)
                self.networkConfiguration = model
            }
        }
    }
    public var body: CreateWorkspaceRequest.Body?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateWorkspaceRequest.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateWorkspaceShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CreateWorkspaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class NetworkConfiguration : Tea.TeaModel {
            public class Vpc : Tea.TeaModel {
                public var enabled: Bool?

                public var vSwitchIds: [String]?

                public var vpcId: String?

                public override init() {
                    super.init()
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
                        map["enabled"] = self.enabled!
                    }
                    if self.vSwitchIds != nil {
                        map["vSwitchIds"] = self.vSwitchIds!
                    }
                    if self.vpcId != nil {
                        map["vpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                    if let value = dict["vSwitchIds"] as? [String] {
                        self.vSwitchIds = value
                    }
                    if let value = dict["vpcId"] as? String {
                        self.vpcId = value
                    }
                }
            }
            public var vpc: CreateWorkspaceResponseBody.Data.NetworkConfiguration.Vpc?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.vpc?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.vpc != nil {
                    map["vpc"] = self.vpc?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["vpc"] as? [String: Any?] {
                    var model = CreateWorkspaceResponseBody.Data.NetworkConfiguration.Vpc()
                    model.fromMap(value)
                    self.vpc = model
                }
            }
        }
        public var name: String?

        public var networkConfiguration: CreateWorkspaceResponseBody.Data.NetworkConfiguration?

        public var regionId: String?

        public var status: String?

        public var tenantId: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.networkConfiguration?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.networkConfiguration != nil {
                map["networkConfiguration"] = self.networkConfiguration?.toMap()
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["networkConfiguration"] as? [String: Any?] {
                var model = CreateWorkspaceResponseBody.Data.NetworkConfiguration()
                model.fromMap(value)
                self.networkConfiguration = model
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["tenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: CreateWorkspaceResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateWorkspaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class DebugModelRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var prompt: String?

        public override init() {
            super.init()
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
                map["prompt"] = self.prompt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["prompt"] as? String {
                self.prompt = value
            }
        }
    }
    public var body: DebugModelRequest.Body?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = DebugModelRequest.Body()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DebugModelShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
    }
}

public class DebugModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var connectionId: String?

        public var debugSuccess: Bool?

        public var errorCode: String?

        public var errorMessage: String?

        public var inputTokens: Int64?

        public var latencyMs: Int64?

        public var modelId: String?

        public var outputTokens: Int64?

        public var response: String?

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
            if self.connectionId != nil {
                map["connectionId"] = self.connectionId!
            }
            if self.debugSuccess != nil {
                map["debugSuccess"] = self.debugSuccess!
            }
            if self.errorCode != nil {
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.inputTokens != nil {
                map["inputTokens"] = self.inputTokens!
            }
            if self.latencyMs != nil {
                map["latencyMs"] = self.latencyMs!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.outputTokens != nil {
                map["outputTokens"] = self.outputTokens!
            }
            if self.response != nil {
                map["response"] = self.response!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["connectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["debugSuccess"] as? Bool {
                self.debugSuccess = value
            }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["inputTokens"] as? Int64 {
                self.inputTokens = value
            }
            if let value = dict["latencyMs"] as? Int64 {
                self.latencyMs = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
            if let value = dict["outputTokens"] as? Int64 {
                self.outputTokens = value
            }
            if let value = dict["response"] as? String {
                self.response = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: DebugModelResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DebugModelResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class DebugModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DebugModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DebugModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCredentialRequest : Tea.TeaModel {
    public var clientToken: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class DeleteCredentialResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var credentialId: String?

        public var name: String?

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
            if self.credentialId != nil {
                map["credentialId"] = self.credentialId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["credentialId"] as? String {
                self.credentialId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: DeleteCredentialResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DeleteCredentialResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class DeleteCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCredentialResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteCredentialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteIdentityProviderRequest : Tea.TeaModel {
    public var clientToken: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class DeleteIdentityProviderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var identityProviderType: String?

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
            if self.identityProviderType != nil {
                map["identityProviderType"] = self.identityProviderType!
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
            if let value = dict["identityProviderType"] as? String {
                self.identityProviderType = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: DeleteIdentityProviderResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DeleteIdentityProviderResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class DeleteIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIdentityProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteIdentityProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteManagedAgentRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class DeleteManagedAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agentId: String?

        public var createMode: String?

        public var createdAt: String?

        public var deployType: String?

        public var description_: String?

        public var effectiveSpecVersion: Int64?

        public var latestSpecVersion: Int64?

        public var name: String?

        public var runtime: String?

        public var status: String?

        public var updatedAt: String?

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
            if self.agentId != nil {
                map["agentId"] = self.agentId!
            }
            if self.createMode != nil {
                map["createMode"] = self.createMode!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.deployType != nil {
                map["deployType"] = self.deployType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.effectiveSpecVersion != nil {
                map["effectiveSpecVersion"] = self.effectiveSpecVersion!
            }
            if self.latestSpecVersion != nil {
                map["latestSpecVersion"] = self.latestSpecVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.runtime != nil {
                map["runtime"] = self.runtime!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentId"] as? String {
                self.agentId = value
            }
            if let value = dict["createMode"] as? String {
                self.createMode = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["deployType"] as? String {
                self.deployType = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["effectiveSpecVersion"] as? Int64 {
                self.effectiveSpecVersion = value
            }
            if let value = dict["latestSpecVersion"] as? Int64 {
                self.latestSpecVersion = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["runtime"] as? String {
                self.runtime = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: DeleteManagedAgentResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DeleteManagedAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class DeleteManagedAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteManagedAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteManagedAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteModelRequest : Tea.TeaModel {
    public var clientToken: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class DeleteModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var modelId: String?

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
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: DeleteModelResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DeleteModelResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class DeleteModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteModelConnectionRequest : Tea.TeaModel {
    public var clientToken: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class DeleteModelConnectionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var connectionId: String?

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
            if self.connectionId != nil {
                map["connectionId"] = self.connectionId!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["connectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: DeleteModelConnectionResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DeleteModelConnectionResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class DeleteModelConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModelConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteModelConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTeamRequest : Tea.TeaModel {
    public var clientToken: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class DeleteTeamResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var name: String?

        public var status: String?

        public var teamId: String?

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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.teamId != nil {
                map["teamId"] = self.teamId!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["teamId"] as? String {
                self.teamId = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: DeleteTeamResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DeleteTeamResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class DeleteTeamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTeamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteTeamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserRequest : Tea.TeaModel {
    public var clientToken: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class DeleteUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agentCoreUserId: String?

        public var name: String?

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
            if self.agentCoreUserId != nil {
                map["agentCoreUserId"] = self.agentCoreUserId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentCoreUserId"] as? String {
                self.agentCoreUserId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: DeleteUserResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DeleteUserResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class DeleteUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteUserResponseBody()
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
    public class Data : Tea.TeaModel {
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
    public var code: String?

    public var data: DeleteWorkspaceResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DeleteWorkspaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class GetCredentialRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetCredentialResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BoundAgents : Tea.TeaModel {
            public var agentId: String?

            public var agentName: String?

            public override init() {
                super.init()
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
                    map["agentId"] = self.agentId!
                }
                if self.agentName != nil {
                    map["agentName"] = self.agentName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["agentId"] as? String {
                    self.agentId = value
                }
                if let value = dict["agentName"] as? String {
                    self.agentName = value
                }
            }
        }
        public var boundAgents: [GetCredentialResponseBody.Data.BoundAgents]?

        public var createdAt: String?

        public var credentialId: String?

        public var credentialMetadata: String?

        public var credentialType: String?

        public var description_: String?

        public var name: String?

        public var regionId: String?

        public var updatedAt: String?

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
            if self.boundAgents != nil {
                var tmp : [Any] = []
                for k in self.boundAgents! {
                    tmp.append(k.toMap())
                }
                map["boundAgents"] = tmp
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.credentialId != nil {
                map["credentialId"] = self.credentialId!
            }
            if self.credentialMetadata != nil {
                map["credentialMetadata"] = self.credentialMetadata!
            }
            if self.credentialType != nil {
                map["credentialType"] = self.credentialType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["boundAgents"] as? [Any?] {
                var tmp : [GetCredentialResponseBody.Data.BoundAgents] = []
                for v in value {
                    if v != nil {
                        var model = GetCredentialResponseBody.Data.BoundAgents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.boundAgents = tmp
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["credentialId"] as? String {
                self.credentialId = value
            }
            if let value = dict["credentialMetadata"] as? String {
                self.credentialMetadata = value
            }
            if let value = dict["credentialType"] as? String {
                self.credentialType = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: GetCredentialResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = GetCredentialResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class GetCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCredentialResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetCredentialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIdentityProviderRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetIdentityProviderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Metadata : Tea.TeaModel {
            public var appId: String?

            public var appKey: String?

            public var corpId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appId != nil {
                    map["appId"] = self.appId!
                }
                if self.appKey != nil {
                    map["appKey"] = self.appKey!
                }
                if self.corpId != nil {
                    map["corpId"] = self.corpId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["appId"] as? String {
                    self.appId = value
                }
                if let value = dict["appKey"] as? String {
                    self.appKey = value
                }
                if let value = dict["corpId"] as? String {
                    self.corpId = value
                }
            }
        }
        public var createdAt: String?

        public var eventSubscriptionCallbackUrl: String?

        public var identityProviderType: String?

        public var loginCallbackUrl: String?

        public var loginEnabled: Bool?

        public var metadata: GetIdentityProviderResponseBody.Data.Metadata?

        public var status: String?

        public var syncEnabled: Bool?

        public var updatedAt: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.metadata?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.eventSubscriptionCallbackUrl != nil {
                map["eventSubscriptionCallbackUrl"] = self.eventSubscriptionCallbackUrl!
            }
            if self.identityProviderType != nil {
                map["identityProviderType"] = self.identityProviderType!
            }
            if self.loginCallbackUrl != nil {
                map["loginCallbackUrl"] = self.loginCallbackUrl!
            }
            if self.loginEnabled != nil {
                map["loginEnabled"] = self.loginEnabled!
            }
            if self.metadata != nil {
                map["metadata"] = self.metadata?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.syncEnabled != nil {
                map["syncEnabled"] = self.syncEnabled!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["eventSubscriptionCallbackUrl"] as? String {
                self.eventSubscriptionCallbackUrl = value
            }
            if let value = dict["identityProviderType"] as? String {
                self.identityProviderType = value
            }
            if let value = dict["loginCallbackUrl"] as? String {
                self.loginCallbackUrl = value
            }
            if let value = dict["loginEnabled"] as? Bool {
                self.loginEnabled = value
            }
            if let value = dict["metadata"] as? [String: Any?] {
                var model = GetIdentityProviderResponseBody.Data.Metadata()
                model.fromMap(value)
                self.metadata = model
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["syncEnabled"] as? Bool {
                self.syncEnabled = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: GetIdentityProviderResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = GetIdentityProviderResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class GetIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIdentityProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetIdentityProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetManagedAgentRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetManagedAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Environment : Tea.TeaModel {
            public class CredentialReferences : Tea.TeaModel {
                public var credentialId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.credentialId != nil {
                        map["credentialId"] = self.credentialId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["credentialId"] as? String {
                        self.credentialId = value
                    }
                }
            }
            public class Variables : Tea.TeaModel {
                public var name: String?

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
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["value"] as? String {
                        self.value = value
                    }
                }
            }
            public var credentialReferences: [GetManagedAgentResponseBody.Data.Environment.CredentialReferences]?

            public var variables: [GetManagedAgentResponseBody.Data.Environment.Variables]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.credentialReferences != nil {
                    var tmp : [Any] = []
                    for k in self.credentialReferences! {
                        tmp.append(k.toMap())
                    }
                    map["credentialReferences"] = tmp
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["credentialReferences"] as? [Any?] {
                    var tmp : [GetManagedAgentResponseBody.Data.Environment.CredentialReferences] = []
                    for v in value {
                        if v != nil {
                            var model = GetManagedAgentResponseBody.Data.Environment.CredentialReferences()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.credentialReferences = tmp
                }
                if let value = dict["variables"] as? [Any?] {
                    var tmp : [GetManagedAgentResponseBody.Data.Environment.Variables] = []
                    for v in value {
                        if v != nil {
                            var model = GetManagedAgentResponseBody.Data.Environment.Variables()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.variables = tmp
                }
            }
        }
        public class Model : Tea.TeaModel {
            public var modelConnectionId: String?

            public var modelName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.modelConnectionId != nil {
                    map["modelConnectionId"] = self.modelConnectionId!
                }
                if self.modelName != nil {
                    map["modelName"] = self.modelName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["modelConnectionId"] as? String {
                    self.modelConnectionId = value
                }
                if let value = dict["modelName"] as? String {
                    self.modelName = value
                }
            }
        }
        public class Network : Tea.TeaModel {
            public class AccessInternet : Tea.TeaModel {
                public var enabled: Bool?

                public override init() {
                    super.init()
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
                        map["enabled"] = self.enabled!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                }
            }
            public class AccessVpc : Tea.TeaModel {
                public var enabled: Bool?

                public override init() {
                    super.init()
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
                        map["enabled"] = self.enabled!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                }
            }
            public var accessInternet: GetManagedAgentResponseBody.Data.Network.AccessInternet?

            public var accessVpc: GetManagedAgentResponseBody.Data.Network.AccessVpc?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.accessInternet?.validate()
                try self.accessVpc?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessInternet != nil {
                    map["accessInternet"] = self.accessInternet?.toMap()
                }
                if self.accessVpc != nil {
                    map["accessVpc"] = self.accessVpc?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessInternet"] as? [String: Any?] {
                    var model = GetManagedAgentResponseBody.Data.Network.AccessInternet()
                    model.fromMap(value)
                    self.accessInternet = model
                }
                if let value = dict["accessVpc"] as? [String: Any?] {
                    var model = GetManagedAgentResponseBody.Data.Network.AccessVpc()
                    model.fromMap(value)
                    self.accessVpc = model
                }
            }
        }
        public class Runtime : Tea.TeaModel {
            public class Compute : Tea.TeaModel {
                public var computeClass: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.computeClass != nil {
                        map["computeClass"] = self.computeClass!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["computeClass"] as? String {
                        self.computeClass = value
                    }
                }
            }
            public class SessionPolicy : Tea.TeaModel {
                public var headerName: String?

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
                    if self.headerName != nil {
                        map["headerName"] = self.headerName!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["headerName"] as? String {
                        self.headerName = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public var compute: GetManagedAgentResponseBody.Data.Runtime.Compute?

            public var sessionPolicy: GetManagedAgentResponseBody.Data.Runtime.SessionPolicy?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.compute?.validate()
                try self.sessionPolicy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compute != nil {
                    map["compute"] = self.compute?.toMap()
                }
                if self.sessionPolicy != nil {
                    map["sessionPolicy"] = self.sessionPolicy?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["compute"] as? [String: Any?] {
                    var model = GetManagedAgentResponseBody.Data.Runtime.Compute()
                    model.fromMap(value)
                    self.compute = model
                }
                if let value = dict["sessionPolicy"] as? [String: Any?] {
                    var model = GetManagedAgentResponseBody.Data.Runtime.SessionPolicy()
                    model.fromMap(value)
                    self.sessionPolicy = model
                }
            }
        }
        public class Skills : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
            }
        }
        public class SubAgents : Tea.TeaModel {
            public var instruction: String?

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
                if self.instruction != nil {
                    map["instruction"] = self.instruction!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["instruction"] as? String {
                    self.instruction = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class Template : Tea.TeaModel {
            public class AiRegistry : Tea.TeaModel {
                public var name: String?

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
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.version != nil {
                        map["version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["version"] as? String {
                        self.version = value
                    }
                }
            }
            public var aiRegistry: GetManagedAgentResponseBody.Data.Template.AiRegistry?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.aiRegistry?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aiRegistry != nil {
                    map["aiRegistry"] = self.aiRegistry?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["aiRegistry"] as? [String: Any?] {
                    var model = GetManagedAgentResponseBody.Data.Template.AiRegistry()
                    model.fromMap(value)
                    self.aiRegistry = model
                }
            }
        }
        public class Tools : Tea.TeaModel {
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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var agentId: String?

        public var createMode: String?

        public var createdAt: String?

        public var deployType: String?

        public var description_: String?

        public var environment: GetManagedAgentResponseBody.Data.Environment?

        public var instruction: String?

        public var latestSpecVersion: Int64?

        public var latestVersionStatus: String?

        public var model: GetManagedAgentResponseBody.Data.Model?

        public var name: String?

        public var network: GetManagedAgentResponseBody.Data.Network?

        public var regionId: String?

        public var runtime: GetManagedAgentResponseBody.Data.Runtime?

        public var skills: [GetManagedAgentResponseBody.Data.Skills]?

        public var status: String?

        public var subAgents: [GetManagedAgentResponseBody.Data.SubAgents]?

        public var template: GetManagedAgentResponseBody.Data.Template?

        public var tools: [GetManagedAgentResponseBody.Data.Tools]?

        public var updatedAt: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.environment?.validate()
            try self.model?.validate()
            try self.network?.validate()
            try self.runtime?.validate()
            try self.template?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentId != nil {
                map["agentId"] = self.agentId!
            }
            if self.createMode != nil {
                map["createMode"] = self.createMode!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.deployType != nil {
                map["deployType"] = self.deployType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.environment != nil {
                map["environment"] = self.environment?.toMap()
            }
            if self.instruction != nil {
                map["instruction"] = self.instruction!
            }
            if self.latestSpecVersion != nil {
                map["latestSpecVersion"] = self.latestSpecVersion!
            }
            if self.latestVersionStatus != nil {
                map["latestVersionStatus"] = self.latestVersionStatus!
            }
            if self.model != nil {
                map["model"] = self.model?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.network != nil {
                map["network"] = self.network?.toMap()
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.runtime != nil {
                map["runtime"] = self.runtime?.toMap()
            }
            if self.skills != nil {
                var tmp : [Any] = []
                for k in self.skills! {
                    tmp.append(k.toMap())
                }
                map["skills"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.subAgents != nil {
                var tmp : [Any] = []
                for k in self.subAgents! {
                    tmp.append(k.toMap())
                }
                map["subAgents"] = tmp
            }
            if self.template != nil {
                map["template"] = self.template?.toMap()
            }
            if self.tools != nil {
                var tmp : [Any] = []
                for k in self.tools! {
                    tmp.append(k.toMap())
                }
                map["tools"] = tmp
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentId"] as? String {
                self.agentId = value
            }
            if let value = dict["createMode"] as? String {
                self.createMode = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["deployType"] as? String {
                self.deployType = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["environment"] as? [String: Any?] {
                var model = GetManagedAgentResponseBody.Data.Environment()
                model.fromMap(value)
                self.environment = model
            }
            if let value = dict["instruction"] as? String {
                self.instruction = value
            }
            if let value = dict["latestSpecVersion"] as? Int64 {
                self.latestSpecVersion = value
            }
            if let value = dict["latestVersionStatus"] as? String {
                self.latestVersionStatus = value
            }
            if let value = dict["model"] as? [String: Any?] {
                var model = GetManagedAgentResponseBody.Data.Model()
                model.fromMap(value)
                self.model = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["network"] as? [String: Any?] {
                var model = GetManagedAgentResponseBody.Data.Network()
                model.fromMap(value)
                self.network = model
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["runtime"] as? [String: Any?] {
                var model = GetManagedAgentResponseBody.Data.Runtime()
                model.fromMap(value)
                self.runtime = model
            }
            if let value = dict["skills"] as? [Any?] {
                var tmp : [GetManagedAgentResponseBody.Data.Skills] = []
                for v in value {
                    if v != nil {
                        var model = GetManagedAgentResponseBody.Data.Skills()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.skills = tmp
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["subAgents"] as? [Any?] {
                var tmp : [GetManagedAgentResponseBody.Data.SubAgents] = []
                for v in value {
                    if v != nil {
                        var model = GetManagedAgentResponseBody.Data.SubAgents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subAgents = tmp
            }
            if let value = dict["template"] as? [String: Any?] {
                var model = GetManagedAgentResponseBody.Data.Template()
                model.fromMap(value)
                self.template = model
            }
            if let value = dict["tools"] as? [Any?] {
                var tmp : [GetManagedAgentResponseBody.Data.Tools] = []
                for v in value {
                    if v != nil {
                        var model = GetManagedAgentResponseBody.Data.Tools()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tools = tmp
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: GetManagedAgentResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = GetManagedAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class GetManagedAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetManagedAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetManagedAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetModelRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Capabilities : Tea.TeaModel {
            public var audio: Bool?

            public var document: Bool?

            public var multiToolCall: Bool?

            public var reasoning: Bool?

            public var streamToolCall: Bool?

            public var toolCall: Bool?

            public var video: Bool?

            public var vision: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audio != nil {
                    map["audio"] = self.audio!
                }
                if self.document != nil {
                    map["document"] = self.document!
                }
                if self.multiToolCall != nil {
                    map["multiToolCall"] = self.multiToolCall!
                }
                if self.reasoning != nil {
                    map["reasoning"] = self.reasoning!
                }
                if self.streamToolCall != nil {
                    map["streamToolCall"] = self.streamToolCall!
                }
                if self.toolCall != nil {
                    map["toolCall"] = self.toolCall!
                }
                if self.video != nil {
                    map["video"] = self.video!
                }
                if self.vision != nil {
                    map["vision"] = self.vision!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["audio"] as? Bool {
                    self.audio = value
                }
                if let value = dict["document"] as? Bool {
                    self.document = value
                }
                if let value = dict["multiToolCall"] as? Bool {
                    self.multiToolCall = value
                }
                if let value = dict["reasoning"] as? Bool {
                    self.reasoning = value
                }
                if let value = dict["streamToolCall"] as? Bool {
                    self.streamToolCall = value
                }
                if let value = dict["toolCall"] as? Bool {
                    self.toolCall = value
                }
                if let value = dict["video"] as? Bool {
                    self.video = value
                }
                if let value = dict["vision"] as? Bool {
                    self.vision = value
                }
            }
        }
        public var capabilities: GetModelResponseBody.Data.Capabilities?

        public var connectionId: String?

        public var contextSize: Int64?

        public var createdAt: String?

        public var description_: String?

        public var maxTokens: Int64?

        public var modelId: String?

        public var modelName: String?

        public var regionId: String?

        public var updatedAt: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.capabilities?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capabilities != nil {
                map["capabilities"] = self.capabilities?.toMap()
            }
            if self.connectionId != nil {
                map["connectionId"] = self.connectionId!
            }
            if self.contextSize != nil {
                map["contextSize"] = self.contextSize!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.maxTokens != nil {
                map["maxTokens"] = self.maxTokens!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["modelName"] = self.modelName!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["capabilities"] as? [String: Any?] {
                var model = GetModelResponseBody.Data.Capabilities()
                model.fromMap(value)
                self.capabilities = model
            }
            if let value = dict["connectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["contextSize"] as? Int64 {
                self.contextSize = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["maxTokens"] as? Int64 {
                self.maxTokens = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
            if let value = dict["modelName"] as? String {
                self.modelName = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: GetModelResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = GetModelResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class GetModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetModelConnectionRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetModelConnectionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var apiKeyCount: Int32?

        public var apiKeys: [String]?

        public var connectionId: String?

        public var createdAt: String?

        public var credentialConfigured: Bool?

        public var description_: String?

        public var endpoint: String?

        public var name: String?

        public var protocol_: String?

        public var providerType: String?

        public var regionId: String?

        public var status: String?

        public var statusReason: String?

        public var updatedAt: String?

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
            if self.apiKeyCount != nil {
                map["apiKeyCount"] = self.apiKeyCount!
            }
            if self.apiKeys != nil {
                map["apiKeys"] = self.apiKeys!
            }
            if self.connectionId != nil {
                map["connectionId"] = self.connectionId!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.credentialConfigured != nil {
                map["credentialConfigured"] = self.credentialConfigured!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            if self.providerType != nil {
                map["providerType"] = self.providerType!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusReason != nil {
                map["statusReason"] = self.statusReason!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKeyCount"] as? Int32 {
                self.apiKeyCount = value
            }
            if let value = dict["apiKeys"] as? [String] {
                self.apiKeys = value
            }
            if let value = dict["connectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["credentialConfigured"] as? Bool {
                self.credentialConfigured = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["providerType"] as? String {
                self.providerType = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["statusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: GetModelConnectionResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = GetModelConnectionResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class GetModelConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModelConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetModelConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTeamRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetTeamResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Agents : Tea.TeaModel {
            public var agentId: String?

            public var createMode: String?

            public var createdAt: String?

            public var deployType: String?

            public var description_: String?

            public var effectiveSpecVersion: Int64?

            public var latestSpecVersion: Int64?

            public var name: String?

            public var runtime: String?

            public var status: String?

            public var teamRole: String?

            public var updatedAt: String?

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
                if self.agentId != nil {
                    map["agentId"] = self.agentId!
                }
                if self.createMode != nil {
                    map["createMode"] = self.createMode!
                }
                if self.createdAt != nil {
                    map["createdAt"] = self.createdAt!
                }
                if self.deployType != nil {
                    map["deployType"] = self.deployType!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.effectiveSpecVersion != nil {
                    map["effectiveSpecVersion"] = self.effectiveSpecVersion!
                }
                if self.latestSpecVersion != nil {
                    map["latestSpecVersion"] = self.latestSpecVersion!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.runtime != nil {
                    map["runtime"] = self.runtime!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.teamRole != nil {
                    map["teamRole"] = self.teamRole!
                }
                if self.updatedAt != nil {
                    map["updatedAt"] = self.updatedAt!
                }
                if self.workspaceId != nil {
                    map["workspaceId"] = self.workspaceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["agentId"] as? String {
                    self.agentId = value
                }
                if let value = dict["createMode"] as? String {
                    self.createMode = value
                }
                if let value = dict["createdAt"] as? String {
                    self.createdAt = value
                }
                if let value = dict["deployType"] as? String {
                    self.deployType = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["effectiveSpecVersion"] as? Int64 {
                    self.effectiveSpecVersion = value
                }
                if let value = dict["latestSpecVersion"] as? Int64 {
                    self.latestSpecVersion = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["runtime"] as? String {
                    self.runtime = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
                if let value = dict["teamRole"] as? String {
                    self.teamRole = value
                }
                if let value = dict["updatedAt"] as? String {
                    self.updatedAt = value
                }
                if let value = dict["workspaceId"] as? String {
                    self.workspaceId = value
                }
            }
        }
        public class Users : Tea.TeaModel {
            public var authMethod: String?

            public var createdAt: String?

            public var displayName: String?

            public var email: String?

            public var initialPassword: String?

            public var name: String?

            public var note: String?

            public var status: String?

            public var teamRole: String?

            public var updatedAt: String?

            public var userId: String?

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
                if self.authMethod != nil {
                    map["authMethod"] = self.authMethod!
                }
                if self.createdAt != nil {
                    map["createdAt"] = self.createdAt!
                }
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                if self.email != nil {
                    map["email"] = self.email!
                }
                if self.initialPassword != nil {
                    map["initialPassword"] = self.initialPassword!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.note != nil {
                    map["note"] = self.note!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.teamRole != nil {
                    map["teamRole"] = self.teamRole!
                }
                if self.updatedAt != nil {
                    map["updatedAt"] = self.updatedAt!
                }
                if self.userId != nil {
                    map["userId"] = self.userId!
                }
                if self.workspaceId != nil {
                    map["workspaceId"] = self.workspaceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["authMethod"] as? String {
                    self.authMethod = value
                }
                if let value = dict["createdAt"] as? String {
                    self.createdAt = value
                }
                if let value = dict["displayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["email"] as? String {
                    self.email = value
                }
                if let value = dict["initialPassword"] as? String {
                    self.initialPassword = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["note"] as? String {
                    self.note = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
                if let value = dict["teamRole"] as? String {
                    self.teamRole = value
                }
                if let value = dict["updatedAt"] as? String {
                    self.updatedAt = value
                }
                if let value = dict["userId"] as? String {
                    self.userId = value
                }
                if let value = dict["workspaceId"] as? String {
                    self.workspaceId = value
                }
            }
        }
        public var agents: [GetTeamResponseBody.Data.Agents]?

        public var createdAt: String?

        public var description_: String?

        public var name: String?

        public var regionId: String?

        public var status: String?

        public var teamId: String?

        public var updatedAt: String?

        public var users: [GetTeamResponseBody.Data.Users]?

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
            if self.agents != nil {
                var tmp : [Any] = []
                for k in self.agents! {
                    tmp.append(k.toMap())
                }
                map["agents"] = tmp
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.teamId != nil {
                map["teamId"] = self.teamId!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.users != nil {
                var tmp : [Any] = []
                for k in self.users! {
                    tmp.append(k.toMap())
                }
                map["users"] = tmp
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agents"] as? [Any?] {
                var tmp : [GetTeamResponseBody.Data.Agents] = []
                for v in value {
                    if v != nil {
                        var model = GetTeamResponseBody.Data.Agents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agents = tmp
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["teamId"] as? String {
                self.teamId = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["users"] as? [Any?] {
                var tmp : [GetTeamResponseBody.Data.Users] = []
                for v in value {
                    if v != nil {
                        var model = GetTeamResponseBody.Data.Users()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.users = tmp
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: GetTeamResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = GetTeamResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class GetTeamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTeamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTeamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agentCoreUserId: String?

        public var authMethod: String?

        public var createdAt: String?

        public var displayName: String?

        public var email: String?

        public var name: String?

        public var note: String?

        public var regionId: String?

        public var status: String?

        public var updatedAt: String?

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
            if self.agentCoreUserId != nil {
                map["agentCoreUserId"] = self.agentCoreUserId!
            }
            if self.authMethod != nil {
                map["authMethod"] = self.authMethod!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.email != nil {
                map["email"] = self.email!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.note != nil {
                map["note"] = self.note!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentCoreUserId"] as? String {
                self.agentCoreUserId = value
            }
            if let value = dict["authMethod"] as? String {
                self.authMethod = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["email"] as? String {
                self.email = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["note"] as? String {
                self.note = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: GetUserResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = GetUserResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class GetUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorkspaceRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class GetWorkspaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class NetworkConfiguration : Tea.TeaModel {
            public class Vpc : Tea.TeaModel {
                public var enabled: Bool?

                public var vSwitchIds: [String]?

                public var vpcId: String?

                public override init() {
                    super.init()
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
                        map["enabled"] = self.enabled!
                    }
                    if self.vSwitchIds != nil {
                        map["vSwitchIds"] = self.vSwitchIds!
                    }
                    if self.vpcId != nil {
                        map["vpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                    if let value = dict["vSwitchIds"] as? [String] {
                        self.vSwitchIds = value
                    }
                    if let value = dict["vpcId"] as? String {
                        self.vpcId = value
                    }
                }
            }
            public var vpc: GetWorkspaceResponseBody.Data.NetworkConfiguration.Vpc?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.vpc?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.vpc != nil {
                    map["vpc"] = self.vpc?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["vpc"] as? [String: Any?] {
                    var model = GetWorkspaceResponseBody.Data.NetworkConfiguration.Vpc()
                    model.fromMap(value)
                    self.vpc = model
                }
            }
        }
        public var createTime: String?

        public var name: String?

        public var networkConfiguration: GetWorkspaceResponseBody.Data.NetworkConfiguration?

        public var regionId: String?

        public var status: String?

        public var statusReason: String?

        public var tenantId: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.networkConfiguration?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.networkConfiguration != nil {
                map["networkConfiguration"] = self.networkConfiguration?.toMap()
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusReason != nil {
                map["statusReason"] = self.statusReason!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["networkConfiguration"] as? [String: Any?] {
                var model = GetWorkspaceResponseBody.Data.NetworkConfiguration()
                model.fromMap(value)
                self.networkConfiguration = model
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["statusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["tenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: GetWorkspaceResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = GetWorkspaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class GetWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCredentialsRequest : Tea.TeaModel {
    public var credentialType: String?

    public var maxResults: Int32?

    public var nameLike: String?

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
        if self.credentialType != nil {
            map["credentialType"] = self.credentialType!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nameLike != nil {
            map["nameLike"] = self.nameLike!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["credentialType"] as? String {
            self.credentialType = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nameLike"] as? String {
            self.nameLike = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListCredentialsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var boundAgentsCounts: Int32?

        public var createdAt: String?

        public var credentialId: String?

        public var credentialMetadata: String?

        public var credentialType: String?

        public var description_: String?

        public var name: String?

        public var regionId: String?

        public var updatedAt: String?

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
            if self.boundAgentsCounts != nil {
                map["boundAgentsCounts"] = self.boundAgentsCounts!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.credentialId != nil {
                map["credentialId"] = self.credentialId!
            }
            if self.credentialMetadata != nil {
                map["credentialMetadata"] = self.credentialMetadata!
            }
            if self.credentialType != nil {
                map["credentialType"] = self.credentialType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["boundAgentsCounts"] as? Int32 {
                self.boundAgentsCounts = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["credentialId"] as? String {
                self.credentialId = value
            }
            if let value = dict["credentialMetadata"] as? String {
                self.credentialMetadata = value
            }
            if let value = dict["credentialType"] as? String {
                self.credentialType = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [ListCredentialsResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListCredentialsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListCredentialsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
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
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListCredentialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCredentialsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListCredentialsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListIdentityProvidersRequest : Tea.TeaModel {
    public var maxResults: Int32?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
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
    }
}

public class ListIdentityProvidersResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Metadata : Tea.TeaModel {
            public var appId: String?

            public var appKey: String?

            public var corpId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appId != nil {
                    map["appId"] = self.appId!
                }
                if self.appKey != nil {
                    map["appKey"] = self.appKey!
                }
                if self.corpId != nil {
                    map["corpId"] = self.corpId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["appId"] as? String {
                    self.appId = value
                }
                if let value = dict["appKey"] as? String {
                    self.appKey = value
                }
                if let value = dict["corpId"] as? String {
                    self.corpId = value
                }
            }
        }
        public var createdAt: String?

        public var eventSubscriptionCallbackUrl: String?

        public var identityProviderType: String?

        public var loginCallbackUrl: String?

        public var loginEnabled: Bool?

        public var metadata: ListIdentityProvidersResponseBody.Items.Metadata?

        public var status: String?

        public var syncEnabled: Bool?

        public var updatedAt: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.metadata?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.eventSubscriptionCallbackUrl != nil {
                map["eventSubscriptionCallbackUrl"] = self.eventSubscriptionCallbackUrl!
            }
            if self.identityProviderType != nil {
                map["identityProviderType"] = self.identityProviderType!
            }
            if self.loginCallbackUrl != nil {
                map["loginCallbackUrl"] = self.loginCallbackUrl!
            }
            if self.loginEnabled != nil {
                map["loginEnabled"] = self.loginEnabled!
            }
            if self.metadata != nil {
                map["metadata"] = self.metadata?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.syncEnabled != nil {
                map["syncEnabled"] = self.syncEnabled!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["eventSubscriptionCallbackUrl"] as? String {
                self.eventSubscriptionCallbackUrl = value
            }
            if let value = dict["identityProviderType"] as? String {
                self.identityProviderType = value
            }
            if let value = dict["loginCallbackUrl"] as? String {
                self.loginCallbackUrl = value
            }
            if let value = dict["loginEnabled"] as? Bool {
                self.loginEnabled = value
            }
            if let value = dict["metadata"] as? [String: Any?] {
                var model = ListIdentityProvidersResponseBody.Items.Metadata()
                model.fromMap(value)
                self.metadata = model
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["syncEnabled"] as? Bool {
                self.syncEnabled = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [ListIdentityProvidersResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListIdentityProvidersResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListIdentityProvidersResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
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
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListIdentityProvidersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIdentityProvidersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListIdentityProvidersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListManagedAgentsRequest : Tea.TeaModel {
    public var maxResults: Int32?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
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
    }
}

public class ListManagedAgentsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var agentId: String?

        public var createMode: String?

        public var createdAt: String?

        public var deployType: String?

        public var description_: String?

        public var effectiveSpecVersion: Int64?

        public var latestSpecVersion: Int64?

        public var name: String?

        public var runtime: String?

        public var status: String?

        public var updatedAt: String?

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
            if self.agentId != nil {
                map["agentId"] = self.agentId!
            }
            if self.createMode != nil {
                map["createMode"] = self.createMode!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.deployType != nil {
                map["deployType"] = self.deployType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.effectiveSpecVersion != nil {
                map["effectiveSpecVersion"] = self.effectiveSpecVersion!
            }
            if self.latestSpecVersion != nil {
                map["latestSpecVersion"] = self.latestSpecVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.runtime != nil {
                map["runtime"] = self.runtime!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentId"] as? String {
                self.agentId = value
            }
            if let value = dict["createMode"] as? String {
                self.createMode = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["deployType"] as? String {
                self.deployType = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["effectiveSpecVersion"] as? Int64 {
                self.effectiveSpecVersion = value
            }
            if let value = dict["latestSpecVersion"] as? Int64 {
                self.latestSpecVersion = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["runtime"] as? String {
                self.runtime = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [ListManagedAgentsResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListManagedAgentsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListManagedAgentsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
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
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListManagedAgentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListManagedAgentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListManagedAgentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListModelConnectionsRequest : Tea.TeaModel {
    public var includeModels: Bool?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var protocol_: String?

    public var providerType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.includeModels != nil {
            map["includeModels"] = self.includeModels!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.providerType != nil {
            map["providerType"] = self.providerType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["includeModels"] as? Bool {
            self.includeModels = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["providerType"] as? String {
            self.providerType = value
        }
    }
}

public class ListModelConnectionsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Models : Tea.TeaModel {
            public var modelId: String?

            public var modelName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.modelId != nil {
                    map["modelId"] = self.modelId!
                }
                if self.modelName != nil {
                    map["modelName"] = self.modelName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["modelId"] as? String {
                    self.modelId = value
                }
                if let value = dict["modelName"] as? String {
                    self.modelName = value
                }
            }
        }
        public var apiKeyCount: Int32?

        public var connectionId: String?

        public var createdAt: String?

        public var credentialConfigured: Bool?

        public var description_: String?

        public var endpoint: String?

        public var models: [ListModelConnectionsResponseBody.Items.Models]?

        public var name: String?

        public var protocol_: String?

        public var providerType: String?

        public var status: String?

        public var statusReason: String?

        public var updatedAt: String?

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
            if self.apiKeyCount != nil {
                map["apiKeyCount"] = self.apiKeyCount!
            }
            if self.connectionId != nil {
                map["connectionId"] = self.connectionId!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.credentialConfigured != nil {
                map["credentialConfigured"] = self.credentialConfigured!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.models != nil {
                var tmp : [Any] = []
                for k in self.models! {
                    tmp.append(k.toMap())
                }
                map["models"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            if self.providerType != nil {
                map["providerType"] = self.providerType!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusReason != nil {
                map["statusReason"] = self.statusReason!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKeyCount"] as? Int32 {
                self.apiKeyCount = value
            }
            if let value = dict["connectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["credentialConfigured"] as? Bool {
                self.credentialConfigured = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["models"] as? [Any?] {
                var tmp : [ListModelConnectionsResponseBody.Items.Models] = []
                for v in value {
                    if v != nil {
                        var model = ListModelConnectionsResponseBody.Items.Models()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.models = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["providerType"] as? String {
                self.providerType = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["statusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [ListModelConnectionsResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListModelConnectionsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListModelConnectionsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
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
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListModelConnectionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelConnectionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListModelConnectionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListModelsRequest : Tea.TeaModel {
    public var connectionId: String?

    public var maxResults: Int32?

    public var modelName: String?

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
        if self.connectionId != nil {
            map["connectionId"] = self.connectionId!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.modelName != nil {
            map["modelName"] = self.modelName!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["connectionId"] as? String {
            self.connectionId = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["modelName"] as? String {
            self.modelName = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListModelsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Capabilities : Tea.TeaModel {
            public var audio: Bool?

            public var document: Bool?

            public var multiToolCall: Bool?

            public var reasoning: Bool?

            public var streamToolCall: Bool?

            public var toolCall: Bool?

            public var video: Bool?

            public var vision: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audio != nil {
                    map["audio"] = self.audio!
                }
                if self.document != nil {
                    map["document"] = self.document!
                }
                if self.multiToolCall != nil {
                    map["multiToolCall"] = self.multiToolCall!
                }
                if self.reasoning != nil {
                    map["reasoning"] = self.reasoning!
                }
                if self.streamToolCall != nil {
                    map["streamToolCall"] = self.streamToolCall!
                }
                if self.toolCall != nil {
                    map["toolCall"] = self.toolCall!
                }
                if self.video != nil {
                    map["video"] = self.video!
                }
                if self.vision != nil {
                    map["vision"] = self.vision!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["audio"] as? Bool {
                    self.audio = value
                }
                if let value = dict["document"] as? Bool {
                    self.document = value
                }
                if let value = dict["multiToolCall"] as? Bool {
                    self.multiToolCall = value
                }
                if let value = dict["reasoning"] as? Bool {
                    self.reasoning = value
                }
                if let value = dict["streamToolCall"] as? Bool {
                    self.streamToolCall = value
                }
                if let value = dict["toolCall"] as? Bool {
                    self.toolCall = value
                }
                if let value = dict["video"] as? Bool {
                    self.video = value
                }
                if let value = dict["vision"] as? Bool {
                    self.vision = value
                }
            }
        }
        public var capabilities: ListModelsResponseBody.Items.Capabilities?

        public var connectionId: String?

        public var contextSize: Int64?

        public var createdAt: String?

        public var description_: String?

        public var maxTokens: Int64?

        public var modelId: String?

        public var modelName: String?

        public var updatedAt: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.capabilities?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capabilities != nil {
                map["capabilities"] = self.capabilities?.toMap()
            }
            if self.connectionId != nil {
                map["connectionId"] = self.connectionId!
            }
            if self.contextSize != nil {
                map["contextSize"] = self.contextSize!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.maxTokens != nil {
                map["maxTokens"] = self.maxTokens!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["modelName"] = self.modelName!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["capabilities"] as? [String: Any?] {
                var model = ListModelsResponseBody.Items.Capabilities()
                model.fromMap(value)
                self.capabilities = model
            }
            if let value = dict["connectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["contextSize"] as? Int64 {
                self.contextSize = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["maxTokens"] as? Int64 {
                self.maxTokens = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
            if let value = dict["modelName"] as? String {
                self.modelName = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [ListModelsResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListModelsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListModelsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
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
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListModelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPredefinedModelProvidersRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class ListPredefinedModelProvidersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var defaultEndpoint: String?

        public var defaultProtocol: String?

        public var displayName: String?

        public var providerType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defaultEndpoint != nil {
                map["defaultEndpoint"] = self.defaultEndpoint!
            }
            if self.defaultProtocol != nil {
                map["defaultProtocol"] = self.defaultProtocol!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.providerType != nil {
                map["providerType"] = self.providerType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["defaultEndpoint"] as? String {
                self.defaultEndpoint = value
            }
            if let value = dict["defaultProtocol"] as? String {
                self.defaultProtocol = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["providerType"] as? String {
                self.providerType = value
            }
        }
    }
    public var code: String?

    public var data: [ListPredefinedModelProvidersResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListPredefinedModelProvidersResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListPredefinedModelProvidersResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class ListPredefinedModelProvidersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPredefinedModelProvidersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPredefinedModelProvidersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPredefinedModelsRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class ListPredefinedModelsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Capabilities : Tea.TeaModel {
            public var audio: Bool?

            public var document: Bool?

            public var multiToolCall: Bool?

            public var reasoning: Bool?

            public var streamToolCall: Bool?

            public var toolCall: Bool?

            public var video: Bool?

            public var vision: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audio != nil {
                    map["audio"] = self.audio!
                }
                if self.document != nil {
                    map["document"] = self.document!
                }
                if self.multiToolCall != nil {
                    map["multiToolCall"] = self.multiToolCall!
                }
                if self.reasoning != nil {
                    map["reasoning"] = self.reasoning!
                }
                if self.streamToolCall != nil {
                    map["streamToolCall"] = self.streamToolCall!
                }
                if self.toolCall != nil {
                    map["toolCall"] = self.toolCall!
                }
                if self.video != nil {
                    map["video"] = self.video!
                }
                if self.vision != nil {
                    map["vision"] = self.vision!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["audio"] as? Bool {
                    self.audio = value
                }
                if let value = dict["document"] as? Bool {
                    self.document = value
                }
                if let value = dict["multiToolCall"] as? Bool {
                    self.multiToolCall = value
                }
                if let value = dict["reasoning"] as? Bool {
                    self.reasoning = value
                }
                if let value = dict["streamToolCall"] as? Bool {
                    self.streamToolCall = value
                }
                if let value = dict["toolCall"] as? Bool {
                    self.toolCall = value
                }
                if let value = dict["video"] as? Bool {
                    self.video = value
                }
                if let value = dict["vision"] as? Bool {
                    self.vision = value
                }
            }
        }
        public var capabilities: ListPredefinedModelsResponseBody.Data.Capabilities?

        public var contextSize: Int64?

        public var maxTokens: Int64?

        public var modelName: String?

        public var releaseDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.capabilities?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capabilities != nil {
                map["capabilities"] = self.capabilities?.toMap()
            }
            if self.contextSize != nil {
                map["contextSize"] = self.contextSize!
            }
            if self.maxTokens != nil {
                map["maxTokens"] = self.maxTokens!
            }
            if self.modelName != nil {
                map["modelName"] = self.modelName!
            }
            if self.releaseDate != nil {
                map["releaseDate"] = self.releaseDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["capabilities"] as? [String: Any?] {
                var model = ListPredefinedModelsResponseBody.Data.Capabilities()
                model.fromMap(value)
                self.capabilities = model
            }
            if let value = dict["contextSize"] as? Int64 {
                self.contextSize = value
            }
            if let value = dict["maxTokens"] as? Int64 {
                self.maxTokens = value
            }
            if let value = dict["modelName"] as? String {
                self.modelName = value
            }
            if let value = dict["releaseDate"] as? String {
                self.releaseDate = value
            }
        }
    }
    public var code: String?

    public var data: [ListPredefinedModelsResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
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
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListPredefinedModelsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListPredefinedModelsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class ListPredefinedModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPredefinedModelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPredefinedModelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTeamsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nameLike: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nameLike != nil {
            map["nameLike"] = self.nameLike!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nameLike"] as? String {
            self.nameLike = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListTeamsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Agents : Tea.TeaModel {
            public var agentId: String?

            public var agentName: String?

            public var teamRole: String?

            public override init() {
                super.init()
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
                    map["agentId"] = self.agentId!
                }
                if self.agentName != nil {
                    map["agentName"] = self.agentName!
                }
                if self.teamRole != nil {
                    map["teamRole"] = self.teamRole!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["agentId"] as? String {
                    self.agentId = value
                }
                if let value = dict["agentName"] as? String {
                    self.agentName = value
                }
                if let value = dict["teamRole"] as? String {
                    self.teamRole = value
                }
            }
        }
        public class Users : Tea.TeaModel {
            public var teamRole: String?

            public var userId: String?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.teamRole != nil {
                    map["teamRole"] = self.teamRole!
                }
                if self.userId != nil {
                    map["userId"] = self.userId!
                }
                if self.userName != nil {
                    map["userName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["teamRole"] as? String {
                    self.teamRole = value
                }
                if let value = dict["userId"] as? String {
                    self.userId = value
                }
                if let value = dict["userName"] as? String {
                    self.userName = value
                }
            }
        }
        public var agents: [ListTeamsResponseBody.Items.Agents]?

        public var createdAt: String?

        public var description_: String?

        public var name: String?

        public var status: String?

        public var teamId: String?

        public var updatedAt: String?

        public var users: [ListTeamsResponseBody.Items.Users]?

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
            if self.agents != nil {
                var tmp : [Any] = []
                for k in self.agents! {
                    tmp.append(k.toMap())
                }
                map["agents"] = tmp
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.teamId != nil {
                map["teamId"] = self.teamId!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.users != nil {
                var tmp : [Any] = []
                for k in self.users! {
                    tmp.append(k.toMap())
                }
                map["users"] = tmp
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agents"] as? [Any?] {
                var tmp : [ListTeamsResponseBody.Items.Agents] = []
                for v in value {
                    if v != nil {
                        var model = ListTeamsResponseBody.Items.Agents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agents = tmp
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["teamId"] as? String {
                self.teamId = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["users"] as? [Any?] {
                var tmp : [ListTeamsResponseBody.Items.Users] = []
                for v in value {
                    if v != nil {
                        var model = ListTeamsResponseBody.Items.Users()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.users = tmp
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [ListTeamsResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListTeamsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListTeamsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
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
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListTeamsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTeamsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTeamsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nameLike: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nameLike != nil {
            map["nameLike"] = self.nameLike!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nameLike"] as? String {
            self.nameLike = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var agentCoreUserId: String?

        public var authMethod: String?

        public var createdAt: String?

        public var displayName: String?

        public var email: String?

        public var name: String?

        public var note: String?

        public var regionId: String?

        public var status: String?

        public var updatedAt: String?

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
            if self.agentCoreUserId != nil {
                map["agentCoreUserId"] = self.agentCoreUserId!
            }
            if self.authMethod != nil {
                map["authMethod"] = self.authMethod!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.email != nil {
                map["email"] = self.email!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.note != nil {
                map["note"] = self.note!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentCoreUserId"] as? String {
                self.agentCoreUserId = value
            }
            if let value = dict["authMethod"] as? String {
                self.authMethod = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["email"] as? String {
                self.email = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["note"] as? String {
                self.note = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [ListUsersResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListUsersResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListUsersResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
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
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkspacesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var skip: Int32?

    public override init() {
        super.init()
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
        if self.skip != nil {
            map["skip"] = self.skip!
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
        if let value = dict["skip"] as? Int32 {
            self.skip = value
        }
    }
}

public class ListWorkspacesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class NetworkConfiguration : Tea.TeaModel {
            public class Vpc : Tea.TeaModel {
                public var enabled: Bool?

                public var vSwitchIds: [String]?

                public var vpcId: String?

                public override init() {
                    super.init()
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
                        map["enabled"] = self.enabled!
                    }
                    if self.vSwitchIds != nil {
                        map["vSwitchIds"] = self.vSwitchIds!
                    }
                    if self.vpcId != nil {
                        map["vpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                    if let value = dict["vSwitchIds"] as? [String] {
                        self.vSwitchIds = value
                    }
                    if let value = dict["vpcId"] as? String {
                        self.vpcId = value
                    }
                }
            }
            public var vpc: ListWorkspacesResponseBody.Items.NetworkConfiguration.Vpc?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.vpc?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.vpc != nil {
                    map["vpc"] = self.vpc?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["vpc"] as? [String: Any?] {
                    var model = ListWorkspacesResponseBody.Items.NetworkConfiguration.Vpc()
                    model.fromMap(value)
                    self.vpc = model
                }
            }
        }
        public var createTime: String?

        public var name: String?

        public var networkConfiguration: ListWorkspacesResponseBody.Items.NetworkConfiguration?

        public var regionId: String?

        public var status: String?

        public var tenantId: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.networkConfiguration?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.networkConfiguration != nil {
                map["networkConfiguration"] = self.networkConfiguration?.toMap()
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["networkConfiguration"] as? [String: Any?] {
                var model = ListWorkspacesResponseBody.Items.NetworkConfiguration()
                model.fromMap(value)
                self.networkConfiguration = model
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["tenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var items: [ListWorkspacesResponseBody.Items]?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListWorkspacesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListWorkspacesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
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

public class ResetUserPasswordRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var agentCoreUserId: String?

        public var password: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentCoreUserId != nil {
                map["agentCoreUserId"] = self.agentCoreUserId!
            }
            if self.password != nil {
                map["password"] = self.password!
            }
            if self.username != nil {
                map["username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentCoreUserId"] as? String {
                self.agentCoreUserId = value
            }
            if let value = dict["password"] as? String {
                self.password = value
            }
            if let value = dict["username"] as? String {
                self.username = value
            }
        }
    }
    public var body: ResetUserPasswordRequest.Body?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResetUserPasswordRequest.Body()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetUserPasswordShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
    }
}

public class ResetUserPasswordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agentCoreUserId: String?

        public var password: String?

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
            if self.agentCoreUserId != nil {
                map["agentCoreUserId"] = self.agentCoreUserId!
            }
            if self.password != nil {
                map["password"] = self.password!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentCoreUserId"] as? String {
                self.agentCoreUserId = value
            }
            if let value = dict["password"] as? String {
                self.password = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: ResetUserPasswordResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = ResetUserPasswordResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class ResetUserPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetUserPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResetUserPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCredentialRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var credentialMetadata: String?

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
            if self.credentialMetadata != nil {
                map["credentialMetadata"] = self.credentialMetadata!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["credentialMetadata"] as? String {
                self.credentialMetadata = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
        }
    }
    public var body: UpdateCredentialRequest.Body?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateCredentialRequest.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateCredentialShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateCredentialResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var credentialId: String?

        public var credentialMetadata: String?

        public var credentialType: String?

        public var description_: String?

        public var name: String?

        public var regionId: String?

        public var updatedAt: String?

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
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.credentialId != nil {
                map["credentialId"] = self.credentialId!
            }
            if self.credentialMetadata != nil {
                map["credentialMetadata"] = self.credentialMetadata!
            }
            if self.credentialType != nil {
                map["credentialType"] = self.credentialType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["credentialId"] as? String {
                self.credentialId = value
            }
            if let value = dict["credentialMetadata"] as? String {
                self.credentialMetadata = value
            }
            if let value = dict["credentialType"] as? String {
                self.credentialType = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: UpdateCredentialResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateCredentialResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class UpdateCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCredentialResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateCredentialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateIdentityProviderRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class Metadata : Tea.TeaModel {
            public var appId: String?

            public var appKey: String?

            public var appSecret: String?

            public var corpId: String?

            public var encryptKey: String?

            public var verificationToken: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appId != nil {
                    map["appId"] = self.appId!
                }
                if self.appKey != nil {
                    map["appKey"] = self.appKey!
                }
                if self.appSecret != nil {
                    map["appSecret"] = self.appSecret!
                }
                if self.corpId != nil {
                    map["corpId"] = self.corpId!
                }
                if self.encryptKey != nil {
                    map["encryptKey"] = self.encryptKey!
                }
                if self.verificationToken != nil {
                    map["verificationToken"] = self.verificationToken!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["appId"] as? String {
                    self.appId = value
                }
                if let value = dict["appKey"] as? String {
                    self.appKey = value
                }
                if let value = dict["appSecret"] as? String {
                    self.appSecret = value
                }
                if let value = dict["corpId"] as? String {
                    self.corpId = value
                }
                if let value = dict["encryptKey"] as? String {
                    self.encryptKey = value
                }
                if let value = dict["verificationToken"] as? String {
                    self.verificationToken = value
                }
            }
        }
        public var loginEnabled: Bool?

        public var metadata: UpdateIdentityProviderRequest.Body.Metadata?

        public var syncEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.metadata?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.loginEnabled != nil {
                map["loginEnabled"] = self.loginEnabled!
            }
            if self.metadata != nil {
                map["metadata"] = self.metadata?.toMap()
            }
            if self.syncEnabled != nil {
                map["syncEnabled"] = self.syncEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["loginEnabled"] as? Bool {
                self.loginEnabled = value
            }
            if let value = dict["metadata"] as? [String: Any?] {
                var model = UpdateIdentityProviderRequest.Body.Metadata()
                model.fromMap(value)
                self.metadata = model
            }
            if let value = dict["syncEnabled"] as? Bool {
                self.syncEnabled = value
            }
        }
    }
    public var body: UpdateIdentityProviderRequest.Body?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateIdentityProviderRequest.Body()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateIdentityProviderShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
    }
}

public class UpdateIdentityProviderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var identityProviderType: String?

        public var loginEnabled: Bool?

        public var status: String?

        public var syncEnabled: Bool?

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
            if self.identityProviderType != nil {
                map["identityProviderType"] = self.identityProviderType!
            }
            if self.loginEnabled != nil {
                map["loginEnabled"] = self.loginEnabled!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.syncEnabled != nil {
                map["syncEnabled"] = self.syncEnabled!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["identityProviderType"] as? String {
                self.identityProviderType = value
            }
            if let value = dict["loginEnabled"] as? Bool {
                self.loginEnabled = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["syncEnabled"] as? Bool {
                self.syncEnabled = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: UpdateIdentityProviderResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateIdentityProviderResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class UpdateIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateIdentityProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateIdentityProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateManagedAgentRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class Environment : Tea.TeaModel {
            public class CredentialReferences : Tea.TeaModel {
                public var credentialId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.credentialId != nil {
                        map["credentialId"] = self.credentialId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["credentialId"] as? String {
                        self.credentialId = value
                    }
                }
            }
            public class Variables : Tea.TeaModel {
                public var name: String?

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
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["value"] as? String {
                        self.value = value
                    }
                }
            }
            public var credentialReferences: [UpdateManagedAgentRequest.Body.Environment.CredentialReferences]?

            public var variables: [UpdateManagedAgentRequest.Body.Environment.Variables]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.credentialReferences != nil {
                    var tmp : [Any] = []
                    for k in self.credentialReferences! {
                        tmp.append(k.toMap())
                    }
                    map["credentialReferences"] = tmp
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["credentialReferences"] as? [Any?] {
                    var tmp : [UpdateManagedAgentRequest.Body.Environment.CredentialReferences] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateManagedAgentRequest.Body.Environment.CredentialReferences()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.credentialReferences = tmp
                }
                if let value = dict["variables"] as? [Any?] {
                    var tmp : [UpdateManagedAgentRequest.Body.Environment.Variables] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateManagedAgentRequest.Body.Environment.Variables()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.variables = tmp
                }
            }
        }
        public class Model : Tea.TeaModel {
            public var modelConnectionId: String?

            public var modelName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.modelConnectionId != nil {
                    map["modelConnectionId"] = self.modelConnectionId!
                }
                if self.modelName != nil {
                    map["modelName"] = self.modelName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["modelConnectionId"] as? String {
                    self.modelConnectionId = value
                }
                if let value = dict["modelName"] as? String {
                    self.modelName = value
                }
            }
        }
        public class Network : Tea.TeaModel {
            public class AccessInternet : Tea.TeaModel {
                public var enabled: Bool?

                public override init() {
                    super.init()
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
                        map["enabled"] = self.enabled!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                }
            }
            public class AccessVpc : Tea.TeaModel {
                public var enabled: Bool?

                public override init() {
                    super.init()
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
                        map["enabled"] = self.enabled!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                }
            }
            public var accessInternet: UpdateManagedAgentRequest.Body.Network.AccessInternet?

            public var accessVpc: UpdateManagedAgentRequest.Body.Network.AccessVpc?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.accessInternet?.validate()
                try self.accessVpc?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessInternet != nil {
                    map["accessInternet"] = self.accessInternet?.toMap()
                }
                if self.accessVpc != nil {
                    map["accessVpc"] = self.accessVpc?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessInternet"] as? [String: Any?] {
                    var model = UpdateManagedAgentRequest.Body.Network.AccessInternet()
                    model.fromMap(value)
                    self.accessInternet = model
                }
                if let value = dict["accessVpc"] as? [String: Any?] {
                    var model = UpdateManagedAgentRequest.Body.Network.AccessVpc()
                    model.fromMap(value)
                    self.accessVpc = model
                }
            }
        }
        public class Runtime : Tea.TeaModel {
            public class Compute : Tea.TeaModel {
                public var computeClass: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.computeClass != nil {
                        map["computeClass"] = self.computeClass!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["computeClass"] as? String {
                        self.computeClass = value
                    }
                }
            }
            public class SessionPolicy : Tea.TeaModel {
                public var headerName: String?

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
                    if self.headerName != nil {
                        map["headerName"] = self.headerName!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["headerName"] as? String {
                        self.headerName = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public var compute: UpdateManagedAgentRequest.Body.Runtime.Compute?

            public var sessionPolicy: UpdateManagedAgentRequest.Body.Runtime.SessionPolicy?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.compute?.validate()
                try self.sessionPolicy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compute != nil {
                    map["compute"] = self.compute?.toMap()
                }
                if self.sessionPolicy != nil {
                    map["sessionPolicy"] = self.sessionPolicy?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["compute"] as? [String: Any?] {
                    var model = UpdateManagedAgentRequest.Body.Runtime.Compute()
                    model.fromMap(value)
                    self.compute = model
                }
                if let value = dict["sessionPolicy"] as? [String: Any?] {
                    var model = UpdateManagedAgentRequest.Body.Runtime.SessionPolicy()
                    model.fromMap(value)
                    self.sessionPolicy = model
                }
            }
        }
        public class Skills : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
            }
        }
        public class SubAgents : Tea.TeaModel {
            public var instruction: String?

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
                if self.instruction != nil {
                    map["instruction"] = self.instruction!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["instruction"] as? String {
                    self.instruction = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class Template : Tea.TeaModel {
            public class AiRegistry : Tea.TeaModel {
                public var name: String?

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
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.version != nil {
                        map["version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["version"] as? String {
                        self.version = value
                    }
                }
            }
            public var aiRegistry: UpdateManagedAgentRequest.Body.Template.AiRegistry?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.aiRegistry?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aiRegistry != nil {
                    map["aiRegistry"] = self.aiRegistry?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["aiRegistry"] as? [String: Any?] {
                    var model = UpdateManagedAgentRequest.Body.Template.AiRegistry()
                    model.fromMap(value)
                    self.aiRegistry = model
                }
            }
        }
        public class Tools : Tea.TeaModel {
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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var description_: String?

        public var environment: UpdateManagedAgentRequest.Body.Environment?

        public var instruction: String?

        public var model: UpdateManagedAgentRequest.Body.Model?

        public var name: String?

        public var network: UpdateManagedAgentRequest.Body.Network?

        public var runtime: UpdateManagedAgentRequest.Body.Runtime?

        public var skills: [UpdateManagedAgentRequest.Body.Skills]?

        public var subAgents: [UpdateManagedAgentRequest.Body.SubAgents]?

        public var template: UpdateManagedAgentRequest.Body.Template?

        public var tools: [UpdateManagedAgentRequest.Body.Tools]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.environment?.validate()
            try self.model?.validate()
            try self.network?.validate()
            try self.runtime?.validate()
            try self.template?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.environment != nil {
                map["environment"] = self.environment?.toMap()
            }
            if self.instruction != nil {
                map["instruction"] = self.instruction!
            }
            if self.model != nil {
                map["model"] = self.model?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.network != nil {
                map["network"] = self.network?.toMap()
            }
            if self.runtime != nil {
                map["runtime"] = self.runtime?.toMap()
            }
            if self.skills != nil {
                var tmp : [Any] = []
                for k in self.skills! {
                    tmp.append(k.toMap())
                }
                map["skills"] = tmp
            }
            if self.subAgents != nil {
                var tmp : [Any] = []
                for k in self.subAgents! {
                    tmp.append(k.toMap())
                }
                map["subAgents"] = tmp
            }
            if self.template != nil {
                map["template"] = self.template?.toMap()
            }
            if self.tools != nil {
                var tmp : [Any] = []
                for k in self.tools! {
                    tmp.append(k.toMap())
                }
                map["tools"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["environment"] as? [String: Any?] {
                var model = UpdateManagedAgentRequest.Body.Environment()
                model.fromMap(value)
                self.environment = model
            }
            if let value = dict["instruction"] as? String {
                self.instruction = value
            }
            if let value = dict["model"] as? [String: Any?] {
                var model = UpdateManagedAgentRequest.Body.Model()
                model.fromMap(value)
                self.model = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["network"] as? [String: Any?] {
                var model = UpdateManagedAgentRequest.Body.Network()
                model.fromMap(value)
                self.network = model
            }
            if let value = dict["runtime"] as? [String: Any?] {
                var model = UpdateManagedAgentRequest.Body.Runtime()
                model.fromMap(value)
                self.runtime = model
            }
            if let value = dict["skills"] as? [Any?] {
                var tmp : [UpdateManagedAgentRequest.Body.Skills] = []
                for v in value {
                    if v != nil {
                        var model = UpdateManagedAgentRequest.Body.Skills()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.skills = tmp
            }
            if let value = dict["subAgents"] as? [Any?] {
                var tmp : [UpdateManagedAgentRequest.Body.SubAgents] = []
                for v in value {
                    if v != nil {
                        var model = UpdateManagedAgentRequest.Body.SubAgents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subAgents = tmp
            }
            if let value = dict["template"] as? [String: Any?] {
                var model = UpdateManagedAgentRequest.Body.Template()
                model.fromMap(value)
                self.template = model
            }
            if let value = dict["tools"] as? [Any?] {
                var tmp : [UpdateManagedAgentRequest.Body.Tools] = []
                for v in value {
                    if v != nil {
                        var model = UpdateManagedAgentRequest.Body.Tools()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tools = tmp
            }
        }
    }
    public var body: UpdateManagedAgentRequest.Body?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateManagedAgentRequest.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateManagedAgentShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateManagedAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Environment : Tea.TeaModel {
            public class CredentialReferences : Tea.TeaModel {
                public var credentialId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.credentialId != nil {
                        map["credentialId"] = self.credentialId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["credentialId"] as? String {
                        self.credentialId = value
                    }
                }
            }
            public class Variables : Tea.TeaModel {
                public var name: String?

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
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["value"] as? String {
                        self.value = value
                    }
                }
            }
            public var credentialReferences: [UpdateManagedAgentResponseBody.Data.Environment.CredentialReferences]?

            public var variables: [UpdateManagedAgentResponseBody.Data.Environment.Variables]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.credentialReferences != nil {
                    var tmp : [Any] = []
                    for k in self.credentialReferences! {
                        tmp.append(k.toMap())
                    }
                    map["credentialReferences"] = tmp
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["credentialReferences"] as? [Any?] {
                    var tmp : [UpdateManagedAgentResponseBody.Data.Environment.CredentialReferences] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateManagedAgentResponseBody.Data.Environment.CredentialReferences()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.credentialReferences = tmp
                }
                if let value = dict["variables"] as? [Any?] {
                    var tmp : [UpdateManagedAgentResponseBody.Data.Environment.Variables] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateManagedAgentResponseBody.Data.Environment.Variables()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.variables = tmp
                }
            }
        }
        public class Model : Tea.TeaModel {
            public var modelConnectionId: String?

            public var modelName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.modelConnectionId != nil {
                    map["modelConnectionId"] = self.modelConnectionId!
                }
                if self.modelName != nil {
                    map["modelName"] = self.modelName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["modelConnectionId"] as? String {
                    self.modelConnectionId = value
                }
                if let value = dict["modelName"] as? String {
                    self.modelName = value
                }
            }
        }
        public class Network : Tea.TeaModel {
            public class AccessInternet : Tea.TeaModel {
                public var enabled: Bool?

                public override init() {
                    super.init()
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
                        map["enabled"] = self.enabled!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                }
            }
            public class AccessVpc : Tea.TeaModel {
                public var enabled: Bool?

                public override init() {
                    super.init()
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
                        map["enabled"] = self.enabled!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                }
            }
            public var accessInternet: UpdateManagedAgentResponseBody.Data.Network.AccessInternet?

            public var accessVpc: UpdateManagedAgentResponseBody.Data.Network.AccessVpc?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.accessInternet?.validate()
                try self.accessVpc?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessInternet != nil {
                    map["accessInternet"] = self.accessInternet?.toMap()
                }
                if self.accessVpc != nil {
                    map["accessVpc"] = self.accessVpc?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessInternet"] as? [String: Any?] {
                    var model = UpdateManagedAgentResponseBody.Data.Network.AccessInternet()
                    model.fromMap(value)
                    self.accessInternet = model
                }
                if let value = dict["accessVpc"] as? [String: Any?] {
                    var model = UpdateManagedAgentResponseBody.Data.Network.AccessVpc()
                    model.fromMap(value)
                    self.accessVpc = model
                }
            }
        }
        public class Runtime : Tea.TeaModel {
            public class Compute : Tea.TeaModel {
                public var computeClass: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.computeClass != nil {
                        map["computeClass"] = self.computeClass!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["computeClass"] as? String {
                        self.computeClass = value
                    }
                }
            }
            public class SessionPolicy : Tea.TeaModel {
                public var headerName: String?

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
                    if self.headerName != nil {
                        map["headerName"] = self.headerName!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["headerName"] as? String {
                        self.headerName = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public var compute: UpdateManagedAgentResponseBody.Data.Runtime.Compute?

            public var sessionPolicy: UpdateManagedAgentResponseBody.Data.Runtime.SessionPolicy?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.compute?.validate()
                try self.sessionPolicy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compute != nil {
                    map["compute"] = self.compute?.toMap()
                }
                if self.sessionPolicy != nil {
                    map["sessionPolicy"] = self.sessionPolicy?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["compute"] as? [String: Any?] {
                    var model = UpdateManagedAgentResponseBody.Data.Runtime.Compute()
                    model.fromMap(value)
                    self.compute = model
                }
                if let value = dict["sessionPolicy"] as? [String: Any?] {
                    var model = UpdateManagedAgentResponseBody.Data.Runtime.SessionPolicy()
                    model.fromMap(value)
                    self.sessionPolicy = model
                }
            }
        }
        public class Skills : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
            }
        }
        public class SubAgents : Tea.TeaModel {
            public var instruction: String?

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
                if self.instruction != nil {
                    map["instruction"] = self.instruction!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["instruction"] as? String {
                    self.instruction = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class Template : Tea.TeaModel {
            public class AiRegistry : Tea.TeaModel {
                public var name: String?

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
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.version != nil {
                        map["version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["version"] as? String {
                        self.version = value
                    }
                }
            }
            public var aiRegistry: UpdateManagedAgentResponseBody.Data.Template.AiRegistry?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.aiRegistry?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aiRegistry != nil {
                    map["aiRegistry"] = self.aiRegistry?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["aiRegistry"] as? [String: Any?] {
                    var model = UpdateManagedAgentResponseBody.Data.Template.AiRegistry()
                    model.fromMap(value)
                    self.aiRegistry = model
                }
            }
        }
        public class Tools : Tea.TeaModel {
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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var agentId: String?

        public var createMode: String?

        public var createdAt: String?

        public var deployType: String?

        public var description_: String?

        public var environment: UpdateManagedAgentResponseBody.Data.Environment?

        public var instruction: String?

        public var latestSpecVersion: Int64?

        public var latestVersionStatus: String?

        public var model: UpdateManagedAgentResponseBody.Data.Model?

        public var name: String?

        public var network: UpdateManagedAgentResponseBody.Data.Network?

        public var regionId: String?

        public var runtime: UpdateManagedAgentResponseBody.Data.Runtime?

        public var skills: [UpdateManagedAgentResponseBody.Data.Skills]?

        public var status: String?

        public var subAgents: [UpdateManagedAgentResponseBody.Data.SubAgents]?

        public var template: UpdateManagedAgentResponseBody.Data.Template?

        public var tools: [UpdateManagedAgentResponseBody.Data.Tools]?

        public var updatedAt: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.environment?.validate()
            try self.model?.validate()
            try self.network?.validate()
            try self.runtime?.validate()
            try self.template?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentId != nil {
                map["agentId"] = self.agentId!
            }
            if self.createMode != nil {
                map["createMode"] = self.createMode!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.deployType != nil {
                map["deployType"] = self.deployType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.environment != nil {
                map["environment"] = self.environment?.toMap()
            }
            if self.instruction != nil {
                map["instruction"] = self.instruction!
            }
            if self.latestSpecVersion != nil {
                map["latestSpecVersion"] = self.latestSpecVersion!
            }
            if self.latestVersionStatus != nil {
                map["latestVersionStatus"] = self.latestVersionStatus!
            }
            if self.model != nil {
                map["model"] = self.model?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.network != nil {
                map["network"] = self.network?.toMap()
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.runtime != nil {
                map["runtime"] = self.runtime?.toMap()
            }
            if self.skills != nil {
                var tmp : [Any] = []
                for k in self.skills! {
                    tmp.append(k.toMap())
                }
                map["skills"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.subAgents != nil {
                var tmp : [Any] = []
                for k in self.subAgents! {
                    tmp.append(k.toMap())
                }
                map["subAgents"] = tmp
            }
            if self.template != nil {
                map["template"] = self.template?.toMap()
            }
            if self.tools != nil {
                var tmp : [Any] = []
                for k in self.tools! {
                    tmp.append(k.toMap())
                }
                map["tools"] = tmp
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentId"] as? String {
                self.agentId = value
            }
            if let value = dict["createMode"] as? String {
                self.createMode = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["deployType"] as? String {
                self.deployType = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["environment"] as? [String: Any?] {
                var model = UpdateManagedAgentResponseBody.Data.Environment()
                model.fromMap(value)
                self.environment = model
            }
            if let value = dict["instruction"] as? String {
                self.instruction = value
            }
            if let value = dict["latestSpecVersion"] as? Int64 {
                self.latestSpecVersion = value
            }
            if let value = dict["latestVersionStatus"] as? String {
                self.latestVersionStatus = value
            }
            if let value = dict["model"] as? [String: Any?] {
                var model = UpdateManagedAgentResponseBody.Data.Model()
                model.fromMap(value)
                self.model = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["network"] as? [String: Any?] {
                var model = UpdateManagedAgentResponseBody.Data.Network()
                model.fromMap(value)
                self.network = model
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["runtime"] as? [String: Any?] {
                var model = UpdateManagedAgentResponseBody.Data.Runtime()
                model.fromMap(value)
                self.runtime = model
            }
            if let value = dict["skills"] as? [Any?] {
                var tmp : [UpdateManagedAgentResponseBody.Data.Skills] = []
                for v in value {
                    if v != nil {
                        var model = UpdateManagedAgentResponseBody.Data.Skills()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.skills = tmp
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["subAgents"] as? [Any?] {
                var tmp : [UpdateManagedAgentResponseBody.Data.SubAgents] = []
                for v in value {
                    if v != nil {
                        var model = UpdateManagedAgentResponseBody.Data.SubAgents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subAgents = tmp
            }
            if let value = dict["template"] as? [String: Any?] {
                var model = UpdateManagedAgentResponseBody.Data.Template()
                model.fromMap(value)
                self.template = model
            }
            if let value = dict["tools"] as? [Any?] {
                var tmp : [UpdateManagedAgentResponseBody.Data.Tools] = []
                for v in value {
                    if v != nil {
                        var model = UpdateManagedAgentResponseBody.Data.Tools()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tools = tmp
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: UpdateManagedAgentResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateManagedAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class UpdateManagedAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateManagedAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateManagedAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateModelRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
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
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
        }
    }
    public var body: UpdateModelRequest.Body?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateModelRequest.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateModelShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Capabilities : Tea.TeaModel {
            public var audio: Bool?

            public var document: Bool?

            public var multiToolCall: Bool?

            public var reasoning: Bool?

            public var streamToolCall: Bool?

            public var toolCall: Bool?

            public var video: Bool?

            public var vision: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audio != nil {
                    map["audio"] = self.audio!
                }
                if self.document != nil {
                    map["document"] = self.document!
                }
                if self.multiToolCall != nil {
                    map["multiToolCall"] = self.multiToolCall!
                }
                if self.reasoning != nil {
                    map["reasoning"] = self.reasoning!
                }
                if self.streamToolCall != nil {
                    map["streamToolCall"] = self.streamToolCall!
                }
                if self.toolCall != nil {
                    map["toolCall"] = self.toolCall!
                }
                if self.video != nil {
                    map["video"] = self.video!
                }
                if self.vision != nil {
                    map["vision"] = self.vision!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["audio"] as? Bool {
                    self.audio = value
                }
                if let value = dict["document"] as? Bool {
                    self.document = value
                }
                if let value = dict["multiToolCall"] as? Bool {
                    self.multiToolCall = value
                }
                if let value = dict["reasoning"] as? Bool {
                    self.reasoning = value
                }
                if let value = dict["streamToolCall"] as? Bool {
                    self.streamToolCall = value
                }
                if let value = dict["toolCall"] as? Bool {
                    self.toolCall = value
                }
                if let value = dict["video"] as? Bool {
                    self.video = value
                }
                if let value = dict["vision"] as? Bool {
                    self.vision = value
                }
            }
        }
        public var capabilities: UpdateModelResponseBody.Data.Capabilities?

        public var connectionId: String?

        public var contextSize: Int64?

        public var createdAt: String?

        public var description_: String?

        public var maxTokens: Int64?

        public var modelId: String?

        public var modelName: String?

        public var updatedAt: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.capabilities?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capabilities != nil {
                map["capabilities"] = self.capabilities?.toMap()
            }
            if self.connectionId != nil {
                map["connectionId"] = self.connectionId!
            }
            if self.contextSize != nil {
                map["contextSize"] = self.contextSize!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.maxTokens != nil {
                map["maxTokens"] = self.maxTokens!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["modelName"] = self.modelName!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["capabilities"] as? [String: Any?] {
                var model = UpdateModelResponseBody.Data.Capabilities()
                model.fromMap(value)
                self.capabilities = model
            }
            if let value = dict["connectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["contextSize"] as? Int64 {
                self.contextSize = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["maxTokens"] as? Int64 {
                self.maxTokens = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
            if let value = dict["modelName"] as? String {
                self.modelName = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: UpdateModelResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateModelResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class UpdateModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateModelConnectionRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var apiKeys: [String]?

        public var description_: String?

        public var endpoint: String?

        public var name: String?

        public var protocol_: String?

        public var providerType: String?

        public override init() {
            super.init()
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
                map["apiKeys"] = self.apiKeys!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            if self.providerType != nil {
                map["providerType"] = self.providerType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKeys"] as? [String] {
                self.apiKeys = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["providerType"] as? String {
                self.providerType = value
            }
        }
    }
    public var body: UpdateModelConnectionRequest.Body?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateModelConnectionRequest.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateModelConnectionShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateModelConnectionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var apiKeyCount: Int32?

        public var connectionId: String?

        public var createdAt: String?

        public var credentialConfigured: Bool?

        public var description_: String?

        public var endpoint: String?

        public var name: String?

        public var protocol_: String?

        public var providerType: String?

        public var status: String?

        public var statusReason: String?

        public var updatedAt: String?

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
            if self.apiKeyCount != nil {
                map["apiKeyCount"] = self.apiKeyCount!
            }
            if self.connectionId != nil {
                map["connectionId"] = self.connectionId!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.credentialConfigured != nil {
                map["credentialConfigured"] = self.credentialConfigured!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            if self.providerType != nil {
                map["providerType"] = self.providerType!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusReason != nil {
                map["statusReason"] = self.statusReason!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKeyCount"] as? Int32 {
                self.apiKeyCount = value
            }
            if let value = dict["connectionId"] as? String {
                self.connectionId = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["credentialConfigured"] as? Bool {
                self.credentialConfigured = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["providerType"] as? String {
                self.providerType = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["statusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: UpdateModelConnectionResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateModelConnectionResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class UpdateModelConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateModelConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateModelConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTeamRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class Agents : Tea.TeaModel {
            public var agentId: String?

            public var teamRole: String?

            public override init() {
                super.init()
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
                    map["agentId"] = self.agentId!
                }
                if self.teamRole != nil {
                    map["teamRole"] = self.teamRole!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["agentId"] as? String {
                    self.agentId = value
                }
                if let value = dict["teamRole"] as? String {
                    self.teamRole = value
                }
            }
        }
        public class Users : Tea.TeaModel {
            public var teamRole: String?

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
                if self.teamRole != nil {
                    map["teamRole"] = self.teamRole!
                }
                if self.userId != nil {
                    map["userId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["teamRole"] as? String {
                    self.teamRole = value
                }
                if let value = dict["userId"] as? String {
                    self.userId = value
                }
            }
        }
        public var agents: [UpdateTeamRequest.Body.Agents]?

        public var description_: String?

        public var users: [UpdateTeamRequest.Body.Users]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agents != nil {
                var tmp : [Any] = []
                for k in self.agents! {
                    tmp.append(k.toMap())
                }
                map["agents"] = tmp
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.users != nil {
                var tmp : [Any] = []
                for k in self.users! {
                    tmp.append(k.toMap())
                }
                map["users"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agents"] as? [Any?] {
                var tmp : [UpdateTeamRequest.Body.Agents] = []
                for v in value {
                    if v != nil {
                        var model = UpdateTeamRequest.Body.Agents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agents = tmp
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["users"] as? [Any?] {
                var tmp : [UpdateTeamRequest.Body.Users] = []
                for v in value {
                    if v != nil {
                        var model = UpdateTeamRequest.Body.Users()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.users = tmp
            }
        }
    }
    public var body: UpdateTeamRequest.Body?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateTeamRequest.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateTeamShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateTeamResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Agents : Tea.TeaModel {
            public var agentId: String?

            public var teamRole: String?

            public override init() {
                super.init()
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
                    map["agentId"] = self.agentId!
                }
                if self.teamRole != nil {
                    map["teamRole"] = self.teamRole!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["agentId"] as? String {
                    self.agentId = value
                }
                if let value = dict["teamRole"] as? String {
                    self.teamRole = value
                }
            }
        }
        public class Users : Tea.TeaModel {
            public var teamRole: String?

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
                if self.teamRole != nil {
                    map["teamRole"] = self.teamRole!
                }
                if self.userId != nil {
                    map["userId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["teamRole"] as? String {
                    self.teamRole = value
                }
                if let value = dict["userId"] as? String {
                    self.userId = value
                }
            }
        }
        public var agents: [UpdateTeamResponseBody.Data.Agents]?

        public var createdAt: String?

        public var description_: String?

        public var name: String?

        public var status: String?

        public var teamId: String?

        public var updatedAt: String?

        public var users: [UpdateTeamResponseBody.Data.Users]?

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
            if self.agents != nil {
                var tmp : [Any] = []
                for k in self.agents! {
                    tmp.append(k.toMap())
                }
                map["agents"] = tmp
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.teamId != nil {
                map["teamId"] = self.teamId!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.users != nil {
                var tmp : [Any] = []
                for k in self.users! {
                    tmp.append(k.toMap())
                }
                map["users"] = tmp
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agents"] as? [Any?] {
                var tmp : [UpdateTeamResponseBody.Data.Agents] = []
                for v in value {
                    if v != nil {
                        var model = UpdateTeamResponseBody.Data.Agents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agents = tmp
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["teamId"] as? String {
                self.teamId = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["users"] as? [Any?] {
                var tmp : [UpdateTeamResponseBody.Data.Users] = []
                for v in value {
                    if v != nil {
                        var model = UpdateTeamResponseBody.Data.Users()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.users = tmp
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: UpdateTeamResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateTeamResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class UpdateTeamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTeamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateTeamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var displayName: String?

        public var email: String?

        public var note: String?

        public override init() {
            super.init()
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
                map["displayName"] = self.displayName!
            }
            if self.email != nil {
                map["email"] = self.email!
            }
            if self.note != nil {
                map["note"] = self.note!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["email"] as? String {
                self.email = value
            }
            if let value = dict["note"] as? String {
                self.note = value
            }
        }
    }
    public var body: UpdateUserRequest.Body?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateUserRequest.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateUserShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agentCoreUserId: String?

        public var authMethod: String?

        public var createdAt: String?

        public var displayName: String?

        public var email: String?

        public var name: String?

        public var note: String?

        public var regionId: String?

        public var status: String?

        public var updatedAt: String?

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
            if self.agentCoreUserId != nil {
                map["agentCoreUserId"] = self.agentCoreUserId!
            }
            if self.authMethod != nil {
                map["authMethod"] = self.authMethod!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.email != nil {
                map["email"] = self.email!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.note != nil {
                map["note"] = self.note!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentCoreUserId"] as? String {
                self.agentCoreUserId = value
            }
            if let value = dict["authMethod"] as? String {
                self.authMethod = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["email"] as? String {
                self.email = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["note"] as? String {
                self.note = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: UpdateUserResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateUserResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class UpdateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateWorkspaceRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class NetworkConfiguration : Tea.TeaModel {
            public class Vpc : Tea.TeaModel {
                public var enabled: Bool?

                public var vSwitchIds: [String]?

                public var vpcId: String?

                public override init() {
                    super.init()
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
                        map["enabled"] = self.enabled!
                    }
                    if self.vSwitchIds != nil {
                        map["vSwitchIds"] = self.vSwitchIds!
                    }
                    if self.vpcId != nil {
                        map["vpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                    if let value = dict["vSwitchIds"] as? [String] {
                        self.vSwitchIds = value
                    }
                    if let value = dict["vpcId"] as? String {
                        self.vpcId = value
                    }
                }
            }
            public var vpc: UpdateWorkspaceRequest.Body.NetworkConfiguration.Vpc?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.vpc?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.vpc != nil {
                    map["vpc"] = self.vpc?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["vpc"] as? [String: Any?] {
                    var model = UpdateWorkspaceRequest.Body.NetworkConfiguration.Vpc()
                    model.fromMap(value)
                    self.vpc = model
                }
            }
        }
        public var name: String?

        public var networkConfiguration: UpdateWorkspaceRequest.Body.NetworkConfiguration?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.networkConfiguration?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.networkConfiguration != nil {
                map["networkConfiguration"] = self.networkConfiguration?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["networkConfiguration"] as? [String: Any?] {
                var model = UpdateWorkspaceRequest.Body.NetworkConfiguration()
                model.fromMap(value)
                self.networkConfiguration = model
            }
        }
    }
    public var body: UpdateWorkspaceRequest.Body?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateWorkspaceRequest.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateWorkspaceShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class UpdateWorkspaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class NetworkConfiguration : Tea.TeaModel {
            public class Vpc : Tea.TeaModel {
                public var enabled: Bool?

                public var vSwitchIds: [String]?

                public var vpcId: String?

                public override init() {
                    super.init()
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
                        map["enabled"] = self.enabled!
                    }
                    if self.vSwitchIds != nil {
                        map["vSwitchIds"] = self.vSwitchIds!
                    }
                    if self.vpcId != nil {
                        map["vpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                    if let value = dict["vSwitchIds"] as? [String] {
                        self.vSwitchIds = value
                    }
                    if let value = dict["vpcId"] as? String {
                        self.vpcId = value
                    }
                }
            }
            public var vpc: UpdateWorkspaceResponseBody.Data.NetworkConfiguration.Vpc?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.vpc?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.vpc != nil {
                    map["vpc"] = self.vpc?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["vpc"] as? [String: Any?] {
                    var model = UpdateWorkspaceResponseBody.Data.NetworkConfiguration.Vpc()
                    model.fromMap(value)
                    self.vpc = model
                }
            }
        }
        public var name: String?

        public var networkConfiguration: UpdateWorkspaceResponseBody.Data.NetworkConfiguration?

        public var regionId: String?

        public var status: String?

        public var tenantId: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.networkConfiguration?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.networkConfiguration != nil {
                map["networkConfiguration"] = self.networkConfiguration?.toMap()
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["networkConfiguration"] as? [String: Any?] {
                var model = UpdateWorkspaceResponseBody.Data.NetworkConfiguration()
                model.fromMap(value)
                self.networkConfiguration = model
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["tenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["workspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: UpdateWorkspaceResponseBody.Data?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateWorkspaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class UpdateWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
