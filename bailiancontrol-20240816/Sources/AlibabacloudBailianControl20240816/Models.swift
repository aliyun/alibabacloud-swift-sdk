import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetApiKeyRequest : Tea.TeaModel {
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
            map["apiKeyId"] = self.apiKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeyId"] as? String {
            self.apiKeyId = value
        }
    }
}

public class GetApiKeyResponseBody : Tea.TeaModel {
    public class ApiKey : Tea.TeaModel {
        public class AuthSetModel : Tea.TeaModel {
            public class AuthAppStructure : Tea.TeaModel {
                public var agents: [String]?

                public var highCodeApps: [String]?

                public var isAllowAccessAllApps: Bool?

                public var workflows: [String]?

                public override init() {
                    super.init()
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
                        map["agents"] = self.agents!
                    }
                    if self.highCodeApps != nil {
                        map["highCodeApps"] = self.highCodeApps!
                    }
                    if self.isAllowAccessAllApps != nil {
                        map["isAllowAccessAllApps"] = self.isAllowAccessAllApps!
                    }
                    if self.workflows != nil {
                        map["workflows"] = self.workflows!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["agents"] as? [String] {
                        self.agents = value
                    }
                    if let value = dict["highCodeApps"] as? [String] {
                        self.highCodeApps = value
                    }
                    if let value = dict["isAllowAccessAllApps"] as? Bool {
                        self.isAllowAccessAllApps = value
                    }
                    if let value = dict["workflows"] as? [String] {
                        self.workflows = value
                    }
                }
            }
            public class AuthModelStructure : Tea.TeaModel {
                public var defineModels: [String]?

                public var deployments: [String]?

                public var isAllowAccessAllModels: Bool?

                public var models: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.defineModels != nil {
                        map["defineModels"] = self.defineModels!
                    }
                    if self.deployments != nil {
                        map["deployments"] = self.deployments!
                    }
                    if self.isAllowAccessAllModels != nil {
                        map["isAllowAccessAllModels"] = self.isAllowAccessAllModels!
                    }
                    if self.models != nil {
                        map["models"] = self.models!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["defineModels"] as? [String] {
                        self.defineModels = value
                    }
                    if let value = dict["deployments"] as? [String] {
                        self.deployments = value
                    }
                    if let value = dict["isAllowAccessAllModels"] as? Bool {
                        self.isAllowAccessAllModels = value
                    }
                    if let value = dict["models"] as? [String] {
                        self.models = value
                    }
                }
            }
            public var accessIps: [String]?

            public var authAppStructure: GetApiKeyResponseBody.ApiKey.AuthSetModel.AuthAppStructure?

            public var authModelStructure: GetApiKeyResponseBody.ApiKey.AuthSetModel.AuthModelStructure?

            public var authSetMode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.authAppStructure?.validate()
                try self.authModelStructure?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessIps != nil {
                    map["accessIps"] = self.accessIps!
                }
                if self.authAppStructure != nil {
                    map["authAppStructure"] = self.authAppStructure?.toMap()
                }
                if self.authModelStructure != nil {
                    map["authModelStructure"] = self.authModelStructure?.toMap()
                }
                if self.authSetMode != nil {
                    map["authSetMode"] = self.authSetMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessIps"] as? [String] {
                    self.accessIps = value
                }
                if let value = dict["authAppStructure"] as? [String: Any?] {
                    var model = GetApiKeyResponseBody.ApiKey.AuthSetModel.AuthAppStructure()
                    model.fromMap(value)
                    self.authAppStructure = model
                }
                if let value = dict["authModelStructure"] as? [String: Any?] {
                    var model = GetApiKeyResponseBody.ApiKey.AuthSetModel.AuthModelStructure()
                    model.fromMap(value)
                    self.authModelStructure = model
                }
                if let value = dict["authSetMode"] as? String {
                    self.authSetMode = value
                }
            }
        }
        public var apiKeyValue: String?

        public var apikeyId: String?

        public var authSetModel: GetApiKeyResponseBody.ApiKey.AuthSetModel?

        public var blocked: String?

        public var createTime: Int64?

