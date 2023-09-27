import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AbolishApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class AbolishApiResponseBody : Tea.TeaModel {
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

public class AbolishApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AbolishApiResponseBody?

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
            var model = AbolishApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddBlackListRequest : Tea.TeaModel {
    public var blackContent: String?

    public var blackType: String?

    public var description_: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackContent != nil {
            map["BlackContent"] = self.blackContent!
        }
        if self.blackType != nil {
            map["BlackType"] = self.blackType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackContent") && dict["BlackContent"] != nil {
            self.blackContent = dict["BlackContent"] as! String
        }
        if dict.keys.contains("BlackType") && dict["BlackType"] != nil {
            self.blackType = dict["BlackType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class AddBlackListResponseBody : Tea.TeaModel {
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

public class AddBlackListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddBlackListResponseBody?

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
            var model = AddBlackListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddIpControlPolicyItemRequest : Tea.TeaModel {
    public var appId: String?

    public var cidrIp: String?

    public var ipControlId: String?

    public var securityToken: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.cidrIp != nil {
            map["CidrIp"] = self.cidrIp!
        }
        if self.ipControlId != nil {
            map["IpControlId"] = self.ipControlId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CidrIp") && dict["CidrIp"] != nil {
            self.cidrIp = dict["CidrIp"] as! String
        }
        if dict.keys.contains("IpControlId") && dict["IpControlId"] != nil {
            self.ipControlId = dict["IpControlId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class AddIpControlPolicyItemResponseBody : Tea.TeaModel {
    public var policyItemId: String?

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
        if self.policyItemId != nil {
            map["PolicyItemId"] = self.policyItemId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyItemId") && dict["PolicyItemId"] != nil {
            self.policyItemId = dict["PolicyItemId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddIpControlPolicyItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddIpControlPolicyItemResponseBody?

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
            var model = AddIpControlPolicyItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddTrafficSpecialControlRequest : Tea.TeaModel {
    public var securityToken: String?

    public var specialKey: String?

    public var specialType: String?

    public var trafficControlId: String?

    public var trafficValue: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.specialKey != nil {
            map["SpecialKey"] = self.specialKey!
        }
        if self.specialType != nil {
            map["SpecialType"] = self.specialType!
        }
        if self.trafficControlId != nil {
            map["TrafficControlId"] = self.trafficControlId!
        }
        if self.trafficValue != nil {
            map["TrafficValue"] = self.trafficValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SpecialKey") && dict["SpecialKey"] != nil {
            self.specialKey = dict["SpecialKey"] as! String
        }
        if dict.keys.contains("SpecialType") && dict["SpecialType"] != nil {
            self.specialType = dict["SpecialType"] as! String
        }
        if dict.keys.contains("TrafficControlId") && dict["TrafficControlId"] != nil {
            self.trafficControlId = dict["TrafficControlId"] as! String
        }
        if dict.keys.contains("TrafficValue") && dict["TrafficValue"] != nil {
            self.trafficValue = dict["TrafficValue"] as! Int32
        }
    }
}

public class AddTrafficSpecialControlResponseBody : Tea.TeaModel {
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

public class AddTrafficSpecialControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTrafficSpecialControlResponseBody?

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
            var model = AddTrafficSpecialControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApiRequest : Tea.TeaModel {
    public var allowSignatureMethod: String?

    public var apiName: String?

    public var authType: String?

    public var description_: String?

    public var errorCodeSamples: String?

    public var failResultSample: String?

    public var groupId: String?

    public var openIdConnectConfig: String?

    public var requestConfig: String?

    public var requestParamters: String?

    public var resultDescriptions: String?

    public var resultSample: String?

    public var resultType: String?

    public var securityToken: String?

    public var serviceConfig: String?

    public var serviceParameters: String?

    public var serviceParametersMap: String?

    public var visibility: String?

    public var webSocketApiType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowSignatureMethod != nil {
            map["AllowSignatureMethod"] = self.allowSignatureMethod!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.errorCodeSamples != nil {
            map["ErrorCodeSamples"] = self.errorCodeSamples!
        }
        if self.failResultSample != nil {
            map["FailResultSample"] = self.failResultSample!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.openIdConnectConfig != nil {
            map["OpenIdConnectConfig"] = self.openIdConnectConfig!
        }
        if self.requestConfig != nil {
            map["RequestConfig"] = self.requestConfig!
        }
        if self.requestParamters != nil {
            map["RequestParamters"] = self.requestParamters!
        }
        if self.resultDescriptions != nil {
            map["ResultDescriptions"] = self.resultDescriptions!
        }
        if self.resultSample != nil {
            map["ResultSample"] = self.resultSample!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serviceConfig != nil {
            map["ServiceConfig"] = self.serviceConfig!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        if self.serviceParametersMap != nil {
            map["ServiceParametersMap"] = self.serviceParametersMap!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        if self.webSocketApiType != nil {
            map["WebSocketApiType"] = self.webSocketApiType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowSignatureMethod") && dict["AllowSignatureMethod"] != nil {
            self.allowSignatureMethod = dict["AllowSignatureMethod"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ErrorCodeSamples") && dict["ErrorCodeSamples"] != nil {
            self.errorCodeSamples = dict["ErrorCodeSamples"] as! String
        }
        if dict.keys.contains("FailResultSample") && dict["FailResultSample"] != nil {
            self.failResultSample = dict["FailResultSample"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("OpenIdConnectConfig") && dict["OpenIdConnectConfig"] != nil {
            self.openIdConnectConfig = dict["OpenIdConnectConfig"] as! String
        }
        if dict.keys.contains("RequestConfig") && dict["RequestConfig"] != nil {
            self.requestConfig = dict["RequestConfig"] as! String
        }
        if dict.keys.contains("RequestParamters") && dict["RequestParamters"] != nil {
            self.requestParamters = dict["RequestParamters"] as! String
        }
        if dict.keys.contains("ResultDescriptions") && dict["ResultDescriptions"] != nil {
            self.resultDescriptions = dict["ResultDescriptions"] as! String
        }
        if dict.keys.contains("ResultSample") && dict["ResultSample"] != nil {
            self.resultSample = dict["ResultSample"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServiceConfig") && dict["ServiceConfig"] != nil {
            self.serviceConfig = dict["ServiceConfig"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
        if dict.keys.contains("ServiceParametersMap") && dict["ServiceParametersMap"] != nil {
            self.serviceParametersMap = dict["ServiceParametersMap"] as! String
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
        if dict.keys.contains("WebSocketApiType") && dict["WebSocketApiType"] != nil {
            self.webSocketApiType = dict["WebSocketApiType"] as! String
        }
    }
}

public class CreateApiResponseBody : Tea.TeaModel {
    public var apiId: String?

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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApiResponseBody?

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
            var model = CreateApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApiGroupRequest : Tea.TeaModel {
    public var description_: String?

    public var groupName: String?

    public var instanceId: String?

    public var securityToken: String?

    public override init() {
        super.init()
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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class CreateApiGroupResponseBody : Tea.TeaModel {
    public var description_: String?

    public var groupId: String?

    public var groupName: String?

    public var requestId: String?

    public var subDomain: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
            self.subDomain = dict["SubDomain"] as! String
        }
    }
}

public class CreateApiGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApiGroupResponseBody?

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
            var model = CreateApiGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApiStageVariableRequest : Tea.TeaModel {
    public var groupId: String?

    public var securityToken: String?

    public var stageId: String?

    public var stageRouteModel: String?

    public var supportRoute: Bool?

    public var variableName: String?

    public var variableValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageId != nil {
            map["StageId"] = self.stageId!
        }
        if self.stageRouteModel != nil {
            map["StageRouteModel"] = self.stageRouteModel!
        }
        if self.supportRoute != nil {
            map["SupportRoute"] = self.supportRoute!
        }
        if self.variableName != nil {
            map["VariableName"] = self.variableName!
        }
        if self.variableValue != nil {
            map["VariableValue"] = self.variableValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageId") && dict["StageId"] != nil {
            self.stageId = dict["StageId"] as! String
        }
        if dict.keys.contains("StageRouteModel") && dict["StageRouteModel"] != nil {
            self.stageRouteModel = dict["StageRouteModel"] as! String
        }
        if dict.keys.contains("SupportRoute") && dict["SupportRoute"] != nil {
            self.supportRoute = dict["SupportRoute"] as! Bool
        }
        if dict.keys.contains("VariableName") && dict["VariableName"] != nil {
            self.variableName = dict["VariableName"] as! String
        }
        if dict.keys.contains("VariableValue") && dict["VariableValue"] != nil {
            self.variableValue = dict["VariableValue"] as! String
        }
    }
}

public class CreateApiStageVariableResponseBody : Tea.TeaModel {
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

public class CreateApiStageVariableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApiStageVariableResponseBody?

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
            var model = CreateApiStageVariableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppRequest : Tea.TeaModel {
    public var appName: String?

    public var description_: String?

    public var securityToken: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class CreateAppResponseBody : Tea.TeaModel {
    public var appId: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppResponseBody?

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
            var model = CreateAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCustomizedInfoRequest : Tea.TeaModel {
    public var apiId: String?

    public var apiName: String?

    public var csharpDemo: String?

    public var curlDemo: String?

    public var groupId: String?

    public var javaDemo: String?

    public var objectcDemo: String?

    public var phpDemo: String?

    public var pythonDemo: String?

    public var securityToken: String?

    public var stageId: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.csharpDemo != nil {
            map["CsharpDemo"] = self.csharpDemo!
        }
        if self.curlDemo != nil {
            map["CurlDemo"] = self.curlDemo!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.javaDemo != nil {
            map["JavaDemo"] = self.javaDemo!
        }
        if self.objectcDemo != nil {
            map["ObjectcDemo"] = self.objectcDemo!
        }
        if self.phpDemo != nil {
            map["PhpDemo"] = self.phpDemo!
        }
        if self.pythonDemo != nil {
            map["PythonDemo"] = self.pythonDemo!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageId != nil {
            map["StageId"] = self.stageId!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("CsharpDemo") && dict["CsharpDemo"] != nil {
            self.csharpDemo = dict["CsharpDemo"] as! String
        }
        if dict.keys.contains("CurlDemo") && dict["CurlDemo"] != nil {
            self.curlDemo = dict["CurlDemo"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("JavaDemo") && dict["JavaDemo"] != nil {
            self.javaDemo = dict["JavaDemo"] as! String
        }
        if dict.keys.contains("ObjectcDemo") && dict["ObjectcDemo"] != nil {
            self.objectcDemo = dict["ObjectcDemo"] as! String
        }
        if dict.keys.contains("PhpDemo") && dict["PhpDemo"] != nil {
            self.phpDemo = dict["PhpDemo"] as! String
        }
        if dict.keys.contains("PythonDemo") && dict["PythonDemo"] != nil {
            self.pythonDemo = dict["PythonDemo"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageId") && dict["StageId"] != nil {
            self.stageId = dict["StageId"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class CreateCustomizedInfoResponseBody : Tea.TeaModel {
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

public class CreateCustomizedInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomizedInfoResponseBody?

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
            var model = CreateCustomizedInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public var accountQuantity: Int32?

    public var expiredOn: String?

    public var securityToken: String?

    public var skuId: String?

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
        if self.accountQuantity != nil {
            map["AccountQuantity"] = self.accountQuantity!
        }
        if self.expiredOn != nil {
            map["ExpiredOn"] = self.expiredOn!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.skuId != nil {
            map["SkuId"] = self.skuId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountQuantity") && dict["AccountQuantity"] != nil {
            self.accountQuantity = dict["AccountQuantity"] as! Int32
        }
        if dict.keys.contains("ExpiredOn") && dict["ExpiredOn"] != nil {
            self.expiredOn = dict["ExpiredOn"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SkuId") && dict["SkuId"] != nil {
            self.skuId = dict["SkuId"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public var instanceId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceResponseBody?

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
            var model = CreateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateIpControlRequest : Tea.TeaModel {
    public class IpControlPolicys : Tea.TeaModel {
        public var appId: String?

        public var IP: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.IP != nil {
                map["IP"] = self.IP!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("IP") && dict["IP"] != nil {
                self.IP = dict["IP"] as! String
            }
        }
    }
    public var description_: String?

    public var ipControlName: String?

    public var ipControlPolicys: [CreateIpControlRequest.IpControlPolicys]?

    public var ipControlType: String?

    public var securityToken: String?

    public override init() {
        super.init()
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
        if self.ipControlName != nil {
            map["IpControlName"] = self.ipControlName!
        }
        if self.ipControlPolicys != nil {
            var tmp : [Any] = []
            for k in self.ipControlPolicys! {
                tmp.append(k.toMap())
            }
            map["IpControlPolicys"] = tmp
        }
        if self.ipControlType != nil {
            map["IpControlType"] = self.ipControlType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("IpControlName") && dict["IpControlName"] != nil {
            self.ipControlName = dict["IpControlName"] as! String
        }
        if dict.keys.contains("IpControlPolicys") && dict["IpControlPolicys"] != nil {
            var tmp : [CreateIpControlRequest.IpControlPolicys] = []
            for v in dict["IpControlPolicys"] as! [Any] {
                var model = CreateIpControlRequest.IpControlPolicys()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ipControlPolicys = tmp
        }
        if dict.keys.contains("IpControlType") && dict["IpControlType"] != nil {
            self.ipControlType = dict["IpControlType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class CreateIpControlResponseBody : Tea.TeaModel {
    public var ipControlId: String?

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
        if self.ipControlId != nil {
            map["IpControlId"] = self.ipControlId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpControlId") && dict["IpControlId"] != nil {
            self.ipControlId = dict["IpControlId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateIpControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIpControlResponseBody?

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
            var model = CreateIpControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLogConfigRequest : Tea.TeaModel {
    public var logType: String?

    public var securityToken: String?

    public var slsLogStore: String?

    public var slsProject: String?

    public override init() {
        super.init()
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.slsLogStore != nil {
            map["SlsLogStore"] = self.slsLogStore!
        }
        if self.slsProject != nil {
            map["SlsProject"] = self.slsProject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogType") && dict["LogType"] != nil {
            self.logType = dict["LogType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SlsLogStore") && dict["SlsLogStore"] != nil {
            self.slsLogStore = dict["SlsLogStore"] as! String
        }
        if dict.keys.contains("SlsProject") && dict["SlsProject"] != nil {
            self.slsProject = dict["SlsProject"] as! String
        }
    }
}

public class CreateLogConfigResponseBody : Tea.TeaModel {
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

public class CreateLogConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLogConfigResponseBody?

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
            var model = CreateLogConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRaceWorkForInnerRequest : Tea.TeaModel {
    public var commodityCode: String?

    public var groupId: String?

    public var keywords: String?

    public var logoUrl: String?

    public var securityToken: String?

    public var shortDescription: String?

    public var workName: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.logoUrl != nil {
            map["LogoUrl"] = self.logoUrl!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.shortDescription != nil {
            map["ShortDescription"] = self.shortDescription!
        }
        if self.workName != nil {
            map["WorkName"] = self.workName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
            self.keywords = dict["Keywords"] as! String
        }
        if dict.keys.contains("LogoUrl") && dict["LogoUrl"] != nil {
            self.logoUrl = dict["LogoUrl"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ShortDescription") && dict["ShortDescription"] != nil {
            self.shortDescription = dict["ShortDescription"] as! String
        }
        if dict.keys.contains("WorkName") && dict["WorkName"] != nil {
            self.workName = dict["WorkName"] as! String
        }
    }
}

public class CreateRaceWorkForInnerResponseBody : Tea.TeaModel {
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

public class CreateRaceWorkForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRaceWorkForInnerResponseBody?

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
            var model = CreateRaceWorkForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSecretKeyRequest : Tea.TeaModel {
    public var secretKey: String?

    public var secretKeyName: String?

    public var secretValue: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.secretKey != nil {
            map["SecretKey"] = self.secretKey!
        }
        if self.secretKeyName != nil {
            map["SecretKeyName"] = self.secretKeyName!
        }
        if self.secretValue != nil {
            map["SecretValue"] = self.secretValue!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecretKey") && dict["SecretKey"] != nil {
            self.secretKey = dict["SecretKey"] as! String
        }
        if dict.keys.contains("SecretKeyName") && dict["SecretKeyName"] != nil {
            self.secretKeyName = dict["SecretKeyName"] as! String
        }
        if dict.keys.contains("SecretValue") && dict["SecretValue"] != nil {
            self.secretValue = dict["SecretValue"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class CreateSecretKeyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var secretKeyId: String?

    public var secretKeyName: String?

    public override init() {
        super.init()
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
        if self.secretKeyId != nil {
            map["SecretKeyId"] = self.secretKeyId!
        }
        if self.secretKeyName != nil {
            map["SecretKeyName"] = self.secretKeyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretKeyId") && dict["SecretKeyId"] != nil {
            self.secretKeyId = dict["SecretKeyId"] as! String
        }
        if dict.keys.contains("SecretKeyName") && dict["SecretKeyName"] != nil {
            self.secretKeyName = dict["SecretKeyName"] as! String
        }
    }
}

public class CreateSecretKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSecretKeyResponseBody?

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
            var model = CreateSecretKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTrafficControlRequest : Tea.TeaModel {
    public var apiDefault: Int32?

    public var appDefault: Int32?

    public var description_: String?

    public var securityToken: String?

    public var trafficControlName: String?

    public var trafficControlUnit: String?

    public var userDefault: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiDefault != nil {
            map["ApiDefault"] = self.apiDefault!
        }
        if self.appDefault != nil {
            map["AppDefault"] = self.appDefault!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.trafficControlName != nil {
            map["TrafficControlName"] = self.trafficControlName!
        }
        if self.trafficControlUnit != nil {
            map["TrafficControlUnit"] = self.trafficControlUnit!
        }
        if self.userDefault != nil {
            map["UserDefault"] = self.userDefault!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiDefault") && dict["ApiDefault"] != nil {
            self.apiDefault = dict["ApiDefault"] as! Int32
        }
        if dict.keys.contains("AppDefault") && dict["AppDefault"] != nil {
            self.appDefault = dict["AppDefault"] as! Int32
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("TrafficControlName") && dict["TrafficControlName"] != nil {
            self.trafficControlName = dict["TrafficControlName"] as! String
        }
        if dict.keys.contains("TrafficControlUnit") && dict["TrafficControlUnit"] != nil {
            self.trafficControlUnit = dict["TrafficControlUnit"] as! String
        }
        if dict.keys.contains("UserDefault") && dict["UserDefault"] != nil {
            self.userDefault = dict["UserDefault"] as! Int32
        }
    }
}

public class CreateTrafficControlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var trafficControlId: String?

    public override init() {
        super.init()
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
        if self.trafficControlId != nil {
            map["TrafficControlId"] = self.trafficControlId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrafficControlId") && dict["TrafficControlId"] != nil {
            self.trafficControlId = dict["TrafficControlId"] as! String
        }
    }
}

public class CreateTrafficControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTrafficControlResponseBody?

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
            var model = CreateTrafficControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAllTrafficSpecialControlRequest : Tea.TeaModel {
    public var securityToken: String?

    public var trafficControlId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.trafficControlId != nil {
            map["TrafficControlId"] = self.trafficControlId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("TrafficControlId") && dict["TrafficControlId"] != nil {
            self.trafficControlId = dict["TrafficControlId"] as! String
        }
    }
}

public class DeleteAllTrafficSpecialControlResponseBody : Tea.TeaModel {
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

public class DeleteAllTrafficSpecialControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAllTrafficSpecialControlResponseBody?

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
            var model = DeleteAllTrafficSpecialControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteApiResponseBody : Tea.TeaModel {
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

public class DeleteApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApiResponseBody?

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
            var model = DeleteApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApiGroupRequest : Tea.TeaModel {
    public var groupId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteApiGroupResponseBody : Tea.TeaModel {
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

public class DeleteApiGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApiGroupResponseBody?

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
            var model = DeleteApiGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApiStageVariableRequest : Tea.TeaModel {
    public var groupId: String?

    public var securityToken: String?

    public var stageId: String?

    public var variableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageId != nil {
            map["StageId"] = self.stageId!
        }
        if self.variableName != nil {
            map["VariableName"] = self.variableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageId") && dict["StageId"] != nil {
            self.stageId = dict["StageId"] as! String
        }
        if dict.keys.contains("VariableName") && dict["VariableName"] != nil {
            self.variableName = dict["VariableName"] as! String
        }
    }
}

public class DeleteApiStageVariableResponseBody : Tea.TeaModel {
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

public class DeleteApiStageVariableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApiStageVariableResponseBody?

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
            var model = DeleteApiStageVariableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppRequest : Tea.TeaModel {
    public var appId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteAppResponseBody : Tea.TeaModel {
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

public class DeleteAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppResponseBody?

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
            var model = DeleteAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var groupId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteDomainResponseBody : Tea.TeaModel {
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

public class DeleteDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainResponseBody?

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
            var model = DeleteDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDomainCertificateRequest : Tea.TeaModel {
    public var certificateId: String?

    public var domainName: String?

    public var groupId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteDomainCertificateResponseBody : Tea.TeaModel {
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

public class DeleteDomainCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainCertificateResponseBody?

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
            var model = DeleteDomainCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIpControlRequest : Tea.TeaModel {
    public var ipControlId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipControlId != nil {
            map["IpControlId"] = self.ipControlId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpControlId") && dict["IpControlId"] != nil {
            self.ipControlId = dict["IpControlId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteIpControlResponseBody : Tea.TeaModel {
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

public class DeleteIpControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIpControlResponseBody?

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
            var model = DeleteIpControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteLogConfigRequest : Tea.TeaModel {
    public var logType: String?

    public var securityToken: String?

    public override init() {
        super.init()
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogType") && dict["LogType"] != nil {
            self.logType = dict["LogType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteLogConfigResponseBody : Tea.TeaModel {
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

public class DeleteLogConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLogConfigResponseBody?

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
            var model = DeleteLogConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSecretKeyRequest : Tea.TeaModel {
    public var secretKeyId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.secretKeyId != nil {
            map["SecretKeyId"] = self.secretKeyId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecretKeyId") && dict["SecretKeyId"] != nil {
            self.secretKeyId = dict["SecretKeyId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteSecretKeyResponseBody : Tea.TeaModel {
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

public class DeleteSecretKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSecretKeyResponseBody?

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
            var model = DeleteSecretKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTrafficControlRequest : Tea.TeaModel {
    public var securityToken: String?

    public var trafficControlId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.trafficControlId != nil {
            map["TrafficControlId"] = self.trafficControlId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("TrafficControlId") && dict["TrafficControlId"] != nil {
            self.trafficControlId = dict["TrafficControlId"] as! String
        }
    }
}

public class DeleteTrafficControlResponseBody : Tea.TeaModel {
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

public class DeleteTrafficControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTrafficControlResponseBody?

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
            var model = DeleteTrafficControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTrafficSpecialControlRequest : Tea.TeaModel {
    public var securityToken: String?

    public var specialKey: String?

    public var specialType: String?

    public var trafficControlId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.specialKey != nil {
            map["SpecialKey"] = self.specialKey!
        }
        if self.specialType != nil {
            map["SpecialType"] = self.specialType!
        }
        if self.trafficControlId != nil {
            map["TrafficControlId"] = self.trafficControlId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SpecialKey") && dict["SpecialKey"] != nil {
            self.specialKey = dict["SpecialKey"] as! String
        }
        if dict.keys.contains("SpecialType") && dict["SpecialType"] != nil {
            self.specialType = dict["SpecialType"] as! String
        }
        if dict.keys.contains("TrafficControlId") && dict["TrafficControlId"] != nil {
            self.trafficControlId = dict["TrafficControlId"] as! String
        }
    }
}

public class DeleteTrafficSpecialControlResponseBody : Tea.TeaModel {
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

public class DeleteTrafficSpecialControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTrafficSpecialControlResponseBody?

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
            var model = DeleteTrafficSpecialControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeployApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var description_: String?

    public var groupId: String?

    public var securityToken: String?

    public var stageName: String?

    public var supportMock: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        if self.supportMock != nil {
            map["SupportMock"] = self.supportMock!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
        if dict.keys.contains("SupportMock") && dict["SupportMock"] != nil {
            self.supportMock = dict["SupportMock"] as! String
        }
    }
}

public class DeployApiResponseBody : Tea.TeaModel {
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

public class DeployApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployApiResponseBody?

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
            var model = DeployApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeApiResponseBody : Tea.TeaModel {
    public class ConstantParameters : Tea.TeaModel {
        public class ConstantParameter : Tea.TeaModel {
            public var constantValue: String?

            public var description_: String?

            public var location: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.constantValue != nil {
                    map["ConstantValue"] = self.constantValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConstantValue") && dict["ConstantValue"] != nil {
                    self.constantValue = dict["ConstantValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var constantParameter: [DescribeApiResponseBody.ConstantParameters.ConstantParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constantParameter != nil {
                var tmp : [Any] = []
                for k in self.constantParameter! {
                    tmp.append(k.toMap())
                }
                map["ConstantParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConstantParameter") && dict["ConstantParameter"] != nil {
                var tmp : [DescribeApiResponseBody.ConstantParameters.ConstantParameter] = []
                for v in dict["ConstantParameter"] as! [Any] {
                    var model = DescribeApiResponseBody.ConstantParameters.ConstantParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.constantParameter = tmp
            }
        }
    }
    public class CustomSystemParameters : Tea.TeaModel {
        public class CustomSystemParameter : Tea.TeaModel {
            public var demoValue: String?

            public var description_: String?

            public var location: String?

            public var parameterName: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ParameterName") && dict["ParameterName"] != nil {
                    self.parameterName = dict["ParameterName"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var customSystemParameter: [DescribeApiResponseBody.CustomSystemParameters.CustomSystemParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customSystemParameter != nil {
                var tmp : [Any] = []
                for k in self.customSystemParameter! {
                    tmp.append(k.toMap())
                }
                map["CustomSystemParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomSystemParameter") && dict["CustomSystemParameter"] != nil {
                var tmp : [DescribeApiResponseBody.CustomSystemParameters.CustomSystemParameter] = []
                for v in dict["CustomSystemParameter"] as! [Any] {
                    var model = DescribeApiResponseBody.CustomSystemParameters.CustomSystemParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.customSystemParameter = tmp
            }
        }
    }
    public class DeployedInfos : Tea.TeaModel {
        public class DeployedInfo : Tea.TeaModel {
            public var deployedStatus: String?

            public var effectiveVersion: String?

            public var stageName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deployedStatus != nil {
                    map["DeployedStatus"] = self.deployedStatus!
                }
                if self.effectiveVersion != nil {
                    map["EffectiveVersion"] = self.effectiveVersion!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeployedStatus") && dict["DeployedStatus"] != nil {
                    self.deployedStatus = dict["DeployedStatus"] as! String
                }
                if dict.keys.contains("EffectiveVersion") && dict["EffectiveVersion"] != nil {
                    self.effectiveVersion = dict["EffectiveVersion"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
            }
        }
        public var deployedInfo: [DescribeApiResponseBody.DeployedInfos.DeployedInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deployedInfo != nil {
                var tmp : [Any] = []
                for k in self.deployedInfo! {
                    tmp.append(k.toMap())
                }
                map["DeployedInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeployedInfo") && dict["DeployedInfo"] != nil {
                var tmp : [DescribeApiResponseBody.DeployedInfos.DeployedInfo] = []
                for v in dict["DeployedInfo"] as! [Any] {
                    var model = DescribeApiResponseBody.DeployedInfos.DeployedInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.deployedInfo = tmp
            }
        }
    }
    public class ErrorCodeSamples : Tea.TeaModel {
        public class ErrorCodeSample : Tea.TeaModel {
            public var code: String?

            public var description_: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var errorCodeSample: [DescribeApiResponseBody.ErrorCodeSamples.ErrorCodeSample]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCodeSample != nil {
                var tmp : [Any] = []
                for k in self.errorCodeSample! {
                    tmp.append(k.toMap())
                }
                map["ErrorCodeSample"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCodeSample") && dict["ErrorCodeSample"] != nil {
                var tmp : [DescribeApiResponseBody.ErrorCodeSamples.ErrorCodeSample] = []
                for v in dict["ErrorCodeSample"] as! [Any] {
                    var model = DescribeApiResponseBody.ErrorCodeSamples.ErrorCodeSample()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.errorCodeSample = tmp
            }
        }
    }
    public class OpenIdConnectConfig : Tea.TeaModel {
        public var idTokenParamName: String?

        public var openIdApiType: String?

        public var publicKey: String?

        public var publicKeyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.idTokenParamName != nil {
                map["IdTokenParamName"] = self.idTokenParamName!
            }
            if self.openIdApiType != nil {
                map["OpenIdApiType"] = self.openIdApiType!
            }
            if self.publicKey != nil {
                map["PublicKey"] = self.publicKey!
            }
            if self.publicKeyId != nil {
                map["PublicKeyId"] = self.publicKeyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IdTokenParamName") && dict["IdTokenParamName"] != nil {
                self.idTokenParamName = dict["IdTokenParamName"] as! String
            }
            if dict.keys.contains("OpenIdApiType") && dict["OpenIdApiType"] != nil {
                self.openIdApiType = dict["OpenIdApiType"] as! String
            }
            if dict.keys.contains("PublicKey") && dict["PublicKey"] != nil {
                self.publicKey = dict["PublicKey"] as! String
            }
            if dict.keys.contains("PublicKeyId") && dict["PublicKeyId"] != nil {
                self.publicKeyId = dict["PublicKeyId"] as! String
            }
        }
    }
    public class ParametersMapObject : Tea.TeaModel {
        public class ServiceParameterMap : Tea.TeaModel {
            public var requestParameterName: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.requestParameterName != nil {
                    map["RequestParameterName"] = self.requestParameterName!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RequestParameterName") && dict["RequestParameterName"] != nil {
                    self.requestParameterName = dict["RequestParameterName"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var serviceParameterMap: [DescribeApiResponseBody.ParametersMapObject.ServiceParameterMap]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serviceParameterMap != nil {
                var tmp : [Any] = []
                for k in self.serviceParameterMap! {
                    tmp.append(k.toMap())
                }
                map["ServiceParameterMap"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ServiceParameterMap") && dict["ServiceParameterMap"] != nil {
                var tmp : [DescribeApiResponseBody.ParametersMapObject.ServiceParameterMap] = []
                for v in dict["ServiceParameterMap"] as! [Any] {
                    var model = DescribeApiResponseBody.ParametersMapObject.ServiceParameterMap()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serviceParameterMap = tmp
            }
        }
    }
    public class RequestConfig : Tea.TeaModel {
        public var bodyFormat: String?

        public var postBodyDescription: String?

        public var requestHttpMethod: String?

        public var requestMode: String?

        public var requestPath: String?

        public var requestProtocol: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bodyFormat != nil {
                map["BodyFormat"] = self.bodyFormat!
            }
            if self.postBodyDescription != nil {
                map["PostBodyDescription"] = self.postBodyDescription!
            }
            if self.requestHttpMethod != nil {
                map["RequestHttpMethod"] = self.requestHttpMethod!
            }
            if self.requestMode != nil {
                map["RequestMode"] = self.requestMode!
            }
            if self.requestPath != nil {
                map["RequestPath"] = self.requestPath!
            }
            if self.requestProtocol != nil {
                map["RequestProtocol"] = self.requestProtocol!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BodyFormat") && dict["BodyFormat"] != nil {
                self.bodyFormat = dict["BodyFormat"] as! String
            }
            if dict.keys.contains("PostBodyDescription") && dict["PostBodyDescription"] != nil {
                self.postBodyDescription = dict["PostBodyDescription"] as! String
            }
            if dict.keys.contains("RequestHttpMethod") && dict["RequestHttpMethod"] != nil {
                self.requestHttpMethod = dict["RequestHttpMethod"] as! String
            }
            if dict.keys.contains("RequestMode") && dict["RequestMode"] != nil {
                self.requestMode = dict["RequestMode"] as! String
            }
            if dict.keys.contains("RequestPath") && dict["RequestPath"] != nil {
                self.requestPath = dict["RequestPath"] as! String
            }
            if dict.keys.contains("RequestProtocol") && dict["RequestProtocol"] != nil {
                self.requestProtocol = dict["RequestProtocol"] as! String
            }
        }
    }
    public class RequestParametersObject : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var location: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.maxValue != nil {
                    map["MaxValue"] = self.maxValue!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                if self.minValue != nil {
                    map["MinValue"] = self.minValue!
                }
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
            }
        }
        public var requestParam: [DescribeApiResponseBody.RequestParametersObject.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeApiResponseBody.RequestParametersObject.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeApiResponseBody.RequestParametersObject.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class ServiceConfig : Tea.TeaModel {
        public class FunctionComputeConfig : Tea.TeaModel {
            public var fcRegionId: String?

            public var functionName: String?

            public var roleArn: String?

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
                if self.fcRegionId != nil {
                    map["FcRegionId"] = self.fcRegionId!
                }
                if self.functionName != nil {
                    map["FunctionName"] = self.functionName!
                }
                if self.roleArn != nil {
                    map["RoleArn"] = self.roleArn!
                }
                if self.serviceName != nil {
                    map["ServiceName"] = self.serviceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FcRegionId") && dict["FcRegionId"] != nil {
                    self.fcRegionId = dict["FcRegionId"] as! String
                }
                if dict.keys.contains("FunctionName") && dict["FunctionName"] != nil {
                    self.functionName = dict["FunctionName"] as! String
                }
                if dict.keys.contains("RoleArn") && dict["RoleArn"] != nil {
                    self.roleArn = dict["RoleArn"] as! String
                }
                if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                    self.serviceName = dict["ServiceName"] as! String
                }
            }
        }
        public class VpcConfig : Tea.TeaModel {
            public var id: String?

            public var instanceId: String?

            public var name: String?

            public var port: Int32?

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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Port") && dict["Port"] != nil {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public var aoneAppName: String?

        public var contentTypeCatagory: String?

        public var contentTypeValue: String?

        public var functionComputeConfig: DescribeApiResponseBody.ServiceConfig.FunctionComputeConfig?

        public var mock: String?

        public var mockResult: String?

        public var serviceAddress: String?

        public var serviceHttpMethod: String?

        public var servicePath: String?

        public var serviceProtocol: String?

        public var serviceTimeout: String?

        public var serviceVpcEnable: String?

        public var vpcConfig: DescribeApiResponseBody.ServiceConfig.VpcConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.functionComputeConfig?.validate()
            try self.vpcConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aoneAppName != nil {
                map["AoneAppName"] = self.aoneAppName!
            }
            if self.contentTypeCatagory != nil {
                map["ContentTypeCatagory"] = self.contentTypeCatagory!
            }
            if self.contentTypeValue != nil {
                map["ContentTypeValue"] = self.contentTypeValue!
            }
            if self.functionComputeConfig != nil {
                map["FunctionComputeConfig"] = self.functionComputeConfig?.toMap()
            }
            if self.mock != nil {
                map["Mock"] = self.mock!
            }
            if self.mockResult != nil {
                map["MockResult"] = self.mockResult!
            }
            if self.serviceAddress != nil {
                map["ServiceAddress"] = self.serviceAddress!
            }
            if self.serviceHttpMethod != nil {
                map["ServiceHttpMethod"] = self.serviceHttpMethod!
            }
            if self.servicePath != nil {
                map["ServicePath"] = self.servicePath!
            }
            if self.serviceProtocol != nil {
                map["ServiceProtocol"] = self.serviceProtocol!
            }
            if self.serviceTimeout != nil {
                map["ServiceTimeout"] = self.serviceTimeout!
            }
            if self.serviceVpcEnable != nil {
                map["ServiceVpcEnable"] = self.serviceVpcEnable!
            }
            if self.vpcConfig != nil {
                map["VpcConfig"] = self.vpcConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AoneAppName") && dict["AoneAppName"] != nil {
                self.aoneAppName = dict["AoneAppName"] as! String
            }
            if dict.keys.contains("ContentTypeCatagory") && dict["ContentTypeCatagory"] != nil {
                self.contentTypeCatagory = dict["ContentTypeCatagory"] as! String
            }
            if dict.keys.contains("ContentTypeValue") && dict["ContentTypeValue"] != nil {
                self.contentTypeValue = dict["ContentTypeValue"] as! String
            }
            if dict.keys.contains("FunctionComputeConfig") && dict["FunctionComputeConfig"] != nil {
                var model = DescribeApiResponseBody.ServiceConfig.FunctionComputeConfig()
                model.fromMap(dict["FunctionComputeConfig"] as! [String: Any])
                self.functionComputeConfig = model
            }
            if dict.keys.contains("Mock") && dict["Mock"] != nil {
                self.mock = dict["Mock"] as! String
            }
            if dict.keys.contains("MockResult") && dict["MockResult"] != nil {
                self.mockResult = dict["MockResult"] as! String
            }
            if dict.keys.contains("ServiceAddress") && dict["ServiceAddress"] != nil {
                self.serviceAddress = dict["ServiceAddress"] as! String
            }
            if dict.keys.contains("ServiceHttpMethod") && dict["ServiceHttpMethod"] != nil {
                self.serviceHttpMethod = dict["ServiceHttpMethod"] as! String
            }
            if dict.keys.contains("ServicePath") && dict["ServicePath"] != nil {
                self.servicePath = dict["ServicePath"] as! String
            }
            if dict.keys.contains("ServiceProtocol") && dict["ServiceProtocol"] != nil {
                self.serviceProtocol = dict["ServiceProtocol"] as! String
            }
            if dict.keys.contains("ServiceTimeout") && dict["ServiceTimeout"] != nil {
                self.serviceTimeout = dict["ServiceTimeout"] as! String
            }
            if dict.keys.contains("ServiceVpcEnable") && dict["ServiceVpcEnable"] != nil {
                self.serviceVpcEnable = dict["ServiceVpcEnable"] as! String
            }
            if dict.keys.contains("VpcConfig") && dict["VpcConfig"] != nil {
                var model = DescribeApiResponseBody.ServiceConfig.VpcConfig()
                model.fromMap(dict["VpcConfig"] as! [String: Any])
                self.vpcConfig = model
            }
        }
    }
    public class ServiceParametersObject : Tea.TeaModel {
        public class ServiceParam : Tea.TeaModel {
            public var location: String?

            public var serviceParameterName: String?

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
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var serviceParam: [DescribeApiResponseBody.ServiceParametersObject.ServiceParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serviceParam != nil {
                var tmp : [Any] = []
                for k in self.serviceParam! {
                    tmp.append(k.toMap())
                }
                map["ServiceParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ServiceParam") && dict["ServiceParam"] != nil {
                var tmp : [DescribeApiResponseBody.ServiceParametersObject.ServiceParam] = []
                for v in dict["ServiceParam"] as! [Any] {
                    var model = DescribeApiResponseBody.ServiceParametersObject.ServiceParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serviceParam = tmp
            }
        }
    }
    public class SystemParameters : Tea.TeaModel {
        public class SystemParameter : Tea.TeaModel {
            public var demoValue: String?

            public var description_: String?

            public var location: String?

            public var parameterName: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ParameterName") && dict["ParameterName"] != nil {
                    self.parameterName = dict["ParameterName"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var systemParameter: [DescribeApiResponseBody.SystemParameters.SystemParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.systemParameter != nil {
                var tmp : [Any] = []
                for k in self.systemParameter! {
                    tmp.append(k.toMap())
                }
                map["SystemParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SystemParameter") && dict["SystemParameter"] != nil {
                var tmp : [DescribeApiResponseBody.SystemParameters.SystemParameter] = []
                for v in dict["SystemParameter"] as! [Any] {
                    var model = DescribeApiResponseBody.SystemParameters.SystemParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.systemParameter = tmp
            }
        }
    }
    public var allowSignatureMethod: String?

    public var apiId: String?

    public var apiName: String?

    public var authType: String?

    public var constantParameters: DescribeApiResponseBody.ConstantParameters?

    public var createdTime: String?

    public var customSystemParameters: DescribeApiResponseBody.CustomSystemParameters?

    public var deployedInfos: DescribeApiResponseBody.DeployedInfos?

    public var description_: String?

    public var errorCodeSamples: DescribeApiResponseBody.ErrorCodeSamples?

    public var failResultSample: String?

    public var groupId: String?

    public var groupName: String?

    public var mock: String?

    public var mockResult: String?

    public var modifiedTime: String?

    public var openIdConnectConfig: DescribeApiResponseBody.OpenIdConnectConfig?

    public var originResultDescription: String?

    public var parametersMapObject: DescribeApiResponseBody.ParametersMapObject?

    public var regionId: String?

    public var requestConfig: DescribeApiResponseBody.RequestConfig?

    public var requestId: String?

    public var requestParametersObject: DescribeApiResponseBody.RequestParametersObject?

    public var resultSample: String?

    public var resultType: String?

    public var serviceConfig: DescribeApiResponseBody.ServiceConfig?

    public var serviceParametersObject: DescribeApiResponseBody.ServiceParametersObject?

    public var systemParameters: DescribeApiResponseBody.SystemParameters?

    public var visibility: String?

    public var webSocketApiType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.constantParameters?.validate()
        try self.customSystemParameters?.validate()
        try self.deployedInfos?.validate()
        try self.errorCodeSamples?.validate()
        try self.openIdConnectConfig?.validate()
        try self.parametersMapObject?.validate()
        try self.requestConfig?.validate()
        try self.requestParametersObject?.validate()
        try self.serviceConfig?.validate()
        try self.serviceParametersObject?.validate()
        try self.systemParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowSignatureMethod != nil {
            map["AllowSignatureMethod"] = self.allowSignatureMethod!
        }
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.constantParameters != nil {
            map["ConstantParameters"] = self.constantParameters?.toMap()
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.customSystemParameters != nil {
            map["CustomSystemParameters"] = self.customSystemParameters?.toMap()
        }
        if self.deployedInfos != nil {
            map["DeployedInfos"] = self.deployedInfos?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.errorCodeSamples != nil {
            map["ErrorCodeSamples"] = self.errorCodeSamples?.toMap()
        }
        if self.failResultSample != nil {
            map["FailResultSample"] = self.failResultSample!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.mock != nil {
            map["Mock"] = self.mock!
        }
        if self.mockResult != nil {
            map["MockResult"] = self.mockResult!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.openIdConnectConfig != nil {
            map["OpenIdConnectConfig"] = self.openIdConnectConfig?.toMap()
        }
        if self.originResultDescription != nil {
            map["OriginResultDescription"] = self.originResultDescription!
        }
        if self.parametersMapObject != nil {
            map["ParametersMapObject"] = self.parametersMapObject?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestConfig != nil {
            map["RequestConfig"] = self.requestConfig?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requestParametersObject != nil {
            map["RequestParametersObject"] = self.requestParametersObject?.toMap()
        }
        if self.resultSample != nil {
            map["ResultSample"] = self.resultSample!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.serviceConfig != nil {
            map["ServiceConfig"] = self.serviceConfig?.toMap()
        }
        if self.serviceParametersObject != nil {
            map["ServiceParametersObject"] = self.serviceParametersObject?.toMap()
        }
        if self.systemParameters != nil {
            map["SystemParameters"] = self.systemParameters?.toMap()
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        if self.webSocketApiType != nil {
            map["WebSocketApiType"] = self.webSocketApiType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowSignatureMethod") && dict["AllowSignatureMethod"] != nil {
            self.allowSignatureMethod = dict["AllowSignatureMethod"] as! String
        }
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("ConstantParameters") && dict["ConstantParameters"] != nil {
            var model = DescribeApiResponseBody.ConstantParameters()
            model.fromMap(dict["ConstantParameters"] as! [String: Any])
            self.constantParameters = model
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("CustomSystemParameters") && dict["CustomSystemParameters"] != nil {
            var model = DescribeApiResponseBody.CustomSystemParameters()
            model.fromMap(dict["CustomSystemParameters"] as! [String: Any])
            self.customSystemParameters = model
        }
        if dict.keys.contains("DeployedInfos") && dict["DeployedInfos"] != nil {
            var model = DescribeApiResponseBody.DeployedInfos()
            model.fromMap(dict["DeployedInfos"] as! [String: Any])
            self.deployedInfos = model
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ErrorCodeSamples") && dict["ErrorCodeSamples"] != nil {
            var model = DescribeApiResponseBody.ErrorCodeSamples()
            model.fromMap(dict["ErrorCodeSamples"] as! [String: Any])
            self.errorCodeSamples = model
        }
        if dict.keys.contains("FailResultSample") && dict["FailResultSample"] != nil {
            self.failResultSample = dict["FailResultSample"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("Mock") && dict["Mock"] != nil {
            self.mock = dict["Mock"] as! String
        }
        if dict.keys.contains("MockResult") && dict["MockResult"] != nil {
            self.mockResult = dict["MockResult"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("OpenIdConnectConfig") && dict["OpenIdConnectConfig"] != nil {
            var model = DescribeApiResponseBody.OpenIdConnectConfig()
            model.fromMap(dict["OpenIdConnectConfig"] as! [String: Any])
            self.openIdConnectConfig = model
        }
        if dict.keys.contains("OriginResultDescription") && dict["OriginResultDescription"] != nil {
            self.originResultDescription = dict["OriginResultDescription"] as! String
        }
        if dict.keys.contains("ParametersMapObject") && dict["ParametersMapObject"] != nil {
            var model = DescribeApiResponseBody.ParametersMapObject()
            model.fromMap(dict["ParametersMapObject"] as! [String: Any])
            self.parametersMapObject = model
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestConfig") && dict["RequestConfig"] != nil {
            var model = DescribeApiResponseBody.RequestConfig()
            model.fromMap(dict["RequestConfig"] as! [String: Any])
            self.requestConfig = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RequestParametersObject") && dict["RequestParametersObject"] != nil {
            var model = DescribeApiResponseBody.RequestParametersObject()
            model.fromMap(dict["RequestParametersObject"] as! [String: Any])
            self.requestParametersObject = model
        }
        if dict.keys.contains("ResultSample") && dict["ResultSample"] != nil {
            self.resultSample = dict["ResultSample"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("ServiceConfig") && dict["ServiceConfig"] != nil {
            var model = DescribeApiResponseBody.ServiceConfig()
            model.fromMap(dict["ServiceConfig"] as! [String: Any])
            self.serviceConfig = model
        }
        if dict.keys.contains("ServiceParametersObject") && dict["ServiceParametersObject"] != nil {
            var model = DescribeApiResponseBody.ServiceParametersObject()
            model.fromMap(dict["ServiceParametersObject"] as! [String: Any])
            self.serviceParametersObject = model
        }
        if dict.keys.contains("SystemParameters") && dict["SystemParameters"] != nil {
            var model = DescribeApiResponseBody.SystemParameters()
            model.fromMap(dict["SystemParameters"] as! [String: Any])
            self.systemParameters = model
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
        if dict.keys.contains("WebSocketApiType") && dict["WebSocketApiType"] != nil {
            self.webSocketApiType = dict["WebSocketApiType"] as! String
        }
    }
}

public class DescribeApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiResponseBody?

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
            var model = DescribeApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiDocRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeApiDocResponseBody : Tea.TeaModel {
    public class ErrorCodeSamples : Tea.TeaModel {
        public class ErrorCodeSample : Tea.TeaModel {
            public var code: String?

            public var description_: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var errorCodeSample: [DescribeApiDocResponseBody.ErrorCodeSamples.ErrorCodeSample]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCodeSample != nil {
                var tmp : [Any] = []
                for k in self.errorCodeSample! {
                    tmp.append(k.toMap())
                }
                map["ErrorCodeSample"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCodeSample") && dict["ErrorCodeSample"] != nil {
                var tmp : [DescribeApiDocResponseBody.ErrorCodeSamples.ErrorCodeSample] = []
                for v in dict["ErrorCodeSample"] as! [Any] {
                    var model = DescribeApiDocResponseBody.ErrorCodeSamples.ErrorCodeSample()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.errorCodeSample = tmp
            }
        }
    }
    public class PathParameters : Tea.TeaModel {
        public class PathParameter : Tea.TeaModel {
            public var apiParameterName: String?

            public var demoValue: String?

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
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
            }
        }
        public var pathParameter: [DescribeApiDocResponseBody.PathParameters.PathParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pathParameter != nil {
                var tmp : [Any] = []
                for k in self.pathParameter! {
                    tmp.append(k.toMap())
                }
                map["PathParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PathParameter") && dict["PathParameter"] != nil {
                var tmp : [DescribeApiDocResponseBody.PathParameters.PathParameter] = []
                for v in dict["PathParameter"] as! [Any] {
                    var model = DescribeApiDocResponseBody.PathParameters.PathParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pathParameter = tmp
            }
        }
    }
    public class RequestBody : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.maxValue != nil {
                    map["MaxValue"] = self.maxValue!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                if self.minValue != nil {
                    map["MinValue"] = self.minValue!
                }
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
            }
        }
        public var requestParam: [DescribeApiDocResponseBody.RequestBody.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeApiDocResponseBody.RequestBody.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeApiDocResponseBody.RequestBody.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class RequestHeaders : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.maxValue != nil {
                    map["MaxValue"] = self.maxValue!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                if self.minValue != nil {
                    map["MinValue"] = self.minValue!
                }
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
            }
        }
        public var requestParam: [DescribeApiDocResponseBody.RequestHeaders.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeApiDocResponseBody.RequestHeaders.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeApiDocResponseBody.RequestHeaders.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class RequestQueries : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.maxValue != nil {
                    map["MaxValue"] = self.maxValue!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                if self.minValue != nil {
                    map["MinValue"] = self.minValue!
                }
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
            }
        }
        public var requestParam: [DescribeApiDocResponseBody.RequestQueries.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeApiDocResponseBody.RequestQueries.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeApiDocResponseBody.RequestQueries.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public var apiId: String?

    public var apiName: String?

    public var bodyFormat: String?

    public var deployedTime: String?

    public var description_: String?

    public var errorCodeSamples: DescribeApiDocResponseBody.ErrorCodeSamples?

    public var failResultSample: String?

    public var groupId: String?

    public var groupName: String?

    public var httpMethod: String?

    public var httpProtocol: String?

    public var mock: String?

    public var mockResult: String?

    public var originResultDescription: String?

    public var path: String?

    public var pathParameters: DescribeApiDocResponseBody.PathParameters?

    public var postBodyDescription: String?

    public var postBodyType: String?

    public var regionId: String?

    public var requestBody: DescribeApiDocResponseBody.RequestBody?

    public var requestHeaders: DescribeApiDocResponseBody.RequestHeaders?

    public var requestId: String?

    public var requestMode: String?

    public var requestQueries: DescribeApiDocResponseBody.RequestQueries?

    public var resultSample: String?

    public var resultType: String?

    public var serviceTimeout: Int32?

    public var serviceVpcEnable: String?

    public var stageName: String?

    public var vpcName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorCodeSamples?.validate()
        try self.pathParameters?.validate()
        try self.requestBody?.validate()
        try self.requestHeaders?.validate()
        try self.requestQueries?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.bodyFormat != nil {
            map["BodyFormat"] = self.bodyFormat!
        }
        if self.deployedTime != nil {
            map["DeployedTime"] = self.deployedTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.errorCodeSamples != nil {
            map["ErrorCodeSamples"] = self.errorCodeSamples?.toMap()
        }
        if self.failResultSample != nil {
            map["FailResultSample"] = self.failResultSample!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.httpMethod != nil {
            map["HttpMethod"] = self.httpMethod!
        }
        if self.httpProtocol != nil {
            map["HttpProtocol"] = self.httpProtocol!
        }
        if self.mock != nil {
            map["Mock"] = self.mock!
        }
        if self.mockResult != nil {
            map["MockResult"] = self.mockResult!
        }
        if self.originResultDescription != nil {
            map["OriginResultDescription"] = self.originResultDescription!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.pathParameters != nil {
            map["PathParameters"] = self.pathParameters?.toMap()
        }
        if self.postBodyDescription != nil {
            map["PostBodyDescription"] = self.postBodyDescription!
        }
        if self.postBodyType != nil {
            map["PostBodyType"] = self.postBodyType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestBody != nil {
            map["RequestBody"] = self.requestBody?.toMap()
        }
        if self.requestHeaders != nil {
            map["RequestHeaders"] = self.requestHeaders?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requestMode != nil {
            map["RequestMode"] = self.requestMode!
        }
        if self.requestQueries != nil {
            map["RequestQueries"] = self.requestQueries?.toMap()
        }
        if self.resultSample != nil {
            map["ResultSample"] = self.resultSample!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.serviceTimeout != nil {
            map["ServiceTimeout"] = self.serviceTimeout!
        }
        if self.serviceVpcEnable != nil {
            map["ServiceVpcEnable"] = self.serviceVpcEnable!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        if self.vpcName != nil {
            map["VpcName"] = self.vpcName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("BodyFormat") && dict["BodyFormat"] != nil {
            self.bodyFormat = dict["BodyFormat"] as! String
        }
        if dict.keys.contains("DeployedTime") && dict["DeployedTime"] != nil {
            self.deployedTime = dict["DeployedTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ErrorCodeSamples") && dict["ErrorCodeSamples"] != nil {
            var model = DescribeApiDocResponseBody.ErrorCodeSamples()
            model.fromMap(dict["ErrorCodeSamples"] as! [String: Any])
            self.errorCodeSamples = model
        }
        if dict.keys.contains("FailResultSample") && dict["FailResultSample"] != nil {
            self.failResultSample = dict["FailResultSample"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("HttpMethod") && dict["HttpMethod"] != nil {
            self.httpMethod = dict["HttpMethod"] as! String
        }
        if dict.keys.contains("HttpProtocol") && dict["HttpProtocol"] != nil {
            self.httpProtocol = dict["HttpProtocol"] as! String
        }
        if dict.keys.contains("Mock") && dict["Mock"] != nil {
            self.mock = dict["Mock"] as! String
        }
        if dict.keys.contains("MockResult") && dict["MockResult"] != nil {
            self.mockResult = dict["MockResult"] as! String
        }
        if dict.keys.contains("OriginResultDescription") && dict["OriginResultDescription"] != nil {
            self.originResultDescription = dict["OriginResultDescription"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("PathParameters") && dict["PathParameters"] != nil {
            var model = DescribeApiDocResponseBody.PathParameters()
            model.fromMap(dict["PathParameters"] as! [String: Any])
            self.pathParameters = model
        }
        if dict.keys.contains("PostBodyDescription") && dict["PostBodyDescription"] != nil {
            self.postBodyDescription = dict["PostBodyDescription"] as! String
        }
        if dict.keys.contains("PostBodyType") && dict["PostBodyType"] != nil {
            self.postBodyType = dict["PostBodyType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestBody") && dict["RequestBody"] != nil {
            var model = DescribeApiDocResponseBody.RequestBody()
            model.fromMap(dict["RequestBody"] as! [String: Any])
            self.requestBody = model
        }
        if dict.keys.contains("RequestHeaders") && dict["RequestHeaders"] != nil {
            var model = DescribeApiDocResponseBody.RequestHeaders()
            model.fromMap(dict["RequestHeaders"] as! [String: Any])
            self.requestHeaders = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RequestMode") && dict["RequestMode"] != nil {
            self.requestMode = dict["RequestMode"] as! String
        }
        if dict.keys.contains("RequestQueries") && dict["RequestQueries"] != nil {
            var model = DescribeApiDocResponseBody.RequestQueries()
            model.fromMap(dict["RequestQueries"] as! [String: Any])
            self.requestQueries = model
        }
        if dict.keys.contains("ResultSample") && dict["ResultSample"] != nil {
            self.resultSample = dict["ResultSample"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("ServiceTimeout") && dict["ServiceTimeout"] != nil {
            self.serviceTimeout = dict["ServiceTimeout"] as! Int32
        }
        if dict.keys.contains("ServiceVpcEnable") && dict["ServiceVpcEnable"] != nil {
            self.serviceVpcEnable = dict["ServiceVpcEnable"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
        if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
            self.vpcName = dict["VpcName"] as! String
        }
    }
}

public class DescribeApiDocResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiDocResponseBody?

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
            var model = DescribeApiDocResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiDocsRequest : Tea.TeaModel {
    public var apiId: String?

    public var apiName: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeApiDocsResponseBody : Tea.TeaModel {
    public class ApiInfos : Tea.TeaModel {
        public class ApiInfo : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var deployedTime: String?

            public var description_: String?

            public var groupDescription: String?

            public var groupId: String?

            public var groupName: String?

            public var regionId: String?

            public var stageName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.deployedTime != nil {
                    map["DeployedTime"] = self.deployedTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupDescription != nil {
                    map["GroupDescription"] = self.groupDescription!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("DeployedTime") && dict["DeployedTime"] != nil {
                    self.deployedTime = dict["DeployedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupDescription") && dict["GroupDescription"] != nil {
                    self.groupDescription = dict["GroupDescription"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
            }
        }
        public var apiInfo: [DescribeApiDocsResponseBody.ApiInfos.ApiInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInfo != nil {
                var tmp : [Any] = []
                for k in self.apiInfo! {
                    tmp.append(k.toMap())
                }
                map["ApiInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInfo") && dict["ApiInfo"] != nil {
                var tmp : [DescribeApiDocsResponseBody.ApiInfos.ApiInfo] = []
                for v in dict["ApiInfo"] as! [Any] {
                    var model = DescribeApiDocsResponseBody.ApiInfos.ApiInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiInfo = tmp
            }
        }
    }
    public var apiInfos: DescribeApiDocsResponseBody.ApiInfos?

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
        try self.apiInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfos != nil {
            map["ApiInfos"] = self.apiInfos?.toMap()
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
        if dict.keys.contains("ApiInfos") && dict["ApiInfos"] != nil {
            var model = DescribeApiDocsResponseBody.ApiInfos()
            model.fromMap(dict["ApiInfos"] as! [String: Any])
            self.apiInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApiDocsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiDocsResponseBody?

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
            var model = DescribeApiDocsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiErrorRequest : Tea.TeaModel {
    public var apiId: String?

    public var endTime: String?

    public var groupId: String?

    public var securityToken: String?

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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeApiErrorResponseBody : Tea.TeaModel {
    public class ClientErrors : Tea.TeaModel {
        public class ClientError : Tea.TeaModel {
            public var time: String?

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
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var clientError: [DescribeApiErrorResponseBody.ClientErrors.ClientError]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientError != nil {
                var tmp : [Any] = []
                for k in self.clientError! {
                    tmp.append(k.toMap())
                }
                map["ClientError"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientError") && dict["ClientError"] != nil {
                var tmp : [DescribeApiErrorResponseBody.ClientErrors.ClientError] = []
                for v in dict["ClientError"] as! [Any] {
                    var model = DescribeApiErrorResponseBody.ClientErrors.ClientError()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.clientError = tmp
            }
        }
    }
    public class ServerErrors : Tea.TeaModel {
        public class ServerError : Tea.TeaModel {
            public var time: String?

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
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var serverError: [DescribeApiErrorResponseBody.ServerErrors.ServerError]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serverError != nil {
                var tmp : [Any] = []
                for k in self.serverError! {
                    tmp.append(k.toMap())
                }
                map["ServerError"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ServerError") && dict["ServerError"] != nil {
                var tmp : [DescribeApiErrorResponseBody.ServerErrors.ServerError] = []
                for v in dict["ServerError"] as! [Any] {
                    var model = DescribeApiErrorResponseBody.ServerErrors.ServerError()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serverError = tmp
            }
        }
    }
    public var clientErrors: DescribeApiErrorResponseBody.ClientErrors?

    public var requestId: String?

    public var serverErrors: DescribeApiErrorResponseBody.ServerErrors?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clientErrors?.validate()
        try self.serverErrors?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientErrors != nil {
            map["ClientErrors"] = self.clientErrors?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serverErrors != nil {
            map["ServerErrors"] = self.serverErrors?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientErrors") && dict["ClientErrors"] != nil {
            var model = DescribeApiErrorResponseBody.ClientErrors()
            model.fromMap(dict["ClientErrors"] as! [String: Any])
            self.clientErrors = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServerErrors") && dict["ServerErrors"] != nil {
            var model = DescribeApiErrorResponseBody.ServerErrors()
            model.fromMap(dict["ServerErrors"] as! [String: Any])
            self.serverErrors = model
        }
    }
}

public class DescribeApiErrorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiErrorResponseBody?

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
            var model = DescribeApiErrorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiGroupDetailRequest : Tea.TeaModel {
    public var groupId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeApiGroupDetailResponseBody : Tea.TeaModel {
    public class DomainItems : Tea.TeaModel {
        public class DomainItem : Tea.TeaModel {
            public var certificateId: String?

            public var certificateName: String?

            public var domainBindingStatus: String?

            public var domainLegalStatus: String?

            public var domainName: String?

            public var domainNameResolution: String?

            public var domainRemark: String?

            public var domainWebSocketStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.certificateId != nil {
                    map["CertificateId"] = self.certificateId!
                }
                if self.certificateName != nil {
                    map["CertificateName"] = self.certificateName!
                }
                if self.domainBindingStatus != nil {
                    map["DomainBindingStatus"] = self.domainBindingStatus!
                }
                if self.domainLegalStatus != nil {
                    map["DomainLegalStatus"] = self.domainLegalStatus!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.domainNameResolution != nil {
                    map["DomainNameResolution"] = self.domainNameResolution!
                }
                if self.domainRemark != nil {
                    map["DomainRemark"] = self.domainRemark!
                }
                if self.domainWebSocketStatus != nil {
                    map["DomainWebSocketStatus"] = self.domainWebSocketStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
                    self.certificateId = dict["CertificateId"] as! String
                }
                if dict.keys.contains("CertificateName") && dict["CertificateName"] != nil {
                    self.certificateName = dict["CertificateName"] as! String
                }
                if dict.keys.contains("DomainBindingStatus") && dict["DomainBindingStatus"] != nil {
                    self.domainBindingStatus = dict["DomainBindingStatus"] as! String
                }
                if dict.keys.contains("DomainLegalStatus") && dict["DomainLegalStatus"] != nil {
                    self.domainLegalStatus = dict["DomainLegalStatus"] as! String
                }
                if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("DomainNameResolution") && dict["DomainNameResolution"] != nil {
                    self.domainNameResolution = dict["DomainNameResolution"] as! String
                }
                if dict.keys.contains("DomainRemark") && dict["DomainRemark"] != nil {
                    self.domainRemark = dict["DomainRemark"] as! String
                }
                if dict.keys.contains("DomainWebSocketStatus") && dict["DomainWebSocketStatus"] != nil {
                    self.domainWebSocketStatus = dict["DomainWebSocketStatus"] as! String
                }
            }
        }
        public var domainItem: [DescribeApiGroupDetailResponseBody.DomainItems.DomainItem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainItem != nil {
                var tmp : [Any] = []
                for k in self.domainItem! {
                    tmp.append(k.toMap())
                }
                map["DomainItem"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainItem") && dict["DomainItem"] != nil {
                var tmp : [DescribeApiGroupDetailResponseBody.DomainItems.DomainItem] = []
                for v in dict["DomainItem"] as! [Any] {
                    var model = DescribeApiGroupDetailResponseBody.DomainItems.DomainItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domainItem = tmp
            }
        }
    }
    public class StageItems : Tea.TeaModel {
        public class StageInfo : Tea.TeaModel {
            public var description_: String?

            public var stageId: String?

            public var stageName: String?

            public override init() {
                super.init()
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
                if self.stageId != nil {
                    map["StageId"] = self.stageId!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("StageId") && dict["StageId"] != nil {
                    self.stageId = dict["StageId"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
            }
        }
        public var stageInfo: [DescribeApiGroupDetailResponseBody.StageItems.StageInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.stageInfo != nil {
                var tmp : [Any] = []
                for k in self.stageInfo! {
                    tmp.append(k.toMap())
                }
                map["StageInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("StageInfo") && dict["StageInfo"] != nil {
                var tmp : [DescribeApiGroupDetailResponseBody.StageItems.StageInfo] = []
                for v in dict["StageInfo"] as! [Any] {
                    var model = DescribeApiGroupDetailResponseBody.StageItems.StageInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.stageInfo = tmp
            }
        }
    }
    public var billingStatus: String?

    public var createdTime: String?

    public var description_: String?

    public var domainItems: DescribeApiGroupDetailResponseBody.DomainItems?

    public var groupId: String?

    public var groupName: String?

    public var illegalStatus: String?

    public var modifiedTime: String?

    public var regionId: String?

    public var requestId: String?

    public var stageItems: DescribeApiGroupDetailResponseBody.StageItems?

    public var status: String?

    public var subDomain: String?

    public var trafficLimit: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainItems?.validate()
        try self.stageItems?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billingStatus != nil {
            map["BillingStatus"] = self.billingStatus!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.domainItems != nil {
            map["DomainItems"] = self.domainItems?.toMap()
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.illegalStatus != nil {
            map["IllegalStatus"] = self.illegalStatus!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stageItems != nil {
            map["StageItems"] = self.stageItems?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        if self.trafficLimit != nil {
            map["TrafficLimit"] = self.trafficLimit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillingStatus") && dict["BillingStatus"] != nil {
            self.billingStatus = dict["BillingStatus"] as! String
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DomainItems") && dict["DomainItems"] != nil {
            var model = DescribeApiGroupDetailResponseBody.DomainItems()
            model.fromMap(dict["DomainItems"] as! [String: Any])
            self.domainItems = model
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("IllegalStatus") && dict["IllegalStatus"] != nil {
            self.illegalStatus = dict["IllegalStatus"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StageItems") && dict["StageItems"] != nil {
            var model = DescribeApiGroupDetailResponseBody.StageItems()
            model.fromMap(dict["StageItems"] as! [String: Any])
            self.stageItems = model
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
            self.subDomain = dict["SubDomain"] as! String
        }
        if dict.keys.contains("TrafficLimit") && dict["TrafficLimit"] != nil {
            self.trafficLimit = dict["TrafficLimit"] as! Int32
        }
    }
}

public class DescribeApiGroupDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiGroupDetailResponseBody?

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
            var model = DescribeApiGroupDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiGroupDetailForConsumerRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeApiGroupDetailForConsumerResponseBody : Tea.TeaModel {
    public class DomainItems : Tea.TeaModel {
        public class DomainItem : Tea.TeaModel {
            public var certificateId: String?

            public var certificateName: String?

            public var domainName: String?

            public var domainNameResolution: String?

            public var domainStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.certificateId != nil {
                    map["CertificateId"] = self.certificateId!
                }
                if self.certificateName != nil {
                    map["CertificateName"] = self.certificateName!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.domainNameResolution != nil {
                    map["DomainNameResolution"] = self.domainNameResolution!
                }
                if self.domainStatus != nil {
                    map["DomainStatus"] = self.domainStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
                    self.certificateId = dict["CertificateId"] as! String
                }
                if dict.keys.contains("CertificateName") && dict["CertificateName"] != nil {
                    self.certificateName = dict["CertificateName"] as! String
                }
                if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("DomainNameResolution") && dict["DomainNameResolution"] != nil {
                    self.domainNameResolution = dict["DomainNameResolution"] as! String
                }
                if dict.keys.contains("DomainStatus") && dict["DomainStatus"] != nil {
                    self.domainStatus = dict["DomainStatus"] as! String
                }
            }
        }
        public var domainItem: [DescribeApiGroupDetailForConsumerResponseBody.DomainItems.DomainItem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainItem != nil {
                var tmp : [Any] = []
                for k in self.domainItem! {
                    tmp.append(k.toMap())
                }
                map["DomainItem"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainItem") && dict["DomainItem"] != nil {
                var tmp : [DescribeApiGroupDetailForConsumerResponseBody.DomainItems.DomainItem] = []
                for v in dict["DomainItem"] as! [Any] {
                    var model = DescribeApiGroupDetailForConsumerResponseBody.DomainItems.DomainItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domainItem = tmp
            }
        }
    }
    public var billingStatus: String?

    public var createdTime: String?

    public var description_: String?

    public var domainItems: DescribeApiGroupDetailForConsumerResponseBody.DomainItems?

    public var groupId: String?

    public var groupName: String?

    public var illegalStatus: String?

    public var modifiedTime: String?

    public var purchased: String?

    public var regionId: String?

    public var requestId: String?

    public var status: String?

    public var subDomain: String?

    public var trafficLimit: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainItems?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billingStatus != nil {
            map["BillingStatus"] = self.billingStatus!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.domainItems != nil {
            map["DomainItems"] = self.domainItems?.toMap()
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.illegalStatus != nil {
            map["IllegalStatus"] = self.illegalStatus!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.purchased != nil {
            map["Purchased"] = self.purchased!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        if self.trafficLimit != nil {
            map["TrafficLimit"] = self.trafficLimit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillingStatus") && dict["BillingStatus"] != nil {
            self.billingStatus = dict["BillingStatus"] as! String
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DomainItems") && dict["DomainItems"] != nil {
            var model = DescribeApiGroupDetailForConsumerResponseBody.DomainItems()
            model.fromMap(dict["DomainItems"] as! [String: Any])
            self.domainItems = model
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("IllegalStatus") && dict["IllegalStatus"] != nil {
            self.illegalStatus = dict["IllegalStatus"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("Purchased") && dict["Purchased"] != nil {
            self.purchased = dict["Purchased"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
            self.subDomain = dict["SubDomain"] as! String
        }
        if dict.keys.contains("TrafficLimit") && dict["TrafficLimit"] != nil {
            self.trafficLimit = dict["TrafficLimit"] as! Int32
        }
    }
}

public class DescribeApiGroupDetailForConsumerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiGroupDetailForConsumerResponseBody?

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
            var model = DescribeApiGroupDetailForConsumerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiGroupsRequest : Tea.TeaModel {
    public var groupId: String?

    public var groupName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeApiGroupsResponseBody : Tea.TeaModel {
    public class ApiGroupAttributes : Tea.TeaModel {
        public class ApiGroupAttribute : Tea.TeaModel {
            public var billingStatus: String?

            public var createdTime: String?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var illegalStatus: String?

            public var modifiedTime: String?

            public var regionId: String?

            public var subDomain: String?

            public var trafficLimit: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.billingStatus != nil {
                    map["BillingStatus"] = self.billingStatus!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.illegalStatus != nil {
                    map["IllegalStatus"] = self.illegalStatus!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.subDomain != nil {
                    map["SubDomain"] = self.subDomain!
                }
                if self.trafficLimit != nil {
                    map["TrafficLimit"] = self.trafficLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BillingStatus") && dict["BillingStatus"] != nil {
                    self.billingStatus = dict["BillingStatus"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("IllegalStatus") && dict["IllegalStatus"] != nil {
                    self.illegalStatus = dict["IllegalStatus"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
                    self.subDomain = dict["SubDomain"] as! String
                }
                if dict.keys.contains("TrafficLimit") && dict["TrafficLimit"] != nil {
                    self.trafficLimit = dict["TrafficLimit"] as! Int32
                }
            }
        }
        public var apiGroupAttribute: [DescribeApiGroupsResponseBody.ApiGroupAttributes.ApiGroupAttribute]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiGroupAttribute != nil {
                var tmp : [Any] = []
                for k in self.apiGroupAttribute! {
                    tmp.append(k.toMap())
                }
                map["ApiGroupAttribute"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiGroupAttribute") && dict["ApiGroupAttribute"] != nil {
                var tmp : [DescribeApiGroupsResponseBody.ApiGroupAttributes.ApiGroupAttribute] = []
                for v in dict["ApiGroupAttribute"] as! [Any] {
                    var model = DescribeApiGroupsResponseBody.ApiGroupAttributes.ApiGroupAttribute()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiGroupAttribute = tmp
            }
        }
    }
    public var apiGroupAttributes: DescribeApiGroupsResponseBody.ApiGroupAttributes?

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
        try self.apiGroupAttributes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiGroupAttributes != nil {
            map["ApiGroupAttributes"] = self.apiGroupAttributes?.toMap()
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
        if dict.keys.contains("ApiGroupAttributes") && dict["ApiGroupAttributes"] != nil {
            var model = DescribeApiGroupsResponseBody.ApiGroupAttributes()
            model.fromMap(dict["ApiGroupAttributes"] as! [String: Any])
            self.apiGroupAttributes = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApiGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiGroupsResponseBody?

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
            var model = DescribeApiGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiIpControlsRequest : Tea.TeaModel {
    public var apiIds: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiIds != nil {
            map["ApiIds"] = self.apiIds!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiIds") && dict["ApiIds"] != nil {
            self.apiIds = dict["ApiIds"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeApiIpControlsResponseBody : Tea.TeaModel {
    public class ApiIpControls : Tea.TeaModel {
        public class ApiIpControlItem : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var boundTime: String?

            public var ipControlId: String?

            public var ipControlName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.boundTime != nil {
                    map["BoundTime"] = self.boundTime!
                }
                if self.ipControlId != nil {
                    map["IpControlId"] = self.ipControlId!
                }
                if self.ipControlName != nil {
                    map["IpControlName"] = self.ipControlName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("BoundTime") && dict["BoundTime"] != nil {
                    self.boundTime = dict["BoundTime"] as! String
                }
                if dict.keys.contains("IpControlId") && dict["IpControlId"] != nil {
                    self.ipControlId = dict["IpControlId"] as! String
                }
                if dict.keys.contains("IpControlName") && dict["IpControlName"] != nil {
                    self.ipControlName = dict["IpControlName"] as! String
                }
            }
        }
        public var apiIpControlItem: [DescribeApiIpControlsResponseBody.ApiIpControls.ApiIpControlItem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiIpControlItem != nil {
                var tmp : [Any] = []
                for k in self.apiIpControlItem! {
                    tmp.append(k.toMap())
                }
                map["ApiIpControlItem"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiIpControlItem") && dict["ApiIpControlItem"] != nil {
                var tmp : [DescribeApiIpControlsResponseBody.ApiIpControls.ApiIpControlItem] = []
                for v in dict["ApiIpControlItem"] as! [Any] {
                    var model = DescribeApiIpControlsResponseBody.ApiIpControls.ApiIpControlItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiIpControlItem = tmp
            }
        }
    }
    public var apiIpControls: DescribeApiIpControlsResponseBody.ApiIpControls?

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
        try self.apiIpControls?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiIpControls != nil {
            map["ApiIpControls"] = self.apiIpControls?.toMap()
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
        if dict.keys.contains("ApiIpControls") && dict["ApiIpControls"] != nil {
            var model = DescribeApiIpControlsResponseBody.ApiIpControls()
            model.fromMap(dict["ApiIpControls"] as! [String: Any])
            self.apiIpControls = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApiIpControlsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiIpControlsResponseBody?

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
            var model = DescribeApiIpControlsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiLatencyRequest : Tea.TeaModel {
    public var apiId: String?

    public var endTime: String?

    public var groupId: String?

    public var securityToken: String?

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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeApiLatencyResponseBody : Tea.TeaModel {
    public class Latencys : Tea.TeaModel {
        public class Latency : Tea.TeaModel {
            public var time: String?

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
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var latency: [DescribeApiLatencyResponseBody.Latencys.Latency]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.latency != nil {
                var tmp : [Any] = []
                for k in self.latency! {
                    tmp.append(k.toMap())
                }
                map["Latency"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Latency") && dict["Latency"] != nil {
                var tmp : [DescribeApiLatencyResponseBody.Latencys.Latency] = []
                for v in dict["Latency"] as! [Any] {
                    var model = DescribeApiLatencyResponseBody.Latencys.Latency()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.latency = tmp
            }
        }
    }
    public var latencys: DescribeApiLatencyResponseBody.Latencys?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.latencys?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latencys != nil {
            map["Latencys"] = self.latencys?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Latencys") && dict["Latencys"] != nil {
            var model = DescribeApiLatencyResponseBody.Latencys()
            model.fromMap(dict["Latencys"] as! [String: Any])
            self.latencys = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeApiLatencyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiLatencyResponseBody?

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
            var model = DescribeApiLatencyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiQpsRequest : Tea.TeaModel {
    public var apiId: String?

    public var endTime: String?

    public var groupId: String?

    public var securityToken: String?

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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeApiQpsResponseBody : Tea.TeaModel {
    public class Fails : Tea.TeaModel {
        public class Fail : Tea.TeaModel {
            public var time: String?

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
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var fail: [DescribeApiQpsResponseBody.Fails.Fail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fail != nil {
                var tmp : [Any] = []
                for k in self.fail! {
                    tmp.append(k.toMap())
                }
                map["Fail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Fail") && dict["Fail"] != nil {
                var tmp : [DescribeApiQpsResponseBody.Fails.Fail] = []
                for v in dict["Fail"] as! [Any] {
                    var model = DescribeApiQpsResponseBody.Fails.Fail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.fail = tmp
            }
        }
    }
    public class Successes : Tea.TeaModel {
        public class Success : Tea.TeaModel {
            public var time: String?

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
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var success: [DescribeApiQpsResponseBody.Successes.Success]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.success != nil {
                var tmp : [Any] = []
                for k in self.success! {
                    tmp.append(k.toMap())
                }
                map["Success"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Success") && dict["Success"] != nil {
                var tmp : [DescribeApiQpsResponseBody.Successes.Success] = []
                for v in dict["Success"] as! [Any] {
                    var model = DescribeApiQpsResponseBody.Successes.Success()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.success = tmp
            }
        }
    }
    public var fails: DescribeApiQpsResponseBody.Fails?

    public var requestId: String?

    public var successes: DescribeApiQpsResponseBody.Successes?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.fails?.validate()
        try self.successes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fails != nil {
            map["Fails"] = self.fails?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successes != nil {
            map["Successes"] = self.successes?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Fails") && dict["Fails"] != nil {
            var model = DescribeApiQpsResponseBody.Fails()
            model.fromMap(dict["Fails"] as! [String: Any])
            self.fails = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Successes") && dict["Successes"] != nil {
            var model = DescribeApiQpsResponseBody.Successes()
            model.fromMap(dict["Successes"] as! [String: Any])
            self.successes = model
        }
    }
}

public class DescribeApiQpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiQpsResponseBody?

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
            var model = DescribeApiQpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiRulesRequest : Tea.TeaModel {
    public var apiIds: String?

    public var apiName: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var ruleType: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiIds != nil {
            map["ApiIds"] = self.apiIds!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiIds") && dict["ApiIds"] != nil {
            self.apiIds = dict["ApiIds"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeApiRulesResponseBody : Tea.TeaModel {
    public class ApiRules : Tea.TeaModel {
        public class ApiRule : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var createdTime: String?

            public var ruleId: String?

            public var ruleName: String?

            public var ruleType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.ruleType != nil {
                    map["RuleType"] = self.ruleType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                    self.ruleId = dict["RuleId"] as! String
                }
                if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
                    self.ruleType = dict["RuleType"] as! String
                }
            }
        }
        public var apiRule: [DescribeApiRulesResponseBody.ApiRules.ApiRule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiRule != nil {
                var tmp : [Any] = []
                for k in self.apiRule! {
                    tmp.append(k.toMap())
                }
                map["ApiRule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiRule") && dict["ApiRule"] != nil {
                var tmp : [DescribeApiRulesResponseBody.ApiRules.ApiRule] = []
                for v in dict["ApiRule"] as! [Any] {
                    var model = DescribeApiRulesResponseBody.ApiRules.ApiRule()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiRule = tmp
            }
        }
    }
    public var apiRules: DescribeApiRulesResponseBody.ApiRules?

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
        try self.apiRules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiRules != nil {
            map["ApiRules"] = self.apiRules?.toMap()
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
        if dict.keys.contains("ApiRules") && dict["ApiRules"] != nil {
            var model = DescribeApiRulesResponseBody.ApiRules()
            model.fromMap(dict["ApiRules"] as! [String: Any])
            self.apiRules = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApiRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiRulesResponseBody?

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
            var model = DescribeApiRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiStageDetailRequest : Tea.TeaModel {
    public var groupId: String?

    public var securityToken: String?

    public var stageId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageId != nil {
            map["StageId"] = self.stageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageId") && dict["StageId"] != nil {
            self.stageId = dict["StageId"] as! String
        }
    }
}

public class DescribeApiStageDetailResponseBody : Tea.TeaModel {
    public class Variables : Tea.TeaModel {
        public class VariableItem : Tea.TeaModel {
            public class StageRouteModel : Tea.TeaModel {
                public class RouteRules : Tea.TeaModel {
                    public class RouteRuleItem : Tea.TeaModel {
                        public var conditionValue: String?

                        public var maxValue: Int64?

                        public var minValue: Int64?

                        public var resultValue: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.conditionValue != nil {
                                map["ConditionValue"] = self.conditionValue!
                            }
                            if self.maxValue != nil {
                                map["MaxValue"] = self.maxValue!
                            }
                            if self.minValue != nil {
                                map["MinValue"] = self.minValue!
                            }
                            if self.resultValue != nil {
                                map["ResultValue"] = self.resultValue!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ConditionValue") && dict["ConditionValue"] != nil {
                                self.conditionValue = dict["ConditionValue"] as! String
                            }
                            if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                                self.maxValue = dict["MaxValue"] as! Int64
                            }
                            if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                                self.minValue = dict["MinValue"] as! Int64
                            }
                            if dict.keys.contains("ResultValue") && dict["ResultValue"] != nil {
                                self.resultValue = dict["ResultValue"] as! String
                            }
                        }
                    }
                    public var routeRuleItem: [DescribeApiStageDetailResponseBody.Variables.VariableItem.StageRouteModel.RouteRules.RouteRuleItem]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.routeRuleItem != nil {
                            var tmp : [Any] = []
                            for k in self.routeRuleItem! {
                                tmp.append(k.toMap())
                            }
                            map["RouteRuleItem"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("RouteRuleItem") && dict["RouteRuleItem"] != nil {
                            var tmp : [DescribeApiStageDetailResponseBody.Variables.VariableItem.StageRouteModel.RouteRules.RouteRuleItem] = []
                            for v in dict["RouteRuleItem"] as! [Any] {
                                var model = DescribeApiStageDetailResponseBody.Variables.VariableItem.StageRouteModel.RouteRules.RouteRuleItem()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.routeRuleItem = tmp
                        }
                    }
                }
                public var location: String?

                public var parameterCatalog: String?

                public var parameterType: String?

                public var routeMatchSymbol: String?

                public var routeRules: DescribeApiStageDetailResponseBody.Variables.VariableItem.StageRouteModel.RouteRules?

                public var serviceParameterName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.routeRules?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.location != nil {
                        map["Location"] = self.location!
                    }
                    if self.parameterCatalog != nil {
                        map["ParameterCatalog"] = self.parameterCatalog!
                    }
                    if self.parameterType != nil {
                        map["ParameterType"] = self.parameterType!
                    }
                    if self.routeMatchSymbol != nil {
                        map["RouteMatchSymbol"] = self.routeMatchSymbol!
                    }
                    if self.routeRules != nil {
                        map["RouteRules"] = self.routeRules?.toMap()
                    }
                    if self.serviceParameterName != nil {
                        map["ServiceParameterName"] = self.serviceParameterName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Location") && dict["Location"] != nil {
                        self.location = dict["Location"] as! String
                    }
                    if dict.keys.contains("ParameterCatalog") && dict["ParameterCatalog"] != nil {
                        self.parameterCatalog = dict["ParameterCatalog"] as! String
                    }
                    if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                        self.parameterType = dict["ParameterType"] as! String
                    }
                    if dict.keys.contains("RouteMatchSymbol") && dict["RouteMatchSymbol"] != nil {
                        self.routeMatchSymbol = dict["RouteMatchSymbol"] as! String
                    }
                    if dict.keys.contains("RouteRules") && dict["RouteRules"] != nil {
                        var model = DescribeApiStageDetailResponseBody.Variables.VariableItem.StageRouteModel.RouteRules()
                        model.fromMap(dict["RouteRules"] as! [String: Any])
                        self.routeRules = model
                    }
                    if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                        self.serviceParameterName = dict["ServiceParameterName"] as! String
                    }
                }
            }
            public var stageRouteModel: DescribeApiStageDetailResponseBody.Variables.VariableItem.StageRouteModel?

            public var supportRoute: Bool?

            public var variableName: String?

            public var variableValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.stageRouteModel?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.stageRouteModel != nil {
                    map["StageRouteModel"] = self.stageRouteModel?.toMap()
                }
                if self.supportRoute != nil {
                    map["SupportRoute"] = self.supportRoute!
                }
                if self.variableName != nil {
                    map["VariableName"] = self.variableName!
                }
                if self.variableValue != nil {
                    map["VariableValue"] = self.variableValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("StageRouteModel") && dict["StageRouteModel"] != nil {
                    var model = DescribeApiStageDetailResponseBody.Variables.VariableItem.StageRouteModel()
                    model.fromMap(dict["StageRouteModel"] as! [String: Any])
                    self.stageRouteModel = model
                }
                if dict.keys.contains("SupportRoute") && dict["SupportRoute"] != nil {
                    self.supportRoute = dict["SupportRoute"] as! Bool
                }
                if dict.keys.contains("VariableName") && dict["VariableName"] != nil {
                    self.variableName = dict["VariableName"] as! String
                }
                if dict.keys.contains("VariableValue") && dict["VariableValue"] != nil {
                    self.variableValue = dict["VariableValue"] as! String
                }
            }
        }
        public var variableItem: [DescribeApiStageDetailResponseBody.Variables.VariableItem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.variableItem != nil {
                var tmp : [Any] = []
                for k in self.variableItem! {
                    tmp.append(k.toMap())
                }
                map["VariableItem"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VariableItem") && dict["VariableItem"] != nil {
                var tmp : [DescribeApiStageDetailResponseBody.Variables.VariableItem] = []
                for v in dict["VariableItem"] as! [Any] {
                    var model = DescribeApiStageDetailResponseBody.Variables.VariableItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.variableItem = tmp
            }
        }
    }
    public var createdTime: String?

    public var description_: String?

    public var groupId: String?

    public var modifiedTime: String?

    public var requestId: String?

    public var stageId: String?

    public var stageName: String?

    public var variables: DescribeApiStageDetailResponseBody.Variables?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.variables?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stageId != nil {
            map["StageId"] = self.stageId!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        if self.variables != nil {
            map["Variables"] = self.variables?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StageId") && dict["StageId"] != nil {
            self.stageId = dict["StageId"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
        if dict.keys.contains("Variables") && dict["Variables"] != nil {
            var model = DescribeApiStageDetailResponseBody.Variables()
            model.fromMap(dict["Variables"] as! [String: Any])
            self.variables = model
        }
    }
}

public class DescribeApiStageDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiStageDetailResponseBody?

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
            var model = DescribeApiStageDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiTrafficRequest : Tea.TeaModel {
    public var apiId: String?

    public var endTime: String?

    public var groupId: String?

    public var securityToken: String?

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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeApiTrafficResponseBody : Tea.TeaModel {
    public class Downloads : Tea.TeaModel {
        public class Download : Tea.TeaModel {
            public var time: String?

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
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var download: [DescribeApiTrafficResponseBody.Downloads.Download]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.download != nil {
                var tmp : [Any] = []
                for k in self.download! {
                    tmp.append(k.toMap())
                }
                map["Download"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Download") && dict["Download"] != nil {
                var tmp : [DescribeApiTrafficResponseBody.Downloads.Download] = []
                for v in dict["Download"] as! [Any] {
                    var model = DescribeApiTrafficResponseBody.Downloads.Download()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.download = tmp
            }
        }
    }
    public class Uploads : Tea.TeaModel {
        public class Upload : Tea.TeaModel {
            public var time: String?

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
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var upload: [DescribeApiTrafficResponseBody.Uploads.Upload]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.upload != nil {
                var tmp : [Any] = []
                for k in self.upload! {
                    tmp.append(k.toMap())
                }
                map["Upload"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Upload") && dict["Upload"] != nil {
                var tmp : [DescribeApiTrafficResponseBody.Uploads.Upload] = []
                for v in dict["Upload"] as! [Any] {
                    var model = DescribeApiTrafficResponseBody.Uploads.Upload()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.upload = tmp
            }
        }
    }
    public var downloads: DescribeApiTrafficResponseBody.Downloads?

    public var requestId: String?

    public var uploads: DescribeApiTrafficResponseBody.Uploads?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.downloads?.validate()
        try self.uploads?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.downloads != nil {
            map["Downloads"] = self.downloads?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.uploads != nil {
            map["Uploads"] = self.uploads?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Downloads") && dict["Downloads"] != nil {
            var model = DescribeApiTrafficResponseBody.Downloads()
            model.fromMap(dict["Downloads"] as! [String: Any])
            self.downloads = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Uploads") && dict["Uploads"] != nil {
            var model = DescribeApiTrafficResponseBody.Uploads()
            model.fromMap(dict["Uploads"] as! [String: Any])
            self.uploads = model
        }
    }
}

public class DescribeApiTrafficResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiTrafficResponseBody?

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
            var model = DescribeApiTrafficResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApisRequest : Tea.TeaModel {
    public var apiId: String?

    public var apiName: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public var visibility: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
    }
}

public class DescribeApisResponseBody : Tea.TeaModel {
    public class ApiInfos : Tea.TeaModel {
        public class ApiInfo : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var createdTime: String?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var modifiedTime: String?

            public var regionId: String?

            public var visibility: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var apiInfo: [DescribeApisResponseBody.ApiInfos.ApiInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInfo != nil {
                var tmp : [Any] = []
                for k in self.apiInfo! {
                    tmp.append(k.toMap())
                }
                map["ApiInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInfo") && dict["ApiInfo"] != nil {
                var tmp : [DescribeApisResponseBody.ApiInfos.ApiInfo] = []
                for v in dict["ApiInfo"] as! [Any] {
                    var model = DescribeApisResponseBody.ApiInfos.ApiInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiInfo = tmp
            }
        }
    }
    public var apiInfos: DescribeApisResponseBody.ApiInfos?

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
        try self.apiInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfos != nil {
            map["ApiInfos"] = self.apiInfos?.toMap()
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
        if dict.keys.contains("ApiInfos") && dict["ApiInfos"] != nil {
            var model = DescribeApisResponseBody.ApiInfos()
            model.fromMap(dict["ApiInfos"] as! [String: Any])
            self.apiInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApisResponseBody?

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
            var model = DescribeApisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApisByAppRequest : Tea.TeaModel {
    public var appId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeApisByAppResponseBody : Tea.TeaModel {
    public class AppApiRelationInfos : Tea.TeaModel {
        public class AppApiRelationInfo : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var authorizationSource: String?

            public var createdTime: String?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var operator_: String?

            public var regionId: String?

            public var stageName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.authorizationSource != nil {
                    map["AuthorizationSource"] = self.authorizationSource!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.operator_ != nil {
                    map["Operator"] = self.operator_!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("AuthorizationSource") && dict["AuthorizationSource"] != nil {
                    self.authorizationSource = dict["AuthorizationSource"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("Operator") && dict["Operator"] != nil {
                    self.operator_ = dict["Operator"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
            }
        }
        public var appApiRelationInfo: [DescribeApisByAppResponseBody.AppApiRelationInfos.AppApiRelationInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appApiRelationInfo != nil {
                var tmp : [Any] = []
                for k in self.appApiRelationInfo! {
                    tmp.append(k.toMap())
                }
                map["AppApiRelationInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppApiRelationInfo") && dict["AppApiRelationInfo"] != nil {
                var tmp : [DescribeApisByAppResponseBody.AppApiRelationInfos.AppApiRelationInfo] = []
                for v in dict["AppApiRelationInfo"] as! [Any] {
                    var model = DescribeApisByAppResponseBody.AppApiRelationInfos.AppApiRelationInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appApiRelationInfo = tmp
            }
        }
    }
    public var appApiRelationInfos: DescribeApisByAppResponseBody.AppApiRelationInfos?

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
        try self.appApiRelationInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appApiRelationInfos != nil {
            map["AppApiRelationInfos"] = self.appApiRelationInfos?.toMap()
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
        if dict.keys.contains("AppApiRelationInfos") && dict["AppApiRelationInfos"] != nil {
            var model = DescribeApisByAppResponseBody.AppApiRelationInfos()
            model.fromMap(dict["AppApiRelationInfos"] as! [String: Any])
            self.appApiRelationInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApisByAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApisByAppResponseBody?

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
            var model = DescribeApisByAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApisByIpControlRequest : Tea.TeaModel {
    public var ipControlId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipControlId != nil {
            map["IpControlId"] = self.ipControlId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpControlId") && dict["IpControlId"] != nil {
            self.ipControlId = dict["IpControlId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeApisByIpControlResponseBody : Tea.TeaModel {
    public class ApiInfos : Tea.TeaModel {
        public class ApiInfo : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var boundTime: String?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var regionId: String?

            public var stageName: String?

            public var visibility: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.boundTime != nil {
                    map["BoundTime"] = self.boundTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("BoundTime") && dict["BoundTime"] != nil {
                    self.boundTime = dict["BoundTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var apiInfo: [DescribeApisByIpControlResponseBody.ApiInfos.ApiInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInfo != nil {
                var tmp : [Any] = []
                for k in self.apiInfo! {
                    tmp.append(k.toMap())
                }
                map["ApiInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInfo") && dict["ApiInfo"] != nil {
                var tmp : [DescribeApisByIpControlResponseBody.ApiInfos.ApiInfo] = []
                for v in dict["ApiInfo"] as! [Any] {
                    var model = DescribeApisByIpControlResponseBody.ApiInfos.ApiInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiInfo = tmp
            }
        }
    }
    public var apiInfos: DescribeApisByIpControlResponseBody.ApiInfos?

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
        try self.apiInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfos != nil {
            map["ApiInfos"] = self.apiInfos?.toMap()
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
        if dict.keys.contains("ApiInfos") && dict["ApiInfos"] != nil {
            var model = DescribeApisByIpControlResponseBody.ApiInfos()
            model.fromMap(dict["ApiInfos"] as! [String: Any])
            self.apiInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApisByIpControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApisByIpControlResponseBody?

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
            var model = DescribeApisByIpControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApisByRuleRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var ruleId: String?

    public var ruleType: String?

    public var securityToken: String?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeApisByRuleResponseBody : Tea.TeaModel {
    public class ApiInfos : Tea.TeaModel {
        public class ApiInfo : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var createdTime: String?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var modifiedTime: String?

            public var regionId: String?

            public var stageName: String?

            public var visibility: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var apiInfo: [DescribeApisByRuleResponseBody.ApiInfos.ApiInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInfo != nil {
                var tmp : [Any] = []
                for k in self.apiInfo! {
                    tmp.append(k.toMap())
                }
                map["ApiInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInfo") && dict["ApiInfo"] != nil {
                var tmp : [DescribeApisByRuleResponseBody.ApiInfos.ApiInfo] = []
                for v in dict["ApiInfo"] as! [Any] {
                    var model = DescribeApisByRuleResponseBody.ApiInfos.ApiInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiInfo = tmp
            }
        }
    }
    public var apiInfos: DescribeApisByRuleResponseBody.ApiInfos?

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
        try self.apiInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfos != nil {
            map["ApiInfos"] = self.apiInfos?.toMap()
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
        if dict.keys.contains("ApiInfos") && dict["ApiInfos"] != nil {
            var model = DescribeApisByRuleResponseBody.ApiInfos()
            model.fromMap(dict["ApiInfos"] as! [String: Any])
            self.apiInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApisByRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApisByRuleResponseBody?

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
            var model = DescribeApisByRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApisForConsoleRequest : Tea.TeaModel {
    public var apiId: String?

    public var apiName: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public var stageName: String?

    public var visibility: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
    }
}

public class DescribeApisForConsoleResponseBody : Tea.TeaModel {
    public class ApiInfos : Tea.TeaModel {
        public class ApiInfo : Tea.TeaModel {
            public class DeployedInfos : Tea.TeaModel {
                public class DeployedInfo : Tea.TeaModel {
                    public var deployedStatus: String?

                    public var effectiveVersion: String?

                    public var stageName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.deployedStatus != nil {
                            map["DeployedStatus"] = self.deployedStatus!
                        }
                        if self.effectiveVersion != nil {
                            map["EffectiveVersion"] = self.effectiveVersion!
                        }
                        if self.stageName != nil {
                            map["StageName"] = self.stageName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DeployedStatus") && dict["DeployedStatus"] != nil {
                            self.deployedStatus = dict["DeployedStatus"] as! String
                        }
                        if dict.keys.contains("EffectiveVersion") && dict["EffectiveVersion"] != nil {
                            self.effectiveVersion = dict["EffectiveVersion"] as! String
                        }
                        if dict.keys.contains("StageName") && dict["StageName"] != nil {
                            self.stageName = dict["StageName"] as! String
                        }
                    }
                }
                public var deployedInfo: [DescribeApisForConsoleResponseBody.ApiInfos.ApiInfo.DeployedInfos.DeployedInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.deployedInfo != nil {
                        var tmp : [Any] = []
                        for k in self.deployedInfo! {
                            tmp.append(k.toMap())
                        }
                        map["DeployedInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DeployedInfo") && dict["DeployedInfo"] != nil {
                        var tmp : [DescribeApisForConsoleResponseBody.ApiInfos.ApiInfo.DeployedInfos.DeployedInfo] = []
                        for v in dict["DeployedInfo"] as! [Any] {
                            var model = DescribeApisForConsoleResponseBody.ApiInfos.ApiInfo.DeployedInfos.DeployedInfo()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.deployedInfo = tmp
                    }
                }
            }
            public var apiId: String?

            public var apiName: String?

            public var createdTime: String?

            public var deployedInfos: DescribeApisForConsoleResponseBody.ApiInfos.ApiInfo.DeployedInfos?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var modifiedTime: String?

            public var regionId: String?

            public var visibility: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.deployedInfos?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.deployedInfos != nil {
                    map["DeployedInfos"] = self.deployedInfos?.toMap()
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("DeployedInfos") && dict["DeployedInfos"] != nil {
                    var model = DescribeApisForConsoleResponseBody.ApiInfos.ApiInfo.DeployedInfos()
                    model.fromMap(dict["DeployedInfos"] as! [String: Any])
                    self.deployedInfos = model
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var apiInfo: [DescribeApisForConsoleResponseBody.ApiInfos.ApiInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInfo != nil {
                var tmp : [Any] = []
                for k in self.apiInfo! {
                    tmp.append(k.toMap())
                }
                map["ApiInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInfo") && dict["ApiInfo"] != nil {
                var tmp : [DescribeApisForConsoleResponseBody.ApiInfos.ApiInfo] = []
                for v in dict["ApiInfo"] as! [Any] {
                    var model = DescribeApisForConsoleResponseBody.ApiInfos.ApiInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiInfo = tmp
            }
        }
    }
    public var apiInfos: DescribeApisForConsoleResponseBody.ApiInfos?

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
        try self.apiInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfos != nil {
            map["ApiInfos"] = self.apiInfos?.toMap()
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
        if dict.keys.contains("ApiInfos") && dict["ApiInfos"] != nil {
            var model = DescribeApisForConsoleResponseBody.ApiInfos()
            model.fromMap(dict["ApiInfos"] as! [String: Any])
            self.apiInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApisForConsoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApisForConsoleResponseBody?

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
            var model = DescribeApisForConsoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppRequest : Tea.TeaModel {
    public var appId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeAppResponseBody : Tea.TeaModel {
    public var appId: Int64?

    public var appName: String?

    public var createdTime: String?

    public var description_: String?

    public var modifiedTime: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppResponseBody?

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
            var model = DescribeAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppSecuritiesRequest : Tea.TeaModel {
    public var appId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeAppSecuritiesResponseBody : Tea.TeaModel {
    public class AppSecuritys : Tea.TeaModel {
        public class AppSecurity : Tea.TeaModel {
            public var appKey: String?

            public var appSecret: String?

            public var createdTime: String?

            public var modifiedTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appKey != nil {
                    map["AppKey"] = self.appKey!
                }
                if self.appSecret != nil {
                    map["AppSecret"] = self.appSecret!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
                    self.appKey = dict["AppKey"] as! String
                }
                if dict.keys.contains("AppSecret") && dict["AppSecret"] != nil {
                    self.appSecret = dict["AppSecret"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
            }
        }
        public var appSecurity: [DescribeAppSecuritiesResponseBody.AppSecuritys.AppSecurity]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appSecurity != nil {
                var tmp : [Any] = []
                for k in self.appSecurity! {
                    tmp.append(k.toMap())
                }
                map["AppSecurity"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppSecurity") && dict["AppSecurity"] != nil {
                var tmp : [DescribeAppSecuritiesResponseBody.AppSecuritys.AppSecurity] = []
                for v in dict["AppSecurity"] as! [Any] {
                    var model = DescribeAppSecuritiesResponseBody.AppSecuritys.AppSecurity()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appSecurity = tmp
            }
        }
    }
    public var appSecuritys: DescribeAppSecuritiesResponseBody.AppSecuritys?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appSecuritys?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appSecuritys != nil {
            map["AppSecuritys"] = self.appSecuritys?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppSecuritys") && dict["AppSecuritys"] != nil {
            var model = DescribeAppSecuritiesResponseBody.AppSecuritys()
            model.fromMap(dict["AppSecuritys"] as! [String: Any])
            self.appSecuritys = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAppSecuritiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppSecuritiesResponseBody?

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
            var model = DescribeAppSecuritiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppSecurityRequest : Tea.TeaModel {
    public var appKey: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeAppSecurityResponseBody : Tea.TeaModel {
    public var appCode: String?

    public var appKey: String?

    public var appSecret: String?

    public var createdTime: String?

    public var modifiedTime: String?

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
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.appSecret != nil {
            map["AppSecret"] = self.appSecret!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
            self.appCode = dict["AppCode"] as! String
        }
        if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("AppSecret") && dict["AppSecret"] != nil {
            self.appSecret = dict["AppSecret"] as! String
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAppSecurityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppSecurityResponseBody?

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
            var model = DescribeAppSecurityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppsRequest : Tea.TeaModel {
    public var appId: Int64?

    public var appName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeAppsResponseBody : Tea.TeaModel {
    public class Apps : Tea.TeaModel {
        public class App : Tea.TeaModel {
            public var appId: Int64?

            public var appName: String?

            public var createdTime: String?

            public var description_: String?

            public var modifiedTime: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! Int64
                }
                if dict.keys.contains("AppName") && dict["AppName"] != nil {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
            }
        }
        public var app: [DescribeAppsResponseBody.Apps.App]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.app != nil {
                var tmp : [Any] = []
                for k in self.app! {
                    tmp.append(k.toMap())
                }
                map["App"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("App") && dict["App"] != nil {
                var tmp : [DescribeAppsResponseBody.Apps.App] = []
                for v in dict["App"] as! [Any] {
                    var model = DescribeAppsResponseBody.Apps.App()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.app = tmp
            }
        }
    }
    public var apps: DescribeAppsResponseBody.Apps?

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
        try self.apps?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apps != nil {
            map["Apps"] = self.apps?.toMap()
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
        if dict.keys.contains("Apps") && dict["Apps"] != nil {
            var model = DescribeAppsResponseBody.Apps()
            model.fromMap(dict["Apps"] as! [String: Any])
            self.apps = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppsResponseBody?

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
            var model = DescribeAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppsByApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeAppsByApiResponseBody : Tea.TeaModel {
    public class AppApiRelationInfos : Tea.TeaModel {
        public class AppApiRelationInfo : Tea.TeaModel {
            public var appId: String?

            public var appName: String?

            public var authorizationSource: String?

            public var createdTime: String?

            public var description_: String?

            public var operator_: String?

            public var stageName: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.authorizationSource != nil {
                    map["AuthorizationSource"] = self.authorizationSource!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.operator_ != nil {
                    map["Operator"] = self.operator_!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") && dict["AppName"] != nil {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("AuthorizationSource") && dict["AuthorizationSource"] != nil {
                    self.authorizationSource = dict["AuthorizationSource"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Operator") && dict["Operator"] != nil {
                    self.operator_ = dict["Operator"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
            }
        }
        public var appApiRelationInfo: [DescribeAppsByApiResponseBody.AppApiRelationInfos.AppApiRelationInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appApiRelationInfo != nil {
                var tmp : [Any] = []
                for k in self.appApiRelationInfo! {
                    tmp.append(k.toMap())
                }
                map["AppApiRelationInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppApiRelationInfo") && dict["AppApiRelationInfo"] != nil {
                var tmp : [DescribeAppsByApiResponseBody.AppApiRelationInfos.AppApiRelationInfo] = []
                for v in dict["AppApiRelationInfo"] as! [Any] {
                    var model = DescribeAppsByApiResponseBody.AppApiRelationInfos.AppApiRelationInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appApiRelationInfo = tmp
            }
        }
    }
    public var appApiRelationInfos: DescribeAppsByApiResponseBody.AppApiRelationInfos?

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
        try self.appApiRelationInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appApiRelationInfos != nil {
            map["AppApiRelationInfos"] = self.appApiRelationInfos?.toMap()
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
        if dict.keys.contains("AppApiRelationInfos") && dict["AppApiRelationInfos"] != nil {
            var model = DescribeAppsByApiResponseBody.AppApiRelationInfos()
            model.fromMap(dict["AppApiRelationInfos"] as! [String: Any])
            self.appApiRelationInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAppsByApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppsByApiResponseBody?

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
            var model = DescribeAppsByApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppsForProviderRequest : Tea.TeaModel {
    public var appId: Int64?

    public var appOwnerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.appOwnerId != nil {
            map["AppOwnerId"] = self.appOwnerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("AppOwnerId") && dict["AppOwnerId"] != nil {
            self.appOwnerId = dict["AppOwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeAppsForProviderResponseBody : Tea.TeaModel {
    public class Apps : Tea.TeaModel {
        public class App : Tea.TeaModel {
            public var appId: Int64?

            public var appName: String?

            public var createTime: String?

            public var description_: String?

            public var modifiedTime: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! Int64
                }
                if dict.keys.contains("AppName") && dict["AppName"] != nil {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
            }
        }
        public var app: [DescribeAppsForProviderResponseBody.Apps.App]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.app != nil {
                var tmp : [Any] = []
                for k in self.app! {
                    tmp.append(k.toMap())
                }
                map["App"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("App") && dict["App"] != nil {
                var tmp : [DescribeAppsForProviderResponseBody.Apps.App] = []
                for v in dict["App"] as! [Any] {
                    var model = DescribeAppsForProviderResponseBody.Apps.App()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.app = tmp
            }
        }
    }
    public var apps: DescribeAppsForProviderResponseBody.Apps?

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
        try self.apps?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apps != nil {
            map["Apps"] = self.apps?.toMap()
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
        if dict.keys.contains("Apps") && dict["Apps"] != nil {
            var model = DescribeAppsForProviderResponseBody.Apps()
            model.fromMap(dict["Apps"] as! [String: Any])
            self.apps = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAppsForProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppsForProviderResponseBody?

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
            var model = DescribeAppsForProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBlackListsRequest : Tea.TeaModel {
    public var blackType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackType != nil {
            map["BlackType"] = self.blackType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackType") && dict["BlackType"] != nil {
            self.blackType = dict["BlackType"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeBlackListsResponseBody : Tea.TeaModel {
    public class BlackLists : Tea.TeaModel {
        public class BlackList : Tea.TeaModel {
            public var blackContent: String?

            public var blackType: String?

            public var createTime: String?

            public var description_: String?

            public var modifiedTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blackContent != nil {
                    map["BlackContent"] = self.blackContent!
                }
                if self.blackType != nil {
                    map["BlackType"] = self.blackType!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlackContent") && dict["BlackContent"] != nil {
                    self.blackContent = dict["BlackContent"] as! String
                }
                if dict.keys.contains("BlackType") && dict["BlackType"] != nil {
                    self.blackType = dict["BlackType"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
            }
        }
        public var blackList: [DescribeBlackListsResponseBody.BlackLists.BlackList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blackList != nil {
                var tmp : [Any] = []
                for k in self.blackList! {
                    tmp.append(k.toMap())
                }
                map["BlackList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlackList") && dict["BlackList"] != nil {
                var tmp : [DescribeBlackListsResponseBody.BlackLists.BlackList] = []
                for v in dict["BlackList"] as! [Any] {
                    var model = DescribeBlackListsResponseBody.BlackLists.BlackList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.blackList = tmp
            }
        }
    }
    public var blackLists: DescribeBlackListsResponseBody.BlackLists?

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
        try self.blackLists?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackLists != nil {
            map["BlackLists"] = self.blackLists?.toMap()
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
        if dict.keys.contains("BlackLists") && dict["BlackLists"] != nil {
            var model = DescribeBlackListsResponseBody.BlackLists()
            model.fromMap(dict["BlackLists"] as! [String: Any])
            self.blackLists = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeBlackListsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBlackListsResponseBody?

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
            var model = DescribeBlackListsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeployedApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeDeployedApiResponseBody : Tea.TeaModel {
    public class ConstantParameters : Tea.TeaModel {
        public class ConstantParameter : Tea.TeaModel {
            public var constantValue: String?

            public var description_: String?

            public var location: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.constantValue != nil {
                    map["ConstantValue"] = self.constantValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConstantValue") && dict["ConstantValue"] != nil {
                    self.constantValue = dict["ConstantValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var constantParameter: [DescribeDeployedApiResponseBody.ConstantParameters.ConstantParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constantParameter != nil {
                var tmp : [Any] = []
                for k in self.constantParameter! {
                    tmp.append(k.toMap())
                }
                map["ConstantParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConstantParameter") && dict["ConstantParameter"] != nil {
                var tmp : [DescribeDeployedApiResponseBody.ConstantParameters.ConstantParameter] = []
                for v in dict["ConstantParameter"] as! [Any] {
                    var model = DescribeDeployedApiResponseBody.ConstantParameters.ConstantParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.constantParameter = tmp
            }
        }
    }
    public class ErrorCodeSamples : Tea.TeaModel {
        public class ErrorCodeSample : Tea.TeaModel {
            public var code: String?

            public var description_: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var errorCodeSample: [DescribeDeployedApiResponseBody.ErrorCodeSamples.ErrorCodeSample]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCodeSample != nil {
                var tmp : [Any] = []
                for k in self.errorCodeSample! {
                    tmp.append(k.toMap())
                }
                map["ErrorCodeSample"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCodeSample") && dict["ErrorCodeSample"] != nil {
                var tmp : [DescribeDeployedApiResponseBody.ErrorCodeSamples.ErrorCodeSample] = []
                for v in dict["ErrorCodeSample"] as! [Any] {
                    var model = DescribeDeployedApiResponseBody.ErrorCodeSamples.ErrorCodeSample()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.errorCodeSample = tmp
            }
        }
    }
    public class FunctionComputeConfig : Tea.TeaModel {
        public var fcRegionId: String?

        public var functionName: String?

        public var roleArn: String?

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
            if self.fcRegionId != nil {
                map["FcRegionId"] = self.fcRegionId!
            }
            if self.functionName != nil {
                map["FunctionName"] = self.functionName!
            }
            if self.roleArn != nil {
                map["RoleArn"] = self.roleArn!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FcRegionId") && dict["FcRegionId"] != nil {
                self.fcRegionId = dict["FcRegionId"] as! String
            }
            if dict.keys.contains("FunctionName") && dict["FunctionName"] != nil {
                self.functionName = dict["FunctionName"] as! String
            }
            if dict.keys.contains("RoleArn") && dict["RoleArn"] != nil {
                self.roleArn = dict["RoleArn"] as! String
            }
            if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                self.serviceName = dict["ServiceName"] as! String
            }
        }
    }
    public class PathParameters : Tea.TeaModel {
        public class PathParameter : Tea.TeaModel {
            public var apiParameterName: String?

            public var demoValue: String?

            public var description_: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var pathParameter: [DescribeDeployedApiResponseBody.PathParameters.PathParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pathParameter != nil {
                var tmp : [Any] = []
                for k in self.pathParameter! {
                    tmp.append(k.toMap())
                }
                map["PathParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PathParameter") && dict["PathParameter"] != nil {
                var tmp : [DescribeDeployedApiResponseBody.PathParameters.PathParameter] = []
                for v in dict["PathParameter"] as! [Any] {
                    var model = DescribeDeployedApiResponseBody.PathParameters.PathParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pathParameter = tmp
            }
        }
    }
    public class RequestBody : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.maxValue != nil {
                    map["MaxValue"] = self.maxValue!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                if self.minValue != nil {
                    map["MinValue"] = self.minValue!
                }
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var requestParam: [DescribeDeployedApiResponseBody.RequestBody.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeDeployedApiResponseBody.RequestBody.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeDeployedApiResponseBody.RequestBody.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class RequestHeaders : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.maxValue != nil {
                    map["MaxValue"] = self.maxValue!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                if self.minValue != nil {
                    map["MinValue"] = self.minValue!
                }
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var requestParam: [DescribeDeployedApiResponseBody.RequestHeaders.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeDeployedApiResponseBody.RequestHeaders.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeDeployedApiResponseBody.RequestHeaders.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class RequestQueries : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.maxValue != nil {
                    map["MaxValue"] = self.maxValue!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                if self.minValue != nil {
                    map["MinValue"] = self.minValue!
                }
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var requestParam: [DescribeDeployedApiResponseBody.RequestQueries.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeDeployedApiResponseBody.RequestQueries.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeDeployedApiResponseBody.RequestQueries.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class SystemParameters : Tea.TeaModel {
        public class SystemParameter : Tea.TeaModel {
            public var demoValue: String?

            public var description_: String?

            public var location: String?

            public var parameterName: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ParameterName") && dict["ParameterName"] != nil {
                    self.parameterName = dict["ParameterName"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var systemParameter: [DescribeDeployedApiResponseBody.SystemParameters.SystemParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.systemParameter != nil {
                var tmp : [Any] = []
                for k in self.systemParameter! {
                    tmp.append(k.toMap())
                }
                map["SystemParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SystemParameter") && dict["SystemParameter"] != nil {
                var tmp : [DescribeDeployedApiResponseBody.SystemParameters.SystemParameter] = []
                for v in dict["SystemParameter"] as! [Any] {
                    var model = DescribeDeployedApiResponseBody.SystemParameters.SystemParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.systemParameter = tmp
            }
        }
    }
    public var apiId: String?

    public var apiName: String?

    public var authType: String?

    public var bodyFormat: String?

    public var constantParameters: DescribeDeployedApiResponseBody.ConstantParameters?

    public var deployedTime: String?

    public var errorCodeSamples: DescribeDeployedApiResponseBody.ErrorCodeSamples?

    public var failResultSample: String?

    public var functionComputeConfig: DescribeDeployedApiResponseBody.FunctionComputeConfig?

    public var groupId: String?

    public var groupName: String?

    public var httpMethod: String?

    public var httpProtocol: String?

    public var path: String?

    public var pathParameters: DescribeDeployedApiResponseBody.PathParameters?

    public var postBodyDescription: String?

    public var postBodyType: String?

    public var regionId: String?

    public var requestBody: DescribeDeployedApiResponseBody.RequestBody?

    public var requestHeaders: DescribeDeployedApiResponseBody.RequestHeaders?

    public var requestId: String?

    public var requestMode: String?

    public var requestQueries: DescribeDeployedApiResponseBody.RequestQueries?

    public var resultSample: String?

    public var resultType: String?

    public var serviceAddress: String?

    public var serviceFCEnable: String?

    public var serviceProtocol: String?

    public var serviceTimeout: Int32?

    public var serviceVpcEnable: String?

    public var stageName: String?

    public var systemParameters: DescribeDeployedApiResponseBody.SystemParameters?

    public var visibility: String?

    public var vpcName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.constantParameters?.validate()
        try self.errorCodeSamples?.validate()
        try self.functionComputeConfig?.validate()
        try self.pathParameters?.validate()
        try self.requestBody?.validate()
        try self.requestHeaders?.validate()
        try self.requestQueries?.validate()
        try self.systemParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.bodyFormat != nil {
            map["BodyFormat"] = self.bodyFormat!
        }
        if self.constantParameters != nil {
            map["ConstantParameters"] = self.constantParameters?.toMap()
        }
        if self.deployedTime != nil {
            map["DeployedTime"] = self.deployedTime!
        }
        if self.errorCodeSamples != nil {
            map["ErrorCodeSamples"] = self.errorCodeSamples?.toMap()
        }
        if self.failResultSample != nil {
            map["FailResultSample"] = self.failResultSample!
        }
        if self.functionComputeConfig != nil {
            map["FunctionComputeConfig"] = self.functionComputeConfig?.toMap()
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.httpMethod != nil {
            map["HttpMethod"] = self.httpMethod!
        }
        if self.httpProtocol != nil {
            map["HttpProtocol"] = self.httpProtocol!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.pathParameters != nil {
            map["PathParameters"] = self.pathParameters?.toMap()
        }
        if self.postBodyDescription != nil {
            map["PostBodyDescription"] = self.postBodyDescription!
        }
        if self.postBodyType != nil {
            map["PostBodyType"] = self.postBodyType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestBody != nil {
            map["RequestBody"] = self.requestBody?.toMap()
        }
        if self.requestHeaders != nil {
            map["RequestHeaders"] = self.requestHeaders?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requestMode != nil {
            map["RequestMode"] = self.requestMode!
        }
        if self.requestQueries != nil {
            map["RequestQueries"] = self.requestQueries?.toMap()
        }
        if self.resultSample != nil {
            map["ResultSample"] = self.resultSample!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.serviceAddress != nil {
            map["ServiceAddress"] = self.serviceAddress!
        }
        if self.serviceFCEnable != nil {
            map["ServiceFCEnable"] = self.serviceFCEnable!
        }
        if self.serviceProtocol != nil {
            map["ServiceProtocol"] = self.serviceProtocol!
        }
        if self.serviceTimeout != nil {
            map["ServiceTimeout"] = self.serviceTimeout!
        }
        if self.serviceVpcEnable != nil {
            map["ServiceVpcEnable"] = self.serviceVpcEnable!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        if self.systemParameters != nil {
            map["SystemParameters"] = self.systemParameters?.toMap()
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        if self.vpcName != nil {
            map["VpcName"] = self.vpcName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("BodyFormat") && dict["BodyFormat"] != nil {
            self.bodyFormat = dict["BodyFormat"] as! String
        }
        if dict.keys.contains("ConstantParameters") && dict["ConstantParameters"] != nil {
            var model = DescribeDeployedApiResponseBody.ConstantParameters()
            model.fromMap(dict["ConstantParameters"] as! [String: Any])
            self.constantParameters = model
        }
        if dict.keys.contains("DeployedTime") && dict["DeployedTime"] != nil {
            self.deployedTime = dict["DeployedTime"] as! String
        }
        if dict.keys.contains("ErrorCodeSamples") && dict["ErrorCodeSamples"] != nil {
            var model = DescribeDeployedApiResponseBody.ErrorCodeSamples()
            model.fromMap(dict["ErrorCodeSamples"] as! [String: Any])
            self.errorCodeSamples = model
        }
        if dict.keys.contains("FailResultSample") && dict["FailResultSample"] != nil {
            self.failResultSample = dict["FailResultSample"] as! String
        }
        if dict.keys.contains("FunctionComputeConfig") && dict["FunctionComputeConfig"] != nil {
            var model = DescribeDeployedApiResponseBody.FunctionComputeConfig()
            model.fromMap(dict["FunctionComputeConfig"] as! [String: Any])
            self.functionComputeConfig = model
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("HttpMethod") && dict["HttpMethod"] != nil {
            self.httpMethod = dict["HttpMethod"] as! String
        }
        if dict.keys.contains("HttpProtocol") && dict["HttpProtocol"] != nil {
            self.httpProtocol = dict["HttpProtocol"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("PathParameters") && dict["PathParameters"] != nil {
            var model = DescribeDeployedApiResponseBody.PathParameters()
            model.fromMap(dict["PathParameters"] as! [String: Any])
            self.pathParameters = model
        }
        if dict.keys.contains("PostBodyDescription") && dict["PostBodyDescription"] != nil {
            self.postBodyDescription = dict["PostBodyDescription"] as! String
        }
        if dict.keys.contains("PostBodyType") && dict["PostBodyType"] != nil {
            self.postBodyType = dict["PostBodyType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestBody") && dict["RequestBody"] != nil {
            var model = DescribeDeployedApiResponseBody.RequestBody()
            model.fromMap(dict["RequestBody"] as! [String: Any])
            self.requestBody = model
        }
        if dict.keys.contains("RequestHeaders") && dict["RequestHeaders"] != nil {
            var model = DescribeDeployedApiResponseBody.RequestHeaders()
            model.fromMap(dict["RequestHeaders"] as! [String: Any])
            self.requestHeaders = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RequestMode") && dict["RequestMode"] != nil {
            self.requestMode = dict["RequestMode"] as! String
        }
        if dict.keys.contains("RequestQueries") && dict["RequestQueries"] != nil {
            var model = DescribeDeployedApiResponseBody.RequestQueries()
            model.fromMap(dict["RequestQueries"] as! [String: Any])
            self.requestQueries = model
        }
        if dict.keys.contains("ResultSample") && dict["ResultSample"] != nil {
            self.resultSample = dict["ResultSample"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("ServiceAddress") && dict["ServiceAddress"] != nil {
            self.serviceAddress = dict["ServiceAddress"] as! String
        }
        if dict.keys.contains("ServiceFCEnable") && dict["ServiceFCEnable"] != nil {
            self.serviceFCEnable = dict["ServiceFCEnable"] as! String
        }
        if dict.keys.contains("ServiceProtocol") && dict["ServiceProtocol"] != nil {
            self.serviceProtocol = dict["ServiceProtocol"] as! String
        }
        if dict.keys.contains("ServiceTimeout") && dict["ServiceTimeout"] != nil {
            self.serviceTimeout = dict["ServiceTimeout"] as! Int32
        }
        if dict.keys.contains("ServiceVpcEnable") && dict["ServiceVpcEnable"] != nil {
            self.serviceVpcEnable = dict["ServiceVpcEnable"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
        if dict.keys.contains("SystemParameters") && dict["SystemParameters"] != nil {
            var model = DescribeDeployedApiResponseBody.SystemParameters()
            model.fromMap(dict["SystemParameters"] as! [String: Any])
            self.systemParameters = model
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
        if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
            self.vpcName = dict["VpcName"] as! String
        }
    }
}

public class DescribeDeployedApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeployedApiResponseBody?

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
            var model = DescribeDeployedApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeployedApisRequest : Tea.TeaModel {
    public var apiId: String?

    public var apiName: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeDeployedApisResponseBody : Tea.TeaModel {
    public class ApiInfos : Tea.TeaModel {
        public class ApiInfo : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var deployedTime: String?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var regionId: String?

            public var stageName: String?

            public var visibility: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.deployedTime != nil {
                    map["DeployedTime"] = self.deployedTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("DeployedTime") && dict["DeployedTime"] != nil {
                    self.deployedTime = dict["DeployedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var apiInfo: [DescribeDeployedApisResponseBody.ApiInfos.ApiInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInfo != nil {
                var tmp : [Any] = []
                for k in self.apiInfo! {
                    tmp.append(k.toMap())
                }
                map["ApiInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInfo") && dict["ApiInfo"] != nil {
                var tmp : [DescribeDeployedApisResponseBody.ApiInfos.ApiInfo] = []
                for v in dict["ApiInfo"] as! [Any] {
                    var model = DescribeDeployedApisResponseBody.ApiInfos.ApiInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiInfo = tmp
            }
        }
    }
    public var apiInfos: DescribeDeployedApisResponseBody.ApiInfos?

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
        try self.apiInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfos != nil {
            map["ApiInfos"] = self.apiInfos?.toMap()
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
        if dict.keys.contains("ApiInfos") && dict["ApiInfos"] != nil {
            var model = DescribeDeployedApisResponseBody.ApiInfos()
            model.fromMap(dict["ApiInfos"] as! [String: Any])
            self.apiInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDeployedApisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeployedApisResponseBody?

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
            var model = DescribeDeployedApisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var groupId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeDomainResponseBody : Tea.TeaModel {
    public var certificateBody: String?

    public var certificateId: String?

    public var certificateName: String?

    public var domainBindingStatus: String?

    public var domainLegalStatus: String?

    public var domainName: String?

    public var domainNameResolution: String?

    public var domainRemark: String?

    public var domainWebSocketStatus: String?

    public var groupId: String?

    public var privateKey: String?

    public var requestId: String?

    public var subDomain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateBody != nil {
            map["CertificateBody"] = self.certificateBody!
        }
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.certificateName != nil {
            map["CertificateName"] = self.certificateName!
        }
        if self.domainBindingStatus != nil {
            map["DomainBindingStatus"] = self.domainBindingStatus!
        }
        if self.domainLegalStatus != nil {
            map["DomainLegalStatus"] = self.domainLegalStatus!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainNameResolution != nil {
            map["DomainNameResolution"] = self.domainNameResolution!
        }
        if self.domainRemark != nil {
            map["DomainRemark"] = self.domainRemark!
        }
        if self.domainWebSocketStatus != nil {
            map["DomainWebSocketStatus"] = self.domainWebSocketStatus!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateBody") && dict["CertificateBody"] != nil {
            self.certificateBody = dict["CertificateBody"] as! String
        }
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("CertificateName") && dict["CertificateName"] != nil {
            self.certificateName = dict["CertificateName"] as! String
        }
        if dict.keys.contains("DomainBindingStatus") && dict["DomainBindingStatus"] != nil {
            self.domainBindingStatus = dict["DomainBindingStatus"] as! String
        }
        if dict.keys.contains("DomainLegalStatus") && dict["DomainLegalStatus"] != nil {
            self.domainLegalStatus = dict["DomainLegalStatus"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainNameResolution") && dict["DomainNameResolution"] != nil {
            self.domainNameResolution = dict["DomainNameResolution"] as! String
        }
        if dict.keys.contains("DomainRemark") && dict["DomainRemark"] != nil {
            self.domainRemark = dict["DomainRemark"] as! String
        }
        if dict.keys.contains("DomainWebSocketStatus") && dict["DomainWebSocketStatus"] != nil {
            self.domainWebSocketStatus = dict["DomainWebSocketStatus"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
            self.subDomain = dict["SubDomain"] as! String
        }
    }
}

public class DescribeDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainResponseBody?

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
            var model = DescribeDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainResolutionRequest : Tea.TeaModel {
    public var domainNames: String?

    public var groupId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainNames != nil {
            map["DomainNames"] = self.domainNames!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainNames") && dict["DomainNames"] != nil {
            self.domainNames = dict["DomainNames"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeDomainResolutionResponseBody : Tea.TeaModel {
    public class DomainResolutions : Tea.TeaModel {
        public class DomainResolution : Tea.TeaModel {
            public var domainName: String?

            public var domainNameResolution: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.domainNameResolution != nil {
                    map["DomainNameResolution"] = self.domainNameResolution!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("DomainNameResolution") && dict["DomainNameResolution"] != nil {
                    self.domainNameResolution = dict["DomainNameResolution"] as! String
                }
            }
        }
        public var domainResolution: [DescribeDomainResolutionResponseBody.DomainResolutions.DomainResolution]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainResolution != nil {
                var tmp : [Any] = []
                for k in self.domainResolution! {
                    tmp.append(k.toMap())
                }
                map["DomainResolution"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainResolution") && dict["DomainResolution"] != nil {
                var tmp : [DescribeDomainResolutionResponseBody.DomainResolutions.DomainResolution] = []
                for v in dict["DomainResolution"] as! [Any] {
                    var model = DescribeDomainResolutionResponseBody.DomainResolutions.DomainResolution()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domainResolution = tmp
            }
        }
    }
    public var domainResolutions: DescribeDomainResolutionResponseBody.DomainResolutions?

    public var groupId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainResolutions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainResolutions != nil {
            map["DomainResolutions"] = self.domainResolutions?.toMap()
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainResolutions") && dict["DomainResolutions"] != nil {
            var model = DescribeDomainResolutionResponseBody.DomainResolutions()
            model.fromMap(dict["DomainResolutions"] as! [String: Any])
            self.domainResolutions = model
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDomainResolutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainResolutionResponseBody?

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
            var model = DescribeDomainResolutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHistoryApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var historyVersion: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.historyVersion != nil {
            map["HistoryVersion"] = self.historyVersion!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("HistoryVersion") && dict["HistoryVersion"] != nil {
            self.historyVersion = dict["HistoryVersion"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeHistoryApiResponseBody : Tea.TeaModel {
    public class ConstantParameters : Tea.TeaModel {
        public class ConstantParameter : Tea.TeaModel {
            public var constantValue: String?

            public var description_: String?

            public var location: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.constantValue != nil {
                    map["ConstantValue"] = self.constantValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConstantValue") && dict["ConstantValue"] != nil {
                    self.constantValue = dict["ConstantValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var constantParameter: [DescribeHistoryApiResponseBody.ConstantParameters.ConstantParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constantParameter != nil {
                var tmp : [Any] = []
                for k in self.constantParameter! {
                    tmp.append(k.toMap())
                }
                map["ConstantParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConstantParameter") && dict["ConstantParameter"] != nil {
                var tmp : [DescribeHistoryApiResponseBody.ConstantParameters.ConstantParameter] = []
                for v in dict["ConstantParameter"] as! [Any] {
                    var model = DescribeHistoryApiResponseBody.ConstantParameters.ConstantParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.constantParameter = tmp
            }
        }
    }
    public class CustomSystemParameters : Tea.TeaModel {
        public class CustomSystemParameter : Tea.TeaModel {
            public var demoValue: String?

            public var description_: String?

            public var location: String?

            public var parameterName: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ParameterName") && dict["ParameterName"] != nil {
                    self.parameterName = dict["ParameterName"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var customSystemParameter: [DescribeHistoryApiResponseBody.CustomSystemParameters.CustomSystemParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customSystemParameter != nil {
                var tmp : [Any] = []
                for k in self.customSystemParameter! {
                    tmp.append(k.toMap())
                }
                map["CustomSystemParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomSystemParameter") && dict["CustomSystemParameter"] != nil {
                var tmp : [DescribeHistoryApiResponseBody.CustomSystemParameters.CustomSystemParameter] = []
                for v in dict["CustomSystemParameter"] as! [Any] {
                    var model = DescribeHistoryApiResponseBody.CustomSystemParameters.CustomSystemParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.customSystemParameter = tmp
            }
        }
    }
    public class ErrorCodeSamples : Tea.TeaModel {
        public class ErrorCodeSample : Tea.TeaModel {
            public var code: String?

            public var description_: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var errorCodeSample: [DescribeHistoryApiResponseBody.ErrorCodeSamples.ErrorCodeSample]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCodeSample != nil {
                var tmp : [Any] = []
                for k in self.errorCodeSample! {
                    tmp.append(k.toMap())
                }
                map["ErrorCodeSample"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCodeSample") && dict["ErrorCodeSample"] != nil {
                var tmp : [DescribeHistoryApiResponseBody.ErrorCodeSamples.ErrorCodeSample] = []
                for v in dict["ErrorCodeSample"] as! [Any] {
                    var model = DescribeHistoryApiResponseBody.ErrorCodeSamples.ErrorCodeSample()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.errorCodeSample = tmp
            }
        }
    }
    public class FunctionComputeConfig : Tea.TeaModel {
        public var fcRegionId: String?

        public var functionName: String?

        public var roleArn: String?

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
            if self.fcRegionId != nil {
                map["FcRegionId"] = self.fcRegionId!
            }
            if self.functionName != nil {
                map["FunctionName"] = self.functionName!
            }
            if self.roleArn != nil {
                map["RoleArn"] = self.roleArn!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FcRegionId") && dict["FcRegionId"] != nil {
                self.fcRegionId = dict["FcRegionId"] as! String
            }
            if dict.keys.contains("FunctionName") && dict["FunctionName"] != nil {
                self.functionName = dict["FunctionName"] as! String
            }
            if dict.keys.contains("RoleArn") && dict["RoleArn"] != nil {
                self.roleArn = dict["RoleArn"] as! String
            }
            if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                self.serviceName = dict["ServiceName"] as! String
            }
        }
    }
    public class OpenIdConnectConfig : Tea.TeaModel {
        public var idTokenParamName: String?

        public var openIdApiType: String?

        public var publicKey: String?

        public var publicKeyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.idTokenParamName != nil {
                map["IdTokenParamName"] = self.idTokenParamName!
            }
            if self.openIdApiType != nil {
                map["OpenIdApiType"] = self.openIdApiType!
            }
            if self.publicKey != nil {
                map["PublicKey"] = self.publicKey!
            }
            if self.publicKeyId != nil {
                map["PublicKeyId"] = self.publicKeyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IdTokenParamName") && dict["IdTokenParamName"] != nil {
                self.idTokenParamName = dict["IdTokenParamName"] as! String
            }
            if dict.keys.contains("OpenIdApiType") && dict["OpenIdApiType"] != nil {
                self.openIdApiType = dict["OpenIdApiType"] as! String
            }
            if dict.keys.contains("PublicKey") && dict["PublicKey"] != nil {
                self.publicKey = dict["PublicKey"] as! String
            }
            if dict.keys.contains("PublicKeyId") && dict["PublicKeyId"] != nil {
                self.publicKeyId = dict["PublicKeyId"] as! String
            }
        }
    }
    public class PathParameters : Tea.TeaModel {
        public class PathParameter : Tea.TeaModel {
            public var apiParameterName: String?

            public var demoValue: String?

            public var description_: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var pathParameter: [DescribeHistoryApiResponseBody.PathParameters.PathParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pathParameter != nil {
                var tmp : [Any] = []
                for k in self.pathParameter! {
                    tmp.append(k.toMap())
                }
                map["PathParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PathParameter") && dict["PathParameter"] != nil {
                var tmp : [DescribeHistoryApiResponseBody.PathParameters.PathParameter] = []
                for v in dict["PathParameter"] as! [Any] {
                    var model = DescribeHistoryApiResponseBody.PathParameters.PathParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pathParameter = tmp
            }
        }
    }
    public class RequestBody : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.maxValue != nil {
                    map["MaxValue"] = self.maxValue!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                if self.minValue != nil {
                    map["MinValue"] = self.minValue!
                }
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var requestParam: [DescribeHistoryApiResponseBody.RequestBody.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeHistoryApiResponseBody.RequestBody.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeHistoryApiResponseBody.RequestBody.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class RequestHeaders : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.maxValue != nil {
                    map["MaxValue"] = self.maxValue!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                if self.minValue != nil {
                    map["MinValue"] = self.minValue!
                }
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var requestParam: [DescribeHistoryApiResponseBody.RequestHeaders.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeHistoryApiResponseBody.RequestHeaders.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeHistoryApiResponseBody.RequestHeaders.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class RequestQueries : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.maxValue != nil {
                    map["MaxValue"] = self.maxValue!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                if self.minValue != nil {
                    map["MinValue"] = self.minValue!
                }
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var requestParam: [DescribeHistoryApiResponseBody.RequestQueries.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeHistoryApiResponseBody.RequestQueries.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeHistoryApiResponseBody.RequestQueries.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class SystemParameters : Tea.TeaModel {
        public class SystemParameter : Tea.TeaModel {
            public var demoValue: String?

            public var description_: String?

            public var location: String?

            public var parameterName: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ParameterName") && dict["ParameterName"] != nil {
                    self.parameterName = dict["ParameterName"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var systemParameter: [DescribeHistoryApiResponseBody.SystemParameters.SystemParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.systemParameter != nil {
                var tmp : [Any] = []
                for k in self.systemParameter! {
                    tmp.append(k.toMap())
                }
                map["SystemParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SystemParameter") && dict["SystemParameter"] != nil {
                var tmp : [DescribeHistoryApiResponseBody.SystemParameters.SystemParameter] = []
                for v in dict["SystemParameter"] as! [Any] {
                    var model = DescribeHistoryApiResponseBody.SystemParameters.SystemParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.systemParameter = tmp
            }
        }
    }
    public var allowSignatureMethod: String?

    public var apiId: String?

    public var apiName: String?

    public var authType: String?

    public var bodyFormat: String?

    public var constantParameters: DescribeHistoryApiResponseBody.ConstantParameters?

    public var customSystemParameters: DescribeHistoryApiResponseBody.CustomSystemParameters?

    public var deployedTime: String?

    public var description_: String?

    public var errorCodeSamples: DescribeHistoryApiResponseBody.ErrorCodeSamples?

    public var failResultSample: String?

    public var functionComputeConfig: DescribeHistoryApiResponseBody.FunctionComputeConfig?

    public var groupId: String?

    public var groupName: String?

    public var historyVersion: String?

    public var httpMethod: String?

    public var httpProtocol: String?

    public var mock: String?

    public var mockResult: String?

    public var openIdConnectConfig: DescribeHistoryApiResponseBody.OpenIdConnectConfig?

    public var originResultDescription: String?

    public var path: String?

    public var pathParameters: DescribeHistoryApiResponseBody.PathParameters?

    public var postBodyDescription: String?

    public var postBodyType: String?

    public var regionId: String?

    public var requestBody: DescribeHistoryApiResponseBody.RequestBody?

    public var requestHeaders: DescribeHistoryApiResponseBody.RequestHeaders?

    public var requestId: String?

    public var requestMode: String?

    public var requestQueries: DescribeHistoryApiResponseBody.RequestQueries?

    public var resultSample: String?

    public var resultType: String?

    public var serviceAddress: String?

    public var serviceFCEnable: String?

    public var serviceProtocol: String?

    public var serviceTimeout: Int32?

    public var serviceVpcEnable: String?

    public var status: String?

    public var systemParameters: DescribeHistoryApiResponseBody.SystemParameters?

    public var visibility: String?

    public var vpcName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.constantParameters?.validate()
        try self.customSystemParameters?.validate()
        try self.errorCodeSamples?.validate()
        try self.functionComputeConfig?.validate()
        try self.openIdConnectConfig?.validate()
        try self.pathParameters?.validate()
        try self.requestBody?.validate()
        try self.requestHeaders?.validate()
        try self.requestQueries?.validate()
        try self.systemParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowSignatureMethod != nil {
            map["AllowSignatureMethod"] = self.allowSignatureMethod!
        }
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.bodyFormat != nil {
            map["BodyFormat"] = self.bodyFormat!
        }
        if self.constantParameters != nil {
            map["ConstantParameters"] = self.constantParameters?.toMap()
        }
        if self.customSystemParameters != nil {
            map["CustomSystemParameters"] = self.customSystemParameters?.toMap()
        }
        if self.deployedTime != nil {
            map["DeployedTime"] = self.deployedTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.errorCodeSamples != nil {
            map["ErrorCodeSamples"] = self.errorCodeSamples?.toMap()
        }
        if self.failResultSample != nil {
            map["FailResultSample"] = self.failResultSample!
        }
        if self.functionComputeConfig != nil {
            map["FunctionComputeConfig"] = self.functionComputeConfig?.toMap()
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.historyVersion != nil {
            map["HistoryVersion"] = self.historyVersion!
        }
        if self.httpMethod != nil {
            map["HttpMethod"] = self.httpMethod!
        }
        if self.httpProtocol != nil {
            map["HttpProtocol"] = self.httpProtocol!
        }
        if self.mock != nil {
            map["Mock"] = self.mock!
        }
        if self.mockResult != nil {
            map["MockResult"] = self.mockResult!
        }
        if self.openIdConnectConfig != nil {
            map["OpenIdConnectConfig"] = self.openIdConnectConfig?.toMap()
        }
        if self.originResultDescription != nil {
            map["OriginResultDescription"] = self.originResultDescription!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.pathParameters != nil {
            map["PathParameters"] = self.pathParameters?.toMap()
        }
        if self.postBodyDescription != nil {
            map["PostBodyDescription"] = self.postBodyDescription!
        }
        if self.postBodyType != nil {
            map["PostBodyType"] = self.postBodyType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestBody != nil {
            map["RequestBody"] = self.requestBody?.toMap()
        }
        if self.requestHeaders != nil {
            map["RequestHeaders"] = self.requestHeaders?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requestMode != nil {
            map["RequestMode"] = self.requestMode!
        }
        if self.requestQueries != nil {
            map["RequestQueries"] = self.requestQueries?.toMap()
        }
        if self.resultSample != nil {
            map["ResultSample"] = self.resultSample!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.serviceAddress != nil {
            map["ServiceAddress"] = self.serviceAddress!
        }
        if self.serviceFCEnable != nil {
            map["ServiceFCEnable"] = self.serviceFCEnable!
        }
        if self.serviceProtocol != nil {
            map["ServiceProtocol"] = self.serviceProtocol!
        }
        if self.serviceTimeout != nil {
            map["ServiceTimeout"] = self.serviceTimeout!
        }
        if self.serviceVpcEnable != nil {
            map["ServiceVpcEnable"] = self.serviceVpcEnable!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.systemParameters != nil {
            map["SystemParameters"] = self.systemParameters?.toMap()
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        if self.vpcName != nil {
            map["VpcName"] = self.vpcName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowSignatureMethod") && dict["AllowSignatureMethod"] != nil {
            self.allowSignatureMethod = dict["AllowSignatureMethod"] as! String
        }
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("BodyFormat") && dict["BodyFormat"] != nil {
            self.bodyFormat = dict["BodyFormat"] as! String
        }
        if dict.keys.contains("ConstantParameters") && dict["ConstantParameters"] != nil {
            var model = DescribeHistoryApiResponseBody.ConstantParameters()
            model.fromMap(dict["ConstantParameters"] as! [String: Any])
            self.constantParameters = model
        }
        if dict.keys.contains("CustomSystemParameters") && dict["CustomSystemParameters"] != nil {
            var model = DescribeHistoryApiResponseBody.CustomSystemParameters()
            model.fromMap(dict["CustomSystemParameters"] as! [String: Any])
            self.customSystemParameters = model
        }
        if dict.keys.contains("DeployedTime") && dict["DeployedTime"] != nil {
            self.deployedTime = dict["DeployedTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ErrorCodeSamples") && dict["ErrorCodeSamples"] != nil {
            var model = DescribeHistoryApiResponseBody.ErrorCodeSamples()
            model.fromMap(dict["ErrorCodeSamples"] as! [String: Any])
            self.errorCodeSamples = model
        }
        if dict.keys.contains("FailResultSample") && dict["FailResultSample"] != nil {
            self.failResultSample = dict["FailResultSample"] as! String
        }
        if dict.keys.contains("FunctionComputeConfig") && dict["FunctionComputeConfig"] != nil {
            var model = DescribeHistoryApiResponseBody.FunctionComputeConfig()
            model.fromMap(dict["FunctionComputeConfig"] as! [String: Any])
            self.functionComputeConfig = model
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("HistoryVersion") && dict["HistoryVersion"] != nil {
            self.historyVersion = dict["HistoryVersion"] as! String
        }
        if dict.keys.contains("HttpMethod") && dict["HttpMethod"] != nil {
            self.httpMethod = dict["HttpMethod"] as! String
        }
        if dict.keys.contains("HttpProtocol") && dict["HttpProtocol"] != nil {
            self.httpProtocol = dict["HttpProtocol"] as! String
        }
        if dict.keys.contains("Mock") && dict["Mock"] != nil {
            self.mock = dict["Mock"] as! String
        }
        if dict.keys.contains("MockResult") && dict["MockResult"] != nil {
            self.mockResult = dict["MockResult"] as! String
        }
        if dict.keys.contains("OpenIdConnectConfig") && dict["OpenIdConnectConfig"] != nil {
            var model = DescribeHistoryApiResponseBody.OpenIdConnectConfig()
            model.fromMap(dict["OpenIdConnectConfig"] as! [String: Any])
            self.openIdConnectConfig = model
        }
        if dict.keys.contains("OriginResultDescription") && dict["OriginResultDescription"] != nil {
            self.originResultDescription = dict["OriginResultDescription"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("PathParameters") && dict["PathParameters"] != nil {
            var model = DescribeHistoryApiResponseBody.PathParameters()
            model.fromMap(dict["PathParameters"] as! [String: Any])
            self.pathParameters = model
        }
        if dict.keys.contains("PostBodyDescription") && dict["PostBodyDescription"] != nil {
            self.postBodyDescription = dict["PostBodyDescription"] as! String
        }
        if dict.keys.contains("PostBodyType") && dict["PostBodyType"] != nil {
            self.postBodyType = dict["PostBodyType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestBody") && dict["RequestBody"] != nil {
            var model = DescribeHistoryApiResponseBody.RequestBody()
            model.fromMap(dict["RequestBody"] as! [String: Any])
            self.requestBody = model
        }
        if dict.keys.contains("RequestHeaders") && dict["RequestHeaders"] != nil {
            var model = DescribeHistoryApiResponseBody.RequestHeaders()
            model.fromMap(dict["RequestHeaders"] as! [String: Any])
            self.requestHeaders = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RequestMode") && dict["RequestMode"] != nil {
            self.requestMode = dict["RequestMode"] as! String
        }
        if dict.keys.contains("RequestQueries") && dict["RequestQueries"] != nil {
            var model = DescribeHistoryApiResponseBody.RequestQueries()
            model.fromMap(dict["RequestQueries"] as! [String: Any])
            self.requestQueries = model
        }
        if dict.keys.contains("ResultSample") && dict["ResultSample"] != nil {
            self.resultSample = dict["ResultSample"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("ServiceAddress") && dict["ServiceAddress"] != nil {
            self.serviceAddress = dict["ServiceAddress"] as! String
        }
        if dict.keys.contains("ServiceFCEnable") && dict["ServiceFCEnable"] != nil {
            self.serviceFCEnable = dict["ServiceFCEnable"] as! String
        }
        if dict.keys.contains("ServiceProtocol") && dict["ServiceProtocol"] != nil {
            self.serviceProtocol = dict["ServiceProtocol"] as! String
        }
        if dict.keys.contains("ServiceTimeout") && dict["ServiceTimeout"] != nil {
            self.serviceTimeout = dict["ServiceTimeout"] as! Int32
        }
        if dict.keys.contains("ServiceVpcEnable") && dict["ServiceVpcEnable"] != nil {
            self.serviceVpcEnable = dict["ServiceVpcEnable"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SystemParameters") && dict["SystemParameters"] != nil {
            var model = DescribeHistoryApiResponseBody.SystemParameters()
            model.fromMap(dict["SystemParameters"] as! [String: Any])
            self.systemParameters = model
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
        if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
            self.vpcName = dict["VpcName"] as! String
        }
    }
}

public class DescribeHistoryApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHistoryApiResponseBody?

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
            var model = DescribeHistoryApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHistoryApisRequest : Tea.TeaModel {
    public var apiId: String?

    public var apiName: String?

    public var groupId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeHistoryApisResponseBody : Tea.TeaModel {
    public class ApiInfos : Tea.TeaModel {
        public class ApiInfo : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var deployedTime: String?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var historyVersion: String?

            public var regionId: String?

            public var stageName: String?

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
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.deployedTime != nil {
                    map["DeployedTime"] = self.deployedTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.historyVersion != nil {
                    map["HistoryVersion"] = self.historyVersion!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("DeployedTime") && dict["DeployedTime"] != nil {
                    self.deployedTime = dict["DeployedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("HistoryVersion") && dict["HistoryVersion"] != nil {
                    self.historyVersion = dict["HistoryVersion"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var apiInfo: [DescribeHistoryApisResponseBody.ApiInfos.ApiInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInfo != nil {
                var tmp : [Any] = []
                for k in self.apiInfo! {
                    tmp.append(k.toMap())
                }
                map["ApiInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInfo") && dict["ApiInfo"] != nil {
                var tmp : [DescribeHistoryApisResponseBody.ApiInfos.ApiInfo] = []
                for v in dict["ApiInfo"] as! [Any] {
                    var model = DescribeHistoryApisResponseBody.ApiInfos.ApiInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiInfo = tmp
            }
        }
    }
    public var apiInfos: DescribeHistoryApisResponseBody.ApiInfos?

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
        try self.apiInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfos != nil {
            map["ApiInfos"] = self.apiInfos?.toMap()
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
        if dict.keys.contains("ApiInfos") && dict["ApiInfos"] != nil {
            var model = DescribeHistoryApisResponseBody.ApiInfos()
            model.fromMap(dict["ApiInfos"] as! [String: Any])
            self.apiInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeHistoryApisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHistoryApisResponseBody?

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
            var model = DescribeHistoryApisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeIpControlPolicyItemsRequest : Tea.TeaModel {
    public var ipControlId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var policyItemId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipControlId != nil {
            map["IpControlId"] = self.ipControlId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyItemId != nil {
            map["PolicyItemId"] = self.policyItemId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpControlId") && dict["IpControlId"] != nil {
            self.ipControlId = dict["IpControlId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PolicyItemId") && dict["PolicyItemId"] != nil {
            self.policyItemId = dict["PolicyItemId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeIpControlPolicyItemsResponseBody : Tea.TeaModel {
    public class IpControlPolicyItems : Tea.TeaModel {
        public class IpControlPolicyItem : Tea.TeaModel {
            public var appId: String?

            public var cidrIp: String?

            public var createTime: String?

            public var modifiedTime: String?

            public var policyItemId: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.cidrIp != nil {
                    map["CidrIp"] = self.cidrIp!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.policyItemId != nil {
                    map["PolicyItemId"] = self.policyItemId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("CidrIp") && dict["CidrIp"] != nil {
                    self.cidrIp = dict["CidrIp"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("PolicyItemId") && dict["PolicyItemId"] != nil {
                    self.policyItemId = dict["PolicyItemId"] as! String
                }
            }
        }
        public var ipControlPolicyItem: [DescribeIpControlPolicyItemsResponseBody.IpControlPolicyItems.IpControlPolicyItem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ipControlPolicyItem != nil {
                var tmp : [Any] = []
                for k in self.ipControlPolicyItem! {
                    tmp.append(k.toMap())
                }
                map["IpControlPolicyItem"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IpControlPolicyItem") && dict["IpControlPolicyItem"] != nil {
                var tmp : [DescribeIpControlPolicyItemsResponseBody.IpControlPolicyItems.IpControlPolicyItem] = []
                for v in dict["IpControlPolicyItem"] as! [Any] {
                    var model = DescribeIpControlPolicyItemsResponseBody.IpControlPolicyItems.IpControlPolicyItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ipControlPolicyItem = tmp
            }
        }
    }
    public var ipControlPolicyItems: DescribeIpControlPolicyItemsResponseBody.IpControlPolicyItems?

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
        try self.ipControlPolicyItems?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipControlPolicyItems != nil {
            map["IpControlPolicyItems"] = self.ipControlPolicyItems?.toMap()
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
        if dict.keys.contains("IpControlPolicyItems") && dict["IpControlPolicyItems"] != nil {
            var model = DescribeIpControlPolicyItemsResponseBody.IpControlPolicyItems()
            model.fromMap(dict["IpControlPolicyItems"] as! [String: Any])
            self.ipControlPolicyItems = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeIpControlPolicyItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIpControlPolicyItemsResponseBody?

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
            var model = DescribeIpControlPolicyItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeIpControlsRequest : Tea.TeaModel {
    public var ipControlId: String?

    public var ipControlName: String?

    public var ipControlType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipControlId != nil {
            map["IpControlId"] = self.ipControlId!
        }
        if self.ipControlName != nil {
            map["IpControlName"] = self.ipControlName!
        }
        if self.ipControlType != nil {
            map["IpControlType"] = self.ipControlType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpControlId") && dict["IpControlId"] != nil {
            self.ipControlId = dict["IpControlId"] as! String
        }
        if dict.keys.contains("IpControlName") && dict["IpControlName"] != nil {
            self.ipControlName = dict["IpControlName"] as! String
        }
        if dict.keys.contains("IpControlType") && dict["IpControlType"] != nil {
            self.ipControlType = dict["IpControlType"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeIpControlsResponseBody : Tea.TeaModel {
    public class IpControlInfos : Tea.TeaModel {
        public class IpControlInfo : Tea.TeaModel {
            public var createTime: String?

            public var description_: String?

            public var ipControlId: String?

            public var ipControlName: String?

            public var ipControlType: String?

            public var modifiedTime: String?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.ipControlId != nil {
                    map["IpControlId"] = self.ipControlId!
                }
                if self.ipControlName != nil {
                    map["IpControlName"] = self.ipControlName!
                }
                if self.ipControlType != nil {
                    map["IpControlType"] = self.ipControlType!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("IpControlId") && dict["IpControlId"] != nil {
                    self.ipControlId = dict["IpControlId"] as! String
                }
                if dict.keys.contains("IpControlName") && dict["IpControlName"] != nil {
                    self.ipControlName = dict["IpControlName"] as! String
                }
                if dict.keys.contains("IpControlType") && dict["IpControlType"] != nil {
                    self.ipControlType = dict["IpControlType"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var ipControlInfo: [DescribeIpControlsResponseBody.IpControlInfos.IpControlInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ipControlInfo != nil {
                var tmp : [Any] = []
                for k in self.ipControlInfo! {
                    tmp.append(k.toMap())
                }
                map["IpControlInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IpControlInfo") && dict["IpControlInfo"] != nil {
                var tmp : [DescribeIpControlsResponseBody.IpControlInfos.IpControlInfo] = []
                for v in dict["IpControlInfo"] as! [Any] {
                    var model = DescribeIpControlsResponseBody.IpControlInfos.IpControlInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ipControlInfo = tmp
            }
        }
    }
    public var ipControlInfos: DescribeIpControlsResponseBody.IpControlInfos?

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
        try self.ipControlInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipControlInfos != nil {
            map["IpControlInfos"] = self.ipControlInfos?.toMap()
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
        if dict.keys.contains("IpControlInfos") && dict["IpControlInfos"] != nil {
            var model = DescribeIpControlsResponseBody.IpControlInfos()
            model.fromMap(dict["IpControlInfos"] as! [String: Any])
            self.ipControlInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeIpControlsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIpControlsResponseBody?

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
            var model = DescribeIpControlsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLogConfigRequest : Tea.TeaModel {
    public var logType: String?

    public var securityToken: String?

    public override init() {
        super.init()
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogType") && dict["LogType"] != nil {
            self.logType = dict["LogType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeLogConfigResponseBody : Tea.TeaModel {
    public class LogInfos : Tea.TeaModel {
        public class LogInfo : Tea.TeaModel {
            public var logType: String?

            public var regionId: String?

            public var slsLogStore: String?

            public var slsProject: String?

            public override init() {
                super.init()
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
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.slsLogStore != nil {
                    map["SlsLogStore"] = self.slsLogStore!
                }
                if self.slsProject != nil {
                    map["SlsProject"] = self.slsProject!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LogType") && dict["LogType"] != nil {
                    self.logType = dict["LogType"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("SlsLogStore") && dict["SlsLogStore"] != nil {
                    self.slsLogStore = dict["SlsLogStore"] as! String
                }
                if dict.keys.contains("SlsProject") && dict["SlsProject"] != nil {
                    self.slsProject = dict["SlsProject"] as! String
                }
            }
        }
        public var logInfo: [DescribeLogConfigResponseBody.LogInfos.LogInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logInfo != nil {
                var tmp : [Any] = []
                for k in self.logInfo! {
                    tmp.append(k.toMap())
                }
                map["LogInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogInfo") && dict["LogInfo"] != nil {
                var tmp : [DescribeLogConfigResponseBody.LogInfos.LogInfo] = []
                for v in dict["LogInfo"] as! [Any] {
                    var model = DescribeLogConfigResponseBody.LogInfos.LogInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.logInfo = tmp
            }
        }
    }
    public var logInfos: DescribeLogConfigResponseBody.LogInfos?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.logInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logInfos != nil {
            map["LogInfos"] = self.logInfos?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogInfos") && dict["LogInfos"] != nil {
            var model = DescribeLogConfigResponseBody.LogInfos()
            model.fromMap(dict["LogInfos"] as! [String: Any])
            self.logInfos = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeLogConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLogConfigResponseBody?

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
            var model = DescribeLogConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePurchasedApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribePurchasedApiResponseBody : Tea.TeaModel {
    public class PathParameters : Tea.TeaModel {
        public class PathParameter : Tea.TeaModel {
            public var apiParameterName: String?

            public var demoValue: String?

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
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
            }
        }
        public var pathParameter: [DescribePurchasedApiResponseBody.PathParameters.PathParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pathParameter != nil {
                var tmp : [Any] = []
                for k in self.pathParameter! {
                    tmp.append(k.toMap())
                }
                map["PathParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PathParameter") && dict["PathParameter"] != nil {
                var tmp : [DescribePurchasedApiResponseBody.PathParameters.PathParameter] = []
                for v in dict["PathParameter"] as! [Any] {
                    var model = DescribePurchasedApiResponseBody.PathParameters.PathParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pathParameter = tmp
            }
        }
    }
    public class RequestBody : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: String?

            public var minLength: Int64?

            public var minValue: String?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.maxValue != nil {
                    map["MaxValue"] = self.maxValue!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                if self.minValue != nil {
                    map["MinValue"] = self.minValue!
                }
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! String
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! String
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
            }
        }
        public var requestParam: [DescribePurchasedApiResponseBody.RequestBody.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribePurchasedApiResponseBody.RequestBody.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribePurchasedApiResponseBody.RequestBody.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class RequestHeaders : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.maxValue != nil {
                    map["MaxValue"] = self.maxValue!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                if self.minValue != nil {
                    map["MinValue"] = self.minValue!
                }
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
            }
        }
        public var requestParam: [DescribePurchasedApiResponseBody.RequestHeaders.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribePurchasedApiResponseBody.RequestHeaders.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribePurchasedApiResponseBody.RequestHeaders.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class RequestQueries : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: String?

            public var minLength: Int64?

            public var minValue: String?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.maxValue != nil {
                    map["MaxValue"] = self.maxValue!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                if self.minValue != nil {
                    map["MinValue"] = self.minValue!
                }
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! String
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! String
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
            }
        }
        public var requestParam: [DescribePurchasedApiResponseBody.RequestQueries.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribePurchasedApiResponseBody.RequestQueries.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribePurchasedApiResponseBody.RequestQueries.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public var apiId: String?

    public var apiName: String?

    public var bodyFormat: String?

    public var createdTime: String?

    public var description_: String?

    public var groupId: String?

    public var groupName: String?

    public var httpMethod: String?

    public var httpProtocol: String?

    public var mock: String?

    public var mockResult: String?

    public var modifiedTime: String?

    public var path: String?

    public var pathParameters: DescribePurchasedApiResponseBody.PathParameters?

    public var postBodyDescription: String?

    public var postBodyType: String?

    public var regionId: String?

    public var requestBody: DescribePurchasedApiResponseBody.RequestBody?

    public var requestHeaders: DescribePurchasedApiResponseBody.RequestHeaders?

    public var requestId: String?

    public var requestQueries: DescribePurchasedApiResponseBody.RequestQueries?

    public var resultSample: String?

    public var resultType: String?

    public var visibility: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pathParameters?.validate()
        try self.requestBody?.validate()
        try self.requestHeaders?.validate()
        try self.requestQueries?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.bodyFormat != nil {
            map["BodyFormat"] = self.bodyFormat!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.httpMethod != nil {
            map["HttpMethod"] = self.httpMethod!
        }
        if self.httpProtocol != nil {
            map["HttpProtocol"] = self.httpProtocol!
        }
        if self.mock != nil {
            map["Mock"] = self.mock!
        }
        if self.mockResult != nil {
            map["MockResult"] = self.mockResult!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.pathParameters != nil {
            map["PathParameters"] = self.pathParameters?.toMap()
        }
        if self.postBodyDescription != nil {
            map["PostBodyDescription"] = self.postBodyDescription!
        }
        if self.postBodyType != nil {
            map["PostBodyType"] = self.postBodyType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestBody != nil {
            map["RequestBody"] = self.requestBody?.toMap()
        }
        if self.requestHeaders != nil {
            map["RequestHeaders"] = self.requestHeaders?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requestQueries != nil {
            map["RequestQueries"] = self.requestQueries?.toMap()
        }
        if self.resultSample != nil {
            map["ResultSample"] = self.resultSample!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("BodyFormat") && dict["BodyFormat"] != nil {
            self.bodyFormat = dict["BodyFormat"] as! String
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("HttpMethod") && dict["HttpMethod"] != nil {
            self.httpMethod = dict["HttpMethod"] as! String
        }
        if dict.keys.contains("HttpProtocol") && dict["HttpProtocol"] != nil {
            self.httpProtocol = dict["HttpProtocol"] as! String
        }
        if dict.keys.contains("Mock") && dict["Mock"] != nil {
            self.mock = dict["Mock"] as! String
        }
        if dict.keys.contains("MockResult") && dict["MockResult"] != nil {
            self.mockResult = dict["MockResult"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("PathParameters") && dict["PathParameters"] != nil {
            var model = DescribePurchasedApiResponseBody.PathParameters()
            model.fromMap(dict["PathParameters"] as! [String: Any])
            self.pathParameters = model
        }
        if dict.keys.contains("PostBodyDescription") && dict["PostBodyDescription"] != nil {
            self.postBodyDescription = dict["PostBodyDescription"] as! String
        }
        if dict.keys.contains("PostBodyType") && dict["PostBodyType"] != nil {
            self.postBodyType = dict["PostBodyType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestBody") && dict["RequestBody"] != nil {
            var model = DescribePurchasedApiResponseBody.RequestBody()
            model.fromMap(dict["RequestBody"] as! [String: Any])
            self.requestBody = model
        }
        if dict.keys.contains("RequestHeaders") && dict["RequestHeaders"] != nil {
            var model = DescribePurchasedApiResponseBody.RequestHeaders()
            model.fromMap(dict["RequestHeaders"] as! [String: Any])
            self.requestHeaders = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RequestQueries") && dict["RequestQueries"] != nil {
            var model = DescribePurchasedApiResponseBody.RequestQueries()
            model.fromMap(dict["RequestQueries"] as! [String: Any])
            self.requestQueries = model
        }
        if dict.keys.contains("ResultSample") && dict["ResultSample"] != nil {
            self.resultSample = dict["ResultSample"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
    }
}

public class DescribePurchasedApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePurchasedApiResponseBody?

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
            var model = DescribePurchasedApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePurchasedApiGroupDetailRequest : Tea.TeaModel {
    public var groupId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribePurchasedApiGroupDetailResponseBody : Tea.TeaModel {
    public class DomainItems : Tea.TeaModel {
        public class DomainItem : Tea.TeaModel {
            public var domainName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                    self.domainName = dict["DomainName"] as! String
                }
            }
        }
        public var domainItem: [DescribePurchasedApiGroupDetailResponseBody.DomainItems.DomainItem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainItem != nil {
                var tmp : [Any] = []
                for k in self.domainItem! {
                    tmp.append(k.toMap())
                }
                map["DomainItem"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainItem") && dict["DomainItem"] != nil {
                var tmp : [DescribePurchasedApiGroupDetailResponseBody.DomainItems.DomainItem] = []
                for v in dict["DomainItem"] as! [Any] {
                    var model = DescribePurchasedApiGroupDetailResponseBody.DomainItems.DomainItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domainItem = tmp
            }
        }
    }
    public var createdTime: String?

    public var description_: String?

    public var domainItems: DescribePurchasedApiGroupDetailResponseBody.DomainItems?

    public var groupId: String?

    public var groupName: String?

    public var modifiedTime: String?

    public var regionId: String?

    public var requestId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainItems?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.domainItems != nil {
            map["DomainItems"] = self.domainItems?.toMap()
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DomainItems") && dict["DomainItems"] != nil {
            var model = DescribePurchasedApiGroupDetailResponseBody.DomainItems()
            model.fromMap(dict["DomainItems"] as! [String: Any])
            self.domainItems = model
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribePurchasedApiGroupDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePurchasedApiGroupDetailResponseBody?

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
            var model = DescribePurchasedApiGroupDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePurchasedApiGroupsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public override init() {
        super.init()
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribePurchasedApiGroupsResponseBody : Tea.TeaModel {
    public class PurchasedApiGroupAttributes : Tea.TeaModel {
        public class PurchasedApiGroupAttribute : Tea.TeaModel {
            public var billingType: String?

            public var createdTime: String?

            public var expireTime: String?

            public var groupDescription: String?

            public var groupId: String?

            public var groupName: String?

            public var invokeTimesMax: Int64?

            public var invokeTimesNow: Int64?

            public var modifiedTime: String?

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
                if self.billingType != nil {
                    map["BillingType"] = self.billingType!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.groupDescription != nil {
                    map["GroupDescription"] = self.groupDescription!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.invokeTimesMax != nil {
                    map["InvokeTimesMax"] = self.invokeTimesMax!
                }
                if self.invokeTimesNow != nil {
                    map["InvokeTimesNow"] = self.invokeTimesNow!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BillingType") && dict["BillingType"] != nil {
                    self.billingType = dict["BillingType"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("GroupDescription") && dict["GroupDescription"] != nil {
                    self.groupDescription = dict["GroupDescription"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("InvokeTimesMax") && dict["InvokeTimesMax"] != nil {
                    self.invokeTimesMax = dict["InvokeTimesMax"] as! Int64
                }
                if dict.keys.contains("InvokeTimesNow") && dict["InvokeTimesNow"] != nil {
                    self.invokeTimesNow = dict["InvokeTimesNow"] as! Int64
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var purchasedApiGroupAttribute: [DescribePurchasedApiGroupsResponseBody.PurchasedApiGroupAttributes.PurchasedApiGroupAttribute]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.purchasedApiGroupAttribute != nil {
                var tmp : [Any] = []
                for k in self.purchasedApiGroupAttribute! {
                    tmp.append(k.toMap())
                }
                map["PurchasedApiGroupAttribute"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PurchasedApiGroupAttribute") && dict["PurchasedApiGroupAttribute"] != nil {
                var tmp : [DescribePurchasedApiGroupsResponseBody.PurchasedApiGroupAttributes.PurchasedApiGroupAttribute] = []
                for v in dict["PurchasedApiGroupAttribute"] as! [Any] {
                    var model = DescribePurchasedApiGroupsResponseBody.PurchasedApiGroupAttributes.PurchasedApiGroupAttribute()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.purchasedApiGroupAttribute = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var purchasedApiGroupAttributes: DescribePurchasedApiGroupsResponseBody.PurchasedApiGroupAttributes?

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
        try self.purchasedApiGroupAttributes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.purchasedApiGroupAttributes != nil {
            map["PurchasedApiGroupAttributes"] = self.purchasedApiGroupAttributes?.toMap()
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PurchasedApiGroupAttributes") && dict["PurchasedApiGroupAttributes"] != nil {
            var model = DescribePurchasedApiGroupsResponseBody.PurchasedApiGroupAttributes()
            model.fromMap(dict["PurchasedApiGroupAttributes"] as! [String: Any])
            self.purchasedApiGroupAttributes = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribePurchasedApiGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePurchasedApiGroupsResponseBody?

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
            var model = DescribePurchasedApiGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePurchasedApisRequest : Tea.TeaModel {
    public var apiId: String?

    public var apiName: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribePurchasedApisResponseBody : Tea.TeaModel {
    public class ApiInfos : Tea.TeaModel {
        public class ApiInfo : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var deployedTime: String?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var modifiedTime: String?

            public var regionId: String?

            public var stageName: String?

            public var visibility: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.deployedTime != nil {
                    map["DeployedTime"] = self.deployedTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("DeployedTime") && dict["DeployedTime"] != nil {
                    self.deployedTime = dict["DeployedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var apiInfo: [DescribePurchasedApisResponseBody.ApiInfos.ApiInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInfo != nil {
                var tmp : [Any] = []
                for k in self.apiInfo! {
                    tmp.append(k.toMap())
                }
                map["ApiInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInfo") && dict["ApiInfo"] != nil {
                var tmp : [DescribePurchasedApisResponseBody.ApiInfos.ApiInfo] = []
                for v in dict["ApiInfo"] as! [Any] {
                    var model = DescribePurchasedApisResponseBody.ApiInfos.ApiInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiInfo = tmp
            }
        }
    }
    public var apiInfos: DescribePurchasedApisResponseBody.ApiInfos?

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
        try self.apiInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfos != nil {
            map["ApiInfos"] = self.apiInfos?.toMap()
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
        if dict.keys.contains("ApiInfos") && dict["ApiInfos"] != nil {
            var model = DescribePurchasedApisResponseBody.ApiInfos()
            model.fromMap(dict["ApiInfos"] as! [String: Any])
            self.apiInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribePurchasedApisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePurchasedApisResponseBody?

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
            var model = DescribePurchasedApisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRaceWorkForInnerRequest : Tea.TeaModel {
    public var groupId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeRaceWorkForInnerResponseBody : Tea.TeaModel {
    public var commodityCode: String?

    public var createTime: String?

    public var groupId: String?

    public var keywords: String?

    public var logoUrl: String?

    public var modifiedTime: String?

    public var requestId: String?

    public var shortDescription: String?

    public var workName: String?

    public override init() {
        super.init()
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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.logoUrl != nil {
            map["LogoUrl"] = self.logoUrl!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.shortDescription != nil {
            map["ShortDescription"] = self.shortDescription!
        }
        if self.workName != nil {
            map["WorkName"] = self.workName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
            self.keywords = dict["Keywords"] as! String
        }
        if dict.keys.contains("LogoUrl") && dict["LogoUrl"] != nil {
            self.logoUrl = dict["LogoUrl"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ShortDescription") && dict["ShortDescription"] != nil {
            self.shortDescription = dict["ShortDescription"] as! String
        }
        if dict.keys.contains("WorkName") && dict["WorkName"] != nil {
            self.workName = dict["WorkName"] as! String
        }
    }
}

public class DescribeRaceWorkForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRaceWorkForInnerResponseBody?

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
            var model = DescribeRaceWorkForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var language: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
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
                if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionEndpoint") && dict["RegionEndpoint"] != nil {
                    self.regionEndpoint = dict["RegionEndpoint"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var region: [DescribeRegionsResponseBody.Regions.Region]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["Region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") && dict["Region"] != nil {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in dict["Region"] as! [Any] {
                    var model = DescribeRegionsResponseBody.Regions.Region()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.region = tmp
            }
        }
    }
    public var regions: DescribeRegionsResponseBody.Regions?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRulesByApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeRulesByApiResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class Rule : Tea.TeaModel {
            public var createdTime: Int32?

            public var ruleId: String?

            public var ruleName: String?

            public var ruleType: String?

            public override init() {
                super.init()
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
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.ruleType != nil {
                    map["RuleType"] = self.ruleType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! Int32
                }
                if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                    self.ruleId = dict["RuleId"] as! String
                }
                if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
                    self.ruleType = dict["RuleType"] as! String
                }
            }
        }
        public var rule: [DescribeRulesByApiResponseBody.Rules.Rule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.rule != nil {
                var tmp : [Any] = []
                for k in self.rule! {
                    tmp.append(k.toMap())
                }
                map["Rule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Rule") && dict["Rule"] != nil {
                var tmp : [DescribeRulesByApiResponseBody.Rules.Rule] = []
                for v in dict["Rule"] as! [Any] {
                    var model = DescribeRulesByApiResponseBody.Rules.Rule()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rule = tmp
            }
        }
    }
    public var requestId: String?

    public var rules: DescribeRulesByApiResponseBody.Rules?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rules != nil {
            map["Rules"] = self.rules?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rules") && dict["Rules"] != nil {
            var model = DescribeRulesByApiResponseBody.Rules()
            model.fromMap(dict["Rules"] as! [String: Any])
            self.rules = model
        }
    }
}

public class DescribeRulesByApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRulesByApiResponseBody?

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
            var model = DescribeRulesByApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSecretKeysRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var secretKeyId: String?

    public var secretKeyName: String?

    public var securityToken: String?

    public override init() {
        super.init()
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
        if self.secretKeyId != nil {
            map["SecretKeyId"] = self.secretKeyId!
        }
        if self.secretKeyName != nil {
            map["SecretKeyName"] = self.secretKeyName!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecretKeyId") && dict["SecretKeyId"] != nil {
            self.secretKeyId = dict["SecretKeyId"] as! String
        }
        if dict.keys.contains("SecretKeyName") && dict["SecretKeyName"] != nil {
            self.secretKeyName = dict["SecretKeyName"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeSecretKeysResponseBody : Tea.TeaModel {
    public class SecretKeys : Tea.TeaModel {
        public class SecretKey : Tea.TeaModel {
            public var createdTime: String?

            public var modifiedTime: String?

            public var regionId: String?

            public var secretKey: String?

            public var secretKeyId: String?

            public var secretKeyName: String?

            public var secretKeyValue: String?

            public override init() {
                super.init()
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
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.secretKey != nil {
                    map["SecretKey"] = self.secretKey!
                }
                if self.secretKeyId != nil {
                    map["SecretKeyId"] = self.secretKeyId!
                }
                if self.secretKeyName != nil {
                    map["SecretKeyName"] = self.secretKeyName!
                }
                if self.secretKeyValue != nil {
                    map["SecretKeyValue"] = self.secretKeyValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("SecretKey") && dict["SecretKey"] != nil {
                    self.secretKey = dict["SecretKey"] as! String
                }
                if dict.keys.contains("SecretKeyId") && dict["SecretKeyId"] != nil {
                    self.secretKeyId = dict["SecretKeyId"] as! String
                }
                if dict.keys.contains("SecretKeyName") && dict["SecretKeyName"] != nil {
                    self.secretKeyName = dict["SecretKeyName"] as! String
                }
                if dict.keys.contains("SecretKeyValue") && dict["SecretKeyValue"] != nil {
                    self.secretKeyValue = dict["SecretKeyValue"] as! String
                }
            }
        }
        public var secretKey: [DescribeSecretKeysResponseBody.SecretKeys.SecretKey]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.secretKey != nil {
                var tmp : [Any] = []
                for k in self.secretKey! {
                    tmp.append(k.toMap())
                }
                map["SecretKey"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SecretKey") && dict["SecretKey"] != nil {
                var tmp : [DescribeSecretKeysResponseBody.SecretKeys.SecretKey] = []
                for v in dict["SecretKey"] as! [Any] {
                    var model = DescribeSecretKeysResponseBody.SecretKeys.SecretKey()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.secretKey = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var secretKeys: DescribeSecretKeysResponseBody.SecretKeys?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.secretKeys?.validate()
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
        if self.secretKeys != nil {
            map["SecretKeys"] = self.secretKeys?.toMap()
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretKeys") && dict["SecretKeys"] != nil {
            var model = DescribeSecretKeysResponseBody.SecretKeys()
            model.fromMap(dict["SecretKeys"] as! [String: Any])
            self.secretKeys = model
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeSecretKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecretKeysResponseBody?

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
            var model = DescribeSecretKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSystemParametersRequest : Tea.TeaModel {
    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeSystemParametersResponseBody : Tea.TeaModel {
    public class SystemParameters : Tea.TeaModel {
        public class SystemParameter : Tea.TeaModel {
            public var demoValue: String?

            public var description_: String?

            public var paramName: String?

            public var paramType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.paramName != nil {
                    map["ParamName"] = self.paramName!
                }
                if self.paramType != nil {
                    map["ParamType"] = self.paramType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ParamName") && dict["ParamName"] != nil {
                    self.paramName = dict["ParamName"] as! String
                }
                if dict.keys.contains("ParamType") && dict["ParamType"] != nil {
                    self.paramType = dict["ParamType"] as! String
                }
            }
        }
        public var systemParameter: [DescribeSystemParametersResponseBody.SystemParameters.SystemParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.systemParameter != nil {
                var tmp : [Any] = []
                for k in self.systemParameter! {
                    tmp.append(k.toMap())
                }
                map["SystemParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SystemParameter") && dict["SystemParameter"] != nil {
                var tmp : [DescribeSystemParametersResponseBody.SystemParameters.SystemParameter] = []
                for v in dict["SystemParameter"] as! [Any] {
                    var model = DescribeSystemParametersResponseBody.SystemParameters.SystemParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.systemParameter = tmp
            }
        }
    }
    public var requestId: String?

    public var systemParameters: DescribeSystemParametersResponseBody.SystemParameters?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.systemParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.systemParameters != nil {
            map["SystemParameters"] = self.systemParameters?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SystemParameters") && dict["SystemParameters"] != nil {
            var model = DescribeSystemParametersResponseBody.SystemParameters()
            model.fromMap(dict["SystemParameters"] as! [String: Any])
            self.systemParameters = model
        }
    }
}

public class DescribeSystemParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSystemParametersResponseBody?

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
            var model = DescribeSystemParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSystemParamsRequest : Tea.TeaModel {
    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeSystemParamsResponseBody : Tea.TeaModel {
    public class SystemParams : Tea.TeaModel {
        public class SystemParam : Tea.TeaModel {
            public var demoValue: String?

            public var description_: String?

            public var paramName: String?

            public var paramType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.paramName != nil {
                    map["ParamName"] = self.paramName!
                }
                if self.paramType != nil {
                    map["ParamType"] = self.paramType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ParamName") && dict["ParamName"] != nil {
                    self.paramName = dict["ParamName"] as! String
                }
                if dict.keys.contains("ParamType") && dict["ParamType"] != nil {
                    self.paramType = dict["ParamType"] as! String
                }
            }
        }
        public var systemParam: [DescribeSystemParamsResponseBody.SystemParams.SystemParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.systemParam != nil {
                var tmp : [Any] = []
                for k in self.systemParam! {
                    tmp.append(k.toMap())
                }
                map["SystemParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SystemParam") && dict["SystemParam"] != nil {
                var tmp : [DescribeSystemParamsResponseBody.SystemParams.SystemParam] = []
                for v in dict["SystemParam"] as! [Any] {
                    var model = DescribeSystemParamsResponseBody.SystemParams.SystemParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.systemParam = tmp
            }
        }
    }
    public var requestId: String?

    public var systemParams: DescribeSystemParamsResponseBody.SystemParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.systemParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.systemParams != nil {
            map["SystemParams"] = self.systemParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SystemParams") && dict["SystemParams"] != nil {
            var model = DescribeSystemParamsResponseBody.SystemParams()
            model.fromMap(dict["SystemParams"] as! [String: Any])
            self.systemParams = model
        }
    }
}

public class DescribeSystemParamsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSystemParamsResponseBody?

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
            var model = DescribeSystemParamsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTrafficControlsRequest : Tea.TeaModel {
    public var apiUid: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public var stageName: String?

    public var trafficControlId: String?

    public var trafficControlName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiUid != nil {
            map["ApiUid"] = self.apiUid!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        if self.trafficControlId != nil {
            map["TrafficControlId"] = self.trafficControlId!
        }
        if self.trafficControlName != nil {
            map["TrafficControlName"] = self.trafficControlName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiUid") && dict["ApiUid"] != nil {
            self.apiUid = dict["ApiUid"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
        if dict.keys.contains("TrafficControlId") && dict["TrafficControlId"] != nil {
            self.trafficControlId = dict["TrafficControlId"] as! String
        }
        if dict.keys.contains("TrafficControlName") && dict["TrafficControlName"] != nil {
            self.trafficControlName = dict["TrafficControlName"] as! String
        }
    }
}

public class DescribeTrafficControlsResponseBody : Tea.TeaModel {
    public class TrafficControls : Tea.TeaModel {
        public class TrafficControl : Tea.TeaModel {
            public class SpecialPolicies : Tea.TeaModel {
                public class SpecialPolicy : Tea.TeaModel {
                    public class Specials : Tea.TeaModel {
                        public class Special : Tea.TeaModel {
                            public var specialKey: String?

                            public var trafficValue: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.specialKey != nil {
                                    map["SpecialKey"] = self.specialKey!
                                }
                                if self.trafficValue != nil {
                                    map["TrafficValue"] = self.trafficValue!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("SpecialKey") && dict["SpecialKey"] != nil {
                                    self.specialKey = dict["SpecialKey"] as! String
                                }
                                if dict.keys.contains("TrafficValue") && dict["TrafficValue"] != nil {
                                    self.trafficValue = dict["TrafficValue"] as! Int32
                                }
                            }
                        }
                        public var special: [DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies.SpecialPolicy.Specials.Special]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.special != nil {
                                var tmp : [Any] = []
                                for k in self.special! {
                                    tmp.append(k.toMap())
                                }
                                map["Special"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Special") && dict["Special"] != nil {
                                var tmp : [DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies.SpecialPolicy.Specials.Special] = []
                                for v in dict["Special"] as! [Any] {
                                    var model = DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies.SpecialPolicy.Specials.Special()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.special = tmp
                            }
                        }
                    }
                    public var specialType: String?

                    public var specials: DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies.SpecialPolicy.Specials?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.specials?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.specialType != nil {
                            map["SpecialType"] = self.specialType!
                        }
                        if self.specials != nil {
                            map["Specials"] = self.specials?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("SpecialType") && dict["SpecialType"] != nil {
                            self.specialType = dict["SpecialType"] as! String
                        }
                        if dict.keys.contains("Specials") && dict["Specials"] != nil {
                            var model = DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies.SpecialPolicy.Specials()
                            model.fromMap(dict["Specials"] as! [String: Any])
                            self.specials = model
                        }
                    }
                }
                public var specialPolicy: [DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies.SpecialPolicy]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.specialPolicy != nil {
                        var tmp : [Any] = []
                        for k in self.specialPolicy! {
                            tmp.append(k.toMap())
                        }
                        map["SpecialPolicy"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SpecialPolicy") && dict["SpecialPolicy"] != nil {
                        var tmp : [DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies.SpecialPolicy] = []
                        for v in dict["SpecialPolicy"] as! [Any] {
                            var model = DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies.SpecialPolicy()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.specialPolicy = tmp
                    }
                }
            }
            public var apiDefault: Int32?

            public var appDefault: Int32?

            public var createdTime: String?

            public var description_: String?

            public var modifiedTime: String?

            public var specialPolicies: DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies?

            public var trafficControlId: String?

            public var trafficControlName: String?

            public var trafficControlUnit: String?

            public var userDefault: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.specialPolicies?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiDefault != nil {
                    map["ApiDefault"] = self.apiDefault!
                }
                if self.appDefault != nil {
                    map["AppDefault"] = self.appDefault!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.specialPolicies != nil {
                    map["SpecialPolicies"] = self.specialPolicies?.toMap()
                }
                if self.trafficControlId != nil {
                    map["TrafficControlId"] = self.trafficControlId!
                }
                if self.trafficControlName != nil {
                    map["TrafficControlName"] = self.trafficControlName!
                }
                if self.trafficControlUnit != nil {
                    map["TrafficControlUnit"] = self.trafficControlUnit!
                }
                if self.userDefault != nil {
                    map["UserDefault"] = self.userDefault!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiDefault") && dict["ApiDefault"] != nil {
                    self.apiDefault = dict["ApiDefault"] as! Int32
                }
                if dict.keys.contains("AppDefault") && dict["AppDefault"] != nil {
                    self.appDefault = dict["AppDefault"] as! Int32
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("SpecialPolicies") && dict["SpecialPolicies"] != nil {
                    var model = DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies()
                    model.fromMap(dict["SpecialPolicies"] as! [String: Any])
                    self.specialPolicies = model
                }
                if dict.keys.contains("TrafficControlId") && dict["TrafficControlId"] != nil {
                    self.trafficControlId = dict["TrafficControlId"] as! String
                }
                if dict.keys.contains("TrafficControlName") && dict["TrafficControlName"] != nil {
                    self.trafficControlName = dict["TrafficControlName"] as! String
                }
                if dict.keys.contains("TrafficControlUnit") && dict["TrafficControlUnit"] != nil {
                    self.trafficControlUnit = dict["TrafficControlUnit"] as! String
                }
                if dict.keys.contains("UserDefault") && dict["UserDefault"] != nil {
                    self.userDefault = dict["UserDefault"] as! Int32
                }
            }
        }
        public var trafficControl: [DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.trafficControl != nil {
                var tmp : [Any] = []
                for k in self.trafficControl! {
                    tmp.append(k.toMap())
                }
                map["TrafficControl"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TrafficControl") && dict["TrafficControl"] != nil {
                var tmp : [DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl] = []
                for v in dict["TrafficControl"] as! [Any] {
                    var model = DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.trafficControl = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var trafficControls: DescribeTrafficControlsResponseBody.TrafficControls?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.trafficControls?.validate()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.trafficControls != nil {
            map["TrafficControls"] = self.trafficControls?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TrafficControls") && dict["TrafficControls"] != nil {
            var model = DescribeTrafficControlsResponseBody.TrafficControls()
            model.fromMap(dict["TrafficControls"] as! [String: Any])
            self.trafficControls = model
        }
    }
}

public class DescribeTrafficControlsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTrafficControlsResponseBody?

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
            var model = DescribeTrafficControlsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetApiMethodsRequest : Tea.TeaModel {
    public var apiPath: String?

    public var groupId: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiPath != nil {
            map["ApiPath"] = self.apiPath!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiPath") && dict["ApiPath"] != nil {
            self.apiPath = dict["ApiPath"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class GetApiMethodsResponseBody : Tea.TeaModel {
    public var methods: [String]?

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
        if self.methods != nil {
            map["Methods"] = self.methods!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Methods") && dict["Methods"] != nil {
            self.methods = dict["Methods"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetApiMethodsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApiMethodsResponseBody?

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
            var model = GetApiMethodsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCustomizedInfoRequest : Tea.TeaModel {
    public var apiId: String?

    public var apiName: String?

    public var groupId: String?

    public var securityToken: String?

    public var stageId: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageId != nil {
            map["StageId"] = self.stageId!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageId") && dict["StageId"] != nil {
            self.stageId = dict["StageId"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class GetCustomizedInfoResponseBody : Tea.TeaModel {
    public class SdkDemos : Tea.TeaModel {
        public class SdkDemo : Tea.TeaModel {
            public var callDemo: String?

            public var ideKey: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callDemo != nil {
                    map["CallDemo"] = self.callDemo!
                }
                if self.ideKey != nil {
                    map["IdeKey"] = self.ideKey!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CallDemo") && dict["CallDemo"] != nil {
                    self.callDemo = dict["CallDemo"] as! String
                }
                if dict.keys.contains("IdeKey") && dict["IdeKey"] != nil {
                    self.ideKey = dict["IdeKey"] as! String
                }
            }
        }
        public var sdkDemo: [GetCustomizedInfoResponseBody.SdkDemos.SdkDemo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sdkDemo != nil {
                var tmp : [Any] = []
                for k in self.sdkDemo! {
                    tmp.append(k.toMap())
                }
                map["SdkDemo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SdkDemo") && dict["SdkDemo"] != nil {
                var tmp : [GetCustomizedInfoResponseBody.SdkDemos.SdkDemo] = []
                for v in dict["SdkDemo"] as! [Any] {
                    var model = GetCustomizedInfoResponseBody.SdkDemos.SdkDemo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sdkDemo = tmp
            }
        }
    }
    public var requestId: String?

    public var sdkDemos: GetCustomizedInfoResponseBody.SdkDemos?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sdkDemos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sdkDemos != nil {
            map["SdkDemos"] = self.sdkDemos?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SdkDemos") && dict["SdkDemos"] != nil {
            var model = GetCustomizedInfoResponseBody.SdkDemos()
            model.fromMap(dict["SdkDemos"] as! [String: Any])
            self.sdkDemos = model
        }
    }
}

public class GetCustomizedInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomizedInfoResponseBody?

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
            var model = GetCustomizedInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyApiRequest : Tea.TeaModel {
    public var allowSignatureMethod: String?

    public var apiId: String?

    public var apiName: String?

    public var authType: String?

    public var description_: String?

    public var errorCodeSamples: String?

    public var failResultSample: String?

    public var groupId: String?

    public var openIdConnectConfig: String?

    public var requestConfig: String?

    public var requestParamters: String?

    public var resultDescriptions: String?

    public var resultSample: String?

    public var resultType: String?

    public var securityToken: String?

    public var serviceConfig: String?

    public var serviceParameters: String?

    public var serviceParametersMap: String?

    public var visibility: String?

    public var webSocketApiType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowSignatureMethod != nil {
            map["AllowSignatureMethod"] = self.allowSignatureMethod!
        }
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.errorCodeSamples != nil {
            map["ErrorCodeSamples"] = self.errorCodeSamples!
        }
        if self.failResultSample != nil {
            map["FailResultSample"] = self.failResultSample!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.openIdConnectConfig != nil {
            map["OpenIdConnectConfig"] = self.openIdConnectConfig!
        }
        if self.requestConfig != nil {
            map["RequestConfig"] = self.requestConfig!
        }
        if self.requestParamters != nil {
            map["RequestParamters"] = self.requestParamters!
        }
        if self.resultDescriptions != nil {
            map["ResultDescriptions"] = self.resultDescriptions!
        }
        if self.resultSample != nil {
            map["ResultSample"] = self.resultSample!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serviceConfig != nil {
            map["ServiceConfig"] = self.serviceConfig!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        if self.serviceParametersMap != nil {
            map["ServiceParametersMap"] = self.serviceParametersMap!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        if self.webSocketApiType != nil {
            map["WebSocketApiType"] = self.webSocketApiType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowSignatureMethod") && dict["AllowSignatureMethod"] != nil {
            self.allowSignatureMethod = dict["AllowSignatureMethod"] as! String
        }
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ErrorCodeSamples") && dict["ErrorCodeSamples"] != nil {
            self.errorCodeSamples = dict["ErrorCodeSamples"] as! String
        }
        if dict.keys.contains("FailResultSample") && dict["FailResultSample"] != nil {
            self.failResultSample = dict["FailResultSample"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("OpenIdConnectConfig") && dict["OpenIdConnectConfig"] != nil {
            self.openIdConnectConfig = dict["OpenIdConnectConfig"] as! String
        }
        if dict.keys.contains("RequestConfig") && dict["RequestConfig"] != nil {
            self.requestConfig = dict["RequestConfig"] as! String
        }
        if dict.keys.contains("RequestParamters") && dict["RequestParamters"] != nil {
            self.requestParamters = dict["RequestParamters"] as! String
        }
        if dict.keys.contains("ResultDescriptions") && dict["ResultDescriptions"] != nil {
            self.resultDescriptions = dict["ResultDescriptions"] as! String
        }
        if dict.keys.contains("ResultSample") && dict["ResultSample"] != nil {
            self.resultSample = dict["ResultSample"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServiceConfig") && dict["ServiceConfig"] != nil {
            self.serviceConfig = dict["ServiceConfig"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
        if dict.keys.contains("ServiceParametersMap") && dict["ServiceParametersMap"] != nil {
            self.serviceParametersMap = dict["ServiceParametersMap"] as! String
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
        if dict.keys.contains("WebSocketApiType") && dict["WebSocketApiType"] != nil {
            self.webSocketApiType = dict["WebSocketApiType"] as! String
        }
    }
}

public class ModifyApiResponseBody : Tea.TeaModel {
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

public class ModifyApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyApiResponseBody?

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
            var model = ModifyApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyApiGroupRequest : Tea.TeaModel {
    public var description_: String?

    public var groupId: String?

    public var groupName: String?

    public var securityToken: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ModifyApiGroupResponseBody : Tea.TeaModel {
    public var description_: String?

    public var groupId: String?

    public var groupName: String?

    public var requestId: String?

    public var subDomain: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
            self.subDomain = dict["SubDomain"] as! String
        }
    }
}

public class ModifyApiGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyApiGroupResponseBody?

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
            var model = ModifyApiGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAppRequest : Tea.TeaModel {
    public var appId: Int64?

    public var appName: String?

    public var description_: String?

    public var securityToken: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ModifyAppResponseBody : Tea.TeaModel {
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

public class ModifyAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppResponseBody?

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
            var model = ModifyAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyIpControlRequest : Tea.TeaModel {
    public var description_: String?

    public var ipControlId: String?

    public var ipControlName: String?

    public var securityToken: String?

    public override init() {
        super.init()
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
        if self.ipControlId != nil {
            map["IpControlId"] = self.ipControlId!
        }
        if self.ipControlName != nil {
            map["IpControlName"] = self.ipControlName!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("IpControlId") && dict["IpControlId"] != nil {
            self.ipControlId = dict["IpControlId"] as! String
        }
        if dict.keys.contains("IpControlName") && dict["IpControlName"] != nil {
            self.ipControlName = dict["IpControlName"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ModifyIpControlResponseBody : Tea.TeaModel {
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

public class ModifyIpControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyIpControlResponseBody?

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
            var model = ModifyIpControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyIpControlPolicyItemRequest : Tea.TeaModel {
    public var appId: String?

    public var cidrIp: String?

    public var ipControlId: String?

    public var policyItemId: String?

    public var securityToken: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.cidrIp != nil {
            map["CidrIp"] = self.cidrIp!
        }
        if self.ipControlId != nil {
            map["IpControlId"] = self.ipControlId!
        }
        if self.policyItemId != nil {
            map["PolicyItemId"] = self.policyItemId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CidrIp") && dict["CidrIp"] != nil {
            self.cidrIp = dict["CidrIp"] as! String
        }
        if dict.keys.contains("IpControlId") && dict["IpControlId"] != nil {
            self.ipControlId = dict["IpControlId"] as! String
        }
        if dict.keys.contains("PolicyItemId") && dict["PolicyItemId"] != nil {
            self.policyItemId = dict["PolicyItemId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ModifyIpControlPolicyItemResponseBody : Tea.TeaModel {
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

public class ModifyIpControlPolicyItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyIpControlPolicyItemResponseBody?

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
            var model = ModifyIpControlPolicyItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyLogConfigRequest : Tea.TeaModel {
    public var logType: String?

    public var securityToken: String?

    public var slsLogStore: String?

    public var slsProject: String?

    public override init() {
        super.init()
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.slsLogStore != nil {
            map["SlsLogStore"] = self.slsLogStore!
        }
        if self.slsProject != nil {
            map["SlsProject"] = self.slsProject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogType") && dict["LogType"] != nil {
            self.logType = dict["LogType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SlsLogStore") && dict["SlsLogStore"] != nil {
            self.slsLogStore = dict["SlsLogStore"] as! String
        }
        if dict.keys.contains("SlsProject") && dict["SlsProject"] != nil {
            self.slsProject = dict["SlsProject"] as! String
        }
    }
}

public class ModifyLogConfigResponseBody : Tea.TeaModel {
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

public class ModifyLogConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyLogConfigResponseBody?

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
            var model = ModifyLogConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySecretKeyRequest : Tea.TeaModel {
    public var secretKey: String?

    public var secretKeyId: String?

    public var secretKeyName: String?

    public var secretValue: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.secretKey != nil {
            map["SecretKey"] = self.secretKey!
        }
        if self.secretKeyId != nil {
            map["SecretKeyId"] = self.secretKeyId!
        }
        if self.secretKeyName != nil {
            map["SecretKeyName"] = self.secretKeyName!
        }
        if self.secretValue != nil {
            map["SecretValue"] = self.secretValue!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecretKey") && dict["SecretKey"] != nil {
            self.secretKey = dict["SecretKey"] as! String
        }
        if dict.keys.contains("SecretKeyId") && dict["SecretKeyId"] != nil {
            self.secretKeyId = dict["SecretKeyId"] as! String
        }
        if dict.keys.contains("SecretKeyName") && dict["SecretKeyName"] != nil {
            self.secretKeyName = dict["SecretKeyName"] as! String
        }
        if dict.keys.contains("SecretValue") && dict["SecretValue"] != nil {
            self.secretValue = dict["SecretValue"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ModifySecretKeyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var secretKeyId: String?

    public var secretKeyName: String?

    public override init() {
        super.init()
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
        if self.secretKeyId != nil {
            map["SecretKeyId"] = self.secretKeyId!
        }
        if self.secretKeyName != nil {
            map["SecretKeyName"] = self.secretKeyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretKeyId") && dict["SecretKeyId"] != nil {
            self.secretKeyId = dict["SecretKeyId"] as! String
        }
        if dict.keys.contains("SecretKeyName") && dict["SecretKeyName"] != nil {
            self.secretKeyName = dict["SecretKeyName"] as! String
        }
    }
}

public class ModifySecretKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySecretKeyResponseBody?

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
            var model = ModifySecretKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTrafficControlRequest : Tea.TeaModel {
    public var apiDefault: Int32?

    public var appDefault: Int32?

    public var description_: String?

    public var securityToken: String?

    public var trafficControlId: String?

    public var trafficControlName: String?

    public var trafficControlUnit: String?

    public var userDefault: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiDefault != nil {
            map["ApiDefault"] = self.apiDefault!
        }
        if self.appDefault != nil {
            map["AppDefault"] = self.appDefault!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.trafficControlId != nil {
            map["TrafficControlId"] = self.trafficControlId!
        }
        if self.trafficControlName != nil {
            map["TrafficControlName"] = self.trafficControlName!
        }
        if self.trafficControlUnit != nil {
            map["TrafficControlUnit"] = self.trafficControlUnit!
        }
        if self.userDefault != nil {
            map["UserDefault"] = self.userDefault!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiDefault") && dict["ApiDefault"] != nil {
            self.apiDefault = dict["ApiDefault"] as! Int32
        }
        if dict.keys.contains("AppDefault") && dict["AppDefault"] != nil {
            self.appDefault = dict["AppDefault"] as! Int32
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("TrafficControlId") && dict["TrafficControlId"] != nil {
            self.trafficControlId = dict["TrafficControlId"] as! String
        }
        if dict.keys.contains("TrafficControlName") && dict["TrafficControlName"] != nil {
            self.trafficControlName = dict["TrafficControlName"] as! String
        }
        if dict.keys.contains("TrafficControlUnit") && dict["TrafficControlUnit"] != nil {
            self.trafficControlUnit = dict["TrafficControlUnit"] as! String
        }
        if dict.keys.contains("UserDefault") && dict["UserDefault"] != nil {
            self.userDefault = dict["UserDefault"] as! Int32
        }
    }
}

public class ModifyTrafficControlResponseBody : Tea.TeaModel {
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

public class ModifyTrafficControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTrafficControlResponseBody?

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
            var model = ModifyTrafficControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReactivateDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var groupId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ReactivateDomainResponseBody : Tea.TeaModel {
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

public class ReactivateDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReactivateDomainResponseBody?

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
            var model = ReactivateDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecoverApiFromHistoricalRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var historyVersion: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.historyVersion != nil {
            map["HistoryVersion"] = self.historyVersion!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("HistoryVersion") && dict["HistoryVersion"] != nil {
            self.historyVersion = dict["HistoryVersion"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class RecoverApiFromHistoricalResponseBody : Tea.TeaModel {
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

public class RecoverApiFromHistoricalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecoverApiFromHistoricalResponseBody?

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
            var model = RecoverApiFromHistoricalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecoveryApiDefineFromHistoricalRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var historyVersion: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.historyVersion != nil {
            map["HistoryVersion"] = self.historyVersion!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("HistoryVersion") && dict["HistoryVersion"] != nil {
            self.historyVersion = dict["HistoryVersion"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class RecoveryApiDefineFromHistoricalResponseBody : Tea.TeaModel {
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

public class RecoveryApiDefineFromHistoricalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecoveryApiDefineFromHistoricalResponseBody?

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
            var model = RecoveryApiDefineFromHistoricalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecoveryApiFromHistoricalRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var historyVersion: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.historyVersion != nil {
            map["HistoryVersion"] = self.historyVersion!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("HistoryVersion") && dict["HistoryVersion"] != nil {
            self.historyVersion = dict["HistoryVersion"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class RecoveryApiFromHistoricalResponseBody : Tea.TeaModel {
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

public class RecoveryApiFromHistoricalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecoveryApiFromHistoricalResponseBody?

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
            var model = RecoveryApiFromHistoricalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var groupId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class RefreshDomainResponseBody : Tea.TeaModel {
    public var certificateId: String?

    public var certificateName: String?

    public var domainName: String?

    public var domainNameResolution: String?

    public var domainStatus: String?

    public var groupId: String?

    public var requestId: String?

    public var subDomain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.certificateName != nil {
            map["CertificateName"] = self.certificateName!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainNameResolution != nil {
            map["DomainNameResolution"] = self.domainNameResolution!
        }
        if self.domainStatus != nil {
            map["DomainStatus"] = self.domainStatus!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("CertificateName") && dict["CertificateName"] != nil {
            self.certificateName = dict["CertificateName"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainNameResolution") && dict["DomainNameResolution"] != nil {
            self.domainNameResolution = dict["DomainNameResolution"] as! String
        }
        if dict.keys.contains("DomainStatus") && dict["DomainStatus"] != nil {
            self.domainStatus = dict["DomainStatus"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
            self.subDomain = dict["SubDomain"] as! String
        }
    }
}

public class RefreshDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshDomainResponseBody?

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
            var model = RefreshDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveAccessPermissionByApisRequest : Tea.TeaModel {
    public var apiIds: String?

    public var appId: Int64?

    public var description_: String?

    public var groupId: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiIds != nil {
            map["ApiIds"] = self.apiIds!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiIds") && dict["ApiIds"] != nil {
            self.apiIds = dict["ApiIds"] as! String
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class RemoveAccessPermissionByApisResponseBody : Tea.TeaModel {
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

public class RemoveAccessPermissionByApisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveAccessPermissionByApisResponseBody?

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
            var model = RemoveAccessPermissionByApisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveAccessPermissionByAppsRequest : Tea.TeaModel {
    public var apiId: String?

    public var appIds: String?

    public var groupId: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.appIds != nil {
            map["AppIds"] = self.appIds!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("AppIds") && dict["AppIds"] != nil {
            self.appIds = dict["AppIds"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class RemoveAccessPermissionByAppsResponseBody : Tea.TeaModel {
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

public class RemoveAccessPermissionByAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveAccessPermissionByAppsResponseBody?

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
            var model = RemoveAccessPermissionByAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveAllBlackListRequest : Tea.TeaModel {
    public var blackType: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackType != nil {
            map["BlackType"] = self.blackType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackType") && dict["BlackType"] != nil {
            self.blackType = dict["BlackType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class RemoveAllBlackListResponseBody : Tea.TeaModel {
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

public class RemoveAllBlackListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveAllBlackListResponseBody?

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
            var model = RemoveAllBlackListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveApiRuleRequest : Tea.TeaModel {
    public var apiIds: String?

    public var groupId: String?

    public var ruleId: String?

    public var ruleType: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiIds != nil {
            map["ApiIds"] = self.apiIds!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiIds") && dict["ApiIds"] != nil {
            self.apiIds = dict["ApiIds"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class RemoveApiRuleResponseBody : Tea.TeaModel {
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

public class RemoveApiRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveApiRuleResponseBody?

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
            var model = RemoveApiRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveAppsFromApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var appIds: String?

    public var groupId: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.appIds != nil {
            map["AppIds"] = self.appIds!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("AppIds") && dict["AppIds"] != nil {
            self.appIds = dict["AppIds"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class RemoveAppsFromApiResponseBody : Tea.TeaModel {
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

public class RemoveAppsFromApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveAppsFromApiResponseBody?

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
            var model = RemoveAppsFromApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveBlackListRequest : Tea.TeaModel {
    public var blackContent: String?

    public var blackType: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackContent != nil {
            map["BlackContent"] = self.blackContent!
        }
        if self.blackType != nil {
            map["BlackType"] = self.blackType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackContent") && dict["BlackContent"] != nil {
            self.blackContent = dict["BlackContent"] as! String
        }
        if dict.keys.contains("BlackType") && dict["BlackType"] != nil {
            self.blackType = dict["BlackType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class RemoveBlackListResponseBody : Tea.TeaModel {
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

public class RemoveBlackListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveBlackListResponseBody?

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
            var model = RemoveBlackListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveIpControlApisRequest : Tea.TeaModel {
    public var apiIds: String?

    public var groupId: String?

    public var ipControlId: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiIds != nil {
            map["ApiIds"] = self.apiIds!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.ipControlId != nil {
            map["IpControlId"] = self.ipControlId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiIds") && dict["ApiIds"] != nil {
            self.apiIds = dict["ApiIds"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("IpControlId") && dict["IpControlId"] != nil {
            self.ipControlId = dict["IpControlId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class RemoveIpControlApisResponseBody : Tea.TeaModel {
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

public class RemoveIpControlApisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveIpControlApisResponseBody?

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
            var model = RemoveIpControlApisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveIpControlPolicyItemRequest : Tea.TeaModel {
    public var ipControlId: String?

    public var policyItemIds: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipControlId != nil {
            map["IpControlId"] = self.ipControlId!
        }
        if self.policyItemIds != nil {
            map["PolicyItemIds"] = self.policyItemIds!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpControlId") && dict["IpControlId"] != nil {
            self.ipControlId = dict["IpControlId"] as! String
        }
        if dict.keys.contains("PolicyItemIds") && dict["PolicyItemIds"] != nil {
            self.policyItemIds = dict["PolicyItemIds"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class RemoveIpControlPolicyItemResponseBody : Tea.TeaModel {
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

public class RemoveIpControlPolicyItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveIpControlPolicyItemResponseBody?

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
            var model = RemoveIpControlPolicyItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetAppKeySecretRequest : Tea.TeaModel {
    public var appKey: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ResetAppKeySecretResponseBody : Tea.TeaModel {
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

public class ResetAppKeySecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetAppKeySecretResponseBody?

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
            var model = ResetAppKeySecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetCustomizedRequest : Tea.TeaModel {
    public var apiId: String?

    public var apiName: String?

    public var groupId: String?

    public var securityToken: String?

    public var stageId: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageId != nil {
            map["StageId"] = self.stageId!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageId") && dict["StageId"] != nil {
            self.stageId = dict["StageId"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class ResetCustomizedResponseBody : Tea.TeaModel {
    public class SdkDemos : Tea.TeaModel {
        public class SdkDemo : Tea.TeaModel {
            public var callDemo: String?

            public var ideKey: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callDemo != nil {
                    map["CallDemo"] = self.callDemo!
                }
                if self.ideKey != nil {
                    map["IdeKey"] = self.ideKey!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CallDemo") && dict["CallDemo"] != nil {
                    self.callDemo = dict["CallDemo"] as! String
                }
                if dict.keys.contains("IdeKey") && dict["IdeKey"] != nil {
                    self.ideKey = dict["IdeKey"] as! String
                }
            }
        }
        public var sdkDemo: [ResetCustomizedResponseBody.SdkDemos.SdkDemo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sdkDemo != nil {
                var tmp : [Any] = []
                for k in self.sdkDemo! {
                    tmp.append(k.toMap())
                }
                map["SdkDemo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SdkDemo") && dict["SdkDemo"] != nil {
                var tmp : [ResetCustomizedResponseBody.SdkDemos.SdkDemo] = []
                for v in dict["SdkDemo"] as! [Any] {
                    var model = ResetCustomizedResponseBody.SdkDemos.SdkDemo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sdkDemo = tmp
            }
        }
    }
    public var requestId: String?

    public var sdkDemos: ResetCustomizedResponseBody.SdkDemos?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sdkDemos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sdkDemos != nil {
            map["SdkDemos"] = self.sdkDemos?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SdkDemos") && dict["SdkDemos"] != nil {
            var model = ResetCustomizedResponseBody.SdkDemos()
            model.fromMap(dict["SdkDemos"] as! [String: Any])
            self.sdkDemos = model
        }
    }
}

public class ResetCustomizedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetCustomizedResponseBody?

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
            var model = ResetCustomizedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SdkGenerateRequest : Tea.TeaModel {
    public var appId: Int64?

    public var groupId: String?

    public var language: String?

    public var securityToken: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class SdkGenerateResponseBody : Tea.TeaModel {
    public var downloadLink: String?

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
        if self.downloadLink != nil {
            map["DownloadLink"] = self.downloadLink!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DownloadLink") && dict["DownloadLink"] != nil {
            self.downloadLink = dict["DownloadLink"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SdkGenerateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SdkGenerateResponseBody?

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
            var model = SdkGenerateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SdkGenerateByAppRequest : Tea.TeaModel {
    public var appId: Int64?

    public var language: String?

    public var securityToken: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class SdkGenerateByAppResponseBody : Tea.TeaModel {
    public var downloadLink: String?

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
        if self.downloadLink != nil {
            map["DownloadLink"] = self.downloadLink!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DownloadLink") && dict["DownloadLink"] != nil {
            self.downloadLink = dict["DownloadLink"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SdkGenerateByAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SdkGenerateByAppResponseBody?

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
            var model = SdkGenerateByAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SdkGenerateByGroupRequest : Tea.TeaModel {
    public var groupId: String?

    public var language: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class SdkGenerateByGroupResponseBody : Tea.TeaModel {
    public var downloadLink: String?

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
        if self.downloadLink != nil {
            map["DownloadLink"] = self.downloadLink!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DownloadLink") && dict["DownloadLink"] != nil {
            self.downloadLink = dict["DownloadLink"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SdkGenerateByGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SdkGenerateByGroupResponseBody?

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
            var model = SdkGenerateByGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetAccessPermissionByApisRequest : Tea.TeaModel {
    public var apiIds: String?

    public var appId: Int64?

    public var description_: String?

    public var groupId: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiIds != nil {
            map["ApiIds"] = self.apiIds!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiIds") && dict["ApiIds"] != nil {
            self.apiIds = dict["ApiIds"] as! String
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class SetAccessPermissionByApisResponseBody : Tea.TeaModel {
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

public class SetAccessPermissionByApisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAccessPermissionByApisResponseBody?

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
            var model = SetAccessPermissionByApisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetAccessPermissionsRequest : Tea.TeaModel {
    public var apiId: String?

    public var appIds: String?

    public var description_: String?

    public var groupId: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.appIds != nil {
            map["AppIds"] = self.appIds!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("AppIds") && dict["AppIds"] != nil {
            self.appIds = dict["AppIds"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class SetAccessPermissionsResponseBody : Tea.TeaModel {
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

public class SetAccessPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAccessPermissionsResponseBody?

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
            var model = SetAccessPermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetApiRuleRequest : Tea.TeaModel {
    public var apiIds: String?

    public var groupId: String?

    public var ruleId: String?

    public var ruleType: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiIds != nil {
            map["ApiIds"] = self.apiIds!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiIds") && dict["ApiIds"] != nil {
            self.apiIds = dict["ApiIds"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class SetApiRuleResponseBody : Tea.TeaModel {
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

public class SetApiRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetApiRuleResponseBody?

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
            var model = SetApiRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDomainRequest : Tea.TeaModel {
    public var certificateBody: String?

    public var certificateName: String?

    public var domainName: String?

    public var groupId: String?

    public var privateKey: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateBody != nil {
            map["CertificateBody"] = self.certificateBody!
        }
        if self.certificateName != nil {
            map["CertificateName"] = self.certificateName!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateBody") && dict["CertificateBody"] != nil {
            self.certificateBody = dict["CertificateBody"] as! String
        }
        if dict.keys.contains("CertificateName") && dict["CertificateName"] != nil {
            self.certificateName = dict["CertificateName"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class SetDomainResponseBody : Tea.TeaModel {
    public var domainBindingStatus: String?

    public var domainLegalStatus: String?

    public var domainName: String?

    public var domainRemark: String?

    public var domainWebSocketStatus: String?

    public var groupId: String?

    public var requestId: String?

    public var subDomain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainBindingStatus != nil {
            map["DomainBindingStatus"] = self.domainBindingStatus!
        }
        if self.domainLegalStatus != nil {
            map["DomainLegalStatus"] = self.domainLegalStatus!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainRemark != nil {
            map["DomainRemark"] = self.domainRemark!
        }
        if self.domainWebSocketStatus != nil {
            map["DomainWebSocketStatus"] = self.domainWebSocketStatus!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainBindingStatus") && dict["DomainBindingStatus"] != nil {
            self.domainBindingStatus = dict["DomainBindingStatus"] as! String
        }
        if dict.keys.contains("DomainLegalStatus") && dict["DomainLegalStatus"] != nil {
            self.domainLegalStatus = dict["DomainLegalStatus"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainRemark") && dict["DomainRemark"] != nil {
            self.domainRemark = dict["DomainRemark"] as! String
        }
        if dict.keys.contains("DomainWebSocketStatus") && dict["DomainWebSocketStatus"] != nil {
            self.domainWebSocketStatus = dict["DomainWebSocketStatus"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
            self.subDomain = dict["SubDomain"] as! String
        }
    }
}

public class SetDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDomainResponseBody?

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
            var model = SetDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDomainCertificateRequest : Tea.TeaModel {
    public var certificateBody: String?

    public var certificateName: String?

    public var domainName: String?

    public var groupId: String?

    public var privateKey: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateBody != nil {
            map["CertificateBody"] = self.certificateBody!
        }
        if self.certificateName != nil {
            map["CertificateName"] = self.certificateName!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateBody") && dict["CertificateBody"] != nil {
            self.certificateBody = dict["CertificateBody"] as! String
        }
        if dict.keys.contains("CertificateName") && dict["CertificateName"] != nil {
            self.certificateName = dict["CertificateName"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class SetDomainCertificateResponseBody : Tea.TeaModel {
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

public class SetDomainCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDomainCertificateResponseBody?

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
            var model = SetDomainCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDomainWebSocketStatusRequest : Tea.TeaModel {
    public var actionValue: String?

    public var domainName: String?

    public var groupId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionValue != nil {
            map["ActionValue"] = self.actionValue!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionValue") && dict["ActionValue"] != nil {
            self.actionValue = dict["ActionValue"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class SetDomainWebSocketStatusResponseBody : Tea.TeaModel {
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

public class SetDomainWebSocketStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDomainWebSocketStatusResponseBody?

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
            var model = SetDomainWebSocketStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetIpControlApisRequest : Tea.TeaModel {
    public var apiIds: String?

    public var groupId: String?

    public var ipControlId: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiIds != nil {
            map["ApiIds"] = self.apiIds!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.ipControlId != nil {
            map["IpControlId"] = self.ipControlId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiIds") && dict["ApiIds"] != nil {
            self.apiIds = dict["ApiIds"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("IpControlId") && dict["IpControlId"] != nil {
            self.ipControlId = dict["IpControlId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class SetIpControlApisResponseBody : Tea.TeaModel {
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

public class SetIpControlApisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetIpControlApisResponseBody?

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
            var model = SetIpControlApisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetMockIntegrationRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var mock: String?

    public var mockResult: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.mock != nil {
            map["Mock"] = self.mock!
        }
        if self.mockResult != nil {
            map["MockResult"] = self.mockResult!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Mock") && dict["Mock"] != nil {
            self.mock = dict["Mock"] as! String
        }
        if dict.keys.contains("MockResult") && dict["MockResult"] != nil {
            self.mockResult = dict["MockResult"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class SetMockIntegrationResponseBody : Tea.TeaModel {
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

public class SetMockIntegrationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetMockIntegrationResponseBody?

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
            var model = SetMockIntegrationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SwitchApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var description_: String?

    public var groupId: String?

    public var historyVersion: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.historyVersion != nil {
            map["HistoryVersion"] = self.historyVersion!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("HistoryVersion") && dict["HistoryVersion"] != nil {
            self.historyVersion = dict["HistoryVersion"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class SwitchApiResponseBody : Tea.TeaModel {
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

public class SwitchApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchApiResponseBody?

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
            var model = SwitchApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VpcDescribeAccessesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instancePort: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instancePort != nil {
            map["InstancePort"] = self.instancePort!
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstancePort") && dict["InstancePort"] != nil {
            self.instancePort = dict["InstancePort"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class VpcDescribeAccessesResponseBody : Tea.TeaModel {
    public class VpcAccessAttributes : Tea.TeaModel {
        public class VpcAccessAttribute : Tea.TeaModel {
            public var createdTime: String?

            public var id: String?

            public var instanceId: String?

            public var modifiedTime: String?

            public var name: String?

            public var port: String?

            public var regionId: String?

            public var status: String?

            public var userId: String?

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
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Port") && dict["Port"] != nil {
                    self.port = dict["Port"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public var vpcAccessAttribute: [VpcDescribeAccessesResponseBody.VpcAccessAttributes.VpcAccessAttribute]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vpcAccessAttribute != nil {
                var tmp : [Any] = []
                for k in self.vpcAccessAttribute! {
                    tmp.append(k.toMap())
                }
                map["VpcAccessAttribute"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VpcAccessAttribute") && dict["VpcAccessAttribute"] != nil {
                var tmp : [VpcDescribeAccessesResponseBody.VpcAccessAttributes.VpcAccessAttribute] = []
                for v in dict["VpcAccessAttribute"] as! [Any] {
                    var model = VpcDescribeAccessesResponseBody.VpcAccessAttributes.VpcAccessAttribute()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.vpcAccessAttribute = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var vpcAccessAttributes: VpcDescribeAccessesResponseBody.VpcAccessAttributes?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.vpcAccessAttributes?.validate()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.vpcAccessAttributes != nil {
            map["VpcAccessAttributes"] = self.vpcAccessAttributes?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("VpcAccessAttributes") && dict["VpcAccessAttributes"] != nil {
            var model = VpcDescribeAccessesResponseBody.VpcAccessAttributes()
            model.fromMap(dict["VpcAccessAttributes"] as! [String: Any])
            self.vpcAccessAttributes = model
        }
    }
}

public class VpcDescribeAccessesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VpcDescribeAccessesResponseBody?

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
            var model = VpcDescribeAccessesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VpcGrantAccessRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instancePort: String?

    public var name: String?

    public var securityToken: String?

    public var token: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instancePort != nil {
            map["InstancePort"] = self.instancePort!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstancePort") && dict["InstancePort"] != nil {
            self.instancePort = dict["InstancePort"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class VpcGrantAccessResponseBody : Tea.TeaModel {
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

public class VpcGrantAccessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VpcGrantAccessResponseBody?

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
            var model = VpcGrantAccessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VpcModifyAccessRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instancePort: String?

    public var securityToken: String?

    public var token: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instancePort != nil {
            map["InstancePort"] = self.instancePort!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstancePort") && dict["InstancePort"] != nil {
            self.instancePort = dict["InstancePort"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class VpcModifyAccessResponseBody : Tea.TeaModel {
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

public class VpcModifyAccessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VpcModifyAccessResponseBody?

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
            var model = VpcModifyAccessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VpcRevokeAccessRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instancePort: String?

    public var securityToken: String?

    public var token: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instancePort != nil {
            map["InstancePort"] = self.instancePort!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstancePort") && dict["InstancePort"] != nil {
            self.instancePort = dict["InstancePort"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class VpcRevokeAccessResponseBody : Tea.TeaModel {
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

public class VpcRevokeAccessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VpcRevokeAccessResponseBody?

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
            var model = VpcRevokeAccessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
