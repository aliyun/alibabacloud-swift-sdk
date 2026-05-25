import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DescribeNumberHLRRequest : Tea.TeaModel {
    public var authCode: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribeNumberHLRResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Call : Tea.TeaModel {
            public var cleansedCode: String?

            public var maxLength: Int64?

            public var minLength: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cleansedCode != nil {
                    map["CleansedCode"] = self.cleansedCode!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CleansedCode"] as? String {
                    self.cleansedCode = value
                }
                if let value = dict["MaxLength"] as? Int64 {
                    self.maxLength = value
                }
                if let value = dict["MinLength"] as? Int64 {
                    self.minLength = value
                }
            }
        }
        public class Live : Tea.TeaModel {
            public var deviceStatus: String?

            public var roaming: String?

            public var roamingCountry: String?

            public var subscriberStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceStatus != nil {
                    map["DeviceStatus"] = self.deviceStatus!
                }
                if self.roaming != nil {
                    map["Roaming"] = self.roaming!
                }
                if self.roamingCountry != nil {
                    map["RoamingCountry"] = self.roamingCountry!
                }
                if self.subscriberStatus != nil {
                    map["SubscriberStatus"] = self.subscriberStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeviceStatus"] as? String {
                    self.deviceStatus = value
                }
                if let value = dict["Roaming"] as? String {
                    self.roaming = value
                }
                if let value = dict["RoamingCountry"] as? String {
                    self.roamingCountry = value
                }
                if let value = dict["SubscriberStatus"] as? String {
                    self.subscriberStatus = value
                }
            }
        }
        public class Sms : Tea.TeaModel {
            public var cleansedCode: Int64?

            public var maxLength: Int64?

            public var minLength: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cleansedCode != nil {
                    map["CleansedCode"] = self.cleansedCode!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CleansedCode"] as? Int64 {
                    self.cleansedCode = value
                }
                if let value = dict["MaxLength"] as? Int64 {
                    self.maxLength = value
                }
                if let value = dict["MinLength"] as? Int64 {
                    self.minLength = value
                }
            }
        }
        public var blocked: String?

        public var call: DescribeNumberHLRResponseBody.Data.Call?

        public var carrier: String?

        public var city: String?

        public var countryIso3: String?

        public var live: DescribeNumberHLRResponseBody.Data.Live?

        public var phoneType: String?

        public var sms: DescribeNumberHLRResponseBody.Data.Sms?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.call?.validate()
            try self.live?.validate()
            try self.sms?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blocked != nil {
                map["Blocked"] = self.blocked!
            }
            if self.call != nil {
                map["Call"] = self.call?.toMap()
            }
            if self.carrier != nil {
                map["Carrier"] = self.carrier!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.countryIso3 != nil {
                map["CountryIso3"] = self.countryIso3!
            }
            if self.live != nil {
                map["Live"] = self.live?.toMap()
            }
            if self.phoneType != nil {
                map["PhoneType"] = self.phoneType!
            }
            if self.sms != nil {
                map["Sms"] = self.sms?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Blocked"] as? String {
                self.blocked = value
            }
            if let value = dict["Call"] as? [String: Any?] {
                var model = DescribeNumberHLRResponseBody.Data.Call()
                model.fromMap(value)
                self.call = model
            }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["City"] as? String {
                self.city = value
            }
            if let value = dict["CountryIso3"] as? String {
                self.countryIso3 = value
            }
            if let value = dict["Live"] as? [String: Any?] {
                var model = DescribeNumberHLRResponseBody.Data.Live()
                model.fromMap(value)
                self.live = model
            }
            if let value = dict["PhoneType"] as? String {
                self.phoneType = value
            }
            if let value = dict["Sms"] as? [String: Any?] {
                var model = DescribeNumberHLRResponseBody.Data.Sms()
                model.fromMap(value)
                self.sms = model
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: DescribeNumberHLRResponseBody.Data?

    public var message: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeNumberHLRResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeNumberHLRResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNumberHLRResponseBody?

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
            var model = DescribeNumberHLRResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNumberMccMncRequest : Tea.TeaModel {
    public var authCode: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribeNumberMccMncResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var countryIso3: String?

        public var mcc: String?

        public var mnc: String?

        public var ported: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.countryIso3 != nil {
                map["CountryIso3"] = self.countryIso3!
            }
            if self.mcc != nil {
                map["Mcc"] = self.mcc!
            }
            if self.mnc != nil {
                map["Mnc"] = self.mnc!
            }
            if self.ported != nil {
                map["Ported"] = self.ported!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CountryIso3"] as? String {
                self.countryIso3 = value
            }
            if let value = dict["Mcc"] as? String {
                self.mcc = value
            }
            if let value = dict["Mnc"] as? String {
                self.mnc = value
            }
            if let value = dict["Ported"] as? Bool {
                self.ported = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: DescribeNumberMccMncResponseBody.Data?

    public var message: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeNumberMccMncResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeNumberMccMncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNumberMccMncResponseBody?

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
            var model = DescribeNumberMccMncResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIdentificationResultRequest : Tea.TeaModel {
    public var authCode: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class GetIdentificationResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var isIdentified: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isIdentified != nil {
                map["IsIdentified"] = self.isIdentified!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsIdentified"] as? Bool {
                self.isIdentified = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetIdentificationResultResponseBody.Data?

    public var message: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetIdentificationResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetIdentificationResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIdentificationResultResponseBody?

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
            var model = GetIdentificationResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIdentificationSessionRequest : Tea.TeaModel {
    public var authCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
    }
}

public class GetIdentificationSessionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expireDate: String?

        public var sessionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expireDate != nil {
                map["ExpireDate"] = self.expireDate!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpireDate"] as? String {
                self.expireDate = value
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetIdentificationSessionResponseBody.Data?

    public var message: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetIdentificationSessionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetIdentificationSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIdentificationSessionResponseBody?

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
            var model = GetIdentificationSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPhoneNumberIdentificationResultRequest : Tea.TeaModel {
    public var authCode: String?

    public var outId: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sessionId: String?

    public var sessionPayload: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.sessionPayload != nil {
            map["SessionPayload"] = self.sessionPayload!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["SessionPayload"] as? String {
            self.sessionPayload = value
        }
    }
}

public class GetPhoneNumberIdentificationResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var isIdentified: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isIdentified != nil {
                map["IsIdentified"] = self.isIdentified!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsIdentified"] as? String {
                self.isIdentified = value
            }
        }
    }
    public var code: String?

    public var data: GetPhoneNumberIdentificationResultResponseBody.Data?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetPhoneNumberIdentificationResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPhoneNumberIdentificationResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPhoneNumberIdentificationResultResponseBody?

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
            var model = GetPhoneNumberIdentificationResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPhoneNumberIdentificationUrlRequest : Tea.TeaModel {
    public var authCode: String?

    public var ip: String?

    public var outId: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var rememberPhoneNumber: Bool?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.rememberPhoneNumber != nil {
            map["RememberPhoneNumber"] = self.rememberPhoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["RememberPhoneNumber"] as? Bool {
            self.rememberPhoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetPhoneNumberIdentificationUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var identificationUrl: String?

        public var sessionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.identificationUrl != nil {
                map["IdentificationUrl"] = self.identificationUrl!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IdentificationUrl"] as? String {
                self.identificationUrl = value
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
            }
        }
    }
    public var code: String?

    public var data: GetPhoneNumberIdentificationUrlResponseBody.Data?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetPhoneNumberIdentificationUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPhoneNumberIdentificationUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPhoneNumberIdentificationUrlResponseBody?

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
            var model = GetPhoneNumberIdentificationUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