        public var creator: String?

        public var description_: String?

        public var expireTime: Int64?

        public var extData: String?

        public var parentUid: String?

        public var uid: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.authSetModel?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiKeyValue != nil {
                map["apiKeyValue"] = self.apiKeyValue!
            }
            if self.apikeyId != nil {
                map["apikeyId"] = self.apikeyId!
            }
            if self.authSetModel != nil {
                map["authSetModel"] = self.authSetModel?.toMap()
            }
            if self.blocked != nil {
                map["blocked"] = self.blocked!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.expireTime != nil {
                map["expireTime"] = self.expireTime!
            }
            if self.extData != nil {
                map["extData"] = self.extData!
            }
            if self.parentUid != nil {
                map["parentUid"] = self.parentUid!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKeyValue"] as? String {
                self.apiKeyValue = value
            }
            if let value = dict["apikeyId"] as? String {
                self.apikeyId = value
            }
            if let value = dict["authSetModel"] as? [String: Any?] {
                var model = GetApiKeyResponseBody.ApiKey.AuthSetModel()
                model.fromMap(value)
                self.authSetModel = model
            }
            if let value = dict["blocked"] as? String {
                self.blocked = value
            }
            if let value = dict["createTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["creator"] as? String {
                self.creator = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["expireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["extData"] as? String {
                self.extData = value
            }
            if let value = dict["parentUid"] as? String {
                self.parentUid = value
            }
            if let value = dict["uid"] as? String {
                self.uid = value
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

public class ListApiKeysRequest : Tea.TeaModel {
    public var apiKeyId: String?

    public var description_: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var order: String?

    public var orderBy: String?

    public var skip: Int32?

    public var uid: String?

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
        if self.skip != nil {
            map["skip"] = self.skip!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKeyId"] as? String {
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
        if let value = dict["skip"] as? Int32 {
            self.skip = value
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListApiKeysResponseBody : Tea.TeaModel {
    public class ApiKeys : Tea.TeaModel {
        public class AuthSetModel : Tea.TeaModel {
            public var authSetMode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authSetMode != nil {
                    map["authSetMode"] = self.authSetMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["authSetMode"] as? String {
                    self.authSetMode = value
                }
            }
        }
        public var apiKeyValue: String?

        public var apikeyId: String?

        public var authSetModel: ListApiKeysResponseBody.ApiKeys.AuthSetModel?

        public var blocked: Int32?

        public var createTime: Int64?

        public var creator: String?

        public var description_: String?

        public var expireTime: Int64?

        public var extData: String?

        public var parentUid: String?

        public var type: Int32?

        public var uid: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.authSetModel?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiKeyValue != nil {
                map["apiKeyValue"] = self.apiKeyValue!
            }
            if self.apikeyId != nil {
                map["apikeyId"] = self.apikeyId!
            }
            if self.authSetModel != nil {
                map["authSetModel"] = self.authSetModel?.toMap()
            }
            if self.blocked != nil {
                map["blocked"] = self.blocked!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.expireTime != nil {
                map["expireTime"] = self.expireTime!
            }
            if self.extData != nil {
                map["extData"] = self.extData!
            }
            if self.parentUid != nil {
                map["parentUid"] = self.parentUid!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            if self.workspaceId != nil {
                map["workspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKeyValue"] as? String {
                self.apiKeyValue = value
            }
            if let value = dict["apikeyId"] as? String {
                self.apikeyId = value
            }
            if let value = dict["authSetModel"] as? [String: Any?] {
                var model = ListApiKeysResponseBody.ApiKeys.AuthSetModel()
                model.fromMap(value)
                self.authSetModel = model
            }
            if let value = dict["blocked"] as? Int32 {
                self.blocked = value
            }
            if let value = dict["createTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["creator"] as? String {
                self.creator = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["expireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["extData"] as? String {
                self.extData = value
            }
            if let value = dict["parentUid"] as? String {
                self.parentUid = value
            }
            if let value = dict["type"] as? Int32 {
                self.type = value
            }
            if let value = dict["uid"] as? String {
                self.uid = value
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
