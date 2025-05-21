import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ActivateLicenseRequest : Tea.TeaModel {
    public var bizId: String?

    public var bizType: String?

    public var licenseCode: String?

    public var licenseNo: String?

    public var licensePublisher: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.licenseCode != nil {
            map["LicenseCode"] = self.licenseCode!
        }
        if self.licenseNo != nil {
            map["LicenseNo"] = self.licenseNo!
        }
        if self.licensePublisher != nil {
            map["LicensePublisher"] = self.licensePublisher!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["LicenseCode"] as? String {
            self.licenseCode = value
        }
        if let value = dict["LicenseNo"] as? String {
            self.licenseNo = value
        }
        if let value = dict["LicensePublisher"] as? String {
            self.licensePublisher = value
        }
    }
}

public class ActivateLicenseResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ActivateLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActivateLicenseResponseBody?

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
            var model = ActivateLicenseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CallbackTaskRequest : Tea.TeaModel {
    public var aliyunKp: String?

    public var apiType: String?

    public var bid: String?

    public var bizCode: String?

    public var lang: String?

    public var orderId: String?

    public var originalRequest: String?

    public var outTaskId: String?

    public var principalKey: String?

    public var taskData: String?

    public var taskId: String?

    public var taskType: String?

    public var userAccessKeyId: String?

    public var userBid: String?

    public var userCallerParentId: Int64?

    public var userCallerSecurityTransport: Bool?

    public var userCallerType: String?

    public var userClientIp: String?

    public var userKp: String?

    public var userMfaPresent: Bool?

    public var userSecurityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunKp != nil {
            map["AliyunKp"] = self.aliyunKp!
        }
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.originalRequest != nil {
            map["OriginalRequest"] = self.originalRequest!
        }
        if self.outTaskId != nil {
            map["OutTaskId"] = self.outTaskId!
        }
        if self.principalKey != nil {
            map["PrincipalKey"] = self.principalKey!
        }
        if self.taskData != nil {
            map["TaskData"] = self.taskData!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userBid != nil {
            map["UserBid"] = self.userBid!
        }
        if self.userCallerParentId != nil {
            map["UserCallerParentId"] = self.userCallerParentId!
        }
        if self.userCallerSecurityTransport != nil {
            map["UserCallerSecurityTransport"] = self.userCallerSecurityTransport!
        }
        if self.userCallerType != nil {
            map["UserCallerType"] = self.userCallerType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.userKp != nil {
            map["UserKp"] = self.userKp!
        }
        if self.userMfaPresent != nil {
            map["UserMfaPresent"] = self.userMfaPresent!
        }
        if self.userSecurityToken != nil {
            map["UserSecurityToken"] = self.userSecurityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunKp"] as? String {
            self.aliyunKp = value
        }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OriginalRequest"] as? String {
            self.originalRequest = value
        }
        if let value = dict["OutTaskId"] as? String {
            self.outTaskId = value
        }
        if let value = dict["PrincipalKey"] as? String {
            self.principalKey = value
        }
        if let value = dict["TaskData"] as? String {
            self.taskData = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserBid"] as? String {
            self.userBid = value
        }
        if let value = dict["UserCallerParentId"] as? Int64 {
            self.userCallerParentId = value
        }
        if let value = dict["UserCallerSecurityTransport"] as? Bool {
            self.userCallerSecurityTransport = value
        }
        if let value = dict["UserCallerType"] as? String {
            self.userCallerType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["UserKp"] as? String {
            self.userKp = value
        }
        if let value = dict["UserMfaPresent"] as? Bool {
            self.userMfaPresent = value
        }
        if let value = dict["UserSecurityToken"] as? String {
            self.userSecurityToken = value
        }
    }
}

public class CallbackTaskResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: Bool?

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
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module!
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
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? Bool {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CallbackTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CallbackTaskResponseBody?

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
            var model = CallbackTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAgreementStatusRequest : Tea.TeaModel {
    public var agreementCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agreementCode != nil {
            map["AgreementCode"] = self.agreementCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgreementCode"] as? String {
            self.agreementCode = value
        }
    }
}

public class DescribeAgreementStatusResponseBody : Tea.TeaModel {
    public var agreementCode: String?

    public var requestId: String?

    public var status: Int32?

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
        if self.agreementCode != nil {
            map["AgreementCode"] = self.agreementCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgreementCode"] as? String {
            self.agreementCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class DescribeAgreementStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAgreementStatusResponseBody?

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
            var model = DescribeAgreementStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateUploadFilePolicyForPartnerRequest : Tea.TeaModel {
    public var bizType: String?

    public var fileName: String?

    public var fileType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
    }
}

public class GenerateUploadFilePolicyForPartnerResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var accessId: String?

        public var encodedPolicy: String?

        public var expireTime: Int64?

        public var fileDir: String?

        public var host: String?

        public var ossUrl: String?

        public var signature: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.encodedPolicy != nil {
                map["EncodedPolicy"] = self.encodedPolicy!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.fileDir != nil {
                map["FileDir"] = self.fileDir!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.ossUrl != nil {
                map["OssUrl"] = self.ossUrl!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessId"] as? String {
                self.accessId = value
            }
            if let value = dict["EncodedPolicy"] as? String {
                self.encodedPolicy = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["FileDir"] as? String {
                self.fileDir = value
            }
            if let value = dict["Host"] as? String {
                self.host = value
            }
            if let value = dict["OssUrl"] as? String {
                self.ossUrl = value
            }
            if let value = dict["Signature"] as? String {
                self.signature = value
            }
        }
    }
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: GenerateUploadFilePolicyForPartnerResponseBody.Module?

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
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
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
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = GenerateUploadFilePolicyForPartnerResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GenerateUploadFilePolicyForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateUploadFilePolicyForPartnerResponseBody?

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
            var model = GenerateUploadFilePolicyForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetNodeByFlowIdRequest : Tea.TeaModel {
    public var aliyunKp: String?

    public var apiType: String?

    public var bid: String?

    public var flowId: Int64?

    public var lang: String?

    public var originalRequest: String?

    public var userAccessKeyId: String?

    public var userBid: String?

    public var userCallerParentId: Int64?

    public var userCallerSecurityTransport: Bool?

    public var userCallerType: String?

    public var userClientIp: String?

    public var userKp: String?

    public var userMfaPresent: Bool?

    public var userSecurityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunKp != nil {
            map["AliyunKp"] = self.aliyunKp!
        }
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.originalRequest != nil {
            map["OriginalRequest"] = self.originalRequest!
        }
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userBid != nil {
            map["UserBid"] = self.userBid!
        }
        if self.userCallerParentId != nil {
            map["UserCallerParentId"] = self.userCallerParentId!
        }
        if self.userCallerSecurityTransport != nil {
            map["UserCallerSecurityTransport"] = self.userCallerSecurityTransport!
        }
        if self.userCallerType != nil {
            map["UserCallerType"] = self.userCallerType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.userKp != nil {
            map["UserKp"] = self.userKp!
        }
        if self.userMfaPresent != nil {
            map["UserMfaPresent"] = self.userMfaPresent!
        }
        if self.userSecurityToken != nil {
            map["UserSecurityToken"] = self.userSecurityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunKp"] as? String {
            self.aliyunKp = value
        }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["FlowId"] as? Int64 {
            self.flowId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OriginalRequest"] as? String {
            self.originalRequest = value
        }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserBid"] as? String {
            self.userBid = value
        }
        if let value = dict["UserCallerParentId"] as? Int64 {
            self.userCallerParentId = value
        }
        if let value = dict["UserCallerSecurityTransport"] as? Bool {
            self.userCallerSecurityTransport = value
        }
        if let value = dict["UserCallerType"] as? String {
            self.userCallerType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["UserKp"] as? String {
            self.userKp = value
        }
        if let value = dict["UserMfaPresent"] as? Bool {
            self.userMfaPresent = value
        }
        if let value = dict["UserSecurityToken"] as? String {
            self.userSecurityToken = value
        }
    }
}

public class GetNodeByFlowIdResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: String?

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
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module!
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
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? String {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetNodeByFlowIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeByFlowIdResponseBody?

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
            var model = GetNodeByFlowIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetNodeByTemplateIdRequest : Tea.TeaModel {
    public var aliyunKp: String?

    public var apiType: String?

    public var bid: String?

    public var lang: String?

    public var originalRequest: String?

    public var templateId: Int64?

    public var userAccessKeyId: String?

    public var userBid: String?

    public var userCallerParentId: Int64?

    public var userCallerSecurityTransport: Bool?

    public var userCallerType: String?

    public var userClientIp: String?

    public var userKp: String?

    public var userMfaPresent: Bool?

    public var userSecurityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunKp != nil {
            map["AliyunKp"] = self.aliyunKp!
        }
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.originalRequest != nil {
            map["OriginalRequest"] = self.originalRequest!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userBid != nil {
            map["UserBid"] = self.userBid!
        }
        if self.userCallerParentId != nil {
            map["UserCallerParentId"] = self.userCallerParentId!
        }
        if self.userCallerSecurityTransport != nil {
            map["UserCallerSecurityTransport"] = self.userCallerSecurityTransport!
        }
        if self.userCallerType != nil {
            map["UserCallerType"] = self.userCallerType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.userKp != nil {
            map["UserKp"] = self.userKp!
        }
        if self.userMfaPresent != nil {
            map["UserMfaPresent"] = self.userMfaPresent!
        }
        if self.userSecurityToken != nil {
            map["UserSecurityToken"] = self.userSecurityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunKp"] as? String {
            self.aliyunKp = value
        }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OriginalRequest"] as? String {
            self.originalRequest = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserBid"] as? String {
            self.userBid = value
        }
        if let value = dict["UserCallerParentId"] as? Int64 {
            self.userCallerParentId = value
        }
        if let value = dict["UserCallerSecurityTransport"] as? Bool {
            self.userCallerSecurityTransport = value
        }
        if let value = dict["UserCallerType"] as? String {
            self.userCallerType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["UserKp"] as? String {
            self.userKp = value
        }
        if let value = dict["UserMfaPresent"] as? Bool {
            self.userMfaPresent = value
        }
        if let value = dict["UserSecurityToken"] as? String {
            self.userSecurityToken = value
        }
    }
}

public class GetNodeByTemplateIdResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: String?

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
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module!
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
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? String {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetNodeByTemplateIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeByTemplateIdResponseBody?

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
            var model = GetNodeByTemplateIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPlatformUserInfoForPartnerRequest : Tea.TeaModel {
    public var appId: String?

    public var platformType: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.platformType != nil {
            map["PlatformType"] = self.platformType!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["PlatformType"] as? String {
            self.platformType = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class GetPlatformUserInfoForPartnerResponseBody : Tea.TeaModel {
    public var encryptedOpenId: String?

    public var encryptedUnionId: String?

    public var errorMsg: String?

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
        if self.encryptedOpenId != nil {
            map["EncryptedOpenId"] = self.encryptedOpenId!
        }
        if self.encryptedUnionId != nil {
            map["EncryptedUnionId"] = self.encryptedUnionId!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if let value = dict["EncryptedOpenId"] as? String {
            self.encryptedOpenId = value
        }
        if let value = dict["EncryptedUnionId"] as? String {
            self.encryptedUnionId = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetPlatformUserInfoForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPlatformUserInfoForPartnerResponseBody?

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
            var model = GetPlatformUserInfoForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetProxyByTypeRequest : Tea.TeaModel {
    public var aliyunKp: String?

    public var apiType: String?

    public var bid: String?

    public var lang: String?

    public var originalRequest: String?

    public var type: Int32?

    public var userAccessKeyId: String?

    public var userBid: String?

    public var userCallerParentId: Int64?

    public var userCallerSecurityTransport: Bool?

    public var userCallerType: String?

    public var userClientIp: String?

    public var userKp: String?

    public var userMfaPresent: Bool?

    public var userSecurityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunKp != nil {
            map["AliyunKp"] = self.aliyunKp!
        }
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.originalRequest != nil {
            map["OriginalRequest"] = self.originalRequest!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userBid != nil {
            map["UserBid"] = self.userBid!
        }
        if self.userCallerParentId != nil {
            map["UserCallerParentId"] = self.userCallerParentId!
        }
        if self.userCallerSecurityTransport != nil {
            map["UserCallerSecurityTransport"] = self.userCallerSecurityTransport!
        }
        if self.userCallerType != nil {
            map["UserCallerType"] = self.userCallerType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.userKp != nil {
            map["UserKp"] = self.userKp!
        }
        if self.userMfaPresent != nil {
            map["UserMfaPresent"] = self.userMfaPresent!
        }
        if self.userSecurityToken != nil {
            map["UserSecurityToken"] = self.userSecurityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunKp"] as? String {
            self.aliyunKp = value
        }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OriginalRequest"] as? String {
            self.originalRequest = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserBid"] as? String {
            self.userBid = value
        }
        if let value = dict["UserCallerParentId"] as? Int64 {
            self.userCallerParentId = value
        }
        if let value = dict["UserCallerSecurityTransport"] as? Bool {
            self.userCallerSecurityTransport = value
        }
        if let value = dict["UserCallerType"] as? String {
            self.userCallerType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["UserKp"] as? String {
            self.userKp = value
        }
        if let value = dict["UserMfaPresent"] as? Bool {
            self.userMfaPresent = value
        }
        if let value = dict["UserSecurityToken"] as? String {
            self.userSecurityToken = value
        }
    }
}

public class GetProxyByTypeResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: String?

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
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module!
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
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? String {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetProxyByTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProxyByTypeResponseBody?

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
            var model = GetProxyByTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRedisValueRequest : Tea.TeaModel {
    public var aliyunKp: String?

    public var apiType: String?

    public var bid: String?

    public var key: String?

    public var lang: String?

    public var originalRequest: String?

    public var timeout: Int64?

    public var userAccessKeyId: String?

    public var userBid: String?

    public var userCallerParentId: Int64?

    public var userCallerSecurityTransport: Bool?

    public var userCallerType: String?

    public var userClientIp: String?

    public var userKp: String?

    public var userMfaPresent: Bool?

    public var userSecurityToken: String?

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
        if self.aliyunKp != nil {
            map["AliyunKp"] = self.aliyunKp!
        }
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.originalRequest != nil {
            map["OriginalRequest"] = self.originalRequest!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userBid != nil {
            map["UserBid"] = self.userBid!
        }
        if self.userCallerParentId != nil {
            map["UserCallerParentId"] = self.userCallerParentId!
        }
        if self.userCallerSecurityTransport != nil {
            map["UserCallerSecurityTransport"] = self.userCallerSecurityTransport!
        }
        if self.userCallerType != nil {
            map["UserCallerType"] = self.userCallerType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.userKp != nil {
            map["UserKp"] = self.userKp!
        }
        if self.userMfaPresent != nil {
            map["UserMfaPresent"] = self.userMfaPresent!
        }
        if self.userSecurityToken != nil {
            map["UserSecurityToken"] = self.userSecurityToken!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunKp"] as? String {
            self.aliyunKp = value
        }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OriginalRequest"] as? String {
            self.originalRequest = value
        }
        if let value = dict["Timeout"] as? Int64 {
            self.timeout = value
        }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserBid"] as? String {
            self.userBid = value
        }
        if let value = dict["UserCallerParentId"] as? Int64 {
            self.userCallerParentId = value
        }
        if let value = dict["UserCallerSecurityTransport"] as? Bool {
            self.userCallerSecurityTransport = value
        }
        if let value = dict["UserCallerType"] as? String {
            self.userCallerType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["UserKp"] as? String {
            self.userKp = value
        }
        if let value = dict["UserMfaPresent"] as? Bool {
            self.userMfaPresent = value
        }
        if let value = dict["UserSecurityToken"] as? String {
            self.userSecurityToken = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class GetRedisValueResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: String?

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
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module!
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
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? String {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetRedisValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRedisValueResponseBody?

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
            var model = GetRedisValueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVariableRequest : Tea.TeaModel {
    public var aliyunKp: String?

    public var apiType: String?

    public var bid: String?

    public var lang: String?

    public var originalRequest: String?

    public var templateId: Int64?

    public var userAccessKeyId: String?

    public var userBid: String?

    public var userCallerParentId: Int64?

    public var userCallerSecurityTransport: Bool?

    public var userCallerType: String?

    public var userClientIp: String?

    public var userKp: String?

    public var userMfaPresent: Bool?

    public var userSecurityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunKp != nil {
            map["AliyunKp"] = self.aliyunKp!
        }
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.originalRequest != nil {
            map["OriginalRequest"] = self.originalRequest!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userBid != nil {
            map["UserBid"] = self.userBid!
        }
        if self.userCallerParentId != nil {
            map["UserCallerParentId"] = self.userCallerParentId!
        }
        if self.userCallerSecurityTransport != nil {
            map["UserCallerSecurityTransport"] = self.userCallerSecurityTransport!
        }
        if self.userCallerType != nil {
            map["UserCallerType"] = self.userCallerType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.userKp != nil {
            map["UserKp"] = self.userKp!
        }
        if self.userMfaPresent != nil {
            map["UserMfaPresent"] = self.userMfaPresent!
        }
        if self.userSecurityToken != nil {
            map["UserSecurityToken"] = self.userSecurityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunKp"] as? String {
            self.aliyunKp = value
        }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OriginalRequest"] as? String {
            self.originalRequest = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserBid"] as? String {
            self.userBid = value
        }
        if let value = dict["UserCallerParentId"] as? Int64 {
            self.userCallerParentId = value
        }
        if let value = dict["UserCallerSecurityTransport"] as? Bool {
            self.userCallerSecurityTransport = value
        }
        if let value = dict["UserCallerType"] as? String {
            self.userCallerType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["UserKp"] as? String {
            self.userKp = value
        }
        if let value = dict["UserMfaPresent"] as? Bool {
            self.userMfaPresent = value
        }
        if let value = dict["UserSecurityToken"] as? String {
            self.userSecurityToken = value
        }
    }
}

public class GetVariableResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: String?

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
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module!
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
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? String {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetVariableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVariableResponseBody?

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
            var model = GetVariableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class IdentifyCodeRequest : Tea.TeaModel {
    public var aliyunKp: String?

    public var apiType: String?

    public var bid: String?

    public var data: String?

    public var label: String?

    public var lang: String?

    public var originalRequest: String?

    public var type: String?

    public var userAccessKeyId: String?

    public var userBid: String?

    public var userCallerParentId: Int64?

    public var userCallerSecurityTransport: Bool?

    public var userCallerType: String?

    public var userClientIp: String?

    public var userKp: String?

    public var userMfaPresent: Bool?

    public var userSecurityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunKp != nil {
            map["AliyunKp"] = self.aliyunKp!
        }
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.originalRequest != nil {
            map["OriginalRequest"] = self.originalRequest!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userBid != nil {
            map["UserBid"] = self.userBid!
        }
        if self.userCallerParentId != nil {
            map["UserCallerParentId"] = self.userCallerParentId!
        }
        if self.userCallerSecurityTransport != nil {
            map["UserCallerSecurityTransport"] = self.userCallerSecurityTransport!
        }
        if self.userCallerType != nil {
            map["UserCallerType"] = self.userCallerType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.userKp != nil {
            map["UserKp"] = self.userKp!
        }
        if self.userMfaPresent != nil {
            map["UserMfaPresent"] = self.userMfaPresent!
        }
        if self.userSecurityToken != nil {
            map["UserSecurityToken"] = self.userSecurityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunKp"] as? String {
            self.aliyunKp = value
        }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OriginalRequest"] as? String {
            self.originalRequest = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserBid"] as? String {
            self.userBid = value
        }
        if let value = dict["UserCallerParentId"] as? Int64 {
            self.userCallerParentId = value
        }
        if let value = dict["UserCallerSecurityTransport"] as? Bool {
            self.userCallerSecurityTransport = value
        }
        if let value = dict["UserCallerType"] as? String {
            self.userCallerType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["UserKp"] as? String {
            self.userKp = value
        }
        if let value = dict["UserMfaPresent"] as? Bool {
            self.userMfaPresent = value
        }
        if let value = dict["UserSecurityToken"] as? String {
            self.userSecurityToken = value
        }
    }
}

public class IdentifyCodeResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: String?

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
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module!
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
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? String {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class IdentifyCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IdentifyCodeResponseBody?

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
            var model = IdentifyCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PullRpaModelRequest : Tea.TeaModel {
    public var aliyunKp: String?

    public var apiType: String?

    public var bid: String?

    public var lang: String?

    public var originalRequest: String?

    public var templateId: Int64?

    public var userAccessKeyId: String?

    public var userBid: String?

    public var userCallerParentId: Int64?

    public var userCallerType: String?

    public var userClientIp: String?

    public var userKp: String?

    public var userMfaPresent: Bool?

    public var userSecurityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunKp != nil {
            map["AliyunKp"] = self.aliyunKp!
        }
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.originalRequest != nil {
            map["OriginalRequest"] = self.originalRequest!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userBid != nil {
            map["UserBid"] = self.userBid!
        }
        if self.userCallerParentId != nil {
            map["UserCallerParentId"] = self.userCallerParentId!
        }
        if self.userCallerType != nil {
            map["UserCallerType"] = self.userCallerType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.userKp != nil {
            map["UserKp"] = self.userKp!
        }
        if self.userMfaPresent != nil {
            map["UserMfaPresent"] = self.userMfaPresent!
        }
        if self.userSecurityToken != nil {
            map["UserSecurityToken"] = self.userSecurityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunKp"] as? String {
            self.aliyunKp = value
        }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OriginalRequest"] as? String {
            self.originalRequest = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserBid"] as? String {
            self.userBid = value
        }
        if let value = dict["UserCallerParentId"] as? Int64 {
            self.userCallerParentId = value
        }
        if let value = dict["UserCallerType"] as? String {
            self.userCallerType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["UserKp"] as? String {
            self.userKp = value
        }
        if let value = dict["UserMfaPresent"] as? Bool {
            self.userMfaPresent = value
        }
        if let value = dict["UserSecurityToken"] as? String {
            self.userSecurityToken = value
        }
    }
}

public class PullRpaModelResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: String?

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
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module!
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
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? String {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PullRpaModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PullRpaModelResponseBody?

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
            var model = PullRpaModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PullTaskRequest : Tea.TeaModel {
    public var aliyunKp: String?

    public var apiType: String?

    public var bid: String?

    public var bizCode: String?

    public var lang: String?

    public var orderId: String?

    public var originalRequest: String?

    public var principalKey: String?

    public var taskType: String?

    public var userAccessKeyId: String?

    public var userBid: String?

    public var userCallerParentId: Int64?

    public var userCallerSecurityTransport: Bool?

    public var userCallerType: String?

    public var userClientIp: String?

    public var userKp: String?

    public var userMfaPresent: Bool?

    public var userSecurityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunKp != nil {
            map["AliyunKp"] = self.aliyunKp!
        }
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.originalRequest != nil {
            map["OriginalRequest"] = self.originalRequest!
        }
        if self.principalKey != nil {
            map["PrincipalKey"] = self.principalKey!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userBid != nil {
            map["UserBid"] = self.userBid!
        }
        if self.userCallerParentId != nil {
            map["UserCallerParentId"] = self.userCallerParentId!
        }
        if self.userCallerSecurityTransport != nil {
            map["UserCallerSecurityTransport"] = self.userCallerSecurityTransport!
        }
        if self.userCallerType != nil {
            map["UserCallerType"] = self.userCallerType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.userKp != nil {
            map["UserKp"] = self.userKp!
        }
        if self.userMfaPresent != nil {
            map["UserMfaPresent"] = self.userMfaPresent!
        }
        if self.userSecurityToken != nil {
            map["UserSecurityToken"] = self.userSecurityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunKp"] as? String {
            self.aliyunKp = value
        }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["OriginalRequest"] as? String {
            self.originalRequest = value
        }
        if let value = dict["PrincipalKey"] as? String {
            self.principalKey = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserBid"] as? String {
            self.userBid = value
        }
        if let value = dict["UserCallerParentId"] as? Int64 {
            self.userCallerParentId = value
        }
        if let value = dict["UserCallerSecurityTransport"] as? Bool {
            self.userCallerSecurityTransport = value
        }
        if let value = dict["UserCallerType"] as? String {
            self.userCallerType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["UserKp"] as? String {
            self.userKp = value
        }
        if let value = dict["UserMfaPresent"] as? Bool {
            self.userMfaPresent = value
        }
        if let value = dict["UserSecurityToken"] as? String {
            self.userSecurityToken = value
        }
    }
}

public class PullTaskResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var bizCode: String?

        public var orderId: String?

        public var outTaskId: String?

        public var principalKey: String?

        public var taskData: String?

        public var taskId: String?

        public var taskType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.outTaskId != nil {
                map["OutTaskId"] = self.outTaskId!
            }
            if self.principalKey != nil {
                map["PrincipalKey"] = self.principalKey!
            }
            if self.taskData != nil {
                map["TaskData"] = self.taskData!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
            if let value = dict["OutTaskId"] as? String {
                self.outTaskId = value
            }
            if let value = dict["PrincipalKey"] as? String {
                self.principalKey = value
            }
            if let value = dict["TaskData"] as? String {
                self.taskData = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
        }
    }
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: PullTaskResponseBody.Module?

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
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
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
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = PullTaskResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PullTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PullTaskResponseBody?

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
            var model = PullTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushRpaTaskRequest : Tea.TeaModel {
    public var aliyunKp: String?

    public var apiType: String?

    public var bid: String?

    public var lang: String?

    public var modelId: Int64?

    public var name: String?

    public var originalRequest: String?

    public var request: String?

    public var status: Int32?

    public var taskId: Int64?

    public var templateId: Int64?

    public var userAccessKeyId: String?

    public var userBid: String?

    public var userCallerParentId: Int64?

    public var userCallerType: String?

    public var userClientIp: String?

    public var userKp: String?

    public var userMfaPresent: Bool?

    public var userSecurityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunKp != nil {
            map["AliyunKp"] = self.aliyunKp!
        }
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.originalRequest != nil {
            map["OriginalRequest"] = self.originalRequest!
        }
        if self.request != nil {
            map["Request"] = self.request!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userBid != nil {
            map["UserBid"] = self.userBid!
        }
        if self.userCallerParentId != nil {
            map["UserCallerParentId"] = self.userCallerParentId!
        }
        if self.userCallerType != nil {
            map["UserCallerType"] = self.userCallerType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.userKp != nil {
            map["UserKp"] = self.userKp!
        }
        if self.userMfaPresent != nil {
            map["UserMfaPresent"] = self.userMfaPresent!
        }
        if self.userSecurityToken != nil {
            map["UserSecurityToken"] = self.userSecurityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunKp"] as? String {
            self.aliyunKp = value
        }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ModelId"] as? Int64 {
            self.modelId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OriginalRequest"] as? String {
            self.originalRequest = value
        }
        if let value = dict["Request"] as? String {
            self.request = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserBid"] as? String {
            self.userBid = value
        }
        if let value = dict["UserCallerParentId"] as? Int64 {
            self.userCallerParentId = value
        }
        if let value = dict["UserCallerType"] as? String {
            self.userCallerType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["UserKp"] as? String {
            self.userKp = value
        }
        if let value = dict["UserMfaPresent"] as? Bool {
            self.userMfaPresent = value
        }
        if let value = dict["UserSecurityToken"] as? String {
            self.userSecurityToken = value
        }
    }
}

public class PushRpaTaskResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: String?

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
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module!
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
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? String {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PushRpaTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushRpaTaskResponseBody?

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
            var model = PushRpaTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushRpaTaskDetailRequest : Tea.TeaModel {
    public var aliyunKp: String?

    public var apiType: String?

    public var bid: String?

    public var inputData: String?

    public var inputHtml: String?

    public var inputScreenshot: String?

    public var lang: String?

    public var modelDetailId: Int64?

    public var originalRequest: String?

    public var outputData: String?

    public var outputHtml: String?

    public var outputScreenshot: String?

    public var status: Int32?

    public var taskDetailId: Int64?

    public var taskId: Int64?

    public var userAccessKeyId: String?

    public var userBid: String?

    public var userCallerParentId: Int64?

    public var userCallerType: String?

    public var userClientIp: String?

    public var userKp: String?

    public var userSecurityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunKp != nil {
            map["AliyunKp"] = self.aliyunKp!
        }
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.inputData != nil {
            map["InputData"] = self.inputData!
        }
        if self.inputHtml != nil {
            map["InputHtml"] = self.inputHtml!
        }
        if self.inputScreenshot != nil {
            map["InputScreenshot"] = self.inputScreenshot!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.modelDetailId != nil {
            map["ModelDetailId"] = self.modelDetailId!
        }
        if self.originalRequest != nil {
            map["OriginalRequest"] = self.originalRequest!
        }
        if self.outputData != nil {
            map["OutputData"] = self.outputData!
        }
        if self.outputHtml != nil {
            map["OutputHtml"] = self.outputHtml!
        }
        if self.outputScreenshot != nil {
            map["OutputScreenshot"] = self.outputScreenshot!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskDetailId != nil {
            map["TaskDetailId"] = self.taskDetailId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userBid != nil {
            map["UserBid"] = self.userBid!
        }
        if self.userCallerParentId != nil {
            map["UserCallerParentId"] = self.userCallerParentId!
        }
        if self.userCallerType != nil {
            map["UserCallerType"] = self.userCallerType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.userKp != nil {
            map["UserKp"] = self.userKp!
        }
        if self.userSecurityToken != nil {
            map["UserSecurityToken"] = self.userSecurityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunKp"] as? String {
            self.aliyunKp = value
        }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["InputData"] as? String {
            self.inputData = value
        }
        if let value = dict["InputHtml"] as? String {
            self.inputHtml = value
        }
        if let value = dict["InputScreenshot"] as? String {
            self.inputScreenshot = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ModelDetailId"] as? Int64 {
            self.modelDetailId = value
        }
        if let value = dict["OriginalRequest"] as? String {
            self.originalRequest = value
        }
        if let value = dict["OutputData"] as? String {
            self.outputData = value
        }
        if let value = dict["OutputHtml"] as? String {
            self.outputHtml = value
        }
        if let value = dict["OutputScreenshot"] as? String {
            self.outputScreenshot = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TaskDetailId"] as? Int64 {
            self.taskDetailId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserBid"] as? String {
            self.userBid = value
        }
        if let value = dict["UserCallerParentId"] as? Int64 {
            self.userCallerParentId = value
        }
        if let value = dict["UserCallerType"] as? String {
            self.userCallerType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["UserKp"] as? String {
            self.userKp = value
        }
        if let value = dict["UserSecurityToken"] as? String {
            self.userSecurityToken = value
        }
    }
}

public class PushRpaTaskDetailResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: String?

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
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module!
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
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? String {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PushRpaTaskDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushRpaTaskDetailResponseBody?

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
            var model = PushRpaTaskDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendNotificationForPartnerRequest : Tea.TeaModel {
    public var bizId: String?

    public var channelType: String?

    public var notifyType: String?

    public var notifycationEventType: String?

    public var paramMap: [String: String]?

    public var sendTarget: String?

    public var smartSubChannels: [String]?

    public var trackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.notifyType != nil {
            map["NotifyType"] = self.notifyType!
        }
        if self.notifycationEventType != nil {
            map["NotifycationEventType"] = self.notifycationEventType!
        }
        if self.paramMap != nil {
            map["ParamMap"] = self.paramMap!
        }
        if self.sendTarget != nil {
            map["SendTarget"] = self.sendTarget!
        }
        if self.smartSubChannels != nil {
            map["SmartSubChannels"] = self.smartSubChannels!
        }
        if self.trackId != nil {
            map["TrackId"] = self.trackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["NotifyType"] as? String {
            self.notifyType = value
        }
        if let value = dict["NotifycationEventType"] as? String {
            self.notifycationEventType = value
        }
        if let value = dict["ParamMap"] as? [String: String] {
            self.paramMap = value
        }
        if let value = dict["SendTarget"] as? String {
            self.sendTarget = value
        }
        if let value = dict["SmartSubChannels"] as? [String] {
            self.smartSubChannels = value
        }
        if let value = dict["TrackId"] as? String {
            self.trackId = value
        }
    }
}

public class SendNotificationForPartnerShrinkRequest : Tea.TeaModel {
    public var bizId: String?

    public var channelType: String?

    public var notifyType: String?

    public var notifycationEventType: String?

    public var paramMapShrink: String?

    public var sendTarget: String?

    public var smartSubChannelsShrink: String?

    public var trackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.notifyType != nil {
            map["NotifyType"] = self.notifyType!
        }
        if self.notifycationEventType != nil {
            map["NotifycationEventType"] = self.notifycationEventType!
        }
        if self.paramMapShrink != nil {
            map["ParamMap"] = self.paramMapShrink!
        }
        if self.sendTarget != nil {
            map["SendTarget"] = self.sendTarget!
        }
        if self.smartSubChannelsShrink != nil {
            map["SmartSubChannels"] = self.smartSubChannelsShrink!
        }
        if self.trackId != nil {
            map["TrackId"] = self.trackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["NotifyType"] as? String {
            self.notifyType = value
        }
        if let value = dict["NotifycationEventType"] as? String {
            self.notifycationEventType = value
        }
        if let value = dict["ParamMap"] as? String {
            self.paramMapShrink = value
        }
        if let value = dict["SendTarget"] as? String {
            self.sendTarget = value
        }
        if let value = dict["SmartSubChannels"] as? String {
            self.smartSubChannelsShrink = value
        }
        if let value = dict["TrackId"] as? String {
            self.trackId = value
        }
    }
}

public class SendNotificationForPartnerResponseBody : Tea.TeaModel {
    public var errorMsg: String?

    public var msgId: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
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
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["MsgId"] as? String {
            self.msgId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SendNotificationForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendNotificationForPartnerResponseBody?

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
            var model = SendNotificationForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetRedisValueRequest : Tea.TeaModel {
    public var aliyunKp: String?

    public var apiType: String?

    public var bid: String?

    public var key: String?

    public var lang: String?

    public var originalRequest: String?

    public var requestId: String?

    public var timeout: Int64?

    public var userAccessKeyId: String?

    public var userBid: String?

    public var userCallerParentId: Int64?

    public var userCallerType: String?

    public var userClientIp: String?

    public var userKp: String?

    public var userMfaPresent: Bool?

    public var userSecurityToken: String?

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
        if self.aliyunKp != nil {
            map["AliyunKp"] = self.aliyunKp!
        }
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.originalRequest != nil {
            map["OriginalRequest"] = self.originalRequest!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userBid != nil {
            map["UserBid"] = self.userBid!
        }
        if self.userCallerParentId != nil {
            map["UserCallerParentId"] = self.userCallerParentId!
        }
        if self.userCallerType != nil {
            map["UserCallerType"] = self.userCallerType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.userKp != nil {
            map["UserKp"] = self.userKp!
        }
        if self.userMfaPresent != nil {
            map["UserMfaPresent"] = self.userMfaPresent!
        }
        if self.userSecurityToken != nil {
            map["UserSecurityToken"] = self.userSecurityToken!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunKp"] as? String {
            self.aliyunKp = value
        }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
        }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OriginalRequest"] as? String {
            self.originalRequest = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Timeout"] as? Int64 {
            self.timeout = value
        }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserBid"] as? String {
            self.userBid = value
        }
        if let value = dict["UserCallerParentId"] as? Int64 {
            self.userCallerParentId = value
        }
        if let value = dict["UserCallerType"] as? String {
            self.userCallerType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["UserKp"] as? String {
            self.userKp = value
        }
        if let value = dict["UserMfaPresent"] as? Bool {
            self.userMfaPresent = value
        }
        if let value = dict["UserSecurityToken"] as? String {
            self.userSecurityToken = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class SetRedisValueResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: Bool?

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
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module!
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
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? Bool {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetRedisValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetRedisValueResponseBody?

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
            var model = SetRedisValueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAgreementStatusRequest : Tea.TeaModel {
    public var agreementCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agreementCode != nil {
            map["AgreementCode"] = self.agreementCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgreementCode"] as? String {
            self.agreementCode = value
        }
    }
}

public class UpdateAgreementStatusResponseBody : Tea.TeaModel {
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

public class UpdateAgreementStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAgreementStatusResponseBody?

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
            var model = UpdateAgreementStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
