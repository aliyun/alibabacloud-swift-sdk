import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateFlowRequest : Tea.TeaModel {
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
    public var flowDesc: String?

    public var flowId: String?

    public var flowName: String?

    public var flowTemplate: String?

    public var launchStatus: Bool?

    public var parameters: [CreateFlowRequest.Parameters]?

    public var tag: [CreateFlowRequest.Tag]?

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
        if self.flowDesc != nil {
            map["FlowDesc"] = self.flowDesc!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.flowTemplate != nil {
            map["FlowTemplate"] = self.flowTemplate!
        }
        if self.launchStatus != nil {
            map["LaunchStatus"] = self.launchStatus!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowDesc"] as? String {
            self.flowDesc = value
        }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["FlowTemplate"] as? String {
            self.flowTemplate = value
        }
        if let value = dict["LaunchStatus"] as? Bool {
            self.launchStatus = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [CreateFlowRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = CreateFlowRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateFlowRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateFlowRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class CreateFlowResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUserAuthConfigRequest : Tea.TeaModel {
    public var authConfig: String?

    public var authConfigName: String?

    public var authType: String?

    public var connectorId: String?

    public var connectorVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authConfig != nil {
            map["AuthConfig"] = self.authConfig!
        }
        if self.authConfigName != nil {
            map["AuthConfigName"] = self.authConfigName!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        if self.connectorVersion != nil {
            map["ConnectorVersion"] = self.connectorVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthConfig"] as? String {
            self.authConfig = value
        }
        if let value = dict["AuthConfigName"] as? String {
            self.authConfigName = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["ConnectorId"] as? String {
            self.connectorId = value
        }
        if let value = dict["ConnectorVersion"] as? String {
            self.connectorVersion = value
        }
    }
}

public class CreateUserAuthConfigResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateUserAuthConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserAuthConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateUserAuthConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFlowRequest : Tea.TeaModel {
    public var flowId: String?

    public var flowVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["FlowVersion"] as? Int32 {
            self.flowVersion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserAuthConfigRequest : Tea.TeaModel {
    public var authConfigId: String?

    public var connectorId: String?

    public var connectorVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authConfigId != nil {
            map["AuthConfigId"] = self.authConfigId!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        if self.connectorVersion != nil {
            map["ConnectorVersion"] = self.connectorVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthConfigId"] as? String {
            self.authConfigId = value
        }
        if let value = dict["ConnectorId"] as? String {
            self.connectorId = value
        }
        if let value = dict["ConnectorVersion"] as? String {
            self.connectorVersion = value
        }
    }
}

public class DeleteUserAuthConfigResponseBody : Tea.TeaModel {
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

public class DeleteUserAuthConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserAuthConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteUserAuthConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableFlowRequest : Tea.TeaModel {
    public var flowId: String?

    public var flowVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["FlowVersion"] as? Int32 {
            self.flowVersion = value
        }
    }
}

public class DisableFlowResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DisableFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableFlowRequest : Tea.TeaModel {
    public var flowId: String?

    public var flowVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["FlowVersion"] as? Int32 {
            self.flowVersion = value
        }
    }
}

public class EnableFlowResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnableFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateUserSessionTokenRequest : Tea.TeaModel {
    public var chatbotId: String?

    public var expireSecond: Int64?

    public var extraInfo: String?

    public var integrateId: String?

    public var userAvatar: String?

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
        if self.chatbotId != nil {
            map["ChatbotId"] = self.chatbotId!
        }
        if self.expireSecond != nil {
            map["ExpireSecond"] = self.expireSecond!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
        }
        if self.integrateId != nil {
            map["IntegrateId"] = self.integrateId!
        }
        if self.userAvatar != nil {
            map["UserAvatar"] = self.userAvatar!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChatbotId"] as? String {
            self.chatbotId = value
        }
        if let value = dict["ExpireSecond"] as? Int64 {
            self.expireSecond = value
        }
        if let value = dict["ExtraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["IntegrateId"] as? String {
            self.integrateId = value
        }
        if let value = dict["UserAvatar"] as? String {
            self.userAvatar = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class GenerateUserSessionTokenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var userSessionToken: String?

    public override init() {
        super.init()
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
        if self.userSessionToken != nil {
            map["UserSessionToken"] = self.userSessionToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserSessionToken"] as? String {
            self.userSessionToken = value
        }
    }
}

public class GenerateUserSessionTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateUserSessionTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GenerateUserSessionTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFlowRequest : Tea.TeaModel {
    public var flowId: String?

    public var flowVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
    }
}

public class GetFlowResponseBody : Tea.TeaModel {
    public class Flow : Tea.TeaModel {
        public class FlowNodes : Tea.TeaModel {
            public var authMetadata: String?

            public var connectorId: String?

            public var connectorVersion: String?

            public var flowId: String?

            public var flowVersion: String?

            public var inputSchema: String?

            public var nodeId: String?

            public var nodeKey: String?

            public var nodeName: String?

            public var nodeType: String?

            public var prevNodeId: String?

            public var refId: String?

            public var refVersion: String?

            public var webhookUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authMetadata != nil {
                    map["AuthMetadata"] = self.authMetadata!
                }
                if self.connectorId != nil {
                    map["ConnectorId"] = self.connectorId!
                }
                if self.connectorVersion != nil {
                    map["ConnectorVersion"] = self.connectorVersion!
                }
                if self.flowId != nil {
                    map["FlowId"] = self.flowId!
                }
                if self.flowVersion != nil {
                    map["FlowVersion"] = self.flowVersion!
                }
                if self.inputSchema != nil {
                    map["InputSchema"] = self.inputSchema!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.nodeKey != nil {
                    map["NodeKey"] = self.nodeKey!
                }
                if self.nodeName != nil {
                    map["NodeName"] = self.nodeName!
                }
                if self.nodeType != nil {
                    map["NodeType"] = self.nodeType!
                }
                if self.prevNodeId != nil {
                    map["PrevNodeId"] = self.prevNodeId!
                }
                if self.refId != nil {
                    map["RefId"] = self.refId!
                }
                if self.refVersion != nil {
                    map["RefVersion"] = self.refVersion!
                }
                if self.webhookUrl != nil {
                    map["WebhookUrl"] = self.webhookUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuthMetadata"] as? String {
                    self.authMetadata = value
                }
                if let value = dict["ConnectorId"] as? String {
                    self.connectorId = value
                }
                if let value = dict["ConnectorVersion"] as? String {
                    self.connectorVersion = value
                }
                if let value = dict["FlowId"] as? String {
                    self.flowId = value
                }
                if let value = dict["FlowVersion"] as? String {
                    self.flowVersion = value
                }
                if let value = dict["InputSchema"] as? String {
                    self.inputSchema = value
                }
                if let value = dict["NodeId"] as? String {
                    self.nodeId = value
                }
                if let value = dict["NodeKey"] as? String {
                    self.nodeKey = value
                }
                if let value = dict["NodeName"] as? String {
                    self.nodeName = value
                }
                if let value = dict["NodeType"] as? String {
                    self.nodeType = value
                }
                if let value = dict["PrevNodeId"] as? String {
                    self.prevNodeId = value
                }
                if let value = dict["RefId"] as? String {
                    self.refId = value
                }
                if let value = dict["RefVersion"] as? String {
                    self.refVersion = value
                }
                if let value = dict["WebhookUrl"] as? String {
                    self.webhookUrl = value
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
        public var enabled: String?

        public var flowDesc: String?

        public var flowId: String?

        public var flowName: String?

        public var flowNodes: [GetFlowResponseBody.Flow.FlowNodes]?

        public var flowTemplate: String?

        public var flowVersion: String?

        public var flowVersionStatus: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var tags: [GetFlowResponseBody.Flow.Tags]?

        public override init() {
            super.init()
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
            if self.flowDesc != nil {
                map["FlowDesc"] = self.flowDesc!
            }
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            if self.flowNodes != nil {
                var tmp : [Any] = []
                for k in self.flowNodes! {
                    tmp.append(k.toMap())
                }
                map["FlowNodes"] = tmp
            }
            if self.flowTemplate != nil {
                map["FlowTemplate"] = self.flowTemplate!
            }
            if self.flowVersion != nil {
                map["FlowVersion"] = self.flowVersion!
            }
            if self.flowVersionStatus != nil {
                map["FlowVersionStatus"] = self.flowVersionStatus!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
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
            if let value = dict["Enabled"] as? String {
                self.enabled = value
            }
            if let value = dict["FlowDesc"] as? String {
                self.flowDesc = value
            }
            if let value = dict["FlowId"] as? String {
                self.flowId = value
            }
            if let value = dict["FlowName"] as? String {
                self.flowName = value
            }
            if let value = dict["FlowNodes"] as? [Any?] {
                var tmp : [GetFlowResponseBody.Flow.FlowNodes] = []
                for v in value {
                    if v != nil {
                        var model = GetFlowResponseBody.Flow.FlowNodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.flowNodes = tmp
            }
            if let value = dict["FlowTemplate"] as? String {
                self.flowTemplate = value
            }
            if let value = dict["FlowVersion"] as? String {
                self.flowVersion = value
            }
            if let value = dict["FlowVersionStatus"] as? String {
                self.flowVersionStatus = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetFlowResponseBody.Flow.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetFlowResponseBody.Flow.Tags()
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
    public var flow: GetFlowResponseBody.Flow?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.flow?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flow != nil {
            map["Flow"] = self.flow?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Flow"] as? [String: Any?] {
            var model = GetFlowResponseBody.Flow()
            model.fromMap(value)
            self.flow = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserAuthConfigRequest : Tea.TeaModel {
    public var authConfigId: String?

    public var connectorId: String?

    public var connectorVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authConfigId != nil {
            map["AuthConfigId"] = self.authConfigId!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        if self.connectorVersion != nil {
            map["ConnectorVersion"] = self.connectorVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthConfigId"] as? String {
            self.authConfigId = value
        }
        if let value = dict["ConnectorId"] as? String {
            self.connectorId = value
        }
        if let value = dict["ConnectorVersion"] as? String {
            self.connectorVersion = value
        }
    }
}

public class GetUserAuthConfigResponseBody : Tea.TeaModel {
    public class UserAuthConfig : Tea.TeaModel {
        public var authConfig: String?

        public var authConfigId: String?

        public var authConfigName: String?

        public var authType: String?

        public var connectorId: String?

        public var connectorVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authConfig != nil {
                map["AuthConfig"] = self.authConfig!
            }
            if self.authConfigId != nil {
                map["AuthConfigId"] = self.authConfigId!
            }
            if self.authConfigName != nil {
                map["AuthConfigName"] = self.authConfigName!
            }
            if self.authType != nil {
                map["AuthType"] = self.authType!
            }
            if self.connectorId != nil {
                map["ConnectorId"] = self.connectorId!
            }
            if self.connectorVersion != nil {
                map["ConnectorVersion"] = self.connectorVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthConfig"] as? String {
                self.authConfig = value
            }
            if let value = dict["AuthConfigId"] as? String {
                self.authConfigId = value
            }
            if let value = dict["AuthConfigName"] as? String {
                self.authConfigName = value
            }
            if let value = dict["AuthType"] as? String {
                self.authType = value
            }
            if let value = dict["ConnectorId"] as? String {
                self.connectorId = value
            }
            if let value = dict["ConnectorVersion"] as? String {
                self.connectorVersion = value
            }
        }
    }
    public var requestId: String?

    public var userAuthConfig: GetUserAuthConfigResponseBody.UserAuthConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userAuthConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userAuthConfig != nil {
            map["UserAuthConfig"] = self.userAuthConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserAuthConfig"] as? [String: Any?] {
            var model = GetUserAuthConfigResponseBody.UserAuthConfig()
            model.fromMap(value)
            self.userAuthConfig = model
        }
    }
}

public class GetUserAuthConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserAuthConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserAuthConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InvokeActionRequest : Tea.TeaModel {
    public class AuthConfig : Tea.TeaModel {
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
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Value"] as? Any {
                self.value = value
            }
        }
    }
    public var actionId: String?

    public var actionVersion: String?

    public var authConfig: InvokeActionRequest.AuthConfig?

    public var body: [String: Any]?

    public var connectorId: String?

    public var connectorVersion: String?

    public var headers: [String: String]?

    public var path: [String: String]?

    public var query: [String: String]?

    public var stream: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionId != nil {
            map["ActionId"] = self.actionId!
        }
        if self.actionVersion != nil {
            map["ActionVersion"] = self.actionVersion!
        }
        if self.authConfig != nil {
            map["AuthConfig"] = self.authConfig?.toMap()
        }
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        if self.connectorVersion != nil {
            map["ConnectorVersion"] = self.connectorVersion!
        }
        if self.headers != nil {
            map["Headers"] = self.headers!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.stream != nil {
            map["Stream"] = self.stream!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionId"] as? String {
            self.actionId = value
        }
        if let value = dict["ActionVersion"] as? String {
            self.actionVersion = value
        }
        if let value = dict["AuthConfig"] as? [String: Any?] {
            var model = InvokeActionRequest.AuthConfig()
            model.fromMap(value)
            self.authConfig = model
        }
        if let value = dict["Body"] as? [String: Any] {
            self.body = value
        }
        if let value = dict["ConnectorId"] as? String {
            self.connectorId = value
        }
        if let value = dict["ConnectorVersion"] as? String {
            self.connectorVersion = value
        }
        if let value = dict["Headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["Path"] as? [String: String] {
            self.path = value
        }
        if let value = dict["Query"] as? [String: String] {
            self.query = value
        }
        if let value = dict["Stream"] as? Bool {
            self.stream = value
        }
    }
}

public class InvokeActionShrinkRequest : Tea.TeaModel {
    public var actionId: String?

    public var actionVersion: String?

    public var authConfigShrink: String?

    public var bodyShrink: String?

    public var connectorId: String?

    public var connectorVersion: String?

    public var headersShrink: String?

    public var pathShrink: String?

    public var queryShrink: String?

    public var stream: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionId != nil {
            map["ActionId"] = self.actionId!
        }
        if self.actionVersion != nil {
            map["ActionVersion"] = self.actionVersion!
        }
        if self.authConfigShrink != nil {
            map["AuthConfig"] = self.authConfigShrink!
        }
        if self.bodyShrink != nil {
            map["Body"] = self.bodyShrink!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        if self.connectorVersion != nil {
            map["ConnectorVersion"] = self.connectorVersion!
        }
        if self.headersShrink != nil {
            map["Headers"] = self.headersShrink!
        }
        if self.pathShrink != nil {
            map["Path"] = self.pathShrink!
        }
        if self.queryShrink != nil {
            map["Query"] = self.queryShrink!
        }
        if self.stream != nil {
            map["Stream"] = self.stream!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionId"] as? String {
            self.actionId = value
        }
        if let value = dict["ActionVersion"] as? String {
            self.actionVersion = value
        }
        if let value = dict["AuthConfig"] as? String {
            self.authConfigShrink = value
        }
        if let value = dict["Body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["ConnectorId"] as? String {
            self.connectorId = value
        }
        if let value = dict["ConnectorVersion"] as? String {
            self.connectorVersion = value
        }
        if let value = dict["Headers"] as? String {
            self.headersShrink = value
        }
        if let value = dict["Path"] as? String {
            self.pathShrink = value
        }
        if let value = dict["Query"] as? String {
            self.queryShrink = value
        }
        if let value = dict["Stream"] as? Bool {
            self.stream = value
        }
    }
}

public class InvokeActionResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var errorMessage: String?

        public var output: Any?

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
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["Output"] as? Any {
                self.output = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var requestId: String?

    public var result: InvokeActionResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = InvokeActionResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class InvokeActionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvokeActionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = InvokeActionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LaunchFlowRequest : Tea.TeaModel {
    public var flowDesc: String?

    public var flowId: String?

    public var flowName: String?

    public var flowTemplate: String?

    public var flowVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowDesc != nil {
            map["FlowDesc"] = self.flowDesc!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.flowTemplate != nil {
            map["FlowTemplate"] = self.flowTemplate!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowDesc"] as? String {
            self.flowDesc = value
        }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["FlowTemplate"] as? String {
            self.flowTemplate = value
        }
        if let value = dict["FlowVersion"] as? Int32 {
            self.flowVersion = value
        }
    }
}

public class LaunchFlowResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class LaunchFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LaunchFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = LaunchFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFlowsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
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
    public var filter: [ListFlowsRequest.Filter]?

    public var maxResults: String?

    public var nextToken: String?

    public var tag: [ListFlowsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListFlowsRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListFlowsRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListFlowsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListFlowsRequest.Tag()
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

public class ListFlowsResponseBody : Tea.TeaModel {
    public class Flows : Tea.TeaModel {
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
        public var enabled: Bool?

        public var flowDesc: String?

        public var flowId: String?

        public var flowName: String?

        public var flowTemplate: String?

        public var flowVersion: String?

        public var flowVersionStatus: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var releasedVersion: Int32?

        public var tags: [ListFlowsResponseBody.Flows.Tags]?

        public var webhookUrl: String?

        public override init() {
            super.init()
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
            if self.flowDesc != nil {
                map["FlowDesc"] = self.flowDesc!
            }
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            if self.flowTemplate != nil {
                map["FlowTemplate"] = self.flowTemplate!
            }
            if self.flowVersion != nil {
                map["FlowVersion"] = self.flowVersion!
            }
            if self.flowVersionStatus != nil {
                map["FlowVersionStatus"] = self.flowVersionStatus!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.releasedVersion != nil {
                map["ReleasedVersion"] = self.releasedVersion!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.webhookUrl != nil {
                map["WebhookUrl"] = self.webhookUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["FlowDesc"] as? String {
                self.flowDesc = value
            }
            if let value = dict["FlowId"] as? String {
                self.flowId = value
            }
            if let value = dict["FlowName"] as? String {
                self.flowName = value
            }
            if let value = dict["FlowTemplate"] as? String {
                self.flowTemplate = value
            }
            if let value = dict["FlowVersion"] as? String {
                self.flowVersion = value
            }
            if let value = dict["FlowVersionStatus"] as? String {
                self.flowVersionStatus = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["ReleasedVersion"] as? Int32 {
                self.releasedVersion = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListFlowsResponseBody.Flows.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListFlowsResponseBody.Flows.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["WebhookUrl"] as? String {
                self.webhookUrl = value
            }
        }
    }
    public var flows: [ListFlowsResponseBody.Flows]?

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
        if self.flows != nil {
            var tmp : [Any] = []
            for k in self.flows! {
                tmp.append(k.toMap())
            }
            map["Flows"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Flows"] as? [Any?] {
            var tmp : [ListFlowsResponseBody.Flows] = []
            for v in value {
                if v != nil {
                    var model = ListFlowsResponseBody.Flows()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.flows = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListFlowsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUserAuthConfigsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
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
    public var authType: String?

    public var connectorId: String?

    public var connectorVersion: String?

    public var filter: [ListUserAuthConfigsRequest.Filter]?

    public var maxResults: String?

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
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        if self.connectorVersion != nil {
            map["ConnectorVersion"] = self.connectorVersion!
        }
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["ConnectorId"] as? String {
            self.connectorId = value
        }
        if let value = dict["ConnectorVersion"] as? String {
            self.connectorVersion = value
        }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListUserAuthConfigsRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListUserAuthConfigsRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListUserAuthConfigsResponseBody : Tea.TeaModel {
    public class UserAuthConfigs : Tea.TeaModel {
        public var authConfigId: String?

        public var authConfigName: String?

        public var authType: String?

        public var connectorId: String?

        public var connectorVersion: String?

        public var flowCount: Int32?

        public var gmtCreate: String?

        public var gmtModified: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authConfigId != nil {
                map["AuthConfigId"] = self.authConfigId!
            }
            if self.authConfigName != nil {
                map["AuthConfigName"] = self.authConfigName!
            }
            if self.authType != nil {
                map["AuthType"] = self.authType!
            }
            if self.connectorId != nil {
                map["ConnectorId"] = self.connectorId!
            }
            if self.connectorVersion != nil {
                map["ConnectorVersion"] = self.connectorVersion!
            }
            if self.flowCount != nil {
                map["FlowCount"] = self.flowCount!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthConfigId"] as? String {
                self.authConfigId = value
            }
            if let value = dict["AuthConfigName"] as? String {
                self.authConfigName = value
            }
            if let value = dict["AuthType"] as? String {
                self.authType = value
            }
            if let value = dict["ConnectorId"] as? String {
                self.connectorId = value
            }
            if let value = dict["ConnectorVersion"] as? String {
                self.connectorVersion = value
            }
            if let value = dict["FlowCount"] as? Int32 {
                self.flowCount = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var userAuthConfigs: [ListUserAuthConfigsResponseBody.UserAuthConfigs]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.userAuthConfigs != nil {
            var tmp : [Any] = []
            for k in self.userAuthConfigs! {
                tmp.append(k.toMap())
            }
            map["UserAuthConfigs"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["UserAuthConfigs"] as? [Any?] {
            var tmp : [ListUserAuthConfigsResponseBody.UserAuthConfigs] = []
            for v in value {
                if v != nil {
                    var model = ListUserAuthConfigsResponseBody.UserAuthConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.userAuthConfigs = tmp
        }
    }
}

public class ListUserAuthConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserAuthConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUserAuthConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFlowRequest : Tea.TeaModel {
    public var enabled: Bool?

    public var flowDesc: String?

    public var flowId: String?

    public var flowName: String?

    public var flowTemplate: String?

    public var flowVersion: String?

    public override init() {
        super.init()
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
        if self.flowDesc != nil {
            map["FlowDesc"] = self.flowDesc!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.flowTemplate != nil {
            map["FlowTemplate"] = self.flowTemplate!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["FlowDesc"] as? String {
            self.flowDesc = value
        }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["FlowTemplate"] as? String {
            self.flowTemplate = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
    }
}

public class UpdateFlowResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserAuthConfigRequest : Tea.TeaModel {
    public var authConfig: String?

    public var authConfigId: String?

    public var authConfigName: String?

    public var connectorId: String?

    public var connectorVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authConfig != nil {
            map["AuthConfig"] = self.authConfig!
        }
        if self.authConfigId != nil {
            map["AuthConfigId"] = self.authConfigId!
        }
        if self.authConfigName != nil {
            map["AuthConfigName"] = self.authConfigName!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        if self.connectorVersion != nil {
            map["ConnectorVersion"] = self.connectorVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthConfig"] as? String {
            self.authConfig = value
        }
        if let value = dict["AuthConfigId"] as? String {
            self.authConfigId = value
        }
        if let value = dict["AuthConfigName"] as? String {
            self.authConfigName = value
        }
        if let value = dict["ConnectorId"] as? String {
            self.connectorId = value
        }
        if let value = dict["ConnectorVersion"] as? String {
            self.connectorVersion = value
        }
    }
}

public class UpdateUserAuthConfigResponseBody : Tea.TeaModel {
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

public class UpdateUserAuthConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserAuthConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateUserAuthConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class WithdrawFlowRequest : Tea.TeaModel {
    public var flowId: String?

    public var flowVersion: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["FlowVersion"] as? Int32 {
            self.flowVersion = value
        }
    }
}

public class WithdrawFlowResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class WithdrawFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: WithdrawFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = WithdrawFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
