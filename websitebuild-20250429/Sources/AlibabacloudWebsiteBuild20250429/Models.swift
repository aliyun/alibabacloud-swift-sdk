import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BindAppDomainRequest : Tea.TeaModel {
    public var bizId: String?

    public var domainName: String?

    public var extend: String?

    public var operateType: String?

    public override init() {
        super.init()
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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["OperateType"] as? String {
            self.operateType = value
        }
    }
}

public class BindAppDomainResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
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
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: BindAppDomainResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
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
        if let value = dict["Module"] as? [String: Any?] {
            var model = BindAppDomainResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class BindAppDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAppDomainResponseBody?

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
            var model = BindAppDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLogoTaskRequest : Tea.TeaModel {
    public var logoVersion: String?

    public var negativePrompt: String?

    public var parameters: String?

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
        if self.logoVersion != nil {
            map["LogoVersion"] = self.logoVersion!
        }
        if self.negativePrompt != nil {
            map["NegativePrompt"] = self.negativePrompt!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogoVersion"] as? String {
            self.logoVersion = value
        }
        if let value = dict["NegativePrompt"] as? String {
            self.negativePrompt = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
    }
}

public class CreateLogoTaskResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMsg: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateLogoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLogoTaskResponseBody?

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
            var model = CreateLogoTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAppDomainCertificateRequest : Tea.TeaModel {
    public var bizId: String?

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
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
    }
}

public class DeleteAppDomainCertificateResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
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
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: DeleteAppDomainCertificateResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
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
        if let value = dict["Module"] as? [String: Any?] {
            var model = DeleteAppDomainCertificateResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class DeleteAppDomainCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppDomainCertificateResponseBody?

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
            var model = DeleteAppDomainCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAppDomainRedirectRequest : Tea.TeaModel {
    public var bizId: String?

    public var recordId: Int64?

    public override init() {
        super.init()
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
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["RecordId"] as? Int64 {
            self.recordId = value
        }
    }
}

public class DeleteAppDomainRedirectResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
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
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: DeleteAppDomainRedirectResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
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
        if let value = dict["Module"] as? [String: Any?] {
            var model = DeleteAppDomainRedirectResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class DeleteAppDomainRedirectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppDomainRedirectResponseBody?

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
            var model = DeleteAppDomainRedirectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAppDomainDnsRecordRequest : Tea.TeaModel {
    public var bizId: String?

    public var domainName: String?

    public var purpose: String?

    public override init() {
        super.init()
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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.purpose != nil {
            map["Purpose"] = self.purpose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Purpose"] as? String {
            self.purpose = value
        }
    }
}

public class DescribeAppDomainDnsRecordResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var host: String?

        public var recordType: String?

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
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.recordType != nil {
                map["RecordType"] = self.recordType!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Host"] as? String {
                self.host = value
            }
            if let value = dict["RecordType"] as? String {
                self.recordType = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: DescribeAppDomainDnsRecordResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
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
        if let value = dict["Module"] as? [String: Any?] {
            var model = DescribeAppDomainDnsRecordResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class DescribeAppDomainDnsRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppDomainDnsRecordResponseBody?

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
            var model = DescribeAppDomainDnsRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCreateLogoTaskRequest : Tea.TeaModel {
    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetCreateLogoTaskResponseBody : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public var taskId: String?

        public var taskStatus: String?

        public var urls: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.urls != nil {
                map["Urls"] = self.urls!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["Urls"] as? [String] {
                self.urls = value
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var requestId: String?

    public var success: Bool?

    public var task: GetCreateLogoTaskResponseBody.Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.task?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.task != nil {
            map["Task"] = self.task?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["Task"] as? [String: Any?] {
            var model = GetCreateLogoTaskResponseBody.Task()
            model.fromMap(value)
            self.task = model
        }
    }
}

public class GetCreateLogoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCreateLogoTaskResponseBody?

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
            var model = GetCreateLogoTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDomainInfoForPartnerRequest : Tea.TeaModel {
    public var bizId: String?

    public var domainName: String?

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
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class GetDomainInfoForPartnerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Ownership : Tea.TeaModel {
            public var account: String?

            public var provider: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.account != nil {
                    map["Account"] = self.account!
                }
                if self.provider != nil {
                    map["Provider"] = self.provider!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Account"] as? String {
                    self.account = value
                }
                if let value = dict["Provider"] as? String {
                    self.provider = value
                }
            }
        }
        public var domainName: String?

        public var nameServers: String?

        public var ownership: GetDomainInfoForPartnerResponseBody.Data.Ownership?

        public var registrar: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ownership?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.nameServers != nil {
                map["NameServers"] = self.nameServers!
            }
            if self.ownership != nil {
                map["Ownership"] = self.ownership?.toMap()
            }
            if self.registrar != nil {
                map["Registrar"] = self.registrar!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["NameServers"] as? String {
                self.nameServers = value
            }
            if let value = dict["Ownership"] as? [String: Any?] {
                var model = GetDomainInfoForPartnerResponseBody.Data.Ownership()
                model.fromMap(value)
                self.ownership = model
            }
            if let value = dict["Registrar"] as? String {
                self.registrar = value
            }
        }
    }
    public var data: GetDomainInfoForPartnerResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetDomainInfoForPartnerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDomainInfoForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDomainInfoForPartnerResponseBody?

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
            var model = GetDomainInfoForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIcpFilingInfoForPartnerRequest : Tea.TeaModel {
    public var bizId: String?

    public var domain: String?

    public override init() {
        super.init()
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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
    }
}

public class GetIcpFilingInfoForPartnerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var icpNumber: String?

        public var recorded: Bool?

        public var siteRecordNumber: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.icpNumber != nil {
                map["IcpNumber"] = self.icpNumber!
            }
            if self.recorded != nil {
                map["Recorded"] = self.recorded!
            }
            if self.siteRecordNumber != nil {
                map["SiteRecordNumber"] = self.siteRecordNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IcpNumber"] as? String {
                self.icpNumber = value
            }
            if let value = dict["Recorded"] as? Bool {
                self.recorded = value
            }
            if let value = dict["SiteRecordNumber"] as? String {
                self.siteRecordNumber = value
            }
        }
    }
    public var data: GetIcpFilingInfoForPartnerResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetIcpFilingInfoForPartnerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetIcpFilingInfoForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIcpFilingInfoForPartnerResponseBody?

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
            var model = GetIcpFilingInfoForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserTmpIdentityForPartnerRequest : Tea.TeaModel {
    public var authPurpose: String?

    public var bizId: String?

    public var extend: String?

    public var serviceLinkedRole: String?

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
        if self.authPurpose != nil {
            map["AuthPurpose"] = self.authPurpose!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.serviceLinkedRole != nil {
            map["ServiceLinkedRole"] = self.serviceLinkedRole!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthPurpose"] as? String {
            self.authPurpose = value
        }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["ServiceLinkedRole"] as? String {
            self.serviceLinkedRole = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class GetUserTmpIdentityForPartnerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Credentials : Tea.TeaModel {
            public var encryptedAccessKeyId: String?

            public var encryptedAccessKeySecret: String?

            public var encryptedSecurityToken: String?

            public var expiration: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.encryptedAccessKeyId != nil {
                    map["EncryptedAccessKeyId"] = self.encryptedAccessKeyId!
                }
                if self.encryptedAccessKeySecret != nil {
                    map["EncryptedAccessKeySecret"] = self.encryptedAccessKeySecret!
                }
                if self.encryptedSecurityToken != nil {
                    map["EncryptedSecurityToken"] = self.encryptedSecurityToken!
                }
                if self.expiration != nil {
                    map["Expiration"] = self.expiration!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EncryptedAccessKeyId"] as? String {
                    self.encryptedAccessKeyId = value
                }
                if let value = dict["EncryptedAccessKeySecret"] as? String {
                    self.encryptedAccessKeySecret = value
                }
                if let value = dict["EncryptedSecurityToken"] as? String {
                    self.encryptedSecurityToken = value
                }
                if let value = dict["Expiration"] as? String {
                    self.expiration = value
                }
            }
        }
        public var credentials: GetUserTmpIdentityForPartnerResponseBody.Data.Credentials?

        public var hasCustomRoleAuth: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.credentials?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.credentials != nil {
                map["Credentials"] = self.credentials?.toMap()
            }
            if self.hasCustomRoleAuth != nil {
                map["HasCustomRoleAuth"] = self.hasCustomRoleAuth!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Credentials"] as? [String: Any?] {
                var model = GetUserTmpIdentityForPartnerResponseBody.Data.Credentials()
                model.fromMap(value)
                self.credentials = model
            }
            if let value = dict["HasCustomRoleAuth"] as? Bool {
                self.hasCustomRoleAuth = value
            }
        }
    }
    public var data: GetUserTmpIdentityForPartnerResponseBody.Data?

    public var errorCode: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetUserTmpIdentityForPartnerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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

public class GetUserTmpIdentityForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserTmpIdentityForPartnerResponseBody?

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
            var model = GetUserTmpIdentityForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAppDomainRedirectRecordsRequest : Tea.TeaModel {
    public var bizId: String?

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
        if self.bizId != nil {
            map["BizId"] = self.bizId!
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
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListAppDomainRedirectRecordsResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var recordId: String?

            public var sourceDomain: String?

            public var targetDomain: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.recordId != nil {
                    map["RecordId"] = self.recordId!
                }
                if self.sourceDomain != nil {
                    map["SourceDomain"] = self.sourceDomain!
                }
                if self.targetDomain != nil {
                    map["TargetDomain"] = self.targetDomain!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RecordId"] as? String {
                    self.recordId = value
                }
                if let value = dict["SourceDomain"] as? String {
                    self.sourceDomain = value
                }
                if let value = dict["TargetDomain"] as? String {
                    self.targetDomain = value
                }
            }
        }
        public class Next : Tea.TeaModel {
            public var recordId: String?

            public var sourceDomain: String?

            public var targetDomain: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.recordId != nil {
                    map["RecordId"] = self.recordId!
                }
                if self.sourceDomain != nil {
                    map["SourceDomain"] = self.sourceDomain!
                }
                if self.targetDomain != nil {
                    map["TargetDomain"] = self.targetDomain!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RecordId"] as? String {
                    self.recordId = value
                }
                if let value = dict["SourceDomain"] as? String {
                    self.sourceDomain = value
                }
                if let value = dict["TargetDomain"] as? String {
                    self.targetDomain = value
                }
            }
        }
        public var currentPageNum: Int32?

        public var data: [ListAppDomainRedirectRecordsResponseBody.Module.Data]?

        public var next: ListAppDomainRedirectRecordsResponseBody.Module.Next?

        public var nextPage: Bool?

        public var pageSize: Int32?

        public var prePage: Bool?

        public var resultLimit: Bool?

        public var totalItemNum: Int32?

        public var totalPageNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.next?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPageNum != nil {
                map["CurrentPageNum"] = self.currentPageNum!
            }
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.next != nil {
                map["Next"] = self.next?.toMap()
            }
            if self.nextPage != nil {
                map["NextPage"] = self.nextPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.prePage != nil {
                map["PrePage"] = self.prePage!
            }
            if self.resultLimit != nil {
                map["ResultLimit"] = self.resultLimit!
            }
            if self.totalItemNum != nil {
                map["TotalItemNum"] = self.totalItemNum!
            }
            if self.totalPageNum != nil {
                map["TotalPageNum"] = self.totalPageNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPageNum"] as? Int32 {
                self.currentPageNum = value
            }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListAppDomainRedirectRecordsResponseBody.Module.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListAppDomainRedirectRecordsResponseBody.Module.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Next"] as? [String: Any?] {
                var model = ListAppDomainRedirectRecordsResponseBody.Module.Next()
                model.fromMap(value)
                self.next = model
            }
            if let value = dict["NextPage"] as? Bool {
                self.nextPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["PrePage"] as? Bool {
                self.prePage = value
            }
            if let value = dict["ResultLimit"] as? Bool {
                self.resultLimit = value
            }
            if let value = dict["TotalItemNum"] as? Int32 {
                self.totalItemNum = value
            }
            if let value = dict["TotalPageNum"] as? Int32 {
                self.totalPageNum = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var maxResults: Int32?

    public var module: ListAppDomainRedirectRecordsResponseBody.Module?

    public var nextToken: String?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = ListAppDomainRedirectRecordsResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class ListAppDomainRedirectRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppDomainRedirectRecordsResponseBody?

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
            var model = ListAppDomainRedirectRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAppInstanceDomainsRequest : Tea.TeaModel {
    public var bizId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderColumn: String?

    public var orderType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderColumn != nil {
            map["OrderColumn"] = self.orderColumn!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderColumn"] as? String {
            self.orderColumn = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListAppInstanceDomainsResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Certificate : Tea.TeaModel {
                public var certificateName: String?

                public var certificateStatus: String?

                public var certificateType: String?

                public var endTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.certificateName != nil {
                        map["CertificateName"] = self.certificateName!
                    }
                    if self.certificateStatus != nil {
                        map["CertificateStatus"] = self.certificateStatus!
                    }
                    if self.certificateType != nil {
                        map["CertificateType"] = self.certificateType!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CertificateName"] as? String {
                        self.certificateName = value
                    }
                    if let value = dict["CertificateStatus"] as? String {
                        self.certificateStatus = value
                    }
                    if let value = dict["CertificateType"] as? String {
                        self.certificateType = value
                    }
                    if let value = dict["EndTime"] as? String {
                        self.endTime = value
                    }
                }
            }
            public class Ownership : Tea.TeaModel {
                public var account: String?

                public var provider: String?

                public var rootDomain: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.account != nil {
                        map["Account"] = self.account!
                    }
                    if self.provider != nil {
                        map["Provider"] = self.provider!
                    }
                    if self.rootDomain != nil {
                        map["RootDomain"] = self.rootDomain!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Account"] as? String {
                        self.account = value
                    }
                    if let value = dict["Provider"] as? String {
                        self.provider = value
                    }
                    if let value = dict["RootDomain"] as? String {
                        self.rootDomain = value
                    }
                }
            }
            public class Resolution : Tea.TeaModel {
                public class DnsRecord : Tea.TeaModel {
                    public var host: String?

                    public var recordType: String?

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
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.recordType != nil {
                            map["RecordType"] = self.recordType!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Host"] as? String {
                            self.host = value
                        }
                        if let value = dict["RecordType"] as? String {
                            self.recordType = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
                        }
                    }
                }
                public var dnsRecord: ListAppInstanceDomainsResponseBody.Module.Data.Resolution.DnsRecord?

                public var errorMsg: String?

                public var resolutionStatus: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.dnsRecord?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dnsRecord != nil {
                        map["DnsRecord"] = self.dnsRecord?.toMap()
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.resolutionStatus != nil {
                        map["ResolutionStatus"] = self.resolutionStatus!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DnsRecord"] as? [String: Any?] {
                        var model = ListAppInstanceDomainsResponseBody.Module.Data.Resolution.DnsRecord()
                        model.fromMap(value)
                        self.dnsRecord = model
                    }
                    if let value = dict["ErrorMsg"] as? String {
                        self.errorMsg = value
                    }
                    if let value = dict["ResolutionStatus"] as? String {
                        self.resolutionStatus = value
                    }
                }
            }
            public class Verification : Tea.TeaModel {
                public class DnsRecord : Tea.TeaModel {
                    public var host: String?

                    public var recordType: String?

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
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.recordType != nil {
                            map["RecordType"] = self.recordType!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Host"] as? String {
                            self.host = value
                        }
                        if let value = dict["RecordType"] as? String {
                            self.recordType = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
                        }
                    }
                }
                public var dnsRecord: ListAppInstanceDomainsResponseBody.Module.Data.Verification.DnsRecord?

                public var errorMsg: String?

                public var verificationStatus: String?

                public var verificationStatusCode: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.dnsRecord?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dnsRecord != nil {
                        map["DnsRecord"] = self.dnsRecord?.toMap()
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.verificationStatus != nil {
                        map["VerificationStatus"] = self.verificationStatus!
                    }
                    if self.verificationStatusCode != nil {
                        map["VerificationStatusCode"] = self.verificationStatusCode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DnsRecord"] as? [String: Any?] {
                        var model = ListAppInstanceDomainsResponseBody.Module.Data.Verification.DnsRecord()
                        model.fromMap(value)
                        self.dnsRecord = model
                    }
                    if let value = dict["ErrorMsg"] as? String {
                        self.errorMsg = value
                    }
                    if let value = dict["VerificationStatus"] as? String {
                        self.verificationStatus = value
                    }
                    if let value = dict["VerificationStatusCode"] as? String {
                        self.verificationStatusCode = value
                    }
                }
            }
            public var certificate: ListAppInstanceDomainsResponseBody.Module.Data.Certificate?

            public var createTime: String?

            public var domainName: String?

            public var overallStatus: String?

            public var ownership: ListAppInstanceDomainsResponseBody.Module.Data.Ownership?

            public var resolution: ListAppInstanceDomainsResponseBody.Module.Data.Resolution?

            public var verification: ListAppInstanceDomainsResponseBody.Module.Data.Verification?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.certificate?.validate()
                try self.ownership?.validate()
                try self.resolution?.validate()
                try self.verification?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.certificate != nil {
                    map["Certificate"] = self.certificate?.toMap()
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.overallStatus != nil {
                    map["OverallStatus"] = self.overallStatus!
                }
                if self.ownership != nil {
                    map["Ownership"] = self.ownership?.toMap()
                }
                if self.resolution != nil {
                    map["Resolution"] = self.resolution?.toMap()
                }
                if self.verification != nil {
                    map["Verification"] = self.verification?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Certificate"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Data.Certificate()
                    model.fromMap(value)
                    self.certificate = model
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["OverallStatus"] as? String {
                    self.overallStatus = value
                }
                if let value = dict["Ownership"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Data.Ownership()
                    model.fromMap(value)
                    self.ownership = model
                }
                if let value = dict["Resolution"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Data.Resolution()
                    model.fromMap(value)
                    self.resolution = model
                }
                if let value = dict["Verification"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Data.Verification()
                    model.fromMap(value)
                    self.verification = model
                }
            }
        }
        public class Next : Tea.TeaModel {
            public class Certificate : Tea.TeaModel {
                public var certificateName: String?

                public var certificateStatus: String?

                public var certificateType: String?

                public var endTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.certificateName != nil {
                        map["CertificateName"] = self.certificateName!
                    }
                    if self.certificateStatus != nil {
                        map["CertificateStatus"] = self.certificateStatus!
                    }
                    if self.certificateType != nil {
                        map["CertificateType"] = self.certificateType!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CertificateName"] as? String {
                        self.certificateName = value
                    }
                    if let value = dict["CertificateStatus"] as? String {
                        self.certificateStatus = value
                    }
                    if let value = dict["CertificateType"] as? String {
                        self.certificateType = value
                    }
                    if let value = dict["EndTime"] as? String {
                        self.endTime = value
                    }
                }
            }
            public class Ownership : Tea.TeaModel {
                public var account: String?

                public var provider: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.account != nil {
                        map["Account"] = self.account!
                    }
                    if self.provider != nil {
                        map["Provider"] = self.provider!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Account"] as? String {
                        self.account = value
                    }
                    if let value = dict["Provider"] as? String {
                        self.provider = value
                    }
                }
            }
            public class Resolution : Tea.TeaModel {
                public class DnsRecord : Tea.TeaModel {
                    public var host: String?

                    public var recordType: String?

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
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.recordType != nil {
                            map["RecordType"] = self.recordType!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Host"] as? String {
                            self.host = value
                        }
                        if let value = dict["RecordType"] as? String {
                            self.recordType = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
                        }
                    }
                }
                public var dnsRecord: ListAppInstanceDomainsResponseBody.Module.Next.Resolution.DnsRecord?

                public var errorMsg: String?

                public var resolutionStatus: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.dnsRecord?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dnsRecord != nil {
                        map["DnsRecord"] = self.dnsRecord?.toMap()
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.resolutionStatus != nil {
                        map["ResolutionStatus"] = self.resolutionStatus!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DnsRecord"] as? [String: Any?] {
                        var model = ListAppInstanceDomainsResponseBody.Module.Next.Resolution.DnsRecord()
                        model.fromMap(value)
                        self.dnsRecord = model
                    }
                    if let value = dict["ErrorMsg"] as? String {
                        self.errorMsg = value
                    }
                    if let value = dict["ResolutionStatus"] as? String {
                        self.resolutionStatus = value
                    }
                }
            }
            public class Verification : Tea.TeaModel {
                public class DnsRecord : Tea.TeaModel {
                    public var host: String?

                    public var recordType: String?

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
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.recordType != nil {
                            map["RecordType"] = self.recordType!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Host"] as? String {
                            self.host = value
                        }
                        if let value = dict["RecordType"] as? String {
                            self.recordType = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
                        }
                    }
                }
                public var dnsRecord: ListAppInstanceDomainsResponseBody.Module.Next.Verification.DnsRecord?

                public var errorMsg: String?

                public var verificationStatus: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.dnsRecord?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dnsRecord != nil {
                        map["DnsRecord"] = self.dnsRecord?.toMap()
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.verificationStatus != nil {
                        map["VerificationStatus"] = self.verificationStatus!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DnsRecord"] as? [String: Any?] {
                        var model = ListAppInstanceDomainsResponseBody.Module.Next.Verification.DnsRecord()
                        model.fromMap(value)
                        self.dnsRecord = model
                    }
                    if let value = dict["ErrorMsg"] as? String {
                        self.errorMsg = value
                    }
                    if let value = dict["VerificationStatus"] as? String {
                        self.verificationStatus = value
                    }
                }
            }
            public var certificate: ListAppInstanceDomainsResponseBody.Module.Next.Certificate?

            public var createTime: String?

            public var domainName: String?

            public var overallStatus: String?

            public var ownership: ListAppInstanceDomainsResponseBody.Module.Next.Ownership?

            public var resolution: ListAppInstanceDomainsResponseBody.Module.Next.Resolution?

            public var verification: ListAppInstanceDomainsResponseBody.Module.Next.Verification?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.certificate?.validate()
                try self.ownership?.validate()
                try self.resolution?.validate()
                try self.verification?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.certificate != nil {
                    map["Certificate"] = self.certificate?.toMap()
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.overallStatus != nil {
                    map["OverallStatus"] = self.overallStatus!
                }
                if self.ownership != nil {
                    map["Ownership"] = self.ownership?.toMap()
                }
                if self.resolution != nil {
                    map["Resolution"] = self.resolution?.toMap()
                }
                if self.verification != nil {
                    map["Verification"] = self.verification?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Certificate"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Next.Certificate()
                    model.fromMap(value)
                    self.certificate = model
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["OverallStatus"] as? String {
                    self.overallStatus = value
                }
                if let value = dict["Ownership"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Next.Ownership()
                    model.fromMap(value)
                    self.ownership = model
                }
                if let value = dict["Resolution"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Next.Resolution()
                    model.fromMap(value)
                    self.resolution = model
                }
                if let value = dict["Verification"] as? [String: Any?] {
                    var model = ListAppInstanceDomainsResponseBody.Module.Next.Verification()
                    model.fromMap(value)
                    self.verification = model
                }
            }
        }
        public var currentPageNum: Int32?

        public var data: [ListAppInstanceDomainsResponseBody.Module.Data]?

        public var next: ListAppInstanceDomainsResponseBody.Module.Next?

        public var nextPage: Bool?

        public var pageSize: Int32?

        public var prePage: Bool?

        public var resultLimit: Bool?

        public var totalItemNum: Int32?

        public var totalPageNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.next?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPageNum != nil {
                map["CurrentPageNum"] = self.currentPageNum!
            }
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.next != nil {
                map["Next"] = self.next?.toMap()
            }
            if self.nextPage != nil {
                map["NextPage"] = self.nextPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.prePage != nil {
                map["PrePage"] = self.prePage!
            }
            if self.resultLimit != nil {
                map["ResultLimit"] = self.resultLimit!
            }
            if self.totalItemNum != nil {
                map["TotalItemNum"] = self.totalItemNum!
            }
            if self.totalPageNum != nil {
                map["TotalPageNum"] = self.totalPageNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPageNum"] as? Int32 {
                self.currentPageNum = value
            }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListAppInstanceDomainsResponseBody.Module.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListAppInstanceDomainsResponseBody.Module.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Next"] as? [String: Any?] {
                var model = ListAppInstanceDomainsResponseBody.Module.Next()
                model.fromMap(value)
                self.next = model
            }
            if let value = dict["NextPage"] as? Bool {
                self.nextPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["PrePage"] as? Bool {
                self.prePage = value
            }
            if let value = dict["ResultLimit"] as? Bool {
                self.resultLimit = value
            }
            if let value = dict["TotalItemNum"] as? Int32 {
                self.totalItemNum = value
            }
            if let value = dict["TotalPageNum"] as? Int32 {
                self.totalPageNum = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var maxResults: Int32?

    public var module: ListAppInstanceDomainsResponseBody.Module?

    public var nextToken: String?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = ListAppInstanceDomainsResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class ListAppInstanceDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppInstanceDomainsResponseBody?

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
            var model = ListAppInstanceDomainsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateAppInstanceForPartnerRequest : Tea.TeaModel {
    public var extend: String?

    public var operateEvent: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.operateEvent != nil {
            map["OperateEvent"] = self.operateEvent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["OperateEvent"] as? String {
            self.operateEvent = value
        }
    }
}

public class OperateAppInstanceForPartnerResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMsg: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class OperateAppInstanceForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateAppInstanceForPartnerResponseBody?

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
            var model = OperateAppInstanceForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateAppServiceForPartnerRequest : Tea.TeaModel {
    public var bizId: String?

    public var extend: String?

    public var operateEvent: String?

    public var serviceType: String?

    public override init() {
        super.init()
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
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.operateEvent != nil {
            map["OperateEvent"] = self.operateEvent!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["OperateEvent"] as? String {
            self.operateEvent = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
    }
}

public class OperateAppServiceForPartnerResponseBody : Tea.TeaModel {
    public var errorCode: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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

public class OperateAppServiceForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateAppServiceForPartnerResponseBody?

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
            var model = OperateAppServiceForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchImageRequest : Tea.TeaModel {
    public var colorHex: String?

    public var hasPerson: Bool?

    public var imageCategory: String?

    public var imageRatio: String?

    public var maxHeight: Int32?

    public var maxResults: Int32?

    public var maxWidth: Int32?

    public var minHeight: Int32?

    public var minWidth: Int32?

    public var nextToken: String?

    public var ossKey: String?

    public var size: Int32?

    public var start: Int32?

    public var tags: [String]?

    public var text: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.colorHex != nil {
            map["ColorHex"] = self.colorHex!
        }
        if self.hasPerson != nil {
            map["HasPerson"] = self.hasPerson!
        }
        if self.imageCategory != nil {
            map["ImageCategory"] = self.imageCategory!
        }
        if self.imageRatio != nil {
            map["ImageRatio"] = self.imageRatio!
        }
        if self.maxHeight != nil {
            map["MaxHeight"] = self.maxHeight!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.maxWidth != nil {
            map["MaxWidth"] = self.maxWidth!
        }
        if self.minHeight != nil {
            map["MinHeight"] = self.minHeight!
        }
        if self.minWidth != nil {
            map["MinWidth"] = self.minWidth!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ossKey != nil {
            map["OssKey"] = self.ossKey!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColorHex"] as? String {
            self.colorHex = value
        }
        if let value = dict["HasPerson"] as? Bool {
            self.hasPerson = value
        }
        if let value = dict["ImageCategory"] as? String {
            self.imageCategory = value
        }
        if let value = dict["ImageRatio"] as? String {
            self.imageRatio = value
        }
        if let value = dict["MaxHeight"] as? Int32 {
            self.maxHeight = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["MaxWidth"] as? Int32 {
            self.maxWidth = value
        }
        if let value = dict["MinHeight"] as? Int32 {
            self.minHeight = value
        }
        if let value = dict["MinWidth"] as? Int32 {
            self.minWidth = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OssKey"] as? String {
            self.ossKey = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
        if let value = dict["Start"] as? Int32 {
            self.start = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
        if let value = dict["Text"] as? String {
            self.text = value
        }
    }
}

public class SearchImageShrinkRequest : Tea.TeaModel {
    public var colorHex: String?

    public var hasPerson: Bool?

    public var imageCategory: String?

    public var imageRatio: String?

    public var maxHeight: Int32?

    public var maxResults: Int32?

    public var maxWidth: Int32?

    public var minHeight: Int32?

    public var minWidth: Int32?

    public var nextToken: String?

    public var ossKey: String?

    public var size: Int32?

    public var start: Int32?

    public var tagsShrink: String?

    public var text: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.colorHex != nil {
            map["ColorHex"] = self.colorHex!
        }
        if self.hasPerson != nil {
            map["HasPerson"] = self.hasPerson!
        }
        if self.imageCategory != nil {
            map["ImageCategory"] = self.imageCategory!
        }
        if self.imageRatio != nil {
            map["ImageRatio"] = self.imageRatio!
        }
        if self.maxHeight != nil {
            map["MaxHeight"] = self.maxHeight!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.maxWidth != nil {
            map["MaxWidth"] = self.maxWidth!
        }
        if self.minHeight != nil {
            map["MinHeight"] = self.minHeight!
        }
        if self.minWidth != nil {
            map["MinWidth"] = self.minWidth!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ossKey != nil {
            map["OssKey"] = self.ossKey!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColorHex"] as? String {
            self.colorHex = value
        }
        if let value = dict["HasPerson"] as? Bool {
            self.hasPerson = value
        }
        if let value = dict["ImageCategory"] as? String {
            self.imageCategory = value
        }
        if let value = dict["ImageRatio"] as? String {
            self.imageRatio = value
        }
        if let value = dict["MaxHeight"] as? Int32 {
            self.maxHeight = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["MaxWidth"] as? Int32 {
            self.maxWidth = value
        }
        if let value = dict["MinHeight"] as? Int32 {
            self.minHeight = value
        }
        if let value = dict["MinWidth"] as? Int32 {
            self.minWidth = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OssKey"] as? String {
            self.ossKey = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
        if let value = dict["Start"] as? Int32 {
            self.start = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["Text"] as? String {
            self.text = value
        }
    }
}

public class SearchImageResponseBody : Tea.TeaModel {
    public class ImageResponse : Tea.TeaModel {
        public class ImageList : Tea.TeaModel {
            public var descriptiveTones: String?

            public var height: Int32?

            public var imageCategory: String?

            public var imageRatio: String?

            public var imageUuid: String?

            public var ossKey: String?

            public var quantitativePalette: String?

            public var tagsFromImage: String?

            public var url: String?

            public var width: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.descriptiveTones != nil {
                    map["DescriptiveTones"] = self.descriptiveTones!
                }
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.imageCategory != nil {
                    map["ImageCategory"] = self.imageCategory!
                }
                if self.imageRatio != nil {
                    map["ImageRatio"] = self.imageRatio!
                }
                if self.imageUuid != nil {
                    map["ImageUuid"] = self.imageUuid!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.quantitativePalette != nil {
                    map["QuantitativePalette"] = self.quantitativePalette!
                }
                if self.tagsFromImage != nil {
                    map["TagsFromImage"] = self.tagsFromImage!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DescriptiveTones"] as? String {
                    self.descriptiveTones = value
                }
                if let value = dict["Height"] as? Int32 {
                    self.height = value
                }
                if let value = dict["ImageCategory"] as? String {
                    self.imageCategory = value
                }
                if let value = dict["ImageRatio"] as? String {
                    self.imageRatio = value
                }
                if let value = dict["ImageUuid"] as? String {
                    self.imageUuid = value
                }
                if let value = dict["OssKey"] as? String {
                    self.ossKey = value
                }
                if let value = dict["QuantitativePalette"] as? String {
                    self.quantitativePalette = value
                }
                if let value = dict["TagsFromImage"] as? String {
                    self.tagsFromImage = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
                if let value = dict["Width"] as? Int32 {
                    self.width = value
                }
            }
        }
        public var imageList: [SearchImageResponseBody.ImageResponse.ImageList]?

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
            if self.imageList != nil {
                var tmp : [Any] = []
                for k in self.imageList! {
                    tmp.append(k.toMap())
                }
                map["ImageList"] = tmp
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
            if let value = dict["ImageList"] as? [Any?] {
                var tmp : [SearchImageResponseBody.ImageResponse.ImageList] = []
                for v in value {
                    if v != nil {
                        var model = SearchImageResponseBody.ImageResponse.ImageList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.imageList = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var imageResponse: SearchImageResponseBody.ImageResponse?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.imageResponse?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.imageResponse != nil {
            map["ImageResponse"] = self.imageResponse?.toMap()
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
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["ImageResponse"] as? [String: Any?] {
            var model = SearchImageResponseBody.ImageResponse()
            model.fromMap(value)
            self.imageResponse = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class SearchImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchImageResponseBody?

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
            var model = SearchImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetAppDomainCertificateRequest : Tea.TeaModel {
    public var bizId: String?

    public var certificateName: String?

    public var certificateType: String?

    public var domainName: String?

    public var privateKey: String?

    public var publicKey: String?

    public override init() {
        super.init()
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
        if self.certificateName != nil {
            map["CertificateName"] = self.certificateName!
        }
        if self.certificateType != nil {
            map["CertificateType"] = self.certificateType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.publicKey != nil {
            map["PublicKey"] = self.publicKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["CertificateName"] as? String {
            self.certificateName = value
        }
        if let value = dict["CertificateType"] as? String {
            self.certificateType = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["PrivateKey"] as? String {
            self.privateKey = value
        }
        if let value = dict["PublicKey"] as? String {
            self.publicKey = value
        }
    }
}

public class SetAppDomainCertificateResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
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
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: SetAppDomainCertificateResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
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
        if let value = dict["Module"] as? [String: Any?] {
            var model = SetAppDomainCertificateResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class SetAppDomainCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAppDomainCertificateResponseBody?

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
            var model = SetAppDomainCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SyncAppInstanceForPartnerRequest : Tea.TeaModel {
    public class AppInstance : Tea.TeaModel {
        public class Profile : Tea.TeaModel {
            public var deployArea: String?

            public var lxInstanceId: String?

            public var orderId: String?

            public var siteVersion: String?

            public var templateEtag: String?

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
                if self.deployArea != nil {
                    map["DeployArea"] = self.deployArea!
                }
                if self.lxInstanceId != nil {
                    map["LxInstanceId"] = self.lxInstanceId!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.siteVersion != nil {
                    map["SiteVersion"] = self.siteVersion!
                }
                if self.templateEtag != nil {
                    map["TemplateEtag"] = self.templateEtag!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeployArea"] as? String {
                    self.deployArea = value
                }
                if let value = dict["LxInstanceId"] as? String {
                    self.lxInstanceId = value
                }
                if let value = dict["OrderId"] as? String {
                    self.orderId = value
                }
                if let value = dict["SiteVersion"] as? String {
                    self.siteVersion = value
                }
                if let value = dict["TemplateEtag"] as? String {
                    self.templateEtag = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
            }
        }
        public var appType: String?

        public var bizId: String?

        public var deleted: String?

        public var domain: String?

        public var endTime: String?

        public var gmtDelete: String?

        public var gmtPublish: String?

        public var iconUrl: String?

        public var name: String?

        public var profile: SyncAppInstanceForPartnerRequest.AppInstance.Profile?

        public var siteHost: String?

        public var slug: String?

        public var startTime: String?

        public var status: String?

        public var thumbnailUrl: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.profile?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.bizId != nil {
                map["BizId"] = self.bizId!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.gmtDelete != nil {
                map["GmtDelete"] = self.gmtDelete!
            }
            if self.gmtPublish != nil {
                map["GmtPublish"] = self.gmtPublish!
            }
            if self.iconUrl != nil {
                map["IconUrl"] = self.iconUrl!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.profile != nil {
                map["Profile"] = self.profile?.toMap()
            }
            if self.siteHost != nil {
                map["SiteHost"] = self.siteHost!
            }
            if self.slug != nil {
                map["Slug"] = self.slug!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.thumbnailUrl != nil {
                map["ThumbnailUrl"] = self.thumbnailUrl!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppType"] as? String {
                self.appType = value
            }
            if let value = dict["BizId"] as? String {
                self.bizId = value
            }
            if let value = dict["Deleted"] as? String {
                self.deleted = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["GmtDelete"] as? String {
                self.gmtDelete = value
            }
            if let value = dict["GmtPublish"] as? String {
                self.gmtPublish = value
            }
            if let value = dict["IconUrl"] as? String {
                self.iconUrl = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Profile"] as? [String: Any?] {
                var model = SyncAppInstanceForPartnerRequest.AppInstance.Profile()
                model.fromMap(value)
                self.profile = model
            }
            if let value = dict["SiteHost"] as? String {
                self.siteHost = value
            }
            if let value = dict["Slug"] as? String {
                self.slug = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["ThumbnailUrl"] as? String {
                self.thumbnailUrl = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var appInstance: SyncAppInstanceForPartnerRequest.AppInstance?

    public var eventType: String?

    public var operator_: String?

    public var sourceBizId: String?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appInstance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstance != nil {
            map["AppInstance"] = self.appInstance?.toMap()
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.sourceBizId != nil {
            map["SourceBizId"] = self.sourceBizId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstance"] as? [String: Any?] {
            var model = SyncAppInstanceForPartnerRequest.AppInstance()
            model.fromMap(value)
            self.appInstance = model
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["Operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["SourceBizId"] as? String {
            self.sourceBizId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class SyncAppInstanceForPartnerShrinkRequest : Tea.TeaModel {
    public var appInstanceShrink: String?

    public var eventType: String?

    public var operator_: String?

    public var sourceBizId: String?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstanceShrink != nil {
            map["AppInstance"] = self.appInstanceShrink!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.sourceBizId != nil {
            map["SourceBizId"] = self.sourceBizId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstance"] as? String {
            self.appInstanceShrink = value
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["Operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["SourceBizId"] as? String {
            self.sourceBizId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class SyncAppInstanceForPartnerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AppInstance : Tea.TeaModel {
            public var bizId: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BizId"] as? String {
                    self.bizId = value
                }
            }
        }
        public var appInstance: SyncAppInstanceForPartnerResponseBody.Data.AppInstance?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.appInstance?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appInstance != nil {
                map["AppInstance"] = self.appInstance?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppInstance"] as? [String: Any?] {
                var model = SyncAppInstanceForPartnerResponseBody.Data.AppInstance()
                model.fromMap(value)
                self.appInstance = model
            }
        }
    }
    public var data: SyncAppInstanceForPartnerResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SyncAppInstanceForPartnerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SyncAppInstanceForPartnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncAppInstanceForPartnerResponseBody?

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
            var model = SyncAppInstanceForPartnerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindAppDomainRequest : Tea.TeaModel {
    public var bizId: String?

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
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
    }
}

public class UnbindAppDomainResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
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
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var module: UnbindAppDomainResponseBody.Module?

    public var requestId: String?

    public var rootErrorCode: String?

    public var rootErrorMsg: String?

    public var synchro: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootErrorCode != nil {
            map["RootErrorCode"] = self.rootErrorCode!
        }
        if self.rootErrorMsg != nil {
            map["RootErrorMsg"] = self.rootErrorMsg!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
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
        if let value = dict["Module"] as? [String: Any?] {
            var model = UnbindAppDomainResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RootErrorCode"] as? String {
            self.rootErrorCode = value
        }
        if let value = dict["RootErrorMsg"] as? String {
            self.rootErrorMsg = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class UnbindAppDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindAppDomainResponseBody?

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
            var model = UnbindAppDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
