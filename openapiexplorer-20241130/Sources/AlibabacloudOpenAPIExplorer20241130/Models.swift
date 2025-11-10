import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ApiMcpServerValidateHclRequest : Tea.TeaModel {
    public var code: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
    }
}

public class ApiMcpServerValidateHclResponseBody : Tea.TeaModel {
    public var diagnosticReport: Any?

    public var errors: [String]?

    public var hash: String?

    public var isValid: Bool?

    public var parameters: [Any]?

    public var requestId: String?

    public var warnings: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diagnosticReport != nil {
            map["diagnosticReport"] = self.diagnosticReport!
        }
        if self.errors != nil {
            map["errors"] = self.errors!
        }
        if self.hash != nil {
            map["hash"] = self.hash!
        }
        if self.isValid != nil {
            map["isValid"] = self.isValid!
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.warnings != nil {
            map["warnings"] = self.warnings!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["diagnosticReport"] as? Any {
            self.diagnosticReport = value
        }
        if let value = dict["errors"] as? [String] {
            self.errors = value
        }
        if let value = dict["hash"] as? String {
            self.hash = value
        }
        if let value = dict["isValid"] as? Bool {
            self.isValid = value
        }
        if let value = dict["parameters"] as? [Any] {
            self.parameters = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["warnings"] as? [String] {
            self.warnings = value
        }
    }
}

public class ApiMcpServerValidateHclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApiMcpServerValidateHclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ApiMcpServerValidateHclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateApiMcpServerRequest : Tea.TeaModel {
    public class AdditionalApiDescriptions : Tea.TeaModel {
        public class ConstParameters : Tea.TeaModel {
            public var key: String?

            public var value: Any?

            public override init() {
                super.init()
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
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["value"] as? Any {
                    self.value = value
                }
            }
        }
        public var apiName: String?

        public var apiOverrideJson: String?

        public var apiVersion: String?

        public var constParameters: [CreateApiMcpServerRequest.AdditionalApiDescriptions.ConstParameters]?

        public var enableOutputSchema: Bool?

        public var executeCliCommand: Bool?

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
            if self.apiName != nil {
                map["apiName"] = self.apiName!
            }
            if self.apiOverrideJson != nil {
                map["apiOverrideJson"] = self.apiOverrideJson!
            }
            if self.apiVersion != nil {
                map["apiVersion"] = self.apiVersion!
            }
            if self.constParameters != nil {
                var tmp : [Any] = []
                for k in self.constParameters! {
                    tmp.append(k.toMap())
                }
                map["constParameters"] = tmp
            }
            if self.enableOutputSchema != nil {
                map["enableOutputSchema"] = self.enableOutputSchema!
            }
            if self.executeCliCommand != nil {
                map["executeCliCommand"] = self.executeCliCommand!
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiName"] as? String {
                self.apiName = value
            }
            if let value = dict["apiOverrideJson"] as? String {
                self.apiOverrideJson = value
            }
            if let value = dict["apiVersion"] as? String {
                self.apiVersion = value
            }
            if let value = dict["constParameters"] as? [Any?] {
                var tmp : [CreateApiMcpServerRequest.AdditionalApiDescriptions.ConstParameters] = []
                for v in value {
                    if v != nil {
                        var model = CreateApiMcpServerRequest.AdditionalApiDescriptions.ConstParameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.constParameters = tmp
            }
            if let value = dict["enableOutputSchema"] as? Bool {
                self.enableOutputSchema = value
            }
            if let value = dict["executeCliCommand"] as? Bool {
                self.executeCliCommand = value
            }
            if let value = dict["product"] as? String {
                self.product = value
            }
        }
    }
    public class Apis : Tea.TeaModel {
        public var apiVersion: String?

        public var product: String?

        public var selectors: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiVersion != nil {
                map["apiVersion"] = self.apiVersion!
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            if self.selectors != nil {
                map["selectors"] = self.selectors!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiVersion"] as? String {
                self.apiVersion = value
            }
            if let value = dict["product"] as? String {
                self.product = value
            }
            if let value = dict["selectors"] as? [String] {
                self.selectors = value
            }
        }
    }
    public class Prompts : Tea.TeaModel {
        public class Arguments : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public var required_: Bool?

            public override init() {
                super.init()
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
                if self.required_ != nil {
                    map["required"] = self.required_!
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
                if let value = dict["required"] as? Bool {
                    self.required_ = value
                }
            }
        }
        public var arguments: [CreateApiMcpServerRequest.Prompts.Arguments]?

        public var content: String?

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
            if self.arguments != nil {
                var tmp : [Any] = []
                for k in self.arguments! {
                    tmp.append(k.toMap())
                }
                map["arguments"] = tmp
            }
            if self.content != nil {
                map["content"] = self.content!
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
            if let value = dict["arguments"] as? [Any?] {
                var tmp : [CreateApiMcpServerRequest.Prompts.Arguments] = []
                for v in value {
                    if v != nil {
                        var model = CreateApiMcpServerRequest.Prompts.Arguments()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.arguments = tmp
            }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public class TerraformTools : Tea.TeaModel {
        public var async: Bool?

        public var code: String?

        public var description_: String?

        public var destroyPolicy: String?

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
            if self.async != nil {
                map["async"] = self.async!
            }
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.destroyPolicy != nil {
                map["destroyPolicy"] = self.destroyPolicy!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["async"] as? Bool {
                self.async = value
            }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["destroyPolicy"] as? String {
                self.destroyPolicy = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var additionalApiDescriptions: [CreateApiMcpServerRequest.AdditionalApiDescriptions]?

    public var apis: [CreateApiMcpServerRequest.Apis]?

    public var assumeRoleExtraPolicy: String?

    public var assumeRoleName: String?

    public var clientToken: String?

    public var description_: String?

    public var enableAssumeRole: Bool?

    public var instructions: String?

    public var language: String?

    public var name: String?

    public var oauthClientId: String?

    public var prompts: [CreateApiMcpServerRequest.Prompts]?

    public var systemTools: [String]?

    public var terraformTools: [CreateApiMcpServerRequest.TerraformTools]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalApiDescriptions != nil {
            var tmp : [Any] = []
            for k in self.additionalApiDescriptions! {
                tmp.append(k.toMap())
            }
            map["additionalApiDescriptions"] = tmp
        }
        if self.apis != nil {
            var tmp : [Any] = []
            for k in self.apis! {
                tmp.append(k.toMap())
            }
            map["apis"] = tmp
        }
        if self.assumeRoleExtraPolicy != nil {
            map["assumeRoleExtraPolicy"] = self.assumeRoleExtraPolicy!
        }
        if self.assumeRoleName != nil {
            map["assumeRoleName"] = self.assumeRoleName!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enableAssumeRole != nil {
            map["enableAssumeRole"] = self.enableAssumeRole!
        }
        if self.instructions != nil {
            map["instructions"] = self.instructions!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.oauthClientId != nil {
            map["oauthClientId"] = self.oauthClientId!
        }
        if self.prompts != nil {
            var tmp : [Any] = []
            for k in self.prompts! {
                tmp.append(k.toMap())
            }
            map["prompts"] = tmp
        }
        if self.systemTools != nil {
            map["systemTools"] = self.systemTools!
        }
        if self.terraformTools != nil {
            var tmp : [Any] = []
            for k in self.terraformTools! {
                tmp.append(k.toMap())
            }
            map["terraformTools"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["additionalApiDescriptions"] as? [Any?] {
            var tmp : [CreateApiMcpServerRequest.AdditionalApiDescriptions] = []
            for v in value {
                if v != nil {
                    var model = CreateApiMcpServerRequest.AdditionalApiDescriptions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.additionalApiDescriptions = tmp
        }
        if let value = dict["apis"] as? [Any?] {
            var tmp : [CreateApiMcpServerRequest.Apis] = []
            for v in value {
                if v != nil {
                    var model = CreateApiMcpServerRequest.Apis()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.apis = tmp
        }
        if let value = dict["assumeRoleExtraPolicy"] as? String {
            self.assumeRoleExtraPolicy = value
        }
        if let value = dict["assumeRoleName"] as? String {
            self.assumeRoleName = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enableAssumeRole"] as? Bool {
            self.enableAssumeRole = value
        }
        if let value = dict["instructions"] as? String {
            self.instructions = value
        }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["oauthClientId"] as? String {
            self.oauthClientId = value
        }
        if let value = dict["prompts"] as? [Any?] {
            var tmp : [CreateApiMcpServerRequest.Prompts] = []
            for v in value {
                if v != nil {
                    var model = CreateApiMcpServerRequest.Prompts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.prompts = tmp
        }
        if let value = dict["systemTools"] as? [String] {
            self.systemTools = value
        }
        if let value = dict["terraformTools"] as? [Any?] {
            var tmp : [CreateApiMcpServerRequest.TerraformTools] = []
            for v in value {
                if v != nil {
                    var model = CreateApiMcpServerRequest.TerraformTools()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.terraformTools = tmp
        }
    }
}

public class CreateApiMcpServerResponseBody : Tea.TeaModel {
    public class Urls : Tea.TeaModel {
        public var mcp: String?

        public var sse: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mcp != nil {
                map["mcp"] = self.mcp!
            }
            if self.sse != nil {
                map["sse"] = self.sse!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mcp"] as? String {
                self.mcp = value
            }
            if let value = dict["sse"] as? String {
                self.sse = value
            }
        }
    }
    public var id: String?

    public var requestId: String?

    public var urls: CreateApiMcpServerResponseBody.Urls?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.urls?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.urls != nil {
            map["urls"] = self.urls?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["urls"] as? [String: Any?] {
            var model = CreateApiMcpServerResponseBody.Urls()
            model.fromMap(value)
            self.urls = model
        }
    }
}

public class CreateApiMcpServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApiMcpServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateApiMcpServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteApiMcpServerRequest : Tea.TeaModel {
    public var clientToken: String?

    public var id: String?

    public override init() {
        super.init()
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
        if self.id != nil {
            map["id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
    }
}

public class DeleteApiMcpServerResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteApiMcpServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApiMcpServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteApiMcpServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateCLICommandRequest : Tea.TeaModel {
    public var api: String?

    public var apiParams: [String: Any]?

    public var apiVersion: String?

    public var product: String?

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
        if self.api != nil {
            map["api"] = self.api!
        }
        if self.apiParams != nil {
            map["apiParams"] = self.apiParams!
        }
        if self.apiVersion != nil {
            map["apiVersion"] = self.apiVersion!
        }
        if self.product != nil {
            map["product"] = self.product!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["api"] as? String {
            self.api = value
        }
        if let value = dict["apiParams"] as? [String: Any] {
            self.apiParams = value
        }
        if let value = dict["apiVersion"] as? String {
            self.apiVersion = value
        }
        if let value = dict["product"] as? String {
            self.product = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class GenerateCLICommandShrinkRequest : Tea.TeaModel {
    public var api: String?

    public var apiParamsShrink: String?

    public var apiVersion: String?

    public var product: String?

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
        if self.api != nil {
            map["api"] = self.api!
        }
        if self.apiParamsShrink != nil {
            map["apiParams"] = self.apiParamsShrink!
        }
        if self.apiVersion != nil {
            map["apiVersion"] = self.apiVersion!
        }
        if self.product != nil {
            map["product"] = self.product!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["api"] as? String {
            self.api = value
        }
        if let value = dict["apiParams"] as? String {
            self.apiParamsShrink = value
        }
        if let value = dict["apiVersion"] as? String {
            self.apiVersion = value
        }
        if let value = dict["product"] as? String {
            self.product = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class GenerateCLICommandResponseBody : Tea.TeaModel {
    public var cli: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cli != nil {
            map["cli"] = self.cli!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cli"] as? String {
            self.cli = value
        }
    }
}

public class GenerateCLICommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateCLICommandResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GenerateCLICommandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApiDefinitionRequest : Tea.TeaModel {
    public var api: String?

    public var apiVersion: String?

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
        if self.api != nil {
            map["api"] = self.api!
        }
        if self.apiVersion != nil {
            map["apiVersion"] = self.apiVersion!
        }
        if self.product != nil {
            map["product"] = self.product!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["api"] as? String {
            self.api = value
        }
        if let value = dict["apiVersion"] as? String {
            self.apiVersion = value
        }
        if let value = dict["product"] as? String {
            self.product = value
        }
    }
}

public class GetApiDefinitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
        if let value = dict["body"] as? [String: Any] {
            self.body = value
        }
    }
}

public class GetApiMcpServerRequest : Tea.TeaModel {
    public var id: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? String {
            self.id = value
        }
    }
}

public class GetApiMcpServerResponseBody : Tea.TeaModel {
    public class AdditionalApiDescriptions : Tea.TeaModel {
        public class ConstParameters : Tea.TeaModel {
            public var key: String?

            public var value: Any?

            public override init() {
                super.init()
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
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["value"] as? Any {
                    self.value = value
                }
            }
        }
        public var apiName: String?

        public var apiOverrideJson: String?

        public var apiVersion: String?

        public var constParameters: [GetApiMcpServerResponseBody.AdditionalApiDescriptions.ConstParameters]?

        public var enableOutputSchema: Bool?

        public var executeCliCommand: Bool?

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
            if self.apiName != nil {
                map["apiName"] = self.apiName!
            }
            if self.apiOverrideJson != nil {
                map["apiOverrideJson"] = self.apiOverrideJson!
            }
            if self.apiVersion != nil {
                map["apiVersion"] = self.apiVersion!
            }
            if self.constParameters != nil {
                var tmp : [Any] = []
                for k in self.constParameters! {
                    tmp.append(k.toMap())
                }
                map["constParameters"] = tmp
            }
            if self.enableOutputSchema != nil {
                map["enableOutputSchema"] = self.enableOutputSchema!
            }
            if self.executeCliCommand != nil {
                map["executeCliCommand"] = self.executeCliCommand!
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiName"] as? String {
                self.apiName = value
            }
            if let value = dict["apiOverrideJson"] as? String {
                self.apiOverrideJson = value
            }
            if let value = dict["apiVersion"] as? String {
                self.apiVersion = value
            }
            if let value = dict["constParameters"] as? [Any?] {
                var tmp : [GetApiMcpServerResponseBody.AdditionalApiDescriptions.ConstParameters] = []
                for v in value {
                    if v != nil {
                        var model = GetApiMcpServerResponseBody.AdditionalApiDescriptions.ConstParameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.constParameters = tmp
            }
            if let value = dict["enableOutputSchema"] as? Bool {
                self.enableOutputSchema = value
            }
            if let value = dict["executeCliCommand"] as? Bool {
                self.executeCliCommand = value
            }
            if let value = dict["product"] as? String {
                self.product = value
            }
        }
    }
    public class ApiInfos : Tea.TeaModel {
        public var apiName: String?

        public var apiVersion: String?

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
            if self.apiName != nil {
                map["apiName"] = self.apiName!
            }
            if self.apiVersion != nil {
                map["apiVersion"] = self.apiVersion!
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiName"] as? String {
                self.apiName = value
            }
            if let value = dict["apiVersion"] as? String {
                self.apiVersion = value
            }
            if let value = dict["product"] as? String {
                self.product = value
            }
        }
    }
    public class Apis : Tea.TeaModel {
        public var apiVersion: String?

        public var product: String?

        public var selectors: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiVersion != nil {
                map["apiVersion"] = self.apiVersion!
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            if self.selectors != nil {
                map["selectors"] = self.selectors!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiVersion"] as? String {
                self.apiVersion = value
            }
            if let value = dict["product"] as? String {
                self.product = value
            }
            if let value = dict["selectors"] as? [String] {
                self.selectors = value
            }
        }
    }
    public class Prompts : Tea.TeaModel {
        public class Arguments : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public var required_: Bool?

            public override init() {
                super.init()
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
                if self.required_ != nil {
                    map["required"] = self.required_!
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
                if let value = dict["required"] as? Bool {
                    self.required_ = value
                }
            }
        }
        public var arguments: [GetApiMcpServerResponseBody.Prompts.Arguments]?

        public var content: String?

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
            if self.arguments != nil {
                var tmp : [Any] = []
                for k in self.arguments! {
                    tmp.append(k.toMap())
                }
                map["arguments"] = tmp
            }
            if self.content != nil {
                map["content"] = self.content!
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
            if let value = dict["arguments"] as? [Any?] {
                var tmp : [GetApiMcpServerResponseBody.Prompts.Arguments] = []
                for v in value {
                    if v != nil {
                        var model = GetApiMcpServerResponseBody.Prompts.Arguments()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.arguments = tmp
            }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public class SystemMcpServerInfo : Tea.TeaModel {
        public var name: String?

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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["product"] as? String {
                self.product = value
            }
        }
    }
    public class TerraformTools : Tea.TeaModel {
        public var async: Bool?

        public var code: String?

        public var description_: String?

        public var destroyPolicy: String?

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
            if self.async != nil {
                map["async"] = self.async!
            }
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.destroyPolicy != nil {
                map["destroyPolicy"] = self.destroyPolicy!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["async"] as? Bool {
                self.async = value
            }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["destroyPolicy"] as? String {
                self.destroyPolicy = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public class Urls : Tea.TeaModel {
        public var mcp: String?

        public var sse: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mcp != nil {
                map["mcp"] = self.mcp!
            }
            if self.sse != nil {
                map["sse"] = self.sse!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mcp"] as? String {
                self.mcp = value
            }
            if let value = dict["sse"] as? String {
                self.sse = value
            }
        }
    }
    public var additionalApiDescriptions: [GetApiMcpServerResponseBody.AdditionalApiDescriptions]?

    public var apiInfos: [GetApiMcpServerResponseBody.ApiInfos]?

    public var apis: [GetApiMcpServerResponseBody.Apis]?

    public var assumeRoleExtraPolicy: String?

    public var assumeRoleName: String?

    public var createTime: String?

    public var description_: String?

    public var enableAssumeRole: Bool?

    public var id: String?

    public var instructions: String?

    public var language: String?

    public var name: String?

    public var oauthClientId: String?

    public var prompts: [GetApiMcpServerResponseBody.Prompts]?

    public var requestId: String?

    public var requiredRAMPolicy: String?

    public var sourceType: String?

    public var systemMcpServerInfo: GetApiMcpServerResponseBody.SystemMcpServerInfo?

    public var systemTools: [String]?

    public var terraformTools: [GetApiMcpServerResponseBody.TerraformTools]?

    public var updateTime: String?

    public var urls: GetApiMcpServerResponseBody.Urls?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.systemMcpServerInfo?.validate()
        try self.urls?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalApiDescriptions != nil {
            var tmp : [Any] = []
            for k in self.additionalApiDescriptions! {
                tmp.append(k.toMap())
            }
            map["additionalApiDescriptions"] = tmp
        }
        if self.apiInfos != nil {
            var tmp : [Any] = []
            for k in self.apiInfos! {
                tmp.append(k.toMap())
            }
            map["apiInfos"] = tmp
        }
        if self.apis != nil {
            var tmp : [Any] = []
            for k in self.apis! {
                tmp.append(k.toMap())
            }
            map["apis"] = tmp
        }
        if self.assumeRoleExtraPolicy != nil {
            map["assumeRoleExtraPolicy"] = self.assumeRoleExtraPolicy!
        }
        if self.assumeRoleName != nil {
            map["assumeRoleName"] = self.assumeRoleName!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enableAssumeRole != nil {
            map["enableAssumeRole"] = self.enableAssumeRole!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.instructions != nil {
            map["instructions"] = self.instructions!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.oauthClientId != nil {
            map["oauthClientId"] = self.oauthClientId!
        }
        if self.prompts != nil {
            var tmp : [Any] = []
            for k in self.prompts! {
                tmp.append(k.toMap())
            }
            map["prompts"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.requiredRAMPolicy != nil {
            map["requiredRAMPolicy"] = self.requiredRAMPolicy!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.systemMcpServerInfo != nil {
            map["systemMcpServerInfo"] = self.systemMcpServerInfo?.toMap()
        }
        if self.systemTools != nil {
            map["systemTools"] = self.systemTools!
        }
        if self.terraformTools != nil {
            var tmp : [Any] = []
            for k in self.terraformTools! {
                tmp.append(k.toMap())
            }
            map["terraformTools"] = tmp
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.urls != nil {
            map["urls"] = self.urls?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["additionalApiDescriptions"] as? [Any?] {
            var tmp : [GetApiMcpServerResponseBody.AdditionalApiDescriptions] = []
            for v in value {
                if v != nil {
                    var model = GetApiMcpServerResponseBody.AdditionalApiDescriptions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.additionalApiDescriptions = tmp
        }
        if let value = dict["apiInfos"] as? [Any?] {
            var tmp : [GetApiMcpServerResponseBody.ApiInfos] = []
            for v in value {
                if v != nil {
                    var model = GetApiMcpServerResponseBody.ApiInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.apiInfos = tmp
        }
        if let value = dict["apis"] as? [Any?] {
            var tmp : [GetApiMcpServerResponseBody.Apis] = []
            for v in value {
                if v != nil {
                    var model = GetApiMcpServerResponseBody.Apis()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.apis = tmp
        }
        if let value = dict["assumeRoleExtraPolicy"] as? String {
            self.assumeRoleExtraPolicy = value
        }
        if let value = dict["assumeRoleName"] as? String {
            self.assumeRoleName = value
        }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enableAssumeRole"] as? Bool {
            self.enableAssumeRole = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["instructions"] as? String {
            self.instructions = value
        }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["oauthClientId"] as? String {
            self.oauthClientId = value
        }
        if let value = dict["prompts"] as? [Any?] {
            var tmp : [GetApiMcpServerResponseBody.Prompts] = []
            for v in value {
                if v != nil {
                    var model = GetApiMcpServerResponseBody.Prompts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.prompts = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["requiredRAMPolicy"] as? String {
            self.requiredRAMPolicy = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["systemMcpServerInfo"] as? [String: Any?] {
            var model = GetApiMcpServerResponseBody.SystemMcpServerInfo()
            model.fromMap(value)
            self.systemMcpServerInfo = model
        }
        if let value = dict["systemTools"] as? [String] {
            self.systemTools = value
        }
        if let value = dict["terraformTools"] as? [Any?] {
            var tmp : [GetApiMcpServerResponseBody.TerraformTools] = []
            for v in value {
                if v != nil {
                    var model = GetApiMcpServerResponseBody.TerraformTools()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.terraformTools = tmp
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["urls"] as? [String: Any?] {
            var model = GetApiMcpServerResponseBody.Urls()
            model.fromMap(value)
            self.urls = model
        }
    }
}

public class GetApiMcpServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApiMcpServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetApiMcpServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetErrorCodeSolutionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.acceptLanguage != nil {
            map["acceptLanguage"] = self.acceptLanguage!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.product != nil {
            map["product"] = self.product!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["product"] as? String {
            self.product = value
        }
    }
}

public class GetErrorCodeSolutionsResponseBody : Tea.TeaModel {
    public class Solutions : Tea.TeaModel {
        public var content: String?

        public var errorCode: String?

        public var errorMessage: String?

        public var product: String?

        public var productName: String?

        public var solutionId: String?

        public override init() {
            super.init()
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
                map["content"] = self.content!
            }
            if self.errorCode != nil {
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.solutionId != nil {
                map["solutionId"] = self.solutionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["product"] as? String {
                self.product = value
            }
            if let value = dict["productName"] as? String {
                self.productName = value
            }
            if let value = dict["solutionId"] as? String {
                self.solutionId = value
            }
        }
    }
    public var requestId: String?

    public var solutions: [GetErrorCodeSolutionsResponseBody.Solutions]?

    public override init() {
        super.init()
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
        if self.solutions != nil {
            var tmp : [Any] = []
            for k in self.solutions! {
                tmp.append(k.toMap())
            }
            map["solutions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["solutions"] as? [Any?] {
            var tmp : [GetErrorCodeSolutionsResponseBody.Solutions] = []
            for v in value {
                if v != nil {
                    var model = GetErrorCodeSolutionsResponseBody.Solutions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.solutions = tmp
        }
    }
}

public class GetErrorCodeSolutionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetErrorCodeSolutionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetErrorCodeSolutionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOwnRequestLogRequest : Tea.TeaModel {
    public var logRequestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logRequestId != nil {
            map["logRequestId"] = self.logRequestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logRequestId"] as? String {
            self.logRequestId = value
        }
    }
}

public class GetOwnRequestLogResponseBody : Tea.TeaModel {
    public class LogInfo : Tea.TeaModel {
        public class AuthenticationInfo : Tea.TeaModel {
            public var authenticationType: String?

            public var signatureMethod: String?

            public var signatureVersion: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authenticationType != nil {
                    map["authenticationType"] = self.authenticationType!
                }
                if self.signatureMethod != nil {
                    map["signatureMethod"] = self.signatureMethod!
                }
                if self.signatureVersion != nil {
                    map["signatureVersion"] = self.signatureVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["authenticationType"] as? String {
                    self.authenticationType = value
                }
                if let value = dict["signatureMethod"] as? String {
                    self.signatureMethod = value
                }
                if let value = dict["signatureVersion"] as? String {
                    self.signatureVersion = value
                }
            }
        }
        public class BasicInfo : Tea.TeaModel {
            public class AccessDeniedDetail : Tea.TeaModel {
                public var authAction: String?

                public var authPrincipalDisplayName: String?

                public var authPrincipalOwnerId: String?

                public var authPrincipalType: String?

                public var encodedDiagnosticMessage: String?

                public var noPermissionType: String?

                public var policyType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.authAction != nil {
                        map["authAction"] = self.authAction!
                    }
                    if self.authPrincipalDisplayName != nil {
                        map["authPrincipalDisplayName"] = self.authPrincipalDisplayName!
                    }
                    if self.authPrincipalOwnerId != nil {
                        map["authPrincipalOwnerId"] = self.authPrincipalOwnerId!
                    }
                    if self.authPrincipalType != nil {
                        map["authPrincipalType"] = self.authPrincipalType!
                    }
                    if self.encodedDiagnosticMessage != nil {
                        map["encodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
                    }
                    if self.noPermissionType != nil {
                        map["noPermissionType"] = self.noPermissionType!
                    }
                    if self.policyType != nil {
                        map["policyType"] = self.policyType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["authAction"] as? String {
                        self.authAction = value
                    }
                    if let value = dict["authPrincipalDisplayName"] as? String {
                        self.authPrincipalDisplayName = value
                    }
                    if let value = dict["authPrincipalOwnerId"] as? String {
                        self.authPrincipalOwnerId = value
                    }
                    if let value = dict["authPrincipalType"] as? String {
                        self.authPrincipalType = value
                    }
                    if let value = dict["encodedDiagnosticMessage"] as? String {
                        self.encodedDiagnosticMessage = value
                    }
                    if let value = dict["noPermissionType"] as? String {
                        self.noPermissionType = value
                    }
                    if let value = dict["policyType"] as? String {
                        self.policyType = value
                    }
                }
            }
            public class ApiDoc : Tea.TeaModel {
                public var alibabacloudSite: String?

                public var aliyunSite: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.alibabacloudSite != nil {
                        map["alibabacloudSite"] = self.alibabacloudSite!
                    }
                    if self.aliyunSite != nil {
                        map["aliyunSite"] = self.aliyunSite!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["alibabacloudSite"] as? String {
                        self.alibabacloudSite = value
                    }
                    if let value = dict["aliyunSite"] as? String {
                        self.aliyunSite = value
                    }
                }
            }
            public class ProductName : Tea.TeaModel {
                public var cnName: String?

                public var enName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cnName != nil {
                        map["cnName"] = self.cnName!
                    }
                    if self.enName != nil {
                        map["enName"] = self.enName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["cnName"] as? String {
                        self.cnName = value
                    }
                    if let value = dict["enName"] as? String {
                        self.enName = value
                    }
                }
            }
            public var accessDeniedDetail: GetOwnRequestLogResponseBody.LogInfo.BasicInfo.AccessDeniedDetail?

            public var api: String?

            public var apiDoc: GetOwnRequestLogResponseBody.LogInfo.BasicInfo.ApiDoc?

            public var apiStyle: String?

            public var apiVersion: String?

            public var endpoint: String?

            public var errorCode: String?

            public var errorMessage: String?

            public var gatewayProcessTime: String?

            public var httpMethod: String?

            public var httpStatusCode: String?

            public var logRequestId: String?

            public var product: String?

            public var productName: GetOwnRequestLogResponseBody.LogInfo.BasicInfo.ProductName?

            public var regionId: String?

            public var requestDuration: String?

            public var sdkRequestTime: String?

            public var throttlingResult: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.accessDeniedDetail?.validate()
                try self.apiDoc?.validate()
                try self.productName?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessDeniedDetail != nil {
                    map["accessDeniedDetail"] = self.accessDeniedDetail?.toMap()
                }
                if self.api != nil {
                    map["api"] = self.api!
                }
                if self.apiDoc != nil {
                    map["apiDoc"] = self.apiDoc?.toMap()
                }
                if self.apiStyle != nil {
                    map["apiStyle"] = self.apiStyle!
                }
                if self.apiVersion != nil {
                    map["apiVersion"] = self.apiVersion!
                }
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.errorCode != nil {
                    map["errorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["errorMessage"] = self.errorMessage!
                }
                if self.gatewayProcessTime != nil {
                    map["gatewayProcessTime"] = self.gatewayProcessTime!
                }
                if self.httpMethod != nil {
                    map["httpMethod"] = self.httpMethod!
                }
                if self.httpStatusCode != nil {
                    map["httpStatusCode"] = self.httpStatusCode!
                }
                if self.logRequestId != nil {
                    map["logRequestId"] = self.logRequestId!
                }
                if self.product != nil {
                    map["product"] = self.product!
                }
                if self.productName != nil {
                    map["productName"] = self.productName?.toMap()
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.requestDuration != nil {
                    map["requestDuration"] = self.requestDuration!
                }
                if self.sdkRequestTime != nil {
                    map["sdkRequestTime"] = self.sdkRequestTime!
                }
                if self.throttlingResult != nil {
                    map["throttlingResult"] = self.throttlingResult!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessDeniedDetail"] as? [String: Any?] {
                    var model = GetOwnRequestLogResponseBody.LogInfo.BasicInfo.AccessDeniedDetail()
                    model.fromMap(value)
                    self.accessDeniedDetail = model
                }
                if let value = dict["api"] as? String {
                    self.api = value
                }
                if let value = dict["apiDoc"] as? [String: Any?] {
                    var model = GetOwnRequestLogResponseBody.LogInfo.BasicInfo.ApiDoc()
                    model.fromMap(value)
                    self.apiDoc = model
                }
                if let value = dict["apiStyle"] as? String {
                    self.apiStyle = value
                }
                if let value = dict["apiVersion"] as? String {
                    self.apiVersion = value
                }
                if let value = dict["endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["errorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["errorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["gatewayProcessTime"] as? String {
                    self.gatewayProcessTime = value
                }
                if let value = dict["httpMethod"] as? String {
                    self.httpMethod = value
                }
                if let value = dict["httpStatusCode"] as? String {
                    self.httpStatusCode = value
                }
                if let value = dict["logRequestId"] as? String {
                    self.logRequestId = value
                }
                if let value = dict["product"] as? String {
                    self.product = value
                }
                if let value = dict["productName"] as? [String: Any?] {
                    var model = GetOwnRequestLogResponseBody.LogInfo.BasicInfo.ProductName()
                    model.fromMap(value)
                    self.productName = model
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["requestDuration"] as? String {
                    self.requestDuration = value
                }
                if let value = dict["sdkRequestTime"] as? String {
                    self.sdkRequestTime = value
                }
                if let value = dict["throttlingResult"] as? String {
                    self.throttlingResult = value
                }
            }
        }
        public class CallerInfo : Tea.TeaModel {
            public var callerAccountId: String?

            public var callerIp: String?

            public var callerType: String?

            public var masterAccountId: String?

            public var userAgent: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callerAccountId != nil {
                    map["callerAccountId"] = self.callerAccountId!
                }
                if self.callerIp != nil {
                    map["callerIp"] = self.callerIp!
                }
                if self.callerType != nil {
                    map["callerType"] = self.callerType!
                }
                if self.masterAccountId != nil {
                    map["masterAccountId"] = self.masterAccountId!
                }
                if self.userAgent != nil {
                    map["userAgent"] = self.userAgent!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["callerAccountId"] as? String {
                    self.callerAccountId = value
                }
                if let value = dict["callerIp"] as? String {
                    self.callerIp = value
                }
                if let value = dict["callerType"] as? String {
                    self.callerType = value
                }
                if let value = dict["masterAccountId"] as? String {
                    self.masterAccountId = value
                }
                if let value = dict["userAgent"] as? String {
                    self.userAgent = value
                }
            }
        }
        public class Parameters : Tea.TeaModel {
            public var name: String?

            public var required_: Bool?

            public var type: String?

            public var value: Any?

            public override init() {
                super.init()
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
                if self.required_ != nil {
                    map["required"] = self.required_!
                }
                if self.type != nil {
                    map["type"] = self.type!
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
                if let value = dict["required"] as? Bool {
                    self.required_ = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["value"] as? Any {
                    self.value = value
                }
            }
        }
        public class Responses : Tea.TeaModel {
            public var responseBody: String?

            public var responseBodyFormat: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.responseBody != nil {
                    map["responseBody"] = self.responseBody!
                }
                if self.responseBodyFormat != nil {
                    map["responseBodyFormat"] = self.responseBodyFormat!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["responseBody"] as? String {
                    self.responseBody = value
                }
                if let value = dict["responseBodyFormat"] as? String {
                    self.responseBodyFormat = value
                }
            }
        }
        public var authenticationInfo: GetOwnRequestLogResponseBody.LogInfo.AuthenticationInfo?

        public var basicInfo: GetOwnRequestLogResponseBody.LogInfo.BasicInfo?

        public var callerInfo: GetOwnRequestLogResponseBody.LogInfo.CallerInfo?

        public var parameters: [GetOwnRequestLogResponseBody.LogInfo.Parameters]?

        public var responses: GetOwnRequestLogResponseBody.LogInfo.Responses?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.authenticationInfo?.validate()
            try self.basicInfo?.validate()
            try self.callerInfo?.validate()
            try self.responses?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authenticationInfo != nil {
                map["authenticationInfo"] = self.authenticationInfo?.toMap()
            }
            if self.basicInfo != nil {
                map["basicInfo"] = self.basicInfo?.toMap()
            }
            if self.callerInfo != nil {
                map["callerInfo"] = self.callerInfo?.toMap()
            }
            if self.parameters != nil {
                var tmp : [Any] = []
                for k in self.parameters! {
                    tmp.append(k.toMap())
                }
                map["parameters"] = tmp
            }
            if self.responses != nil {
                map["responses"] = self.responses?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["authenticationInfo"] as? [String: Any?] {
                var model = GetOwnRequestLogResponseBody.LogInfo.AuthenticationInfo()
                model.fromMap(value)
                self.authenticationInfo = model
            }
            if let value = dict["basicInfo"] as? [String: Any?] {
                var model = GetOwnRequestLogResponseBody.LogInfo.BasicInfo()
                model.fromMap(value)
                self.basicInfo = model
            }
            if let value = dict["callerInfo"] as? [String: Any?] {
                var model = GetOwnRequestLogResponseBody.LogInfo.CallerInfo()
                model.fromMap(value)
                self.callerInfo = model
            }
            if let value = dict["parameters"] as? [Any?] {
                var tmp : [GetOwnRequestLogResponseBody.LogInfo.Parameters] = []
                for v in value {
                    if v != nil {
                        var model = GetOwnRequestLogResponseBody.LogInfo.Parameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.parameters = tmp
            }
            if let value = dict["responses"] as? [String: Any?] {
                var model = GetOwnRequestLogResponseBody.LogInfo.Responses()
                model.fromMap(value)
                self.responses = model
            }
        }
    }
    public var logInfo: GetOwnRequestLogResponseBody.LogInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.logInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logInfo != nil {
            map["logInfo"] = self.logInfo?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logInfo"] as? [String: Any?] {
            var model = GetOwnRequestLogResponseBody.LogInfo()
            model.fromMap(value)
            self.logInfo = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetOwnRequestLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOwnRequestLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetOwnRequestLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetProductEndpointsRequest : Tea.TeaModel {
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
        if self.product != nil {
            map["product"] = self.product!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["product"] as? String {
            self.product = value
        }
    }
}

public class GetProductEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
        if let value = dict["body"] as? [String: Any] {
            self.body = value
        }
    }
}

public class GetRequestLogRequest : Tea.TeaModel {
    public var logRequestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logRequestId != nil {
            map["logRequestId"] = self.logRequestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logRequestId"] as? String {
            self.logRequestId = value
        }
    }
}

public class GetRequestLogResponseBody : Tea.TeaModel {
    public class LogInfo : Tea.TeaModel {
        public class AuthenticationInfo : Tea.TeaModel {
            public var authenticationType: String?

            public var signatureMethod: String?

            public var signatureVersion: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authenticationType != nil {
                    map["authenticationType"] = self.authenticationType!
                }
                if self.signatureMethod != nil {
                    map["signatureMethod"] = self.signatureMethod!
                }
                if self.signatureVersion != nil {
                    map["signatureVersion"] = self.signatureVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["authenticationType"] as? String {
                    self.authenticationType = value
                }
                if let value = dict["signatureMethod"] as? String {
                    self.signatureMethod = value
                }
                if let value = dict["signatureVersion"] as? String {
                    self.signatureVersion = value
                }
            }
        }
        public class BasicInfo : Tea.TeaModel {
            public class AccessDeniedDetail : Tea.TeaModel {
                public var authAction: String?

                public var authPrincipalDisplayName: String?

                public var authPrincipalOwnerId: String?

                public var authPrincipalType: String?

                public var encodedDiagnosticMessage: String?

                public var noPermissionType: String?

                public var policyType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.authAction != nil {
                        map["authAction"] = self.authAction!
                    }
                    if self.authPrincipalDisplayName != nil {
                        map["authPrincipalDisplayName"] = self.authPrincipalDisplayName!
                    }
                    if self.authPrincipalOwnerId != nil {
                        map["authPrincipalOwnerId"] = self.authPrincipalOwnerId!
                    }
                    if self.authPrincipalType != nil {
                        map["authPrincipalType"] = self.authPrincipalType!
                    }
                    if self.encodedDiagnosticMessage != nil {
                        map["encodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
                    }
                    if self.noPermissionType != nil {
                        map["noPermissionType"] = self.noPermissionType!
                    }
                    if self.policyType != nil {
                        map["policyType"] = self.policyType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["authAction"] as? String {
                        self.authAction = value
                    }
                    if let value = dict["authPrincipalDisplayName"] as? String {
                        self.authPrincipalDisplayName = value
                    }
                    if let value = dict["authPrincipalOwnerId"] as? String {
                        self.authPrincipalOwnerId = value
                    }
                    if let value = dict["authPrincipalType"] as? String {
                        self.authPrincipalType = value
                    }
                    if let value = dict["encodedDiagnosticMessage"] as? String {
                        self.encodedDiagnosticMessage = value
                    }
                    if let value = dict["noPermissionType"] as? String {
                        self.noPermissionType = value
                    }
                    if let value = dict["policyType"] as? String {
                        self.policyType = value
                    }
                }
            }
            public class ApiDoc : Tea.TeaModel {
                public var alibabacloudSite: String?

                public var aliyunSite: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.alibabacloudSite != nil {
                        map["alibabacloudSite"] = self.alibabacloudSite!
                    }
                    if self.aliyunSite != nil {
                        map["aliyunSite"] = self.aliyunSite!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["alibabacloudSite"] as? String {
                        self.alibabacloudSite = value
                    }
                    if let value = dict["aliyunSite"] as? String {
                        self.aliyunSite = value
                    }
                }
            }
            public class ProductName : Tea.TeaModel {
                public var cnName: String?

                public var enName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cnName != nil {
                        map["cnName"] = self.cnName!
                    }
                    if self.enName != nil {
                        map["enName"] = self.enName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["cnName"] as? String {
                        self.cnName = value
                    }
                    if let value = dict["enName"] as? String {
                        self.enName = value
                    }
                }
            }
            public var accessDeniedDetail: GetRequestLogResponseBody.LogInfo.BasicInfo.AccessDeniedDetail?

            public var api: String?

            public var apiDoc: GetRequestLogResponseBody.LogInfo.BasicInfo.ApiDoc?

            public var apiStyle: String?

            public var apiVersion: String?

            public var endpoint: String?

            public var errorCode: String?

            public var errorMessage: String?

            public var gatewayProcessTime: String?

            public var httpMethod: String?

            public var httpStatusCode: String?

            public var logRequestId: String?

            public var product: String?

            public var productName: GetRequestLogResponseBody.LogInfo.BasicInfo.ProductName?

            public var regionId: String?

            public var requestDuration: String?

            public var sdkRequestTime: String?

            public var throttlingResult: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.accessDeniedDetail?.validate()
                try self.apiDoc?.validate()
                try self.productName?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessDeniedDetail != nil {
                    map["accessDeniedDetail"] = self.accessDeniedDetail?.toMap()
                }
                if self.api != nil {
                    map["api"] = self.api!
                }
                if self.apiDoc != nil {
                    map["apiDoc"] = self.apiDoc?.toMap()
                }
                if self.apiStyle != nil {
                    map["apiStyle"] = self.apiStyle!
                }
                if self.apiVersion != nil {
                    map["apiVersion"] = self.apiVersion!
                }
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.errorCode != nil {
                    map["errorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["errorMessage"] = self.errorMessage!
                }
                if self.gatewayProcessTime != nil {
                    map["gatewayProcessTime"] = self.gatewayProcessTime!
                }
                if self.httpMethod != nil {
                    map["httpMethod"] = self.httpMethod!
                }
                if self.httpStatusCode != nil {
                    map["httpStatusCode"] = self.httpStatusCode!
                }
                if self.logRequestId != nil {
                    map["logRequestId"] = self.logRequestId!
                }
                if self.product != nil {
                    map["product"] = self.product!
                }
                if self.productName != nil {
                    map["productName"] = self.productName?.toMap()
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.requestDuration != nil {
                    map["requestDuration"] = self.requestDuration!
                }
                if self.sdkRequestTime != nil {
                    map["sdkRequestTime"] = self.sdkRequestTime!
                }
                if self.throttlingResult != nil {
                    map["throttlingResult"] = self.throttlingResult!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessDeniedDetail"] as? [String: Any?] {
                    var model = GetRequestLogResponseBody.LogInfo.BasicInfo.AccessDeniedDetail()
                    model.fromMap(value)
                    self.accessDeniedDetail = model
                }
                if let value = dict["api"] as? String {
                    self.api = value
                }
                if let value = dict["apiDoc"] as? [String: Any?] {
                    var model = GetRequestLogResponseBody.LogInfo.BasicInfo.ApiDoc()
                    model.fromMap(value)
                    self.apiDoc = model
                }
                if let value = dict["apiStyle"] as? String {
                    self.apiStyle = value
                }
                if let value = dict["apiVersion"] as? String {
                    self.apiVersion = value
                }
                if let value = dict["endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["errorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["errorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["gatewayProcessTime"] as? String {
                    self.gatewayProcessTime = value
                }
                if let value = dict["httpMethod"] as? String {
                    self.httpMethod = value
                }
                if let value = dict["httpStatusCode"] as? String {
                    self.httpStatusCode = value
                }
                if let value = dict["logRequestId"] as? String {
                    self.logRequestId = value
                }
                if let value = dict["product"] as? String {
                    self.product = value
                }
                if let value = dict["productName"] as? [String: Any?] {
                    var model = GetRequestLogResponseBody.LogInfo.BasicInfo.ProductName()
                    model.fromMap(value)
                    self.productName = model
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["requestDuration"] as? String {
                    self.requestDuration = value
                }
                if let value = dict["sdkRequestTime"] as? String {
                    self.sdkRequestTime = value
                }
                if let value = dict["throttlingResult"] as? String {
                    self.throttlingResult = value
                }
            }
        }
        public class CallerInfo : Tea.TeaModel {
            public var callerAccountId: String?

            public var callerIp: String?

            public var callerType: String?

            public var masterAccountId: String?

            public var userAgent: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callerAccountId != nil {
                    map["callerAccountId"] = self.callerAccountId!
                }
                if self.callerIp != nil {
                    map["callerIp"] = self.callerIp!
                }
                if self.callerType != nil {
                    map["callerType"] = self.callerType!
                }
                if self.masterAccountId != nil {
                    map["masterAccountId"] = self.masterAccountId!
                }
                if self.userAgent != nil {
                    map["userAgent"] = self.userAgent!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["callerAccountId"] as? String {
                    self.callerAccountId = value
                }
                if let value = dict["callerIp"] as? String {
                    self.callerIp = value
                }
                if let value = dict["callerType"] as? String {
                    self.callerType = value
                }
                if let value = dict["masterAccountId"] as? String {
                    self.masterAccountId = value
                }
                if let value = dict["userAgent"] as? String {
                    self.userAgent = value
                }
            }
        }
        public class Parameters : Tea.TeaModel {
            public var name: String?

            public var required_: Bool?

            public var type: String?

            public var value: Any?

            public override init() {
                super.init()
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
                if self.required_ != nil {
                    map["required"] = self.required_!
                }
                if self.type != nil {
                    map["type"] = self.type!
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
                if let value = dict["required"] as? Bool {
                    self.required_ = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["value"] as? Any {
                    self.value = value
                }
            }
        }
        public class Responses : Tea.TeaModel {
            public var responseBody: String?

            public var responseBodyFormat: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.responseBody != nil {
                    map["responseBody"] = self.responseBody!
                }
                if self.responseBodyFormat != nil {
                    map["responseBodyFormat"] = self.responseBodyFormat!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["responseBody"] as? String {
                    self.responseBody = value
                }
                if let value = dict["responseBodyFormat"] as? String {
                    self.responseBodyFormat = value
                }
            }
        }
        public var authenticationInfo: GetRequestLogResponseBody.LogInfo.AuthenticationInfo?

        public var basicInfo: GetRequestLogResponseBody.LogInfo.BasicInfo?

        public var callerInfo: GetRequestLogResponseBody.LogInfo.CallerInfo?

        public var parameters: [GetRequestLogResponseBody.LogInfo.Parameters]?

        public var responses: GetRequestLogResponseBody.LogInfo.Responses?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.authenticationInfo?.validate()
            try self.basicInfo?.validate()
            try self.callerInfo?.validate()
            try self.responses?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authenticationInfo != nil {
                map["authenticationInfo"] = self.authenticationInfo?.toMap()
            }
            if self.basicInfo != nil {
                map["basicInfo"] = self.basicInfo?.toMap()
            }
            if self.callerInfo != nil {
                map["callerInfo"] = self.callerInfo?.toMap()
            }
            if self.parameters != nil {
                var tmp : [Any] = []
                for k in self.parameters! {
                    tmp.append(k.toMap())
                }
                map["parameters"] = tmp
            }
            if self.responses != nil {
                map["responses"] = self.responses?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["authenticationInfo"] as? [String: Any?] {
                var model = GetRequestLogResponseBody.LogInfo.AuthenticationInfo()
                model.fromMap(value)
                self.authenticationInfo = model
            }
            if let value = dict["basicInfo"] as? [String: Any?] {
                var model = GetRequestLogResponseBody.LogInfo.BasicInfo()
                model.fromMap(value)
                self.basicInfo = model
            }
            if let value = dict["callerInfo"] as? [String: Any?] {
                var model = GetRequestLogResponseBody.LogInfo.CallerInfo()
                model.fromMap(value)
                self.callerInfo = model
            }
            if let value = dict["parameters"] as? [Any?] {
                var tmp : [GetRequestLogResponseBody.LogInfo.Parameters] = []
                for v in value {
                    if v != nil {
                        var model = GetRequestLogResponseBody.LogInfo.Parameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.parameters = tmp
            }
            if let value = dict["responses"] as? [String: Any?] {
                var model = GetRequestLogResponseBody.LogInfo.Responses()
                model.fromMap(value)
                self.responses = model
            }
        }
    }
    public var logInfo: GetRequestLogResponseBody.LogInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.logInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logInfo != nil {
            map["logInfo"] = self.logInfo?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["logInfo"] as? [String: Any?] {
            var model = GetRequestLogResponseBody.LogInfo()
            model.fromMap(value)
            self.logInfo = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetRequestLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRequestLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetRequestLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListApiDefinitionsRequest : Tea.TeaModel {
    public var apiVersion: String?

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
        if self.apiVersion != nil {
            map["apiVersion"] = self.apiVersion!
        }
        if self.product != nil {
            map["product"] = self.product!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiVersion"] as? String {
            self.apiVersion = value
        }
        if let value = dict["product"] as? String {
            self.product = value
        }
    }
}

public class ListApiDefinitionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
        if let value = dict["body"] as? [String: Any] {
            self.body = value
        }
    }
}

public class ListApiMcpServerSystemToolsRequest : Tea.TeaModel {
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

public class ListApiMcpServerSystemToolsResponseBody : Tea.TeaModel {
    public class SystemTools : Tea.TeaModel {
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
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
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
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var systemTools: [ListApiMcpServerSystemToolsResponseBody.SystemTools]?

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
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.systemTools != nil {
            var tmp : [Any] = []
            for k in self.systemTools! {
                tmp.append(k.toMap())
            }
            map["systemTools"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
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
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["systemTools"] as? [Any?] {
            var tmp : [ListApiMcpServerSystemToolsResponseBody.SystemTools] = []
            for v in value {
                if v != nil {
                    var model = ListApiMcpServerSystemToolsResponseBody.SystemTools()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.systemTools = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListApiMcpServerSystemToolsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApiMcpServerSystemToolsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListApiMcpServerSystemToolsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListApiMcpServersRequest : Tea.TeaModel {
    public var createTime: String?

    public var description_: String?

    public var id: String?

    public var keyword: String?

    public var language: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var skip: Int32?

    public var sourceType: String?

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
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.skip != nil {
            map["skip"] = self.skip!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
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
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["skip"] as? Int32 {
            self.skip = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class ListApiMcpServersResponseBody : Tea.TeaModel {
    public class ApiMcpServers : Tea.TeaModel {
        public class AdditionalApiDescriptions : Tea.TeaModel {
            public class ConstParameters : Tea.TeaModel {
                public var key: String?

                public var value: Any?

                public override init() {
                    super.init()
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
                        map["key"] = self.key!
                    }
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["key"] as? String {
                        self.key = value
                    }
                    if let value = dict["value"] as? Any {
                        self.value = value
                    }
                }
            }
            public var apiName: String?

            public var apiOverrideJson: String?

            public var apiVersion: String?

            public var constParameters: [ListApiMcpServersResponseBody.ApiMcpServers.AdditionalApiDescriptions.ConstParameters]?

            public var enableOutputSchema: Bool?

            public var executeCliCommand: Bool?

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
                if self.apiName != nil {
                    map["apiName"] = self.apiName!
                }
                if self.apiOverrideJson != nil {
                    map["apiOverrideJson"] = self.apiOverrideJson!
                }
                if self.apiVersion != nil {
                    map["apiVersion"] = self.apiVersion!
                }
                if self.constParameters != nil {
                    var tmp : [Any] = []
                    for k in self.constParameters! {
                        tmp.append(k.toMap())
                    }
                    map["constParameters"] = tmp
                }
                if self.enableOutputSchema != nil {
                    map["enableOutputSchema"] = self.enableOutputSchema!
                }
                if self.executeCliCommand != nil {
                    map["executeCliCommand"] = self.executeCliCommand!
                }
                if self.product != nil {
                    map["product"] = self.product!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["apiName"] as? String {
                    self.apiName = value
                }
                if let value = dict["apiOverrideJson"] as? String {
                    self.apiOverrideJson = value
                }
                if let value = dict["apiVersion"] as? String {
                    self.apiVersion = value
                }
                if let value = dict["constParameters"] as? [Any?] {
                    var tmp : [ListApiMcpServersResponseBody.ApiMcpServers.AdditionalApiDescriptions.ConstParameters] = []
                    for v in value {
                        if v != nil {
                            var model = ListApiMcpServersResponseBody.ApiMcpServers.AdditionalApiDescriptions.ConstParameters()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.constParameters = tmp
                }
                if let value = dict["enableOutputSchema"] as? Bool {
                    self.enableOutputSchema = value
                }
                if let value = dict["executeCliCommand"] as? Bool {
                    self.executeCliCommand = value
                }
                if let value = dict["product"] as? String {
                    self.product = value
                }
            }
        }
        public class Apis : Tea.TeaModel {
            public var apiVersion: String?

            public var product: String?

            public var selectors: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiVersion != nil {
                    map["apiVersion"] = self.apiVersion!
                }
                if self.product != nil {
                    map["product"] = self.product!
                }
                if self.selectors != nil {
                    map["selectors"] = self.selectors!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["apiVersion"] as? String {
                    self.apiVersion = value
                }
                if let value = dict["product"] as? String {
                    self.product = value
                }
                if let value = dict["selectors"] as? [String] {
                    self.selectors = value
                }
            }
        }
        public class Prompts : Tea.TeaModel {
            public class Arguments : Tea.TeaModel {
                public var description_: String?

                public var name: String?

                public var required_: Bool?

                public override init() {
                    super.init()
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
                    if self.required_ != nil {
                        map["required"] = self.required_!
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
                    if let value = dict["required"] as? Bool {
                        self.required_ = value
                    }
                }
            }
            public var arguments: [ListApiMcpServersResponseBody.ApiMcpServers.Prompts.Arguments]?

            public var content: String?

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
                if self.arguments != nil {
                    var tmp : [Any] = []
                    for k in self.arguments! {
                        tmp.append(k.toMap())
                    }
                    map["arguments"] = tmp
                }
                if self.content != nil {
                    map["content"] = self.content!
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
                if let value = dict["arguments"] as? [Any?] {
                    var tmp : [ListApiMcpServersResponseBody.ApiMcpServers.Prompts.Arguments] = []
                    for v in value {
                        if v != nil {
                            var model = ListApiMcpServersResponseBody.ApiMcpServers.Prompts.Arguments()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.arguments = tmp
                }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class SystemMcpServerInfo : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.product != nil {
                    map["product"] = self.product!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["product"] as? String {
                    self.product = value
                }
            }
        }
        public class TerraformTools : Tea.TeaModel {
            public var async: Bool?

            public var code: String?

            public var description_: String?

            public var destroyPolicy: String?

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
                if self.async != nil {
                    map["async"] = self.async!
                }
                if self.code != nil {
                    map["code"] = self.code!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.destroyPolicy != nil {
                    map["destroyPolicy"] = self.destroyPolicy!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["async"] as? Bool {
                    self.async = value
                }
                if let value = dict["code"] as? String {
                    self.code = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["destroyPolicy"] as? String {
                    self.destroyPolicy = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public class Urls : Tea.TeaModel {
            public var mcp: String?

            public var sse: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mcp != nil {
                    map["mcp"] = self.mcp!
                }
                if self.sse != nil {
                    map["sse"] = self.sse!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["mcp"] as? String {
                    self.mcp = value
                }
                if let value = dict["sse"] as? String {
                    self.sse = value
                }
            }
        }
        public var additionalApiDescriptions: [ListApiMcpServersResponseBody.ApiMcpServers.AdditionalApiDescriptions]?

        public var apis: [ListApiMcpServersResponseBody.ApiMcpServers.Apis]?

        public var assumeRoleExtraPolicy: String?

        public var assumeRoleName: String?

        public var createTime: String?

        public var description_: String?

        public var enableAssumeRole: Bool?

        public var id: String?

        public var instructions: String?

        public var language: String?

        public var name: String?

        public var oauthClientId: String?

        public var prompts: [ListApiMcpServersResponseBody.ApiMcpServers.Prompts]?

        public var sourceType: String?

        public var systemMcpServerInfo: ListApiMcpServersResponseBody.ApiMcpServers.SystemMcpServerInfo?

        public var systemTools: [String]?

        public var terraformTools: [ListApiMcpServersResponseBody.ApiMcpServers.TerraformTools]?

        public var updateTime: String?

        public var urls: ListApiMcpServersResponseBody.ApiMcpServers.Urls?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.systemMcpServerInfo?.validate()
            try self.urls?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.additionalApiDescriptions != nil {
                var tmp : [Any] = []
                for k in self.additionalApiDescriptions! {
                    tmp.append(k.toMap())
                }
                map["additionalApiDescriptions"] = tmp
            }
            if self.apis != nil {
                var tmp : [Any] = []
                for k in self.apis! {
                    tmp.append(k.toMap())
                }
                map["apis"] = tmp
            }
            if self.assumeRoleExtraPolicy != nil {
                map["assumeRoleExtraPolicy"] = self.assumeRoleExtraPolicy!
            }
            if self.assumeRoleName != nil {
                map["assumeRoleName"] = self.assumeRoleName!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.enableAssumeRole != nil {
                map["enableAssumeRole"] = self.enableAssumeRole!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instructions != nil {
                map["instructions"] = self.instructions!
            }
            if self.language != nil {
                map["language"] = self.language!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.oauthClientId != nil {
                map["oauthClientId"] = self.oauthClientId!
            }
            if self.prompts != nil {
                var tmp : [Any] = []
                for k in self.prompts! {
                    tmp.append(k.toMap())
                }
                map["prompts"] = tmp
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            if self.systemMcpServerInfo != nil {
                map["systemMcpServerInfo"] = self.systemMcpServerInfo?.toMap()
            }
            if self.systemTools != nil {
                map["systemTools"] = self.systemTools!
            }
            if self.terraformTools != nil {
                var tmp : [Any] = []
                for k in self.terraformTools! {
                    tmp.append(k.toMap())
                }
                map["terraformTools"] = tmp
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.urls != nil {
                map["urls"] = self.urls?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["additionalApiDescriptions"] as? [Any?] {
                var tmp : [ListApiMcpServersResponseBody.ApiMcpServers.AdditionalApiDescriptions] = []
                for v in value {
                    if v != nil {
                        var model = ListApiMcpServersResponseBody.ApiMcpServers.AdditionalApiDescriptions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.additionalApiDescriptions = tmp
            }
            if let value = dict["apis"] as? [Any?] {
                var tmp : [ListApiMcpServersResponseBody.ApiMcpServers.Apis] = []
                for v in value {
                    if v != nil {
                        var model = ListApiMcpServersResponseBody.ApiMcpServers.Apis()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.apis = tmp
            }
            if let value = dict["assumeRoleExtraPolicy"] as? String {
                self.assumeRoleExtraPolicy = value
            }
            if let value = dict["assumeRoleName"] as? String {
                self.assumeRoleName = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["enableAssumeRole"] as? Bool {
                self.enableAssumeRole = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["instructions"] as? String {
                self.instructions = value
            }
            if let value = dict["language"] as? String {
                self.language = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["oauthClientId"] as? String {
                self.oauthClientId = value
            }
            if let value = dict["prompts"] as? [Any?] {
                var tmp : [ListApiMcpServersResponseBody.ApiMcpServers.Prompts] = []
                for v in value {
                    if v != nil {
                        var model = ListApiMcpServersResponseBody.ApiMcpServers.Prompts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.prompts = tmp
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["systemMcpServerInfo"] as? [String: Any?] {
                var model = ListApiMcpServersResponseBody.ApiMcpServers.SystemMcpServerInfo()
                model.fromMap(value)
                self.systemMcpServerInfo = model
            }
            if let value = dict["systemTools"] as? [String] {
                self.systemTools = value
            }
            if let value = dict["terraformTools"] as? [Any?] {
                var tmp : [ListApiMcpServersResponseBody.ApiMcpServers.TerraformTools] = []
                for v in value {
                    if v != nil {
                        var model = ListApiMcpServersResponseBody.ApiMcpServers.TerraformTools()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.terraformTools = tmp
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["urls"] as? [String: Any?] {
                var model = ListApiMcpServersResponseBody.ApiMcpServers.Urls()
                model.fromMap(value)
                self.urls = model
            }
        }
    }
    public var apiMcpServers: [ListApiMcpServersResponseBody.ApiMcpServers]?

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
        if self.apiMcpServers != nil {
            var tmp : [Any] = []
            for k in self.apiMcpServers! {
                tmp.append(k.toMap())
            }
            map["apiMcpServers"] = tmp
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
        if let value = dict["apiMcpServers"] as? [Any?] {
            var tmp : [ListApiMcpServersResponseBody.ApiMcpServers] = []
            for v in value {
                if v != nil {
                    var model = ListApiMcpServersResponseBody.ApiMcpServers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.apiMcpServers = tmp
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

public class ListApiMcpServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApiMcpServersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListApiMcpServersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateApiMcpServerRequest : Tea.TeaModel {
    public class AdditionalApiDescriptions : Tea.TeaModel {
        public class ConstParameters : Tea.TeaModel {
            public var key: String?

            public var value: Any?

            public override init() {
                super.init()
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
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["value"] as? Any {
                    self.value = value
                }
            }
        }
        public var apiName: String?

        public var apiOverrideJson: String?

        public var apiVersion: String?

        public var constParameters: [UpdateApiMcpServerRequest.AdditionalApiDescriptions.ConstParameters]?

        public var enableOutputSchema: Bool?

        public var executeCliCommand: Bool?

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
            if self.apiName != nil {
                map["apiName"] = self.apiName!
            }
            if self.apiOverrideJson != nil {
                map["apiOverrideJson"] = self.apiOverrideJson!
            }
            if self.apiVersion != nil {
                map["apiVersion"] = self.apiVersion!
            }
            if self.constParameters != nil {
                var tmp : [Any] = []
                for k in self.constParameters! {
                    tmp.append(k.toMap())
                }
                map["constParameters"] = tmp
            }
            if self.enableOutputSchema != nil {
                map["enableOutputSchema"] = self.enableOutputSchema!
            }
            if self.executeCliCommand != nil {
                map["executeCliCommand"] = self.executeCliCommand!
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiName"] as? String {
                self.apiName = value
            }
            if let value = dict["apiOverrideJson"] as? String {
                self.apiOverrideJson = value
            }
            if let value = dict["apiVersion"] as? String {
                self.apiVersion = value
            }
            if let value = dict["constParameters"] as? [Any?] {
                var tmp : [UpdateApiMcpServerRequest.AdditionalApiDescriptions.ConstParameters] = []
                for v in value {
                    if v != nil {
                        var model = UpdateApiMcpServerRequest.AdditionalApiDescriptions.ConstParameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.constParameters = tmp
            }
            if let value = dict["enableOutputSchema"] as? Bool {
                self.enableOutputSchema = value
            }
            if let value = dict["executeCliCommand"] as? Bool {
                self.executeCliCommand = value
            }
            if let value = dict["product"] as? String {
                self.product = value
            }
        }
    }
    public class Apis : Tea.TeaModel {
        public var apiVersion: String?

        public var product: String?

        public var selectors: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiVersion != nil {
                map["apiVersion"] = self.apiVersion!
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            if self.selectors != nil {
                map["selectors"] = self.selectors!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiVersion"] as? String {
                self.apiVersion = value
            }
            if let value = dict["product"] as? String {
                self.product = value
            }
            if let value = dict["selectors"] as? [String] {
                self.selectors = value
            }
        }
    }
    public class Prompts : Tea.TeaModel {
        public class Arguments : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public var required_: Bool?

            public override init() {
                super.init()
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
                if self.required_ != nil {
                    map["required"] = self.required_!
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
                if let value = dict["required"] as? Bool {
                    self.required_ = value
                }
            }
        }
        public var arguments: [UpdateApiMcpServerRequest.Prompts.Arguments]?

        public var content: String?

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
            if self.arguments != nil {
                var tmp : [Any] = []
                for k in self.arguments! {
                    tmp.append(k.toMap())
                }
                map["arguments"] = tmp
            }
            if self.content != nil {
                map["content"] = self.content!
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
            if let value = dict["arguments"] as? [Any?] {
                var tmp : [UpdateApiMcpServerRequest.Prompts.Arguments] = []
                for v in value {
                    if v != nil {
                        var model = UpdateApiMcpServerRequest.Prompts.Arguments()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.arguments = tmp
            }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public class TerraformTools : Tea.TeaModel {
        public var async: Bool?

        public var code: String?

        public var description_: String?

        public var destroyPolicy: String?

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
            if self.async != nil {
                map["async"] = self.async!
            }
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.destroyPolicy != nil {
                map["destroyPolicy"] = self.destroyPolicy!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["async"] as? Bool {
                self.async = value
            }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["destroyPolicy"] as? String {
                self.destroyPolicy = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var additionalApiDescriptions: [UpdateApiMcpServerRequest.AdditionalApiDescriptions]?

    public var apis: [UpdateApiMcpServerRequest.Apis]?

    public var assumeRoleExtraPolicy: String?

    public var assumeRoleName: String?

    public var description_: String?

    public var enableAssumeRole: Bool?

    public var instructions: String?

    public var language: String?

    public var oauthClientId: String?

    public var prompts: [UpdateApiMcpServerRequest.Prompts]?

    public var systemTools: [String]?

    public var terraformTools: [UpdateApiMcpServerRequest.TerraformTools]?

    public var clientToken: String?

    public var id: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalApiDescriptions != nil {
            var tmp : [Any] = []
            for k in self.additionalApiDescriptions! {
                tmp.append(k.toMap())
            }
            map["additionalApiDescriptions"] = tmp
        }
        if self.apis != nil {
            var tmp : [Any] = []
            for k in self.apis! {
                tmp.append(k.toMap())
            }
            map["apis"] = tmp
        }
        if self.assumeRoleExtraPolicy != nil {
            map["assumeRoleExtraPolicy"] = self.assumeRoleExtraPolicy!
        }
        if self.assumeRoleName != nil {
            map["assumeRoleName"] = self.assumeRoleName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enableAssumeRole != nil {
            map["enableAssumeRole"] = self.enableAssumeRole!
        }
        if self.instructions != nil {
            map["instructions"] = self.instructions!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.oauthClientId != nil {
            map["oauthClientId"] = self.oauthClientId!
        }
        if self.prompts != nil {
            var tmp : [Any] = []
            for k in self.prompts! {
                tmp.append(k.toMap())
            }
            map["prompts"] = tmp
        }
        if self.systemTools != nil {
            map["systemTools"] = self.systemTools!
        }
        if self.terraformTools != nil {
            var tmp : [Any] = []
            for k in self.terraformTools! {
                tmp.append(k.toMap())
            }
            map["terraformTools"] = tmp
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["additionalApiDescriptions"] as? [Any?] {
            var tmp : [UpdateApiMcpServerRequest.AdditionalApiDescriptions] = []
            for v in value {
                if v != nil {
                    var model = UpdateApiMcpServerRequest.AdditionalApiDescriptions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.additionalApiDescriptions = tmp
        }
        if let value = dict["apis"] as? [Any?] {
            var tmp : [UpdateApiMcpServerRequest.Apis] = []
            for v in value {
                if v != nil {
                    var model = UpdateApiMcpServerRequest.Apis()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.apis = tmp
        }
        if let value = dict["assumeRoleExtraPolicy"] as? String {
            self.assumeRoleExtraPolicy = value
        }
        if let value = dict["assumeRoleName"] as? String {
            self.assumeRoleName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enableAssumeRole"] as? Bool {
            self.enableAssumeRole = value
        }
        if let value = dict["instructions"] as? String {
            self.instructions = value
        }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["oauthClientId"] as? String {
            self.oauthClientId = value
        }
        if let value = dict["prompts"] as? [Any?] {
            var tmp : [UpdateApiMcpServerRequest.Prompts] = []
            for v in value {
                if v != nil {
                    var model = UpdateApiMcpServerRequest.Prompts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.prompts = tmp
        }
        if let value = dict["systemTools"] as? [String] {
            self.systemTools = value
        }
        if let value = dict["terraformTools"] as? [Any?] {
            var tmp : [UpdateApiMcpServerRequest.TerraformTools] = []
            for v in value {
                if v != nil {
                    var model = UpdateApiMcpServerRequest.TerraformTools()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.terraformTools = tmp
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
    }
}

public class UpdateApiMcpServerResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateApiMcpServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApiMcpServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateApiMcpServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
