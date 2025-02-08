import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("acceptLanguage") {
            self.acceptLanguage = dict["acceptLanguage"] as! String
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("product") {
            self.product = dict["product"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("errorCode") {
                self.errorCode = dict["errorCode"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("product") {
                self.product = dict["product"] as! String
            }
            if dict.keys.contains("productName") {
                self.productName = dict["productName"] as! String
            }
            if dict.keys.contains("solutionId") {
                self.solutionId = dict["solutionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("solutions") {
            var tmp : [GetErrorCodeSolutionsResponseBody.Solutions] = []
            for v in dict["solutions"] as! [Any] {
                var model = GetErrorCodeSolutionsResponseBody.Solutions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetErrorCodeSolutionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("logRequestId") {
            self.logRequestId = dict["logRequestId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("authenticationType") {
                    self.authenticationType = dict["authenticationType"] as! String
                }
                if dict.keys.contains("signatureMethod") {
                    self.signatureMethod = dict["signatureMethod"] as! String
                }
                if dict.keys.contains("signatureVersion") {
                    self.signatureVersion = dict["signatureVersion"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("authAction") {
                        self.authAction = dict["authAction"] as! String
                    }
                    if dict.keys.contains("authPrincipalDisplayName") {
                        self.authPrincipalDisplayName = dict["authPrincipalDisplayName"] as! String
                    }
                    if dict.keys.contains("authPrincipalOwnerId") {
                        self.authPrincipalOwnerId = dict["authPrincipalOwnerId"] as! String
                    }
                    if dict.keys.contains("authPrincipalType") {
                        self.authPrincipalType = dict["authPrincipalType"] as! String
                    }
                    if dict.keys.contains("encodedDiagnosticMessage") {
                        self.encodedDiagnosticMessage = dict["encodedDiagnosticMessage"] as! String
                    }
                    if dict.keys.contains("noPermissionType") {
                        self.noPermissionType = dict["noPermissionType"] as! String
                    }
                    if dict.keys.contains("policyType") {
                        self.policyType = dict["policyType"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("alibabacloudSite") {
                        self.alibabacloudSite = dict["alibabacloudSite"] as! String
                    }
                    if dict.keys.contains("aliyunSite") {
                        self.aliyunSite = dict["aliyunSite"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("cnName") {
                        self.cnName = dict["cnName"] as! String
                    }
                    if dict.keys.contains("enName") {
                        self.enName = dict["enName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("accessDeniedDetail") {
                    var model = GetOwnRequestLogResponseBody.LogInfo.BasicInfo.AccessDeniedDetail()
                    model.fromMap(dict["accessDeniedDetail"] as! [String: Any])
                    self.accessDeniedDetail = model
                }
                if dict.keys.contains("api") {
                    self.api = dict["api"] as! String
                }
                if dict.keys.contains("apiDoc") {
                    var model = GetOwnRequestLogResponseBody.LogInfo.BasicInfo.ApiDoc()
                    model.fromMap(dict["apiDoc"] as! [String: Any])
                    self.apiDoc = model
                }
                if dict.keys.contains("apiStyle") {
                    self.apiStyle = dict["apiStyle"] as! String
                }
                if dict.keys.contains("apiVersion") {
                    self.apiVersion = dict["apiVersion"] as! String
                }
                if dict.keys.contains("endpoint") {
                    self.endpoint = dict["endpoint"] as! String
                }
                if dict.keys.contains("errorCode") {
                    self.errorCode = dict["errorCode"] as! String
                }
                if dict.keys.contains("errorMessage") {
                    self.errorMessage = dict["errorMessage"] as! String
                }
                if dict.keys.contains("gatewayProcessTime") {
                    self.gatewayProcessTime = dict["gatewayProcessTime"] as! String
                }
                if dict.keys.contains("httpMethod") {
                    self.httpMethod = dict["httpMethod"] as! String
                }
                if dict.keys.contains("httpStatusCode") {
                    self.httpStatusCode = dict["httpStatusCode"] as! String
                }
                if dict.keys.contains("logRequestId") {
                    self.logRequestId = dict["logRequestId"] as! String
                }
                if dict.keys.contains("product") {
                    self.product = dict["product"] as! String
                }
                if dict.keys.contains("productName") {
                    var model = GetOwnRequestLogResponseBody.LogInfo.BasicInfo.ProductName()
                    model.fromMap(dict["productName"] as! [String: Any])
                    self.productName = model
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("requestDuration") {
                    self.requestDuration = dict["requestDuration"] as! String
                }
                if dict.keys.contains("sdkRequestTime") {
                    self.sdkRequestTime = dict["sdkRequestTime"] as! String
                }
                if dict.keys.contains("throttlingResult") {
                    self.throttlingResult = dict["throttlingResult"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("callerAccountId") {
                    self.callerAccountId = dict["callerAccountId"] as! String
                }
                if dict.keys.contains("callerIp") {
                    self.callerIp = dict["callerIp"] as! String
                }
                if dict.keys.contains("callerType") {
                    self.callerType = dict["callerType"] as! String
                }
                if dict.keys.contains("masterAccountId") {
                    self.masterAccountId = dict["masterAccountId"] as! String
                }
                if dict.keys.contains("userAgent") {
                    self.userAgent = dict["userAgent"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("required") {
                    self.required_ = dict["required"] as! Bool
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! Any
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("responseBody") {
                    self.responseBody = dict["responseBody"] as! String
                }
                if dict.keys.contains("responseBodyFormat") {
                    self.responseBodyFormat = dict["responseBodyFormat"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("authenticationInfo") {
                var model = GetOwnRequestLogResponseBody.LogInfo.AuthenticationInfo()
                model.fromMap(dict["authenticationInfo"] as! [String: Any])
                self.authenticationInfo = model
            }
            if dict.keys.contains("basicInfo") {
                var model = GetOwnRequestLogResponseBody.LogInfo.BasicInfo()
                model.fromMap(dict["basicInfo"] as! [String: Any])
                self.basicInfo = model
            }
            if dict.keys.contains("callerInfo") {
                var model = GetOwnRequestLogResponseBody.LogInfo.CallerInfo()
                model.fromMap(dict["callerInfo"] as! [String: Any])
                self.callerInfo = model
            }
            if dict.keys.contains("parameters") {
                var tmp : [GetOwnRequestLogResponseBody.LogInfo.Parameters] = []
                for v in dict["parameters"] as! [Any] {
                    var model = GetOwnRequestLogResponseBody.LogInfo.Parameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.parameters = tmp
            }
            if dict.keys.contains("responses") {
                var model = GetOwnRequestLogResponseBody.LogInfo.Responses()
                model.fromMap(dict["responses"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("logInfo") {
            var model = GetOwnRequestLogResponseBody.LogInfo()
            model.fromMap(dict["logInfo"] as! [String: Any])
            self.logInfo = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOwnRequestLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("logRequestId") {
            self.logRequestId = dict["logRequestId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("authenticationType") {
                    self.authenticationType = dict["authenticationType"] as! String
                }
                if dict.keys.contains("signatureMethod") {
                    self.signatureMethod = dict["signatureMethod"] as! String
                }
                if dict.keys.contains("signatureVersion") {
                    self.signatureVersion = dict["signatureVersion"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("authAction") {
                        self.authAction = dict["authAction"] as! String
                    }
                    if dict.keys.contains("authPrincipalDisplayName") {
                        self.authPrincipalDisplayName = dict["authPrincipalDisplayName"] as! String
                    }
                    if dict.keys.contains("authPrincipalOwnerId") {
                        self.authPrincipalOwnerId = dict["authPrincipalOwnerId"] as! String
                    }
                    if dict.keys.contains("authPrincipalType") {
                        self.authPrincipalType = dict["authPrincipalType"] as! String
                    }
                    if dict.keys.contains("encodedDiagnosticMessage") {
                        self.encodedDiagnosticMessage = dict["encodedDiagnosticMessage"] as! String
                    }
                    if dict.keys.contains("noPermissionType") {
                        self.noPermissionType = dict["noPermissionType"] as! String
                    }
                    if dict.keys.contains("policyType") {
                        self.policyType = dict["policyType"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("alibabacloudSite") {
                        self.alibabacloudSite = dict["alibabacloudSite"] as! String
                    }
                    if dict.keys.contains("aliyunSite") {
                        self.aliyunSite = dict["aliyunSite"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("cnName") {
                        self.cnName = dict["cnName"] as! String
                    }
                    if dict.keys.contains("enName") {
                        self.enName = dict["enName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("accessDeniedDetail") {
                    var model = GetRequestLogResponseBody.LogInfo.BasicInfo.AccessDeniedDetail()
                    model.fromMap(dict["accessDeniedDetail"] as! [String: Any])
                    self.accessDeniedDetail = model
                }
                if dict.keys.contains("api") {
                    self.api = dict["api"] as! String
                }
                if dict.keys.contains("apiDoc") {
                    var model = GetRequestLogResponseBody.LogInfo.BasicInfo.ApiDoc()
                    model.fromMap(dict["apiDoc"] as! [String: Any])
                    self.apiDoc = model
                }
                if dict.keys.contains("apiStyle") {
                    self.apiStyle = dict["apiStyle"] as! String
                }
                if dict.keys.contains("apiVersion") {
                    self.apiVersion = dict["apiVersion"] as! String
                }
                if dict.keys.contains("endpoint") {
                    self.endpoint = dict["endpoint"] as! String
                }
                if dict.keys.contains("errorCode") {
                    self.errorCode = dict["errorCode"] as! String
                }
                if dict.keys.contains("errorMessage") {
                    self.errorMessage = dict["errorMessage"] as! String
                }
                if dict.keys.contains("gatewayProcessTime") {
                    self.gatewayProcessTime = dict["gatewayProcessTime"] as! String
                }
                if dict.keys.contains("httpMethod") {
                    self.httpMethod = dict["httpMethod"] as! String
                }
                if dict.keys.contains("httpStatusCode") {
                    self.httpStatusCode = dict["httpStatusCode"] as! String
                }
                if dict.keys.contains("logRequestId") {
                    self.logRequestId = dict["logRequestId"] as! String
                }
                if dict.keys.contains("product") {
                    self.product = dict["product"] as! String
                }
                if dict.keys.contains("productName") {
                    var model = GetRequestLogResponseBody.LogInfo.BasicInfo.ProductName()
                    model.fromMap(dict["productName"] as! [String: Any])
                    self.productName = model
                }
                if dict.keys.contains("regionId") {
                    self.regionId = dict["regionId"] as! String
                }
                if dict.keys.contains("requestDuration") {
                    self.requestDuration = dict["requestDuration"] as! String
                }
                if dict.keys.contains("sdkRequestTime") {
                    self.sdkRequestTime = dict["sdkRequestTime"] as! String
                }
                if dict.keys.contains("throttlingResult") {
                    self.throttlingResult = dict["throttlingResult"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("callerAccountId") {
                    self.callerAccountId = dict["callerAccountId"] as! String
                }
                if dict.keys.contains("callerIp") {
                    self.callerIp = dict["callerIp"] as! String
                }
                if dict.keys.contains("callerType") {
                    self.callerType = dict["callerType"] as! String
                }
                if dict.keys.contains("masterAccountId") {
                    self.masterAccountId = dict["masterAccountId"] as! String
                }
                if dict.keys.contains("userAgent") {
                    self.userAgent = dict["userAgent"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("required") {
                    self.required_ = dict["required"] as! Bool
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! Any
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("responseBody") {
                    self.responseBody = dict["responseBody"] as! String
                }
                if dict.keys.contains("responseBodyFormat") {
                    self.responseBodyFormat = dict["responseBodyFormat"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("authenticationInfo") {
                var model = GetRequestLogResponseBody.LogInfo.AuthenticationInfo()
                model.fromMap(dict["authenticationInfo"] as! [String: Any])
                self.authenticationInfo = model
            }
            if dict.keys.contains("basicInfo") {
                var model = GetRequestLogResponseBody.LogInfo.BasicInfo()
                model.fromMap(dict["basicInfo"] as! [String: Any])
                self.basicInfo = model
            }
            if dict.keys.contains("callerInfo") {
                var model = GetRequestLogResponseBody.LogInfo.CallerInfo()
                model.fromMap(dict["callerInfo"] as! [String: Any])
                self.callerInfo = model
            }
            if dict.keys.contains("parameters") {
                var tmp : [GetRequestLogResponseBody.LogInfo.Parameters] = []
                for v in dict["parameters"] as! [Any] {
                    var model = GetRequestLogResponseBody.LogInfo.Parameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.parameters = tmp
            }
            if dict.keys.contains("responses") {
                var model = GetRequestLogResponseBody.LogInfo.Responses()
                model.fromMap(dict["responses"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("logInfo") {
            var model = GetRequestLogResponseBody.LogInfo()
            model.fromMap(dict["logInfo"] as! [String: Any])
            self.logInfo = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetRequestLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
