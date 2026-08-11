import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateCloneVoiceRequest : Tea.TeaModel {
    public var fileKey: String?

    public var instanceId: String?

    public var model: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileKey != nil {
            map["FileKey"] = self.fileKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileKey"] as? String {
            self.fileKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
    }
}

public class CreateCloneVoiceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cloneVoiceId: String?

        public var voice: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cloneVoiceId != nil {
                map["CloneVoiceId"] = self.cloneVoiceId!
            }
            if self.voice != nil {
                map["Voice"] = self.voice!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CloneVoiceId"] as? String {
                self.cloneVoiceId = value
            }
            if let value = dict["Voice"] as? String {
                self.voice = value
            }
        }
    }
    public var code: String?

    public var data: CreateCloneVoiceResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.params != nil {
            map["Params"] = self.params!
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
            var model = CreateCloneVoiceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateCloneVoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCloneVoiceResponseBody?

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
            var model = CreateCloneVoiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFlashSmsAccessProfileRequest : Tea.TeaModel {
    public class AccessProfile : Tea.TeaModel {
        public class DySmsAccessProfiles : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public var signName: String?

            public var templateCode: String?

            public override init() {
                super.init()
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
                if self.signName != nil {
                    map["SignName"] = self.signName!
                }
                if self.templateCode != nil {
                    map["TemplateCode"] = self.templateCode!
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
                if let value = dict["SignName"] as? String {
                    self.signName = value
                }
                if let value = dict["TemplateCode"] as? String {
                    self.templateCode = value
                }
            }
        }
        public var account: String?

        public var aesKey: String?

        public var apiAccount: String?

        public var apiId: String?

        public var apiKey: String?

        public var apiPassword: String?

        public var capAppId: String?

        public var dySmsAccessProfiles: [CreateFlashSmsAccessProfileRequest.AccessProfile.DySmsAccessProfiles]?

        public var extno: String?

        public var managementPassword: String?

        public var managementSubUserId: String?

        public var managementUsername: String?

        public var password: String?

        public var pwd: String?

        public var user: String?

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
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.aesKey != nil {
                map["AesKey"] = self.aesKey!
            }
            if self.apiAccount != nil {
                map["ApiAccount"] = self.apiAccount!
            }
            if self.apiId != nil {
                map["ApiId"] = self.apiId!
            }
            if self.apiKey != nil {
                map["ApiKey"] = self.apiKey!
            }
            if self.apiPassword != nil {
                map["ApiPassword"] = self.apiPassword!
            }
            if self.capAppId != nil {
                map["CapAppId"] = self.capAppId!
            }
            if self.dySmsAccessProfiles != nil {
                var tmp : [Any] = []
                for k in self.dySmsAccessProfiles! {
                    tmp.append(k.toMap())
                }
                map["DySmsAccessProfiles"] = tmp
            }
            if self.extno != nil {
                map["Extno"] = self.extno!
            }
            if self.managementPassword != nil {
                map["ManagementPassword"] = self.managementPassword!
            }
            if self.managementSubUserId != nil {
                map["ManagementSubUserId"] = self.managementSubUserId!
            }
            if self.managementUsername != nil {
                map["ManagementUsername"] = self.managementUsername!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.pwd != nil {
                map["Pwd"] = self.pwd!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? String {
                self.account = value
            }
            if let value = dict["AesKey"] as? String {
                self.aesKey = value
            }
            if let value = dict["ApiAccount"] as? String {
                self.apiAccount = value
            }
            if let value = dict["ApiId"] as? String {
                self.apiId = value
            }
            if let value = dict["ApiKey"] as? String {
                self.apiKey = value
            }
            if let value = dict["ApiPassword"] as? String {
                self.apiPassword = value
            }
            if let value = dict["CapAppId"] as? String {
                self.capAppId = value
            }
            if let value = dict["DySmsAccessProfiles"] as? [Any?] {
                var tmp : [CreateFlashSmsAccessProfileRequest.AccessProfile.DySmsAccessProfiles] = []
                for v in value {
                    if v != nil {
                        var model = CreateFlashSmsAccessProfileRequest.AccessProfile.DySmsAccessProfiles()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dySmsAccessProfiles = tmp
            }
            if let value = dict["Extno"] as? String {
                self.extno = value
            }
            if let value = dict["ManagementPassword"] as? String {
                self.managementPassword = value
            }
            if let value = dict["ManagementSubUserId"] as? String {
                self.managementSubUserId = value
            }
            if let value = dict["ManagementUsername"] as? String {
                self.managementUsername = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["Pwd"] as? String {
                self.pwd = value
            }
            if let value = dict["User"] as? String {
                self.user = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
    public var accessProfile: CreateFlashSmsAccessProfileRequest.AccessProfile?

    public var instanceId: String?

    public var providerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessProfile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessProfile != nil {
            map["AccessProfile"] = self.accessProfile?.toMap()
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.providerId != nil {
            map["ProviderId"] = self.providerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessProfile"] as? [String: Any?] {
            var model = CreateFlashSmsAccessProfileRequest.AccessProfile()
            model.fromMap(value)
            self.accessProfile = model
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ProviderId"] as? String {
            self.providerId = value
        }
    }
}

public class CreateFlashSmsAccessProfileShrinkRequest : Tea.TeaModel {
    public var accessProfileShrink: String?

    public var instanceId: String?

    public var providerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessProfileShrink != nil {
            map["AccessProfile"] = self.accessProfileShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.providerId != nil {
            map["ProviderId"] = self.providerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessProfile"] as? String {
            self.accessProfileShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ProviderId"] as? String {
            self.providerId = value
        }
    }
}

public class CreateFlashSmsAccessProfileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateFlashSmsAccessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFlashSmsAccessProfileResponseBody?

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
            var model = CreateFlashSmsAccessProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public var concurrency: Int32?

    public var description_: String?

    public var name: String?

    public var serviceMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.serviceMode != nil {
            map["ServiceMode"] = self.serviceMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Concurrency"] as? Int32 {
            self.concurrency = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ServiceMode"] as? String {
            self.serviceMode = value
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOutboundCallRestrictionRequest : Tea.TeaModel {
    public class OutboundCallRestriction : Tea.TeaModel {
        public var number: String?

        public var remark: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Number"] as? String {
                self.number = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
        }
    }
    public var instanceId: String?

    public var outboundCallRestriction: [CreateOutboundCallRestrictionRequest.OutboundCallRestriction]?

    public var policy: Int32?

    public override init() {
        super.init()
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
        if self.outboundCallRestriction != nil {
            var tmp : [Any] = []
            for k in self.outboundCallRestriction! {
                tmp.append(k.toMap())
            }
            map["OutboundCallRestriction"] = tmp
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OutboundCallRestriction"] as? [Any?] {
            var tmp : [CreateOutboundCallRestrictionRequest.OutboundCallRestriction] = []
            for v in value {
                if v != nil {
                    var model = CreateOutboundCallRestrictionRequest.OutboundCallRestriction()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.outboundCallRestriction = tmp
        }
        if let value = dict["Policy"] as? Int32 {
            self.policy = value
        }
    }
}

public class CreateOutboundCallRestrictionShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var outboundCallRestrictionShrink: String?

    public var policy: Int32?

    public override init() {
        super.init()
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
        if self.outboundCallRestrictionShrink != nil {
            map["OutboundCallRestriction"] = self.outboundCallRestrictionShrink!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OutboundCallRestriction"] as? String {
            self.outboundCallRestrictionShrink = value
        }
        if let value = dict["Policy"] as? Int32 {
            self.policy = value
        }
    }
}

public class CreateOutboundCallRestrictionResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateOutboundCallRestrictionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOutboundCallRestrictionResponseBody?

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
            var model = CreateOutboundCallRestrictionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateScriptRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var nluEngine: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nluEngine != nil {
            map["NluEngine"] = self.nluEngine!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NluEngine"] as? String {
            self.nluEngine = value
        }
    }
}

public class CreateScriptResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScriptResponseBody?

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
            var model = CreateScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateScriptVersionRequest : Tea.TeaModel {
    public class InteractionConfig : Tea.TeaModel {
        public class BargeInConfig : Tea.TeaModel {
            public var closingBargeInEnabled: Bool?

            public var globalBargeInEnabled: Bool?

            public var openingBargeInEnabled: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.closingBargeInEnabled != nil {
                    map["ClosingBargeInEnabled"] = self.closingBargeInEnabled!
                }
                if self.globalBargeInEnabled != nil {
                    map["GlobalBargeInEnabled"] = self.globalBargeInEnabled!
                }
                if self.openingBargeInEnabled != nil {
                    map["OpeningBargeInEnabled"] = self.openingBargeInEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClosingBargeInEnabled"] as? Bool {
                    self.closingBargeInEnabled = value
                }
                if let value = dict["GlobalBargeInEnabled"] as? Bool {
                    self.globalBargeInEnabled = value
                }
                if let value = dict["OpeningBargeInEnabled"] as? Bool {
                    self.openingBargeInEnabled = value
                }
            }
        }
        public class EndConversationConfig : Tea.TeaModel {
            public class Triggers : Tea.TeaModel {
                public var closingStatement: String?

                public var keywords: [String]?

                public var triggerType: String?

                public var turnLimit: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.closingStatement != nil {
                        map["ClosingStatement"] = self.closingStatement!
                    }
                    if self.keywords != nil {
                        map["Keywords"] = self.keywords!
                    }
                    if self.triggerType != nil {
                        map["TriggerType"] = self.triggerType!
                    }
                    if self.turnLimit != nil {
                        map["TurnLimit"] = self.turnLimit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ClosingStatement"] as? String {
                        self.closingStatement = value
                    }
                    if let value = dict["Keywords"] as? [String] {
                        self.keywords = value
                    }
                    if let value = dict["TriggerType"] as? String {
                        self.triggerType = value
                    }
                    if let value = dict["TurnLimit"] as? Int32 {
                        self.turnLimit = value
                    }
                }
            }
            public var bargeInEnabled: Bool?

            public var delay: Int32?

            public var triggers: [CreateScriptVersionRequest.InteractionConfig.EndConversationConfig.Triggers]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bargeInEnabled != nil {
                    map["BargeInEnabled"] = self.bargeInEnabled!
                }
                if self.delay != nil {
                    map["Delay"] = self.delay!
                }
                if self.triggers != nil {
                    var tmp : [Any] = []
                    for k in self.triggers! {
                        tmp.append(k.toMap())
                    }
                    map["Triggers"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BargeInEnabled"] as? Bool {
                    self.bargeInEnabled = value
                }
                if let value = dict["Delay"] as? Int32 {
                    self.delay = value
                }
                if let value = dict["Triggers"] as? [Any?] {
                    var tmp : [CreateScriptVersionRequest.InteractionConfig.EndConversationConfig.Triggers] = []
                    for v in value {
                        if v != nil {
                            var model = CreateScriptVersionRequest.InteractionConfig.EndConversationConfig.Triggers()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.triggers = tmp
                }
            }
        }
        public class SilenceDetectionConfig : Tea.TeaModel {
            public class FallbackControlParamsList : Tea.TeaModel {
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
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var fallbackControlParamsList: [CreateScriptVersionRequest.InteractionConfig.SilenceDetectionConfig.FallbackControlParamsList]?

            public var maxRepeats: Int32?

            public var prompt: String?

            public var timeout: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fallbackControlParamsList != nil {
                    var tmp : [Any] = []
                    for k in self.fallbackControlParamsList! {
                        tmp.append(k.toMap())
                    }
                    map["FallbackControlParamsList"] = tmp
                }
                if self.maxRepeats != nil {
                    map["MaxRepeats"] = self.maxRepeats!
                }
                if self.prompt != nil {
                    map["Prompt"] = self.prompt!
                }
                if self.timeout != nil {
                    map["Timeout"] = self.timeout!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FallbackControlParamsList"] as? [Any?] {
                    var tmp : [CreateScriptVersionRequest.InteractionConfig.SilenceDetectionConfig.FallbackControlParamsList] = []
                    for v in value {
                        if v != nil {
                            var model = CreateScriptVersionRequest.InteractionConfig.SilenceDetectionConfig.FallbackControlParamsList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.fallbackControlParamsList = tmp
                }
                if let value = dict["MaxRepeats"] as? Int32 {
                    self.maxRepeats = value
                }
                if let value = dict["Prompt"] as? String {
                    self.prompt = value
                }
                if let value = dict["Timeout"] as? Int32 {
                    self.timeout = value
                }
            }
        }
        public class TransitionConfig : Tea.TeaModel {
            public var aiPhrasePrompt: String?

            public var fixedPhraseList: [String]?

            public var phraseSource: String?

            public var transitionSwitch: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aiPhrasePrompt != nil {
                    map["AiPhrasePrompt"] = self.aiPhrasePrompt!
                }
                if self.fixedPhraseList != nil {
                    map["FixedPhraseList"] = self.fixedPhraseList!
                }
                if self.phraseSource != nil {
                    map["PhraseSource"] = self.phraseSource!
                }
                if self.transitionSwitch != nil {
                    map["TransitionSwitch"] = self.transitionSwitch!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AiPhrasePrompt"] as? String {
                    self.aiPhrasePrompt = value
                }
                if let value = dict["FixedPhraseList"] as? [String] {
                    self.fixedPhraseList = value
                }
                if let value = dict["PhraseSource"] as? String {
                    self.phraseSource = value
                }
                if let value = dict["TransitionSwitch"] as? Bool {
                    self.transitionSwitch = value
                }
            }
        }
        public var backgroundMusicId: String?

        public var bargeInConfig: CreateScriptVersionRequest.InteractionConfig.BargeInConfig?

        public var endConversationConfig: CreateScriptVersionRequest.InteractionConfig.EndConversationConfig?

        public var initialGreetingDelayMilliseconds: Int32?

        public var silenceDetectionConfig: CreateScriptVersionRequest.InteractionConfig.SilenceDetectionConfig?

        public var transitionConfig: CreateScriptVersionRequest.InteractionConfig.TransitionConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.bargeInConfig?.validate()
            try self.endConversationConfig?.validate()
            try self.silenceDetectionConfig?.validate()
            try self.transitionConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backgroundMusicId != nil {
                map["BackgroundMusicId"] = self.backgroundMusicId!
            }
            if self.bargeInConfig != nil {
                map["BargeInConfig"] = self.bargeInConfig?.toMap()
            }
            if self.endConversationConfig != nil {
                map["EndConversationConfig"] = self.endConversationConfig?.toMap()
            }
            if self.initialGreetingDelayMilliseconds != nil {
                map["InitialGreetingDelayMilliseconds"] = self.initialGreetingDelayMilliseconds!
            }
            if self.silenceDetectionConfig != nil {
                map["SilenceDetectionConfig"] = self.silenceDetectionConfig?.toMap()
            }
            if self.transitionConfig != nil {
                map["TransitionConfig"] = self.transitionConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackgroundMusicId"] as? String {
                self.backgroundMusicId = value
            }
            if let value = dict["BargeInConfig"] as? [String: Any?] {
                var model = CreateScriptVersionRequest.InteractionConfig.BargeInConfig()
                model.fromMap(value)
                self.bargeInConfig = model
            }
            if let value = dict["EndConversationConfig"] as? [String: Any?] {
                var model = CreateScriptVersionRequest.InteractionConfig.EndConversationConfig()
                model.fromMap(value)
                self.endConversationConfig = model
            }
            if let value = dict["InitialGreetingDelayMilliseconds"] as? Int32 {
                self.initialGreetingDelayMilliseconds = value
            }
            if let value = dict["SilenceDetectionConfig"] as? [String: Any?] {
                var model = CreateScriptVersionRequest.InteractionConfig.SilenceDetectionConfig()
                model.fromMap(value)
                self.silenceDetectionConfig = model
            }
            if let value = dict["TransitionConfig"] as? [String: Any?] {
                var model = CreateScriptVersionRequest.InteractionConfig.TransitionConfig()
                model.fromMap(value)
                self.transitionConfig = model
            }
        }
    }
    public class LabelConfigs : Tea.TeaModel {
        public var candidateValues: [String]?

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
            if self.candidateValues != nil {
                map["CandidateValues"] = self.candidateValues!
            }
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
            if let value = dict["CandidateValues"] as? [String] {
                self.candidateValues = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public class ScriptProfile : Tea.TeaModel {
        public class AgentProfile : Tea.TeaModel {
            public var promptsJson: String?

            public var scriptProfileTemplateId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.promptsJson != nil {
                    map["PromptsJson"] = self.promptsJson!
                }
                if self.scriptProfileTemplateId != nil {
                    map["ScriptProfileTemplateId"] = self.scriptProfileTemplateId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PromptsJson"] as? String {
                    self.promptsJson = value
                }
                if let value = dict["ScriptProfileTemplateId"] as? String {
                    self.scriptProfileTemplateId = value
                }
            }
        }
        public class FunctionMeta : Tea.TeaModel {
            public var functionId: String?

            public var functionName: String?

            public var httpTriggerName: String?

            public var httpTriggerUrl: String?

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
                if self.functionId != nil {
                    map["FunctionId"] = self.functionId!
                }
                if self.functionName != nil {
                    map["FunctionName"] = self.functionName!
                }
                if self.httpTriggerName != nil {
                    map["HttpTriggerName"] = self.httpTriggerName!
                }
                if self.httpTriggerUrl != nil {
                    map["HttpTriggerUrl"] = self.httpTriggerUrl!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FunctionId"] as? String {
                    self.functionId = value
                }
                if let value = dict["FunctionName"] as? String {
                    self.functionName = value
                }
                if let value = dict["HttpTriggerName"] as? String {
                    self.httpTriggerName = value
                }
                if let value = dict["HttpTriggerUrl"] as? String {
                    self.httpTriggerUrl = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
            }
        }
        public class NluAccessProfile : Tea.TeaModel {
            public var accessProfileId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessProfileId != nil {
                    map["AccessProfileId"] = self.accessProfileId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessProfileId"] as? String {
                    self.accessProfileId = value
                }
            }
        }
        public var agentKey: String?

        public var agentProfile: CreateScriptVersionRequest.ScriptProfile.AgentProfile?

        public var builderType: String?

        public var chatbotId: String?

        public var functionMeta: CreateScriptVersionRequest.ScriptProfile.FunctionMeta?

        public var model: String?

        public var nluAccessProfile: CreateScriptVersionRequest.ScriptProfile.NluAccessProfile?

        public var nluAccessType: String?

        public var omniModel: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.agentProfile?.validate()
            try self.functionMeta?.validate()
            try self.nluAccessProfile?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentKey != nil {
                map["AgentKey"] = self.agentKey!
            }
            if self.agentProfile != nil {
                map["AgentProfile"] = self.agentProfile?.toMap()
            }
            if self.builderType != nil {
                map["BuilderType"] = self.builderType!
            }
            if self.chatbotId != nil {
                map["ChatbotId"] = self.chatbotId!
            }
            if self.functionMeta != nil {
                map["FunctionMeta"] = self.functionMeta?.toMap()
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.nluAccessProfile != nil {
                map["NluAccessProfile"] = self.nluAccessProfile?.toMap()
            }
            if self.nluAccessType != nil {
                map["NluAccessType"] = self.nluAccessType!
            }
            if self.omniModel != nil {
                map["OmniModel"] = self.omniModel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentKey"] as? String {
                self.agentKey = value
            }
            if let value = dict["AgentProfile"] as? [String: Any?] {
                var model = CreateScriptVersionRequest.ScriptProfile.AgentProfile()
                model.fromMap(value)
                self.agentProfile = model
            }
            if let value = dict["BuilderType"] as? String {
                self.builderType = value
            }
            if let value = dict["ChatbotId"] as? String {
                self.chatbotId = value
            }
            if let value = dict["FunctionMeta"] as? [String: Any?] {
                var model = CreateScriptVersionRequest.ScriptProfile.FunctionMeta()
                model.fromMap(value)
                self.functionMeta = model
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["NluAccessProfile"] as? [String: Any?] {
                var model = CreateScriptVersionRequest.ScriptProfile.NluAccessProfile()
                model.fromMap(value)
                self.nluAccessProfile = model
            }
            if let value = dict["NluAccessType"] as? String {
                self.nluAccessType = value
            }
            if let value = dict["OmniModel"] as? Bool {
                self.omniModel = value
            }
        }
    }
    public class SynthesizerConfig : Tea.TeaModel {
        public class NlsAccessProfile : Tea.TeaModel {
            public var accessProfileId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessProfileId != nil {
                    map["AccessProfileId"] = self.accessProfileId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessProfileId"] as? String {
                    self.accessProfileId = value
                }
            }
        }
        public class PronRules : Tea.TeaModel {
            public var pattern: String?

            public var replacement: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pattern != nil {
                    map["Pattern"] = self.pattern!
                }
                if self.replacement != nil {
                    map["Replacement"] = self.replacement!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Pattern"] as? String {
                    self.pattern = value
                }
                if let value = dict["Replacement"] as? String {
                    self.replacement = value
                }
            }
        }
        public var model: String?

        public var nlsAccessProfile: CreateScriptVersionRequest.SynthesizerConfig.NlsAccessProfile?

        public var nlsAccessType: String?

        public var nlsEngine: String?

        public var pitchRate: Int32?

        public var pronRules: [CreateScriptVersionRequest.SynthesizerConfig.PronRules]?

        public var speechRate: Int32?

        public var voice: String?

        public var volume: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.nlsAccessProfile?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.nlsAccessProfile != nil {
                map["NlsAccessProfile"] = self.nlsAccessProfile?.toMap()
            }
            if self.nlsAccessType != nil {
                map["NlsAccessType"] = self.nlsAccessType!
            }
            if self.nlsEngine != nil {
                map["NlsEngine"] = self.nlsEngine!
            }
            if self.pitchRate != nil {
                map["PitchRate"] = self.pitchRate!
            }
            if self.pronRules != nil {
                var tmp : [Any] = []
                for k in self.pronRules! {
                    tmp.append(k.toMap())
                }
                map["PronRules"] = tmp
            }
            if self.speechRate != nil {
                map["SpeechRate"] = self.speechRate!
            }
            if self.voice != nil {
                map["Voice"] = self.voice!
            }
            if self.volume != nil {
                map["Volume"] = self.volume!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["NlsAccessProfile"] as? [String: Any?] {
                var model = CreateScriptVersionRequest.SynthesizerConfig.NlsAccessProfile()
                model.fromMap(value)
                self.nlsAccessProfile = model
            }
            if let value = dict["NlsAccessType"] as? String {
                self.nlsAccessType = value
            }
            if let value = dict["NlsEngine"] as? String {
                self.nlsEngine = value
            }
            if let value = dict["PitchRate"] as? Int32 {
                self.pitchRate = value
            }
            if let value = dict["PronRules"] as? [Any?] {
                var tmp : [CreateScriptVersionRequest.SynthesizerConfig.PronRules] = []
                for v in value {
                    if v != nil {
                        var model = CreateScriptVersionRequest.SynthesizerConfig.PronRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pronRules = tmp
            }
            if let value = dict["SpeechRate"] as? Int32 {
                self.speechRate = value
            }
            if let value = dict["Voice"] as? String {
                self.voice = value
            }
            if let value = dict["Volume"] as? Int32 {
                self.volume = value
            }
        }
    }
    public class TranscriberConfig : Tea.TeaModel {
        public class CorrectionRules : Tea.TeaModel {
            public var pattern: String?

            public var replacement: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pattern != nil {
                    map["Pattern"] = self.pattern!
                }
                if self.replacement != nil {
                    map["Replacement"] = self.replacement!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Pattern"] as? String {
                    self.pattern = value
                }
                if let value = dict["Replacement"] as? String {
                    self.replacement = value
                }
            }
        }
        public class NlsAccessProfile : Tea.TeaModel {
            public var accessProfileId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessProfileId != nil {
                    map["AccessProfileId"] = self.accessProfileId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessProfileId"] as? String {
                    self.accessProfileId = value
                }
            }
        }
        public var correctionRules: [CreateScriptVersionRequest.TranscriberConfig.CorrectionRules]?

        public var customizationId: String?

        public var endSilenceTimeout: Int32?

        public var model: String?

        public var nlsAccessProfile: CreateScriptVersionRequest.TranscriberConfig.NlsAccessProfile?

        public var nlsAccessType: String?

        public var nlsEngine: String?

        public var speechNoiseThreshold: Int32?

        public var vocabularyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.nlsAccessProfile?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.correctionRules != nil {
                var tmp : [Any] = []
                for k in self.correctionRules! {
                    tmp.append(k.toMap())
                }
                map["CorrectionRules"] = tmp
            }
            if self.customizationId != nil {
                map["CustomizationId"] = self.customizationId!
            }
            if self.endSilenceTimeout != nil {
                map["EndSilenceTimeout"] = self.endSilenceTimeout!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.nlsAccessProfile != nil {
                map["NlsAccessProfile"] = self.nlsAccessProfile?.toMap()
            }
            if self.nlsAccessType != nil {
                map["NlsAccessType"] = self.nlsAccessType!
            }
            if self.nlsEngine != nil {
                map["NlsEngine"] = self.nlsEngine!
            }
            if self.speechNoiseThreshold != nil {
                map["SpeechNoiseThreshold"] = self.speechNoiseThreshold!
            }
            if self.vocabularyId != nil {
                map["VocabularyId"] = self.vocabularyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CorrectionRules"] as? [Any?] {
                var tmp : [CreateScriptVersionRequest.TranscriberConfig.CorrectionRules] = []
                for v in value {
                    if v != nil {
                        var model = CreateScriptVersionRequest.TranscriberConfig.CorrectionRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.correctionRules = tmp
            }
            if let value = dict["CustomizationId"] as? String {
                self.customizationId = value
            }
            if let value = dict["EndSilenceTimeout"] as? Int32 {
                self.endSilenceTimeout = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["NlsAccessProfile"] as? [String: Any?] {
                var model = CreateScriptVersionRequest.TranscriberConfig.NlsAccessProfile()
                model.fromMap(value)
                self.nlsAccessProfile = model
            }
            if let value = dict["NlsAccessType"] as? String {
                self.nlsAccessType = value
            }
            if let value = dict["NlsEngine"] as? String {
                self.nlsEngine = value
            }
            if let value = dict["SpeechNoiseThreshold"] as? Int32 {
                self.speechNoiseThreshold = value
            }
            if let value = dict["VocabularyId"] as? String {
                self.vocabularyId = value
            }
        }
    }
    public var instanceId: String?

    public var interactionConfig: CreateScriptVersionRequest.InteractionConfig?

    public var labelConfigs: [CreateScriptVersionRequest.LabelConfigs]?

    public var scriptId: String?

    public var scriptProfile: CreateScriptVersionRequest.ScriptProfile?

    public var sourceVersionId: String?

    public var synthesizerConfig: CreateScriptVersionRequest.SynthesizerConfig?

    public var transcriberConfig: CreateScriptVersionRequest.TranscriberConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.interactionConfig?.validate()
        try self.scriptProfile?.validate()
        try self.synthesizerConfig?.validate()
        try self.transcriberConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.interactionConfig != nil {
            map["InteractionConfig"] = self.interactionConfig?.toMap()
        }
        if self.labelConfigs != nil {
            var tmp : [Any] = []
            for k in self.labelConfigs! {
                tmp.append(k.toMap())
            }
            map["LabelConfigs"] = tmp
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        if self.scriptProfile != nil {
            map["ScriptProfile"] = self.scriptProfile?.toMap()
        }
        if self.sourceVersionId != nil {
            map["SourceVersionId"] = self.sourceVersionId!
        }
        if self.synthesizerConfig != nil {
            map["SynthesizerConfig"] = self.synthesizerConfig?.toMap()
        }
        if self.transcriberConfig != nil {
            map["TranscriberConfig"] = self.transcriberConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InteractionConfig"] as? [String: Any?] {
            var model = CreateScriptVersionRequest.InteractionConfig()
            model.fromMap(value)
            self.interactionConfig = model
        }
        if let value = dict["LabelConfigs"] as? [Any?] {
            var tmp : [CreateScriptVersionRequest.LabelConfigs] = []
            for v in value {
                if v != nil {
                    var model = CreateScriptVersionRequest.LabelConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labelConfigs = tmp
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
        if let value = dict["ScriptProfile"] as? [String: Any?] {
            var model = CreateScriptVersionRequest.ScriptProfile()
            model.fromMap(value)
            self.scriptProfile = model
        }
        if let value = dict["SourceVersionId"] as? String {
            self.sourceVersionId = value
        }
        if let value = dict["SynthesizerConfig"] as? [String: Any?] {
            var model = CreateScriptVersionRequest.SynthesizerConfig()
            model.fromMap(value)
            self.synthesizerConfig = model
        }
        if let value = dict["TranscriberConfig"] as? [String: Any?] {
            var model = CreateScriptVersionRequest.TranscriberConfig()
            model.fromMap(value)
            self.transcriberConfig = model
        }
    }
}

public class CreateScriptVersionShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var interactionConfigShrink: String?

    public var labelConfigsShrink: String?

    public var scriptId: String?

    public var scriptProfileShrink: String?

    public var sourceVersionId: String?

    public var synthesizerConfigShrink: String?

    public var transcriberConfigShrink: String?

    public override init() {
        super.init()
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
        if self.interactionConfigShrink != nil {
            map["InteractionConfig"] = self.interactionConfigShrink!
        }
        if self.labelConfigsShrink != nil {
            map["LabelConfigs"] = self.labelConfigsShrink!
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        if self.scriptProfileShrink != nil {
            map["ScriptProfile"] = self.scriptProfileShrink!
        }
        if self.sourceVersionId != nil {
            map["SourceVersionId"] = self.sourceVersionId!
        }
        if self.synthesizerConfigShrink != nil {
            map["SynthesizerConfig"] = self.synthesizerConfigShrink!
        }
        if self.transcriberConfigShrink != nil {
            map["TranscriberConfig"] = self.transcriberConfigShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InteractionConfig"] as? String {
            self.interactionConfigShrink = value
        }
        if let value = dict["LabelConfigs"] as? String {
            self.labelConfigsShrink = value
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
        if let value = dict["ScriptProfile"] as? String {
            self.scriptProfileShrink = value
        }
        if let value = dict["SourceVersionId"] as? String {
            self.sourceVersionId = value
        }
        if let value = dict["SynthesizerConfig"] as? String {
            self.synthesizerConfigShrink = value
        }
        if let value = dict["TranscriberConfig"] as? String {
            self.transcriberConfigShrink = value
        }
    }
}

public class CreateScriptVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateScriptVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScriptVersionResponseBody?

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
            var model = CreateScriptVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVoiceAccessProfileRequest : Tea.TeaModel {
    public class Profile : Tea.TeaModel {
        public var accessKey: String?

        public var apiKey: String?

        public var apiSecret: String?

        public var appId: String?

        public var appKey: String?

        public var asrAppKey: String?

        public var secretId: String?

        public var secretKey: String?

        public var ttsApiKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKey != nil {
                map["AccessKey"] = self.accessKey!
            }
            if self.apiKey != nil {
                map["ApiKey"] = self.apiKey!
            }
            if self.apiSecret != nil {
                map["ApiSecret"] = self.apiSecret!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            if self.asrAppKey != nil {
                map["AsrAppKey"] = self.asrAppKey!
            }
            if self.secretId != nil {
                map["SecretId"] = self.secretId!
            }
            if self.secretKey != nil {
                map["SecretKey"] = self.secretKey!
            }
            if self.ttsApiKey != nil {
                map["TtsApiKey"] = self.ttsApiKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKey"] as? String {
                self.accessKey = value
            }
            if let value = dict["ApiKey"] as? String {
                self.apiKey = value
            }
            if let value = dict["ApiSecret"] as? String {
                self.apiSecret = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppKey"] as? String {
                self.appKey = value
            }
            if let value = dict["AsrAppKey"] as? String {
                self.asrAppKey = value
            }
            if let value = dict["SecretId"] as? String {
                self.secretId = value
            }
            if let value = dict["SecretKey"] as? String {
                self.secretKey = value
            }
            if let value = dict["TtsApiKey"] as? String {
                self.ttsApiKey = value
            }
        }
    }
    public var instanceId: String?

    public var nlsEngine: String?

    public var profile: CreateVoiceAccessProfileRequest.Profile?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nlsEngine != nil {
            map["NlsEngine"] = self.nlsEngine!
        }
        if self.profile != nil {
            map["Profile"] = self.profile?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NlsEngine"] as? String {
            self.nlsEngine = value
        }
        if let value = dict["Profile"] as? [String: Any?] {
            var model = CreateVoiceAccessProfileRequest.Profile()
            model.fromMap(value)
            self.profile = model
        }
    }
}

public class CreateVoiceAccessProfileShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nlsEngine: String?

    public var profileShrink: String?

    public override init() {
        super.init()
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
        if self.nlsEngine != nil {
            map["NlsEngine"] = self.nlsEngine!
        }
        if self.profileShrink != nil {
            map["Profile"] = self.profileShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NlsEngine"] as? String {
            self.nlsEngine = value
        }
        if let value = dict["Profile"] as? String {
            self.profileShrink = value
        }
    }
}

public class CreateVoiceAccessProfileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateVoiceAccessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVoiceAccessProfileResponseBody?

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
            var model = CreateVoiceAccessProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCloneVoiceRequest : Tea.TeaModel {
    public var cloneVoiceId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cloneVoiceId != nil {
            map["CloneVoiceId"] = self.cloneVoiceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloneVoiceId"] as? String {
            self.cloneVoiceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteCloneVoiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteCloneVoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCloneVoiceResponseBody?

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
            var model = DeleteCloneVoiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFlashSmsAccessProfileRequest : Tea.TeaModel {
    public var accessProfileId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessProfileId != nil {
            map["AccessProfileId"] = self.accessProfileId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessProfileId"] as? String {
            self.accessProfileId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteFlashSmsAccessProfileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteFlashSmsAccessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFlashSmsAccessProfileResponseBody?

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
            var model = DeleteFlashSmsAccessProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceResponseBody?

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
            var model = DeleteInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteOutboundCallRestrictionRequest : Tea.TeaModel {
    public var instanceId: String?

    public var restrictionIdList: [String]?

    public override init() {
        super.init()
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
        if self.restrictionIdList != nil {
            map["RestrictionIdList"] = self.restrictionIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RestrictionIdList"] as? [String] {
            self.restrictionIdList = value
        }
    }
}

public class DeleteOutboundCallRestrictionShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var restrictionIdListShrink: String?

    public override init() {
        super.init()
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
        if self.restrictionIdListShrink != nil {
            map["RestrictionIdList"] = self.restrictionIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RestrictionIdList"] as? String {
            self.restrictionIdListShrink = value
        }
    }
}

public class DeleteOutboundCallRestrictionResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteOutboundCallRestrictionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOutboundCallRestrictionResponseBody?

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
            var model = DeleteOutboundCallRestrictionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteScriptRequest : Tea.TeaModel {
    public var instanceId: String?

    public var scriptId: String?

    public override init() {
        super.init()
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
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
    }
}

public class DeleteScriptResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScriptResponseBody?

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
            var model = DeleteScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVoiceAccessProfileRequest : Tea.TeaModel {
    public var accessProfileId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessProfileId != nil {
            map["AccessProfileId"] = self.accessProfileId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessProfileId"] as? String {
            self.accessProfileId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteVoiceAccessProfileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteVoiceAccessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVoiceAccessProfileResponseBody?

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
            var model = DeleteVoiceAccessProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableSubscriptionRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DisableSubscriptionResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DisableSubscriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableSubscriptionResponseBody?

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
            var model = DisableSubscriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var concurrency: Int32?

        public var createdTime: Int64?

        public var description_: String?

        public var instanceId: String?

        public var name: String?

        public var nluProfile: String?

        public var serviceMode: String?

        public var tenantId: String?

        public var updatedTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nluProfile != nil {
                map["NluProfile"] = self.nluProfile!
            }
            if self.serviceMode != nil {
                map["ServiceMode"] = self.serviceMode!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Concurrency"] as? Int32 {
                self.concurrency = value
            }
            if let value = dict["CreatedTime"] as? Int64 {
                self.createdTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NluProfile"] as? String {
                self.nluProfile = value
            }
            if let value = dict["ServiceMode"] as? String {
                self.serviceMode = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["UpdatedTime"] as? Int64 {
                self.updatedTime = value
            }
        }
    }
    public var code: String?

    public var data: GetInstanceResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.params != nil {
            map["Params"] = self.params!
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
            var model = GetInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceResponseBody?

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
            var model = GetInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetScriptProfileTemplateRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class GetScriptProfileTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdTime: Int64?

        public var description_: String?

        public var labels: String?

        public var name: String?

        public var schema: String?

        public var templateId: String?

        public var updatedTime: Int64?

        public var variables: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.schema != nil {
                map["Schema"] = self.schema!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            if self.variables != nil {
                map["Variables"] = self.variables!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedTime"] as? Int64 {
                self.createdTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Labels"] as? String {
                self.labels = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Schema"] as? String {
                self.schema = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["UpdatedTime"] as? Int64 {
                self.updatedTime = value
            }
            if let value = dict["Variables"] as? String {
                self.variables = value
            }
        }
    }
    public var code: String?

    public var data: GetScriptProfileTemplateResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.params != nil {
            map["Params"] = self.params!
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
            var model = GetScriptProfileTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetScriptProfileTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScriptProfileTemplateResponseBody?

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
            var model = GetScriptProfileTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSubscriptionRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetSubscriptionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class EventList : Tea.TeaModel {
            public var disabled: Bool?

            public var displayName: String?

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
                if self.disabled != nil {
                    map["Disabled"] = self.disabled!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Disabled"] as? Bool {
                    self.disabled = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var disabled: Bool?

        public var endpoint: String?

        public var eventList: [GetSubscriptionResponseBody.Data.EventList]?

        public var instanceId: String?

        public var mqInstanceId: String?

        public var mqType: String?

        public var password: String?

        public var producerId: String?

        public var topic: String?

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
            if self.disabled != nil {
                map["Disabled"] = self.disabled!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.eventList != nil {
                var tmp : [Any] = []
                for k in self.eventList! {
                    tmp.append(k.toMap())
                }
                map["EventList"] = tmp
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.mqInstanceId != nil {
                map["MqInstanceId"] = self.mqInstanceId!
            }
            if self.mqType != nil {
                map["MqType"] = self.mqType!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.producerId != nil {
                map["ProducerId"] = self.producerId!
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Disabled"] as? Bool {
                self.disabled = value
            }
            if let value = dict["Endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["EventList"] as? [Any?] {
                var tmp : [GetSubscriptionResponseBody.Data.EventList] = []
                for v in value {
                    if v != nil {
                        var model = GetSubscriptionResponseBody.Data.EventList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.eventList = tmp
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["MqInstanceId"] as? String {
                self.mqInstanceId = value
            }
            if let value = dict["MqType"] as? String {
                self.mqType = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["ProducerId"] as? String {
                self.producerId = value
            }
            if let value = dict["Topic"] as? String {
                self.topic = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
    public var code: String?

    public var data: GetSubscriptionResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.params != nil {
            map["Params"] = self.params!
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
            var model = GetSubscriptionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSubscriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubscriptionResponseBody?

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
            var model = GetSubscriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCloneVoiceModelsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListCloneVoiceModelsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CloneVoiceModels : Tea.TeaModel {
            public var description_: String?

            public var displayName: String?

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
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
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
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var cloneVoiceModels: [ListCloneVoiceModelsResponseBody.Data.CloneVoiceModels]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.cloneVoiceModels != nil {
                var tmp : [Any] = []
                for k in self.cloneVoiceModels! {
                    tmp.append(k.toMap())
                }
                map["CloneVoiceModels"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CloneVoiceModels"] as? [Any?] {
                var tmp : [ListCloneVoiceModelsResponseBody.Data.CloneVoiceModels] = []
                for v in value {
                    if v != nil {
                        var model = ListCloneVoiceModelsResponseBody.Data.CloneVoiceModels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cloneVoiceModels = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListCloneVoiceModelsResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.params != nil {
            map["Params"] = self.params!
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
            var model = ListCloneVoiceModelsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListCloneVoiceModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCloneVoiceModelsResponseBody?

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
            var model = ListCloneVoiceModelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCloneVoicesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListCloneVoicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CloneVoices : Tea.TeaModel {
            public var cloneVoiceId: String?

            public var createdTime: Int64?

            public var instanceId: String?

            public var model: String?

            public var name: String?

            public var nlsEngine: String?

            public var status: String?

            public var tenantId: String?

            public var updatedTime: Int64?

            public var voice: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cloneVoiceId != nil {
                    map["CloneVoiceId"] = self.cloneVoiceId!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.model != nil {
                    map["Model"] = self.model!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nlsEngine != nil {
                    map["NlsEngine"] = self.nlsEngine!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                if self.voice != nil {
                    map["Voice"] = self.voice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CloneVoiceId"] as? String {
                    self.cloneVoiceId = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["Model"] as? String {
                    self.model = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NlsEngine"] as? String {
                    self.nlsEngine = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
                if let value = dict["Voice"] as? String {
                    self.voice = value
                }
            }
        }
        public var cloneVoices: [ListCloneVoicesResponseBody.Data.CloneVoices]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.cloneVoices != nil {
                var tmp : [Any] = []
                for k in self.cloneVoices! {
                    tmp.append(k.toMap())
                }
                map["CloneVoices"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CloneVoices"] as? [Any?] {
                var tmp : [ListCloneVoicesResponseBody.Data.CloneVoices] = []
                for v in value {
                    if v != nil {
                        var model = ListCloneVoicesResponseBody.Data.CloneVoices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cloneVoices = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListCloneVoicesResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.params != nil {
            map["Params"] = self.params!
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
            var model = ListCloneVoicesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListCloneVoicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCloneVoicesResponseBody?

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
            var model = ListCloneVoicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFlashSmsAccessProfilesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListFlashSmsAccessProfilesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FlashSmsAccessProfiles : Tea.TeaModel {
            public var accessProfile: String?

            public var accessProfileId: String?

            public var createdTime: Int64?

            public var providerId: String?

            public var providerName: String?

            public var updatedTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessProfile != nil {
                    map["AccessProfile"] = self.accessProfile!
                }
                if self.accessProfileId != nil {
                    map["AccessProfileId"] = self.accessProfileId!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.providerId != nil {
                    map["ProviderId"] = self.providerId!
                }
                if self.providerName != nil {
                    map["ProviderName"] = self.providerName!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessProfile"] as? String {
                    self.accessProfile = value
                }
                if let value = dict["AccessProfileId"] as? String {
                    self.accessProfileId = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["ProviderId"] as? String {
                    self.providerId = value
                }
                if let value = dict["ProviderName"] as? String {
                    self.providerName = value
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
            }
        }
        public var flashSmsAccessProfiles: [ListFlashSmsAccessProfilesResponseBody.Data.FlashSmsAccessProfiles]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.flashSmsAccessProfiles != nil {
                var tmp : [Any] = []
                for k in self.flashSmsAccessProfiles! {
                    tmp.append(k.toMap())
                }
                map["FlashSmsAccessProfiles"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FlashSmsAccessProfiles"] as? [Any?] {
                var tmp : [ListFlashSmsAccessProfilesResponseBody.Data.FlashSmsAccessProfiles] = []
                for v in value {
                    if v != nil {
                        var model = ListFlashSmsAccessProfilesResponseBody.Data.FlashSmsAccessProfiles()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.flashSmsAccessProfiles = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListFlashSmsAccessProfilesResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.params != nil {
            map["Params"] = self.params!
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
            var model = ListFlashSmsAccessProfilesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListFlashSmsAccessProfilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlashSmsAccessProfilesResponseBody?

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
            var model = ListFlashSmsAccessProfilesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFlashSmsProvidersRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListFlashSmsProvidersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var profileSchema: String?

        public var providerId: String?

        public var providerName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.profileSchema != nil {
                map["ProfileSchema"] = self.profileSchema!
            }
            if self.providerId != nil {
                map["ProviderId"] = self.providerId!
            }
            if self.providerName != nil {
                map["ProviderName"] = self.providerName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProfileSchema"] as? String {
                self.profileSchema = value
            }
            if let value = dict["ProviderId"] as? String {
                self.providerId = value
            }
            if let value = dict["ProviderName"] as? String {
                self.providerName = value
            }
        }
    }
    public var code: String?

    public var data: [ListFlashSmsProvidersResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListFlashSmsProvidersResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListFlashSmsProvidersResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListFlashSmsProvidersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlashSmsProvidersResponseBody?

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
            var model = ListFlashSmsProvidersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFlashSmsTemplatesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var providerId: String?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.providerId != nil {
            map["ProviderId"] = self.providerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProviderId"] as? String {
            self.providerId = value
        }
    }
}

public class ListFlashSmsTemplatesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FlashSmsTemplates : Tea.TeaModel {
            public var templateId: String?

            public var templateName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.templateName != nil {
                    map["TemplateName"] = self.templateName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
                if let value = dict["TemplateName"] as? String {
                    self.templateName = value
                }
            }
        }
        public var flashSmsTemplates: [ListFlashSmsTemplatesResponseBody.Data.FlashSmsTemplates]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.flashSmsTemplates != nil {
                var tmp : [Any] = []
                for k in self.flashSmsTemplates! {
                    tmp.append(k.toMap())
                }
                map["FlashSmsTemplates"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FlashSmsTemplates"] as? [Any?] {
                var tmp : [ListFlashSmsTemplatesResponseBody.Data.FlashSmsTemplates] = []
                for v in value {
                    if v != nil {
                        var model = ListFlashSmsTemplatesResponseBody.Data.FlashSmsTemplates()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.flashSmsTemplates = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListFlashSmsTemplatesResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.params != nil {
            map["Params"] = self.params!
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
            var model = ListFlashSmsTemplatesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListFlashSmsTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlashSmsTemplatesResponseBody?

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
            var model = ListFlashSmsTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public var name: String?

    public var pageNumber: Int32?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Instances : Tea.TeaModel {
            public var concurrency: Int32?

            public var createdTime: Int64?

            public var description_: String?

            public var instanceId: String?

            public var name: String?

            public var serviceMode: String?

            public var tenantId: String?

            public var updatedTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.concurrency != nil {
                    map["Concurrency"] = self.concurrency!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.serviceMode != nil {
                    map["ServiceMode"] = self.serviceMode!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Concurrency"] as? Int32 {
                    self.concurrency = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["ServiceMode"] as? String {
                    self.serviceMode = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
            }
        }
        public var instances: [ListInstancesResponseBody.Data.Instances]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.instances != nil {
                var tmp : [Any] = []
                for k in self.instances! {
                    tmp.append(k.toMap())
                }
                map["Instances"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Instances"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.Data.Instances] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.Data.Instances()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instances = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListInstancesResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.params != nil {
            map["Params"] = self.params!
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
            var model = ListInstancesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesResponseBody?

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
            var model = ListInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOutboundCallRestrictionsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var policy: Int32?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Policy"] as? Int32 {
            self.policy = value
        }
    }
}

public class ListOutboundCallRestrictionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class OutboundCallRestrictions : Tea.TeaModel {
            public var createdTime: Int64?

            public var creator: String?

            public var number: String?

            public var policy: Int32?

            public var remark: String?

            public var restrictionId: String?

            public override init() {
                super.init()
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
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.restrictionId != nil {
                    map["RestrictionId"] = self.restrictionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["Number"] as? String {
                    self.number = value
                }
                if let value = dict["Policy"] as? Int32 {
                    self.policy = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["RestrictionId"] as? String {
                    self.restrictionId = value
                }
            }
        }
        public var outboundCallRestrictions: [ListOutboundCallRestrictionsResponseBody.Data.OutboundCallRestrictions]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.outboundCallRestrictions != nil {
                var tmp : [Any] = []
                for k in self.outboundCallRestrictions! {
                    tmp.append(k.toMap())
                }
                map["OutboundCallRestrictions"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OutboundCallRestrictions"] as? [Any?] {
                var tmp : [ListOutboundCallRestrictionsResponseBody.Data.OutboundCallRestrictions] = []
                for v in value {
                    if v != nil {
                        var model = ListOutboundCallRestrictionsResponseBody.Data.OutboundCallRestrictions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.outboundCallRestrictions = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListOutboundCallRestrictionsResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.params != nil {
            map["Params"] = self.params!
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
            var model = ListOutboundCallRestrictionsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListOutboundCallRestrictionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOutboundCallRestrictionsResponseBody?

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
            var model = ListOutboundCallRestrictionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListScriptProfileTemplatesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nluEngine: String?

    public override init() {
        super.init()
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
        if self.nluEngine != nil {
            map["NluEngine"] = self.nluEngine!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NluEngine"] as? String {
            self.nluEngine = value
        }
    }
}

public class ListScriptProfileTemplatesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdTime: Int64?

        public var description_: String?

        public var labels: String?

        public var name: String?

        public var schema: String?

        public var templateId: String?

        public var updatedTime: Int64?

        public var variables: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.schema != nil {
                map["Schema"] = self.schema!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            if self.variables != nil {
                map["Variables"] = self.variables!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedTime"] as? Int64 {
                self.createdTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Labels"] as? String {
                self.labels = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Schema"] as? String {
                self.schema = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["UpdatedTime"] as? Int64 {
                self.updatedTime = value
            }
            if let value = dict["Variables"] as? String {
                self.variables = value
            }
        }
    }
    public var code: String?

    public var data: [ListScriptProfileTemplatesResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListScriptProfileTemplatesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListScriptProfileTemplatesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListScriptProfileTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScriptProfileTemplatesResponseBody?

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
            var model = ListScriptProfileTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListScriptsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var publishOnly: Bool?

    public var scriptIds: [String]?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.publishOnly != nil {
            map["PublishOnly"] = self.publishOnly!
        }
        if self.scriptIds != nil {
            map["ScriptIds"] = self.scriptIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PublishOnly"] as? Bool {
            self.publishOnly = value
        }
        if let value = dict["ScriptIds"] as? [String] {
            self.scriptIds = value
        }
    }
}

public class ListScriptsShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var publishOnly: Bool?

    public var scriptIdsShrink: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.publishOnly != nil {
            map["PublishOnly"] = self.publishOnly!
        }
        if self.scriptIdsShrink != nil {
            map["ScriptIds"] = self.scriptIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PublishOnly"] as? Bool {
            self.publishOnly = value
        }
        if let value = dict["ScriptIds"] as? String {
            self.scriptIdsShrink = value
        }
    }
}

public class ListScriptsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Scripts : Tea.TeaModel {
            public var concurrency: Int32?

            public var createdTime: Int64?

            public var description_: String?

            public var draftVersionId: String?

            public var name: String?

            public var nluAccessType: String?

            public var nluEngine: String?

            public var number: String?

            public var publishedVersionId: String?

            public var scriptId: String?

            public var status: String?

            public var updatedTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.concurrency != nil {
                    map["Concurrency"] = self.concurrency!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.draftVersionId != nil {
                    map["DraftVersionId"] = self.draftVersionId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nluAccessType != nil {
                    map["NluAccessType"] = self.nluAccessType!
                }
                if self.nluEngine != nil {
                    map["NluEngine"] = self.nluEngine!
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.publishedVersionId != nil {
                    map["PublishedVersionId"] = self.publishedVersionId!
                }
                if self.scriptId != nil {
                    map["ScriptId"] = self.scriptId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Concurrency"] as? Int32 {
                    self.concurrency = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DraftVersionId"] as? String {
                    self.draftVersionId = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NluAccessType"] as? String {
                    self.nluAccessType = value
                }
                if let value = dict["NluEngine"] as? String {
                    self.nluEngine = value
                }
                if let value = dict["Number"] as? String {
                    self.number = value
                }
                if let value = dict["PublishedVersionId"] as? String {
                    self.publishedVersionId = value
                }
                if let value = dict["ScriptId"] as? String {
                    self.scriptId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var scripts: [ListScriptsResponseBody.Data.Scripts]?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.scripts != nil {
                var tmp : [Any] = []
                for k in self.scripts! {
                    tmp.append(k.toMap())
                }
                map["Scripts"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Scripts"] as? [Any?] {
                var tmp : [ListScriptsResponseBody.Data.Scripts] = []
                for v in value {
                    if v != nil {
                        var model = ListScriptsResponseBody.Data.Scripts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.scripts = tmp
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListScriptsResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.params != nil {
            map["Params"] = self.params!
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
            var model = ListScriptsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListScriptsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScriptsResponseBody?

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
            var model = ListScriptsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListScriptsByFlowRequest : Tea.TeaModel {
    public var flowId: String?

    public var instanceId: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListScriptsByFlowResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var chatbotId: String?

        public var name: String?

        public var scriptId: String?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.scriptId != nil {
                map["ScriptId"] = self.scriptId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChatbotId"] as? String {
                self.chatbotId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ScriptId"] as? String {
                self.scriptId = value
            }
        }
    }
    public var code: String?

    public var data: [ListScriptsByFlowResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListScriptsByFlowResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListScriptsByFlowResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListScriptsByFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScriptsByFlowResponseBody?

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
            var model = ListScriptsByFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSystemConfigsRequest : Tea.TeaModel {
    public var name: String?

    public var objectId: String?

    public var objectType: String?

    public override init() {
        super.init()
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
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
    }
}

public class ListSystemConfigsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdTime: String?

        public var name: String?

        public var objectId: String?

        public var objectType: String?

        public var updatedTime: String?

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
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.objectId != nil {
                map["ObjectId"] = self.objectId!
            }
            if self.objectType != nil {
                map["ObjectType"] = self.objectType!
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ObjectId"] as? String {
                self.objectId = value
            }
            if let value = dict["ObjectType"] as? String {
                self.objectType = value
            }
            if let value = dict["UpdatedTime"] as? String {
                self.updatedTime = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var code: String?

    public var data: [ListSystemConfigsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListSystemConfigsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListSystemConfigsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListSystemConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSystemConfigsResponseBody?

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
            var model = ListSystemConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVoiceAccessProfilesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListVoiceAccessProfilesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoiceAccessProfiles : Tea.TeaModel {
            public class Profile : Tea.TeaModel {
                public var accessKey: String?

                public var apiKey: String?

                public var apiSecret: String?

                public var appId: String?

                public var appKey: String?

                public var asrAppKey: String?

                public var secretId: String?

                public var secretKey: String?

                public var ttsApiKey: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessKey != nil {
                        map["AccessKey"] = self.accessKey!
                    }
                    if self.apiKey != nil {
                        map["ApiKey"] = self.apiKey!
                    }
                    if self.apiSecret != nil {
                        map["ApiSecret"] = self.apiSecret!
                    }
                    if self.appId != nil {
                        map["AppId"] = self.appId!
                    }
                    if self.appKey != nil {
                        map["AppKey"] = self.appKey!
                    }
                    if self.asrAppKey != nil {
                        map["AsrAppKey"] = self.asrAppKey!
                    }
                    if self.secretId != nil {
                        map["SecretId"] = self.secretId!
                    }
                    if self.secretKey != nil {
                        map["SecretKey"] = self.secretKey!
                    }
                    if self.ttsApiKey != nil {
                        map["TtsApiKey"] = self.ttsApiKey!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AccessKey"] as? String {
                        self.accessKey = value
                    }
                    if let value = dict["ApiKey"] as? String {
                        self.apiKey = value
                    }
                    if let value = dict["ApiSecret"] as? String {
                        self.apiSecret = value
                    }
                    if let value = dict["AppId"] as? String {
                        self.appId = value
                    }
                    if let value = dict["AppKey"] as? String {
                        self.appKey = value
                    }
                    if let value = dict["AsrAppKey"] as? String {
                        self.asrAppKey = value
                    }
                    if let value = dict["SecretId"] as? String {
                        self.secretId = value
                    }
                    if let value = dict["SecretKey"] as? String {
                        self.secretKey = value
                    }
                    if let value = dict["TtsApiKey"] as? String {
                        self.ttsApiKey = value
                    }
                }
            }
            public var accessProfileId: String?

            public var capabilities: [String]?

            public var createdTime: Int64?

            public var instanceId: String?

            public var nlsEngine: String?

            public var nlsEngineName: String?

            public var profile: ListVoiceAccessProfilesResponseBody.Data.VoiceAccessProfiles.Profile?

            public var updatedTime: Int64?

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
                if self.accessProfileId != nil {
                    map["AccessProfileId"] = self.accessProfileId!
                }
                if self.capabilities != nil {
                    map["Capabilities"] = self.capabilities!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.nlsEngine != nil {
                    map["NlsEngine"] = self.nlsEngine!
                }
                if self.nlsEngineName != nil {
                    map["NlsEngineName"] = self.nlsEngineName!
                }
                if self.profile != nil {
                    map["Profile"] = self.profile?.toMap()
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessProfileId"] as? String {
                    self.accessProfileId = value
                }
                if let value = dict["Capabilities"] as? [String] {
                    self.capabilities = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["NlsEngine"] as? String {
                    self.nlsEngine = value
                }
                if let value = dict["NlsEngineName"] as? String {
                    self.nlsEngineName = value
                }
                if let value = dict["Profile"] as? [String: Any?] {
                    var model = ListVoiceAccessProfilesResponseBody.Data.VoiceAccessProfiles.Profile()
                    model.fromMap(value)
                    self.profile = model
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public var voiceAccessProfiles: [ListVoiceAccessProfilesResponseBody.Data.VoiceAccessProfiles]?

        public override init() {
            super.init()
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
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voiceAccessProfiles != nil {
                var tmp : [Any] = []
                for k in self.voiceAccessProfiles! {
                    tmp.append(k.toMap())
                }
                map["VoiceAccessProfiles"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["VoiceAccessProfiles"] as? [Any?] {
                var tmp : [ListVoiceAccessProfilesResponseBody.Data.VoiceAccessProfiles] = []
                for v in value {
                    if v != nil {
                        var model = ListVoiceAccessProfilesResponseBody.Data.VoiceAccessProfiles()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.voiceAccessProfiles = tmp
            }
        }
    }
    public var code: String?

    public var data: ListVoiceAccessProfilesResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.params != nil {
            map["Params"] = self.params!
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
            var model = ListVoiceAccessProfilesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListVoiceAccessProfilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVoiceAccessProfilesResponseBody?

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
            var model = ListVoiceAccessProfilesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PublishScriptRequest : Tea.TeaModel {
    public var instanceId: String?

    public var scriptId: String?

    public var versionId: String?

    public override init() {
        super.init()
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
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class PublishScriptResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PublishScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishScriptResponseBody?

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
            var model = PublishScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCloneVoiceRequest : Tea.TeaModel {
    public var cloneVoiceId: String?

    public var instanceId: String?

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
        if self.cloneVoiceId != nil {
            map["CloneVoiceId"] = self.cloneVoiceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloneVoiceId"] as? String {
            self.cloneVoiceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UpdateCloneVoiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateCloneVoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCloneVoiceResponseBody?

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
            var model = UpdateCloneVoiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFlashSmsAccessProfileRequest : Tea.TeaModel {
    public class AccessProfile : Tea.TeaModel {
        public class DySmsAccessProfiles : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public var signName: String?

            public var templateCode: String?

            public override init() {
                super.init()
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
                if self.signName != nil {
                    map["SignName"] = self.signName!
                }
                if self.templateCode != nil {
                    map["TemplateCode"] = self.templateCode!
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
                if let value = dict["SignName"] as? String {
                    self.signName = value
                }
                if let value = dict["TemplateCode"] as? String {
                    self.templateCode = value
                }
            }
        }
        public var account: String?

        public var aesKey: String?

        public var apiAccount: String?

        public var apiId: String?

        public var apiKey: String?

        public var apiPassword: String?

        public var capAppId: String?

        public var dySmsAccessProfiles: [UpdateFlashSmsAccessProfileRequest.AccessProfile.DySmsAccessProfiles]?

        public var extno: String?

        public var managementPassword: String?

        public var managementSubUserId: String?

        public var managementUsername: String?

        public var password: String?

        public var pwd: String?

        public var user: String?

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
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.aesKey != nil {
                map["AesKey"] = self.aesKey!
            }
            if self.apiAccount != nil {
                map["ApiAccount"] = self.apiAccount!
            }
            if self.apiId != nil {
                map["ApiId"] = self.apiId!
            }
            if self.apiKey != nil {
                map["ApiKey"] = self.apiKey!
            }
            if self.apiPassword != nil {
                map["ApiPassword"] = self.apiPassword!
            }
            if self.capAppId != nil {
                map["CapAppId"] = self.capAppId!
            }
            if self.dySmsAccessProfiles != nil {
                var tmp : [Any] = []
                for k in self.dySmsAccessProfiles! {
                    tmp.append(k.toMap())
                }
                map["DySmsAccessProfiles"] = tmp
            }
            if self.extno != nil {
                map["Extno"] = self.extno!
            }
            if self.managementPassword != nil {
                map["ManagementPassword"] = self.managementPassword!
            }
            if self.managementSubUserId != nil {
                map["ManagementSubUserId"] = self.managementSubUserId!
            }
            if self.managementUsername != nil {
                map["ManagementUsername"] = self.managementUsername!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.pwd != nil {
                map["Pwd"] = self.pwd!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? String {
                self.account = value
            }
            if let value = dict["AesKey"] as? String {
                self.aesKey = value
            }
            if let value = dict["ApiAccount"] as? String {
                self.apiAccount = value
            }
            if let value = dict["ApiId"] as? String {
                self.apiId = value
            }
            if let value = dict["ApiKey"] as? String {
                self.apiKey = value
            }
            if let value = dict["ApiPassword"] as? String {
                self.apiPassword = value
            }
            if let value = dict["CapAppId"] as? String {
                self.capAppId = value
            }
            if let value = dict["DySmsAccessProfiles"] as? [Any?] {
                var tmp : [UpdateFlashSmsAccessProfileRequest.AccessProfile.DySmsAccessProfiles] = []
                for v in value {
                    if v != nil {
                        var model = UpdateFlashSmsAccessProfileRequest.AccessProfile.DySmsAccessProfiles()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dySmsAccessProfiles = tmp
            }
            if let value = dict["Extno"] as? String {
                self.extno = value
            }
            if let value = dict["ManagementPassword"] as? String {
                self.managementPassword = value
            }
            if let value = dict["ManagementSubUserId"] as? String {
                self.managementSubUserId = value
            }
            if let value = dict["ManagementUsername"] as? String {
                self.managementUsername = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["Pwd"] as? String {
                self.pwd = value
            }
            if let value = dict["User"] as? String {
                self.user = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
    public var accessProfile: UpdateFlashSmsAccessProfileRequest.AccessProfile?

    public var accessProfileId: String?

    public var instanceId: String?

    public var providerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessProfile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessProfile != nil {
            map["AccessProfile"] = self.accessProfile?.toMap()
        }
        if self.accessProfileId != nil {
            map["AccessProfileId"] = self.accessProfileId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.providerId != nil {
            map["ProviderId"] = self.providerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessProfile"] as? [String: Any?] {
            var model = UpdateFlashSmsAccessProfileRequest.AccessProfile()
            model.fromMap(value)
            self.accessProfile = model
        }
        if let value = dict["AccessProfileId"] as? String {
            self.accessProfileId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ProviderId"] as? String {
            self.providerId = value
        }
    }
}

public class UpdateFlashSmsAccessProfileShrinkRequest : Tea.TeaModel {
    public var accessProfileShrink: String?

    public var accessProfileId: String?

    public var instanceId: String?

    public var providerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessProfileShrink != nil {
            map["AccessProfile"] = self.accessProfileShrink!
        }
        if self.accessProfileId != nil {
            map["AccessProfileId"] = self.accessProfileId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.providerId != nil {
            map["ProviderId"] = self.providerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessProfile"] as? String {
            self.accessProfileShrink = value
        }
        if let value = dict["AccessProfileId"] as? String {
            self.accessProfileId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ProviderId"] as? String {
            self.providerId = value
        }
    }
}

public class UpdateFlashSmsAccessProfileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateFlashSmsAccessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFlashSmsAccessProfileResponseBody?

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
            var model = UpdateFlashSmsAccessProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceRequest : Tea.TeaModel {
    public var concurrency: Int32?

    public var description_: String?

    public var instanceId: String?

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
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Concurrency"] as? Int32 {
            self.concurrency = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UpdateInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceResponseBody?

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
            var model = UpdateInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateScriptRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var scriptId: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
    }
}

public class UpdateScriptResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateScriptResponseBody?

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
            var model = UpdateScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateScriptVersionRequest : Tea.TeaModel {
    public class InteractionConfig : Tea.TeaModel {
        public class BargeInConfig : Tea.TeaModel {
            public var closingBargeInEnabled: Bool?

            public var globalBargeInEnabled: Bool?

            public var openingBargeInEnabled: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.closingBargeInEnabled != nil {
                    map["ClosingBargeInEnabled"] = self.closingBargeInEnabled!
                }
                if self.globalBargeInEnabled != nil {
                    map["GlobalBargeInEnabled"] = self.globalBargeInEnabled!
                }
                if self.openingBargeInEnabled != nil {
                    map["OpeningBargeInEnabled"] = self.openingBargeInEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClosingBargeInEnabled"] as? Bool {
                    self.closingBargeInEnabled = value
                }
                if let value = dict["GlobalBargeInEnabled"] as? Bool {
                    self.globalBargeInEnabled = value
                }
                if let value = dict["OpeningBargeInEnabled"] as? Bool {
                    self.openingBargeInEnabled = value
                }
            }
        }
        public class EndConversationConfig : Tea.TeaModel {
            public class Triggers : Tea.TeaModel {
                public var closingStatement: String?

                public var keywords: [String]?

                public var triggerType: String?

                public var turnLimit: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.closingStatement != nil {
                        map["ClosingStatement"] = self.closingStatement!
                    }
                    if self.keywords != nil {
                        map["Keywords"] = self.keywords!
                    }
                    if self.triggerType != nil {
                        map["TriggerType"] = self.triggerType!
                    }
                    if self.turnLimit != nil {
                        map["TurnLimit"] = self.turnLimit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ClosingStatement"] as? String {
                        self.closingStatement = value
                    }
                    if let value = dict["Keywords"] as? [String] {
                        self.keywords = value
                    }
                    if let value = dict["TriggerType"] as? String {
                        self.triggerType = value
                    }
                    if let value = dict["TurnLimit"] as? Int32 {
                        self.turnLimit = value
                    }
                }
            }
            public var bargeInEnabled: Bool?

            public var delay: Int32?

            public var triggers: [UpdateScriptVersionRequest.InteractionConfig.EndConversationConfig.Triggers]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bargeInEnabled != nil {
                    map["BargeInEnabled"] = self.bargeInEnabled!
                }
                if self.delay != nil {
                    map["Delay"] = self.delay!
                }
                if self.triggers != nil {
                    var tmp : [Any] = []
                    for k in self.triggers! {
                        tmp.append(k.toMap())
                    }
                    map["Triggers"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BargeInEnabled"] as? Bool {
                    self.bargeInEnabled = value
                }
                if let value = dict["Delay"] as? Int32 {
                    self.delay = value
                }
                if let value = dict["Triggers"] as? [Any?] {
                    var tmp : [UpdateScriptVersionRequest.InteractionConfig.EndConversationConfig.Triggers] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateScriptVersionRequest.InteractionConfig.EndConversationConfig.Triggers()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.triggers = tmp
                }
            }
        }
        public class SilenceDetectionConfig : Tea.TeaModel {
            public class FallbackControlParamsList : Tea.TeaModel {
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
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var fallbackControlParamsList: [UpdateScriptVersionRequest.InteractionConfig.SilenceDetectionConfig.FallbackControlParamsList]?

            public var maxRepeats: Int32?

            public var prompt: String?

            public var timeout: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fallbackControlParamsList != nil {
                    var tmp : [Any] = []
                    for k in self.fallbackControlParamsList! {
                        tmp.append(k.toMap())
                    }
                    map["FallbackControlParamsList"] = tmp
                }
                if self.maxRepeats != nil {
                    map["MaxRepeats"] = self.maxRepeats!
                }
                if self.prompt != nil {
                    map["Prompt"] = self.prompt!
                }
                if self.timeout != nil {
                    map["Timeout"] = self.timeout!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FallbackControlParamsList"] as? [Any?] {
                    var tmp : [UpdateScriptVersionRequest.InteractionConfig.SilenceDetectionConfig.FallbackControlParamsList] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateScriptVersionRequest.InteractionConfig.SilenceDetectionConfig.FallbackControlParamsList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.fallbackControlParamsList = tmp
                }
                if let value = dict["MaxRepeats"] as? Int32 {
                    self.maxRepeats = value
                }
                if let value = dict["Prompt"] as? String {
                    self.prompt = value
                }
                if let value = dict["Timeout"] as? Int32 {
                    self.timeout = value
                }
            }
        }
        public class TransitionConfig : Tea.TeaModel {
            public var aiPhrasePrompt: String?

            public var fixedPhraseList: [String]?

            public var phraseSource: String?

            public var transitionSwitch: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aiPhrasePrompt != nil {
                    map["AiPhrasePrompt"] = self.aiPhrasePrompt!
                }
                if self.fixedPhraseList != nil {
                    map["FixedPhraseList"] = self.fixedPhraseList!
                }
                if self.phraseSource != nil {
                    map["PhraseSource"] = self.phraseSource!
                }
                if self.transitionSwitch != nil {
                    map["TransitionSwitch"] = self.transitionSwitch!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AiPhrasePrompt"] as? String {
                    self.aiPhrasePrompt = value
                }
                if let value = dict["FixedPhraseList"] as? [String] {
                    self.fixedPhraseList = value
                }
                if let value = dict["PhraseSource"] as? String {
                    self.phraseSource = value
                }
                if let value = dict["TransitionSwitch"] as? Bool {
                    self.transitionSwitch = value
                }
            }
        }
        public var backgroundMusicId: String?

        public var bargeInConfig: UpdateScriptVersionRequest.InteractionConfig.BargeInConfig?

        public var endConversationConfig: UpdateScriptVersionRequest.InteractionConfig.EndConversationConfig?

        public var initialGreetingDelayMilliseconds: Int32?

        public var silenceDetectionConfig: UpdateScriptVersionRequest.InteractionConfig.SilenceDetectionConfig?

        public var transitionConfig: UpdateScriptVersionRequest.InteractionConfig.TransitionConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.bargeInConfig?.validate()
            try self.endConversationConfig?.validate()
            try self.silenceDetectionConfig?.validate()
            try self.transitionConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backgroundMusicId != nil {
                map["BackgroundMusicId"] = self.backgroundMusicId!
            }
            if self.bargeInConfig != nil {
                map["BargeInConfig"] = self.bargeInConfig?.toMap()
            }
            if self.endConversationConfig != nil {
                map["EndConversationConfig"] = self.endConversationConfig?.toMap()
            }
            if self.initialGreetingDelayMilliseconds != nil {
                map["InitialGreetingDelayMilliseconds"] = self.initialGreetingDelayMilliseconds!
            }
            if self.silenceDetectionConfig != nil {
                map["SilenceDetectionConfig"] = self.silenceDetectionConfig?.toMap()
            }
            if self.transitionConfig != nil {
                map["TransitionConfig"] = self.transitionConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackgroundMusicId"] as? String {
                self.backgroundMusicId = value
            }
            if let value = dict["BargeInConfig"] as? [String: Any?] {
                var model = UpdateScriptVersionRequest.InteractionConfig.BargeInConfig()
                model.fromMap(value)
                self.bargeInConfig = model
            }
            if let value = dict["EndConversationConfig"] as? [String: Any?] {
                var model = UpdateScriptVersionRequest.InteractionConfig.EndConversationConfig()
                model.fromMap(value)
                self.endConversationConfig = model
            }
            if let value = dict["InitialGreetingDelayMilliseconds"] as? Int32 {
                self.initialGreetingDelayMilliseconds = value
            }
            if let value = dict["SilenceDetectionConfig"] as? [String: Any?] {
                var model = UpdateScriptVersionRequest.InteractionConfig.SilenceDetectionConfig()
                model.fromMap(value)
                self.silenceDetectionConfig = model
            }
            if let value = dict["TransitionConfig"] as? [String: Any?] {
                var model = UpdateScriptVersionRequest.InteractionConfig.TransitionConfig()
                model.fromMap(value)
                self.transitionConfig = model
            }
        }
    }
    public class LabelConfigs : Tea.TeaModel {
        public var candidateValues: [String]?

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
            if self.candidateValues != nil {
                map["CandidateValues"] = self.candidateValues!
            }
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
            if let value = dict["CandidateValues"] as? [String] {
                self.candidateValues = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public class ScriptProfile : Tea.TeaModel {
        public class AgentProfile : Tea.TeaModel {
            public var promptsJson: String?

            public var scriptProfileTemplateId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.promptsJson != nil {
                    map["PromptsJson"] = self.promptsJson!
                }
                if self.scriptProfileTemplateId != nil {
                    map["ScriptProfileTemplateId"] = self.scriptProfileTemplateId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PromptsJson"] as? String {
                    self.promptsJson = value
                }
                if let value = dict["ScriptProfileTemplateId"] as? String {
                    self.scriptProfileTemplateId = value
                }
            }
        }
        public class FunctionMeta : Tea.TeaModel {
            public var functionId: String?

            public var functionName: String?

            public var httpTriggerName: String?

            public var httpTriggerUrl: String?

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
                if self.functionId != nil {
                    map["FunctionId"] = self.functionId!
                }
                if self.functionName != nil {
                    map["FunctionName"] = self.functionName!
                }
                if self.httpTriggerName != nil {
                    map["HttpTriggerName"] = self.httpTriggerName!
                }
                if self.httpTriggerUrl != nil {
                    map["HttpTriggerUrl"] = self.httpTriggerUrl!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FunctionId"] as? String {
                    self.functionId = value
                }
                if let value = dict["FunctionName"] as? String {
                    self.functionName = value
                }
                if let value = dict["HttpTriggerName"] as? String {
                    self.httpTriggerName = value
                }
                if let value = dict["HttpTriggerUrl"] as? String {
                    self.httpTriggerUrl = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
            }
        }
        public class NluAccessProfile : Tea.TeaModel {
            public var accessProfileId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessProfileId != nil {
                    map["AccessProfileId"] = self.accessProfileId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessProfileId"] as? String {
                    self.accessProfileId = value
                }
            }
        }
        public var agentKey: String?

        public var agentProfile: UpdateScriptVersionRequest.ScriptProfile.AgentProfile?

        public var builderType: String?

        public var chatbotId: String?

        public var functionMeta: UpdateScriptVersionRequest.ScriptProfile.FunctionMeta?

        public var model: String?

        public var nluAccessProfile: UpdateScriptVersionRequest.ScriptProfile.NluAccessProfile?

        public var nluAccessType: String?

        public var omniModel: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.agentProfile?.validate()
            try self.functionMeta?.validate()
            try self.nluAccessProfile?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentKey != nil {
                map["AgentKey"] = self.agentKey!
            }
            if self.agentProfile != nil {
                map["AgentProfile"] = self.agentProfile?.toMap()
            }
            if self.builderType != nil {
                map["BuilderType"] = self.builderType!
            }
            if self.chatbotId != nil {
                map["ChatbotId"] = self.chatbotId!
            }
            if self.functionMeta != nil {
                map["FunctionMeta"] = self.functionMeta?.toMap()
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.nluAccessProfile != nil {
                map["NluAccessProfile"] = self.nluAccessProfile?.toMap()
            }
            if self.nluAccessType != nil {
                map["NluAccessType"] = self.nluAccessType!
            }
            if self.omniModel != nil {
                map["OmniModel"] = self.omniModel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentKey"] as? String {
                self.agentKey = value
            }
            if let value = dict["AgentProfile"] as? [String: Any?] {
                var model = UpdateScriptVersionRequest.ScriptProfile.AgentProfile()
                model.fromMap(value)
                self.agentProfile = model
            }
            if let value = dict["BuilderType"] as? String {
                self.builderType = value
            }
            if let value = dict["ChatbotId"] as? String {
                self.chatbotId = value
            }
            if let value = dict["FunctionMeta"] as? [String: Any?] {
                var model = UpdateScriptVersionRequest.ScriptProfile.FunctionMeta()
                model.fromMap(value)
                self.functionMeta = model
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["NluAccessProfile"] as? [String: Any?] {
                var model = UpdateScriptVersionRequest.ScriptProfile.NluAccessProfile()
                model.fromMap(value)
                self.nluAccessProfile = model
            }
            if let value = dict["NluAccessType"] as? String {
                self.nluAccessType = value
            }
            if let value = dict["OmniModel"] as? Bool {
                self.omniModel = value
            }
        }
    }
    public class SynthesizerConfig : Tea.TeaModel {
        public class NlsAccessProfile : Tea.TeaModel {
            public var accessProfileId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessProfileId != nil {
                    map["AccessProfileId"] = self.accessProfileId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessProfileId"] as? String {
                    self.accessProfileId = value
                }
            }
        }
        public class PronRules : Tea.TeaModel {
            public var pattern: String?

            public var replacement: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pattern != nil {
                    map["Pattern"] = self.pattern!
                }
                if self.replacement != nil {
                    map["Replacement"] = self.replacement!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Pattern"] as? String {
                    self.pattern = value
                }
                if let value = dict["Replacement"] as? String {
                    self.replacement = value
                }
            }
        }
        public var model: String?

        public var nlsAccessProfile: UpdateScriptVersionRequest.SynthesizerConfig.NlsAccessProfile?

        public var nlsAccessType: String?

        public var nlsEngine: String?

        public var pitchRate: Int32?

        public var pronRules: [UpdateScriptVersionRequest.SynthesizerConfig.PronRules]?

        public var speechRate: Int32?

        public var voice: String?

        public var volume: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.nlsAccessProfile?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.nlsAccessProfile != nil {
                map["NlsAccessProfile"] = self.nlsAccessProfile?.toMap()
            }
            if self.nlsAccessType != nil {
                map["NlsAccessType"] = self.nlsAccessType!
            }
            if self.nlsEngine != nil {
                map["NlsEngine"] = self.nlsEngine!
            }
            if self.pitchRate != nil {
                map["PitchRate"] = self.pitchRate!
            }
            if self.pronRules != nil {
                var tmp : [Any] = []
                for k in self.pronRules! {
                    tmp.append(k.toMap())
                }
                map["PronRules"] = tmp
            }
            if self.speechRate != nil {
                map["SpeechRate"] = self.speechRate!
            }
            if self.voice != nil {
                map["Voice"] = self.voice!
            }
            if self.volume != nil {
                map["Volume"] = self.volume!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["NlsAccessProfile"] as? [String: Any?] {
                var model = UpdateScriptVersionRequest.SynthesizerConfig.NlsAccessProfile()
                model.fromMap(value)
                self.nlsAccessProfile = model
            }
            if let value = dict["NlsAccessType"] as? String {
                self.nlsAccessType = value
            }
            if let value = dict["NlsEngine"] as? String {
                self.nlsEngine = value
            }
            if let value = dict["PitchRate"] as? Int32 {
                self.pitchRate = value
            }
            if let value = dict["PronRules"] as? [Any?] {
                var tmp : [UpdateScriptVersionRequest.SynthesizerConfig.PronRules] = []
                for v in value {
                    if v != nil {
                        var model = UpdateScriptVersionRequest.SynthesizerConfig.PronRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pronRules = tmp
            }
            if let value = dict["SpeechRate"] as? Int32 {
                self.speechRate = value
            }
            if let value = dict["Voice"] as? String {
                self.voice = value
            }
            if let value = dict["Volume"] as? Int32 {
                self.volume = value
            }
        }
    }
    public class TranscriberConfig : Tea.TeaModel {
        public class CorrectionRules : Tea.TeaModel {
            public var pattern: String?

            public var replacement: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pattern != nil {
                    map["Pattern"] = self.pattern!
                }
                if self.replacement != nil {
                    map["Replacement"] = self.replacement!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Pattern"] as? String {
                    self.pattern = value
                }
                if let value = dict["Replacement"] as? String {
                    self.replacement = value
                }
            }
        }
        public class NlsAccessProfile : Tea.TeaModel {
            public var accessProfileId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessProfileId != nil {
                    map["AccessProfileId"] = self.accessProfileId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessProfileId"] as? String {
                    self.accessProfileId = value
                }
            }
        }
        public var correctionRules: [UpdateScriptVersionRequest.TranscriberConfig.CorrectionRules]?

        public var customizationId: String?

        public var endSilenceTimeout: Int32?

        public var model: String?

        public var nlsAccessProfile: UpdateScriptVersionRequest.TranscriberConfig.NlsAccessProfile?

        public var nlsAccessType: String?

        public var nlsEngine: String?

        public var speechNoiseThreshold: Int32?

        public var vocabularyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.nlsAccessProfile?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.correctionRules != nil {
                var tmp : [Any] = []
                for k in self.correctionRules! {
                    tmp.append(k.toMap())
                }
                map["CorrectionRules"] = tmp
            }
            if self.customizationId != nil {
                map["CustomizationId"] = self.customizationId!
            }
            if self.endSilenceTimeout != nil {
                map["EndSilenceTimeout"] = self.endSilenceTimeout!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.nlsAccessProfile != nil {
                map["NlsAccessProfile"] = self.nlsAccessProfile?.toMap()
            }
            if self.nlsAccessType != nil {
                map["NlsAccessType"] = self.nlsAccessType!
            }
            if self.nlsEngine != nil {
                map["NlsEngine"] = self.nlsEngine!
            }
            if self.speechNoiseThreshold != nil {
                map["SpeechNoiseThreshold"] = self.speechNoiseThreshold!
            }
            if self.vocabularyId != nil {
                map["VocabularyId"] = self.vocabularyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CorrectionRules"] as? [Any?] {
                var tmp : [UpdateScriptVersionRequest.TranscriberConfig.CorrectionRules] = []
                for v in value {
                    if v != nil {
                        var model = UpdateScriptVersionRequest.TranscriberConfig.CorrectionRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.correctionRules = tmp
            }
            if let value = dict["CustomizationId"] as? String {
                self.customizationId = value
            }
            if let value = dict["EndSilenceTimeout"] as? Int32 {
                self.endSilenceTimeout = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["NlsAccessProfile"] as? [String: Any?] {
                var model = UpdateScriptVersionRequest.TranscriberConfig.NlsAccessProfile()
                model.fromMap(value)
                self.nlsAccessProfile = model
            }
            if let value = dict["NlsAccessType"] as? String {
                self.nlsAccessType = value
            }
            if let value = dict["NlsEngine"] as? String {
                self.nlsEngine = value
            }
            if let value = dict["SpeechNoiseThreshold"] as? Int32 {
                self.speechNoiseThreshold = value
            }
            if let value = dict["VocabularyId"] as? String {
                self.vocabularyId = value
            }
        }
    }
    public var instanceId: String?

    public var interactionConfig: UpdateScriptVersionRequest.InteractionConfig?

    public var labelConfigs: [UpdateScriptVersionRequest.LabelConfigs]?

    public var scriptId: String?

    public var scriptProfile: UpdateScriptVersionRequest.ScriptProfile?

    public var synthesizerConfig: UpdateScriptVersionRequest.SynthesizerConfig?

    public var transcriberConfig: UpdateScriptVersionRequest.TranscriberConfig?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.interactionConfig?.validate()
        try self.scriptProfile?.validate()
        try self.synthesizerConfig?.validate()
        try self.transcriberConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.interactionConfig != nil {
            map["InteractionConfig"] = self.interactionConfig?.toMap()
        }
        if self.labelConfigs != nil {
            var tmp : [Any] = []
            for k in self.labelConfigs! {
                tmp.append(k.toMap())
            }
            map["LabelConfigs"] = tmp
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        if self.scriptProfile != nil {
            map["ScriptProfile"] = self.scriptProfile?.toMap()
        }
        if self.synthesizerConfig != nil {
            map["SynthesizerConfig"] = self.synthesizerConfig?.toMap()
        }
        if self.transcriberConfig != nil {
            map["TranscriberConfig"] = self.transcriberConfig?.toMap()
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InteractionConfig"] as? [String: Any?] {
            var model = UpdateScriptVersionRequest.InteractionConfig()
            model.fromMap(value)
            self.interactionConfig = model
        }
        if let value = dict["LabelConfigs"] as? [Any?] {
            var tmp : [UpdateScriptVersionRequest.LabelConfigs] = []
            for v in value {
                if v != nil {
                    var model = UpdateScriptVersionRequest.LabelConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labelConfigs = tmp
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
        if let value = dict["ScriptProfile"] as? [String: Any?] {
            var model = UpdateScriptVersionRequest.ScriptProfile()
            model.fromMap(value)
            self.scriptProfile = model
        }
        if let value = dict["SynthesizerConfig"] as? [String: Any?] {
            var model = UpdateScriptVersionRequest.SynthesizerConfig()
            model.fromMap(value)
            self.synthesizerConfig = model
        }
        if let value = dict["TranscriberConfig"] as? [String: Any?] {
            var model = UpdateScriptVersionRequest.TranscriberConfig()
            model.fromMap(value)
            self.transcriberConfig = model
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class UpdateScriptVersionShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var interactionConfigShrink: String?

    public var labelConfigsShrink: String?

    public var scriptId: String?

    public var scriptProfileShrink: String?

    public var synthesizerConfigShrink: String?

    public var transcriberConfigShrink: String?

    public var versionId: String?

    public override init() {
        super.init()
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
        if self.interactionConfigShrink != nil {
            map["InteractionConfig"] = self.interactionConfigShrink!
        }
        if self.labelConfigsShrink != nil {
            map["LabelConfigs"] = self.labelConfigsShrink!
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        if self.scriptProfileShrink != nil {
            map["ScriptProfile"] = self.scriptProfileShrink!
        }
        if self.synthesizerConfigShrink != nil {
            map["SynthesizerConfig"] = self.synthesizerConfigShrink!
        }
        if self.transcriberConfigShrink != nil {
            map["TranscriberConfig"] = self.transcriberConfigShrink!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InteractionConfig"] as? String {
            self.interactionConfigShrink = value
        }
        if let value = dict["LabelConfigs"] as? String {
            self.labelConfigsShrink = value
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
        if let value = dict["ScriptProfile"] as? String {
            self.scriptProfileShrink = value
        }
        if let value = dict["SynthesizerConfig"] as? String {
            self.synthesizerConfigShrink = value
        }
        if let value = dict["TranscriberConfig"] as? String {
            self.transcriberConfigShrink = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class UpdateScriptVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateScriptVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateScriptVersionResponseBody?

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
            var model = UpdateScriptVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSubscriptionRequest : Tea.TeaModel {
    public var endpoint: String?

    public var eventSubscriptions: [String]?

    public var instanceId: String?

    public var mqInstanceId: String?

    public var mqType: String?

    public var password: String?

    public var producerId: String?

    public var topic: String?

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
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.eventSubscriptions != nil {
            map["EventSubscriptions"] = self.eventSubscriptions!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mqInstanceId != nil {
            map["MqInstanceId"] = self.mqInstanceId!
        }
        if self.mqType != nil {
            map["MqType"] = self.mqType!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.producerId != nil {
            map["ProducerId"] = self.producerId!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["EventSubscriptions"] as? [String] {
            self.eventSubscriptions = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MqInstanceId"] as? String {
            self.mqInstanceId = value
        }
        if let value = dict["MqType"] as? String {
            self.mqType = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ProducerId"] as? String {
            self.producerId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class UpdateSubscriptionShrinkRequest : Tea.TeaModel {
    public var endpoint: String?

    public var eventSubscriptionsShrink: String?

    public var instanceId: String?

    public var mqInstanceId: String?

    public var mqType: String?

    public var password: String?

    public var producerId: String?

    public var topic: String?

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
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.eventSubscriptionsShrink != nil {
            map["EventSubscriptions"] = self.eventSubscriptionsShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mqInstanceId != nil {
            map["MqInstanceId"] = self.mqInstanceId!
        }
        if self.mqType != nil {
            map["MqType"] = self.mqType!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.producerId != nil {
            map["ProducerId"] = self.producerId!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["EventSubscriptions"] as? String {
            self.eventSubscriptionsShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MqInstanceId"] as? String {
            self.mqInstanceId = value
        }
        if let value = dict["MqType"] as? String {
            self.mqType = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ProducerId"] as? String {
            self.producerId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class UpdateSubscriptionResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateSubscriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSubscriptionResponseBody?

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
            var model = UpdateSubscriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSystemConfigsRequest : Tea.TeaModel {
    public class Configs : Tea.TeaModel {
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
                map["Name"] = self.name!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var configs: [UpdateSystemConfigsRequest.Configs]?

    public var objectId: String?

    public var objectType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configs != nil {
            var tmp : [Any] = []
            for k in self.configs! {
                tmp.append(k.toMap())
            }
            map["Configs"] = tmp
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Configs"] as? [Any?] {
            var tmp : [UpdateSystemConfigsRequest.Configs] = []
            for v in value {
                if v != nil {
                    var model = UpdateSystemConfigsRequest.Configs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configs = tmp
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
    }
}

public class UpdateSystemConfigsShrinkRequest : Tea.TeaModel {
    public var configsShrink: String?

    public var objectId: String?

    public var objectType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configsShrink != nil {
            map["Configs"] = self.configsShrink!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Configs"] as? String {
            self.configsShrink = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
    }
}

public class UpdateSystemConfigsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateSystemConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSystemConfigsResponseBody?

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
            var model = UpdateSystemConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVoiceAccessProfileRequest : Tea.TeaModel {
    public class Profile : Tea.TeaModel {
        public var accessKey: String?

        public var apiKey: String?

        public var apiSecret: String?

        public var appId: String?

        public var appKey: String?

        public var asrAppKey: String?

        public var secretId: String?

        public var secretKey: String?

        public var ttsApiKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKey != nil {
                map["AccessKey"] = self.accessKey!
            }
            if self.apiKey != nil {
                map["ApiKey"] = self.apiKey!
            }
            if self.apiSecret != nil {
                map["ApiSecret"] = self.apiSecret!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            if self.asrAppKey != nil {
                map["AsrAppKey"] = self.asrAppKey!
            }
            if self.secretId != nil {
                map["SecretId"] = self.secretId!
            }
            if self.secretKey != nil {
                map["SecretKey"] = self.secretKey!
            }
            if self.ttsApiKey != nil {
                map["TtsApiKey"] = self.ttsApiKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKey"] as? String {
                self.accessKey = value
            }
            if let value = dict["ApiKey"] as? String {
                self.apiKey = value
            }
            if let value = dict["ApiSecret"] as? String {
                self.apiSecret = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppKey"] as? String {
                self.appKey = value
            }
            if let value = dict["AsrAppKey"] as? String {
                self.asrAppKey = value
            }
            if let value = dict["SecretId"] as? String {
                self.secretId = value
            }
            if let value = dict["SecretKey"] as? String {
                self.secretKey = value
            }
            if let value = dict["TtsApiKey"] as? String {
                self.ttsApiKey = value
            }
        }
    }
    public var accessProfileId: String?

    public var instanceId: String?

    public var nlsEngine: String?

    public var profile: UpdateVoiceAccessProfileRequest.Profile?

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
        if self.accessProfileId != nil {
            map["AccessProfileId"] = self.accessProfileId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nlsEngine != nil {
            map["NlsEngine"] = self.nlsEngine!
        }
        if self.profile != nil {
            map["Profile"] = self.profile?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessProfileId"] as? String {
            self.accessProfileId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NlsEngine"] as? String {
            self.nlsEngine = value
        }
        if let value = dict["Profile"] as? [String: Any?] {
            var model = UpdateVoiceAccessProfileRequest.Profile()
            model.fromMap(value)
            self.profile = model
        }
    }
}

public class UpdateVoiceAccessProfileShrinkRequest : Tea.TeaModel {
    public var accessProfileId: String?

    public var instanceId: String?

    public var nlsEngine: String?

    public var profileShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessProfileId != nil {
            map["AccessProfileId"] = self.accessProfileId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nlsEngine != nil {
            map["NlsEngine"] = self.nlsEngine!
        }
        if self.profileShrink != nil {
            map["Profile"] = self.profileShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessProfileId"] as? String {
            self.accessProfileId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NlsEngine"] as? String {
            self.nlsEngine = value
        }
        if let value = dict["Profile"] as? String {
            self.profileShrink = value
        }
    }
}

public class UpdateVoiceAccessProfileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateVoiceAccessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVoiceAccessProfileResponseBody?

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
            var model = UpdateVoiceAccessProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
