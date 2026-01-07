import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AccountContactAddRequest : Tea.TeaModel {
    public var appName: String?

    public var asyncEmailVerify: Bool?

    public var asyncMobileVerify: Bool?

    public var contactEmail: String?

    public var contactMobile: String?

    public var contactName: String?

    public var contactPosition: String?

    public var emailCode: String?

    public var mobileCode: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var sharedContact: Bool?

    public override init() {
        super.init()
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
        if self.asyncEmailVerify != nil {
            map["AsyncEmailVerify"] = self.asyncEmailVerify!
        }
        if self.asyncMobileVerify != nil {
            map["AsyncMobileVerify"] = self.asyncMobileVerify!
        }
        if self.contactEmail != nil {
            map["ContactEmail"] = self.contactEmail!
        }
        if self.contactMobile != nil {
            map["ContactMobile"] = self.contactMobile!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.contactPosition != nil {
            map["ContactPosition"] = self.contactPosition!
        }
        if self.emailCode != nil {
            map["EmailCode"] = self.emailCode!
        }
        if self.mobileCode != nil {
            map["MobileCode"] = self.mobileCode!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.sharedContact != nil {
            map["SharedContact"] = self.sharedContact!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AsyncEmailVerify"] as? Bool {
            self.asyncEmailVerify = value
        }
        if let value = dict["AsyncMobileVerify"] as? Bool {
            self.asyncMobileVerify = value
        }
        if let value = dict["ContactEmail"] as? String {
            self.contactEmail = value
        }
        if let value = dict["ContactMobile"] as? String {
            self.contactMobile = value
        }
        if let value = dict["ContactName"] as? String {
            self.contactName = value
        }
        if let value = dict["ContactPosition"] as? String {
            self.contactPosition = value
        }
        if let value = dict["EmailCode"] as? String {
            self.emailCode = value
        }
        if let value = dict["MobileCode"] as? String {
            self.mobileCode = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["SharedContact"] as? Bool {
            self.sharedContact = value
        }
    }
}

public class AccountContactAddResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ErrorList : Tea.TeaModel {
            public var errorCode: String?

            public var errorDesc: String?

            public var item: String?

            public override init() {
                super.init()
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
                if self.errorDesc != nil {
                    map["ErrorDesc"] = self.errorDesc!
                }
                if self.item != nil {
                    map["Item"] = self.item!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ErrorDesc"] as? String {
                    self.errorDesc = value
                }
                if let value = dict["Item"] as? String {
                    self.item = value
                }
            }
        }
        public var contactId: Int64?

        public var errorList: [AccountContactAddResponseBody.Data.ErrorList]?

        public var result: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.errorList != nil {
                var tmp : [Any] = []
                for k in self.errorList! {
                    tmp.append(k.toMap())
                }
                map["ErrorList"] = tmp
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactId"] as? Int64 {
                self.contactId = value
            }
            if let value = dict["ErrorList"] as? [Any?] {
                var tmp : [AccountContactAddResponseBody.Data.ErrorList] = []
                for v in value {
                    if v != nil {
                        var model = AccountContactAddResponseBody.Data.ErrorList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.errorList = tmp
            }
            if let value = dict["Result"] as? Bool {
                self.result = value
            }
        }
    }
    public var code: String?

    public var data: AccountContactAddResponseBody.Data?

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
            var model = AccountContactAddResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AccountContactAddResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AccountContactAddResponseBody?

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
            var model = AccountContactAddResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AccountContactDeleteRequest : Tea.TeaModel {
    public var appName: String?

    public var contactId: Int64?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public override init() {
        super.init()
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
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
    }
}

public class AccountContactDeleteResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AccountContactDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AccountContactDeleteResponseBody?

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
            var model = AccountContactDeleteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AccountContactEditRequest : Tea.TeaModel {
    public var appName: String?

    public var asyncEmailVerify: Bool?

    public var asyncMobileVerify: Bool?

    public var contactEmail: String?

    public var contactId: Int64?

    public var contactMobile: String?

    public var contactName: String?

    public var contactPosition: String?

    public var emailCode: String?

    public var mobileCode: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var sharedContact: Bool?

    public override init() {
        super.init()
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
        if self.asyncEmailVerify != nil {
            map["AsyncEmailVerify"] = self.asyncEmailVerify!
        }
        if self.asyncMobileVerify != nil {
            map["AsyncMobileVerify"] = self.asyncMobileVerify!
        }
        if self.contactEmail != nil {
            map["ContactEmail"] = self.contactEmail!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.contactMobile != nil {
            map["ContactMobile"] = self.contactMobile!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.contactPosition != nil {
            map["ContactPosition"] = self.contactPosition!
        }
        if self.emailCode != nil {
            map["EmailCode"] = self.emailCode!
        }
        if self.mobileCode != nil {
            map["MobileCode"] = self.mobileCode!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.sharedContact != nil {
            map["SharedContact"] = self.sharedContact!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AsyncEmailVerify"] as? Bool {
            self.asyncEmailVerify = value
        }
        if let value = dict["AsyncMobileVerify"] as? Bool {
            self.asyncMobileVerify = value
        }
        if let value = dict["ContactEmail"] as? String {
            self.contactEmail = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["ContactMobile"] as? String {
            self.contactMobile = value
        }
        if let value = dict["ContactName"] as? String {
            self.contactName = value
        }
        if let value = dict["ContactPosition"] as? String {
            self.contactPosition = value
        }
        if let value = dict["EmailCode"] as? String {
            self.emailCode = value
        }
        if let value = dict["MobileCode"] as? String {
            self.mobileCode = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["SharedContact"] as? Bool {
            self.sharedContact = value
        }
    }
}

public class AccountContactEditResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ErrorList : Tea.TeaModel {
            public var errorCode: String?

            public var errorDesc: String?

            public var item: String?

            public override init() {
                super.init()
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
                if self.errorDesc != nil {
                    map["ErrorDesc"] = self.errorDesc!
                }
                if self.item != nil {
                    map["Item"] = self.item!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ErrorDesc"] as? String {
                    self.errorDesc = value
                }
                if let value = dict["Item"] as? String {
                    self.item = value
                }
            }
        }
        public var contactId: Int64?

        public var errorList: [AccountContactEditResponseBody.Data.ErrorList]?

        public var result: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.errorList != nil {
                var tmp : [Any] = []
                for k in self.errorList! {
                    tmp.append(k.toMap())
                }
                map["ErrorList"] = tmp
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactId"] as? Int64 {
                self.contactId = value
            }
            if let value = dict["ErrorList"] as? [Any?] {
                var tmp : [AccountContactEditResponseBody.Data.ErrorList] = []
                for v in value {
                    if v != nil {
                        var model = AccountContactEditResponseBody.Data.ErrorList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.errorList = tmp
            }
            if let value = dict["Result"] as? Bool {
                self.result = value
            }
        }
    }
    public var code: String?

    public var data: AccountContactEditResponseBody.Data?

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
            var model = AccountContactEditResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AccountContactEditResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AccountContactEditResponseBody?

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
            var model = AccountContactEditResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AccountContactQueryDetailRequest : Tea.TeaModel {
    public var appName: String?

    public var contactId: Int64?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public override init() {
        super.init()
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
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
    }
}

public class AccountContactQueryDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var contactEmail: String?

        public var contactId: Int64?

        public var contactMobile: String?

        public var contactName: String?

        public var contactPosition: String?

        public var customerId: String?

        public var emailConfirmed: Bool?

        public var entityId: String?

        public var entityType: String?

        public var hasSubscription: Bool?

        public var mobileConfirmed: Bool?

        public var sharedContact: Bool?

        public var uid: String?

        public var updateDate: Int64?

        public var updateUser: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactEmail != nil {
                map["ContactEmail"] = self.contactEmail!
            }
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.contactMobile != nil {
                map["ContactMobile"] = self.contactMobile!
            }
            if self.contactName != nil {
                map["ContactName"] = self.contactName!
            }
            if self.contactPosition != nil {
                map["ContactPosition"] = self.contactPosition!
            }
            if self.customerId != nil {
                map["CustomerId"] = self.customerId!
            }
            if self.emailConfirmed != nil {
                map["EmailConfirmed"] = self.emailConfirmed!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.hasSubscription != nil {
                map["HasSubscription"] = self.hasSubscription!
            }
            if self.mobileConfirmed != nil {
                map["MobileConfirmed"] = self.mobileConfirmed!
            }
            if self.sharedContact != nil {
                map["SharedContact"] = self.sharedContact!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactEmail"] as? String {
                self.contactEmail = value
            }
            if let value = dict["ContactId"] as? Int64 {
                self.contactId = value
            }
            if let value = dict["ContactMobile"] as? String {
                self.contactMobile = value
            }
            if let value = dict["ContactName"] as? String {
                self.contactName = value
            }
            if let value = dict["ContactPosition"] as? String {
                self.contactPosition = value
            }
            if let value = dict["CustomerId"] as? String {
                self.customerId = value
            }
            if let value = dict["EmailConfirmed"] as? Bool {
                self.emailConfirmed = value
            }
            if let value = dict["EntityId"] as? String {
                self.entityId = value
            }
            if let value = dict["EntityType"] as? String {
                self.entityType = value
            }
            if let value = dict["HasSubscription"] as? Bool {
                self.hasSubscription = value
            }
            if let value = dict["MobileConfirmed"] as? Bool {
                self.mobileConfirmed = value
            }
            if let value = dict["SharedContact"] as? Bool {
                self.sharedContact = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
            }
            if let value = dict["UpdateDate"] as? Int64 {
                self.updateDate = value
            }
            if let value = dict["UpdateUser"] as? String {
                self.updateUser = value
            }
        }
    }
    public var code: String?

    public var data: AccountContactQueryDetailResponseBody.Data?

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
            var model = AccountContactQueryDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AccountContactQueryDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AccountContactQueryDetailResponseBody?

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
            var model = AccountContactQueryDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AccountContactQueryPageListRequest : Tea.TeaModel {
    public var appName: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var privateContact: Bool?

    public var query: String?

    public var sharedContact: Bool?

    public var showCompleteInfo: Bool?

    public override init() {
        super.init()
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
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.privateContact != nil {
            map["PrivateContact"] = self.privateContact!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.sharedContact != nil {
            map["SharedContact"] = self.sharedContact!
        }
        if self.showCompleteInfo != nil {
            map["ShowCompleteInfo"] = self.showCompleteInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrivateContact"] as? Bool {
            self.privateContact = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["SharedContact"] as? Bool {
            self.sharedContact = value
        }
        if let value = dict["ShowCompleteInfo"] as? Bool {
            self.showCompleteInfo = value
        }
    }
}

public class AccountContactQueryPageListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var contactEmail: String?

        public var contactId: Int64?

        public var contactMobile: String?

        public var contactName: String?

        public var contactPosition: String?

        public var customerId: String?

        public var emailConfirmed: Bool?

        public var entityId: String?

        public var entityType: String?

        public var mobileConfirmed: Bool?

        public var sharedContact: Bool?

        public var updateDate: Int64?

        public var updateUser: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactEmail != nil {
                map["ContactEmail"] = self.contactEmail!
            }
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.contactMobile != nil {
                map["ContactMobile"] = self.contactMobile!
            }
            if self.contactName != nil {
                map["ContactName"] = self.contactName!
            }
            if self.contactPosition != nil {
                map["ContactPosition"] = self.contactPosition!
            }
            if self.customerId != nil {
                map["CustomerId"] = self.customerId!
            }
            if self.emailConfirmed != nil {
                map["EmailConfirmed"] = self.emailConfirmed!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.mobileConfirmed != nil {
                map["MobileConfirmed"] = self.mobileConfirmed!
            }
            if self.sharedContact != nil {
                map["SharedContact"] = self.sharedContact!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactEmail"] as? String {
                self.contactEmail = value
            }
            if let value = dict["ContactId"] as? Int64 {
                self.contactId = value
            }
            if let value = dict["ContactMobile"] as? String {
                self.contactMobile = value
            }
            if let value = dict["ContactName"] as? String {
                self.contactName = value
            }
            if let value = dict["ContactPosition"] as? String {
                self.contactPosition = value
            }
            if let value = dict["CustomerId"] as? String {
                self.customerId = value
            }
            if let value = dict["EmailConfirmed"] as? Bool {
                self.emailConfirmed = value
            }
            if let value = dict["EntityId"] as? String {
                self.entityId = value
            }
            if let value = dict["EntityType"] as? String {
                self.entityType = value
            }
            if let value = dict["MobileConfirmed"] as? Bool {
                self.mobileConfirmed = value
            }
            if let value = dict["SharedContact"] as? Bool {
                self.sharedContact = value
            }
            if let value = dict["UpdateDate"] as? Int64 {
                self.updateDate = value
            }
            if let value = dict["UpdateUser"] as? String {
                self.updateUser = value
            }
        }
    }
    public var code: String?

    public var data: [AccountContactQueryPageListResponseBody.Data]?

    public var message: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [AccountContactQueryPageListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = AccountContactQueryPageListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
    }
}

public class AccountContactQueryPageListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AccountContactQueryPageListResponseBody?

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
            var model = AccountContactQueryPageListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseAccountChangeLoginPasswordRequest : Tea.TeaModel {
    public var appName: String?

    public var encryptPassword: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pk: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.encryptPassword != nil {
            map["EncryptPassword"] = self.encryptPassword!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["EncryptPassword"] as? String {
            self.encryptPassword = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnterpriseAccountChangeLoginPasswordResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var pass: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pass != nil {
            map["Pass"] = self.pass!
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Pass"] as? Bool {
            self.pass = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseAccountChangeLoginPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseAccountChangeLoginPasswordResponseBody?

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
            var model = EnterpriseAccountChangeLoginPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseAccountChangeSecurityEmailRequest : Tea.TeaModel {
    public var appName: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pk: String?

    public var requestId: String?

    public var securityEmail: String?

    public var verifyCode: String?

    public override init() {
        super.init()
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
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityEmail != nil {
            map["SecurityEmail"] = self.securityEmail!
        }
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityEmail"] as? String {
            self.securityEmail = value
        }
        if let value = dict["VerifyCode"] as? String {
            self.verifyCode = value
        }
    }
}

public class EnterpriseAccountChangeSecurityEmailResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseAccountChangeSecurityEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseAccountChangeSecurityEmailResponseBody?

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
            var model = EnterpriseAccountChangeSecurityEmailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseAccountChangeSecurityMobileRequest : Tea.TeaModel {
    public var appName: String?

    public var encryptTicket: String?

    public var newMobile: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pk: String?

    public var requestId: String?

    public var verificationCode: String?

    public override init() {
        super.init()
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
        if self.encryptTicket != nil {
            map["EncryptTicket"] = self.encryptTicket!
        }
        if self.newMobile != nil {
            map["NewMobile"] = self.newMobile!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.verificationCode != nil {
            map["VerificationCode"] = self.verificationCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["EncryptTicket"] as? String {
            self.encryptTicket = value
        }
        if let value = dict["NewMobile"] as? String {
            self.newMobile = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VerificationCode"] as? String {
            self.verificationCode = value
        }
    }
}

public class EnterpriseAccountChangeSecurityMobileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseAccountChangeSecurityMobileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseAccountChangeSecurityMobileResponseBody?

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
            var model = EnterpriseAccountChangeSecurityMobileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseAccountQueryAccountGrantedRolesRequest : Tea.TeaModel {
    public var appName: String?

    public var isOpenApi: Bool?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pk: String?

    public var showCompleteInfo: Bool?

    public override init() {
        super.init()
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
        if self.isOpenApi != nil {
            map["IsOpenApi"] = self.isOpenApi!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.showCompleteInfo != nil {
            map["ShowCompleteInfo"] = self.showCompleteInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["IsOpenApi"] as? Bool {
            self.isOpenApi = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["ShowCompleteInfo"] as? Bool {
            self.showCompleteInfo = value
        }
    }
}

public class EnterpriseAccountQueryAccountGrantedRolesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bizRoleCode: String?

        public var bizRoleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizRoleCode != nil {
                map["BizRoleCode"] = self.bizRoleCode!
            }
            if self.bizRoleName != nil {
                map["BizRoleName"] = self.bizRoleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizRoleCode"] as? String {
                self.bizRoleCode = value
            }
            if let value = dict["BizRoleName"] as? String {
                self.bizRoleName = value
            }
        }
    }
    public var code: String?

    public var data: [EnterpriseAccountQueryAccountGrantedRolesResponseBody.Data]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
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
            var tmp : [EnterpriseAccountQueryAccountGrantedRolesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = EnterpriseAccountQueryAccountGrantedRolesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseAccountQueryAccountGrantedRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseAccountQueryAccountGrantedRolesResponseBody?

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
            var model = EnterpriseAccountQueryAccountGrantedRolesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseAccountQueryAccountsInfoRequest : Tea.TeaModel {
    public var encryptTicket: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pksJson: String?

    public var requestId: String?

    public var showCompleteInfo: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encryptTicket != nil {
            map["EncryptTicket"] = self.encryptTicket!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pksJson != nil {
            map["PksJson"] = self.pksJson!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.showCompleteInfo != nil {
            map["ShowCompleteInfo"] = self.showCompleteInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncryptTicket"] as? String {
            self.encryptTicket = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["PksJson"] as? String {
            self.pksJson = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShowCompleteInfo"] as? Bool {
            self.showCompleteInfo = value
        }
    }
}

public class EnterpriseAccountQueryAccountsInfoResponseBody : Tea.TeaModel {
    public class AccountInfoDtoList : Tea.TeaModel {
        public var alias: String?

        public var belongToMasterAccount: Bool?

        public var email: String?

        public var enterpriseEcId: String?

        public var enterpriseEntityId: String?

        public var enterpriseLicenseNo: String?

        public var enterpriseName: String?

        public var enterpriseNbId: String?

        public var freezeLogin: Bool?

        public var loginId: String?

        public var manageInviteTimeStamp: String?

        public var pk: String?

        public var securityMobile: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.belongToMasterAccount != nil {
                map["BelongToMasterAccount"] = self.belongToMasterAccount!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.enterpriseEcId != nil {
                map["EnterpriseEcId"] = self.enterpriseEcId!
            }
            if self.enterpriseEntityId != nil {
                map["EnterpriseEntityId"] = self.enterpriseEntityId!
            }
            if self.enterpriseLicenseNo != nil {
                map["EnterpriseLicenseNo"] = self.enterpriseLicenseNo!
            }
            if self.enterpriseName != nil {
                map["EnterpriseName"] = self.enterpriseName!
            }
            if self.enterpriseNbId != nil {
                map["EnterpriseNbId"] = self.enterpriseNbId!
            }
            if self.freezeLogin != nil {
                map["FreezeLogin"] = self.freezeLogin!
            }
            if self.loginId != nil {
                map["LoginId"] = self.loginId!
            }
            if self.manageInviteTimeStamp != nil {
                map["ManageInviteTimeStamp"] = self.manageInviteTimeStamp!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            if self.securityMobile != nil {
                map["SecurityMobile"] = self.securityMobile!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Alias"] as? String {
                self.alias = value
            }
            if let value = dict["BelongToMasterAccount"] as? Bool {
                self.belongToMasterAccount = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["EnterpriseEcId"] as? String {
                self.enterpriseEcId = value
            }
            if let value = dict["EnterpriseEntityId"] as? String {
                self.enterpriseEntityId = value
            }
            if let value = dict["EnterpriseLicenseNo"] as? String {
                self.enterpriseLicenseNo = value
            }
            if let value = dict["EnterpriseName"] as? String {
                self.enterpriseName = value
            }
            if let value = dict["EnterpriseNbId"] as? String {
                self.enterpriseNbId = value
            }
            if let value = dict["FreezeLogin"] as? Bool {
                self.freezeLogin = value
            }
            if let value = dict["LoginId"] as? String {
                self.loginId = value
            }
            if let value = dict["ManageInviteTimeStamp"] as? String {
                self.manageInviteTimeStamp = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
            if let value = dict["SecurityMobile"] as? String {
                self.securityMobile = value
            }
        }
    }
    public var accountInfoDtoList: [EnterpriseAccountQueryAccountsInfoResponseBody.AccountInfoDtoList]?

    public var code: String?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

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
        if self.accountInfoDtoList != nil {
            var tmp : [Any] = []
            for k in self.accountInfoDtoList! {
                tmp.append(k.toMap())
            }
            map["AccountInfoDtoList"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["AccountInfoDtoList"] as? [Any?] {
            var tmp : [EnterpriseAccountQueryAccountsInfoResponseBody.AccountInfoDtoList] = []
            for v in value {
                if v != nil {
                    var model = EnterpriseAccountQueryAccountsInfoResponseBody.AccountInfoDtoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.accountInfoDtoList = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseAccountQueryAccountsInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseAccountQueryAccountsInfoResponseBody?

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
            var model = EnterpriseAccountQueryAccountsInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseAccountQueryLoginSettingsRequest : Tea.TeaModel {
    public var appName: String?

    public var isOpenApi: Bool?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pk: String?

    public var showCompleteInfo: Bool?

    public override init() {
        super.init()
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
        if self.isOpenApi != nil {
            map["IsOpenApi"] = self.isOpenApi!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.showCompleteInfo != nil {
            map["ShowCompleteInfo"] = self.showCompleteInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["IsOpenApi"] as? Bool {
            self.isOpenApi = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["ShowCompleteInfo"] as? Bool {
            self.showCompleteInfo = value
        }
    }
}

public class EnterpriseAccountQueryLoginSettingsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class IpMaskDto : Tea.TeaModel {
            public var ipMaskEnabledStatus: String?

            public var ipMasks: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ipMaskEnabledStatus != nil {
                    map["IpMaskEnabledStatus"] = self.ipMaskEnabledStatus!
                }
                if self.ipMasks != nil {
                    map["IpMasks"] = self.ipMasks!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IpMaskEnabledStatus"] as? String {
                    self.ipMaskEnabledStatus = value
                }
                if let value = dict["IpMasks"] as? [String] {
                    self.ipMasks = value
                }
            }
        }
        public class RiskControlDto : Tea.TeaModel {
            public var protectLevel: String?

            public var riskControlEnabled: Bool?

            public var verifyDetail: String?

            public var verifyType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.protectLevel != nil {
                    map["ProtectLevel"] = self.protectLevel!
                }
                if self.riskControlEnabled != nil {
                    map["RiskControlEnabled"] = self.riskControlEnabled!
                }
                if self.verifyDetail != nil {
                    map["VerifyDetail"] = self.verifyDetail!
                }
                if self.verifyType != nil {
                    map["VerifyType"] = self.verifyType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ProtectLevel"] as? String {
                    self.protectLevel = value
                }
                if let value = dict["RiskControlEnabled"] as? Bool {
                    self.riskControlEnabled = value
                }
                if let value = dict["VerifyDetail"] as? String {
                    self.verifyDetail = value
                }
                if let value = dict["VerifyType"] as? String {
                    self.verifyType = value
                }
            }
        }
        public var ipMaskDto: EnterpriseAccountQueryLoginSettingsResponseBody.Data.IpMaskDto?

        public var mfaBindStatus: String?

        public var riskControlDto: EnterpriseAccountQueryLoginSettingsResponseBody.Data.RiskControlDto?

        public var securityMobileLoginStatus: String?

        public var sessionExpireTime: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ipMaskDto?.validate()
            try self.riskControlDto?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ipMaskDto != nil {
                map["IpMaskDto"] = self.ipMaskDto?.toMap()
            }
            if self.mfaBindStatus != nil {
                map["MfaBindStatus"] = self.mfaBindStatus!
            }
            if self.riskControlDto != nil {
                map["RiskControlDto"] = self.riskControlDto?.toMap()
            }
            if self.securityMobileLoginStatus != nil {
                map["SecurityMobileLoginStatus"] = self.securityMobileLoginStatus!
            }
            if self.sessionExpireTime != nil {
                map["SessionExpireTime"] = self.sessionExpireTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IpMaskDto"] as? [String: Any?] {
                var model = EnterpriseAccountQueryLoginSettingsResponseBody.Data.IpMaskDto()
                model.fromMap(value)
                self.ipMaskDto = model
            }
            if let value = dict["MfaBindStatus"] as? String {
                self.mfaBindStatus = value
            }
            if let value = dict["RiskControlDto"] as? [String: Any?] {
                var model = EnterpriseAccountQueryLoginSettingsResponseBody.Data.RiskControlDto()
                model.fromMap(value)
                self.riskControlDto = model
            }
            if let value = dict["SecurityMobileLoginStatus"] as? String {
                self.securityMobileLoginStatus = value
            }
            if let value = dict["SessionExpireTime"] as? Int32 {
                self.sessionExpireTime = value
            }
        }
    }
    public var code: String?

    public var data: EnterpriseAccountQueryLoginSettingsResponseBody.Data?

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
            var model = EnterpriseAccountQueryLoginSettingsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseAccountQueryLoginSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseAccountQueryLoginSettingsResponseBody?

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
            var model = EnterpriseAccountQueryLoginSettingsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseAccountRemoveMfaRequest : Tea.TeaModel {
    public var appName: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pk: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnterpriseAccountRemoveMfaResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseAccountRemoveMfaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseAccountRemoveMfaResponseBody?

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
            var model = EnterpriseAccountRemoveMfaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseAccountSeparateEaRequest : Tea.TeaModel {
    public var encryptTicket: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pk: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encryptTicket != nil {
            map["EncryptTicket"] = self.encryptTicket!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncryptTicket"] as? String {
            self.encryptTicket = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class EnterpriseAccountSeparateEaResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseAccountSeparateEaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseAccountSeparateEaResponseBody?

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
            var model = EnterpriseAccountSeparateEaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseAccountUpdateAccountAliasRequest : Tea.TeaModel {
    public var alias: String?

    public var appName: String?

    public var encryptTicket: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pk: String?

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
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.encryptTicket != nil {
            map["EncryptTicket"] = self.encryptTicket!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["EncryptTicket"] as? String {
            self.encryptTicket = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnterpriseAccountUpdateAccountAliasResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseAccountUpdateAccountAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseAccountUpdateAccountAliasResponseBody?

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
            var model = EnterpriseAccountUpdateAccountAliasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseAccountUpdateAccountBizRoleGrantRequest : Tea.TeaModel {
    public var bizRoleCodeListJson: String?

    public var encryptTicket: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pk: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizRoleCodeListJson != nil {
            map["BizRoleCodeListJson"] = self.bizRoleCodeListJson!
        }
        if self.encryptTicket != nil {
            map["EncryptTicket"] = self.encryptTicket!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizRoleCodeListJson"] as? String {
            self.bizRoleCodeListJson = value
        }
        if let value = dict["EncryptTicket"] as? String {
            self.encryptTicket = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class EnterpriseAccountUpdateAccountBizRoleGrantResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseAccountUpdateAccountBizRoleGrantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseAccountUpdateAccountBizRoleGrantResponseBody?

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
            var model = EnterpriseAccountUpdateAccountBizRoleGrantResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseAccountUpdateIpMaskRequest : Tea.TeaModel {
    public var appName: String?

    public var ipMasksJson: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pk: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.ipMasksJson != nil {
            map["IpMasksJson"] = self.ipMasksJson!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["IpMasksJson"] as? String {
            self.ipMasksJson = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class EnterpriseAccountUpdateIpMaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseAccountUpdateIpMaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseAccountUpdateIpMaskResponseBody?

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
            var model = EnterpriseAccountUpdateIpMaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseAccountUpdateOperateRiskControlRequest : Tea.TeaModel {
    public var appName: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pk: String?

    public var productLevel: String?

    public var requestId: String?

    public var validateType: String?

    public override init() {
        super.init()
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
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.productLevel != nil {
            map["ProductLevel"] = self.productLevel!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.validateType != nil {
            map["ValidateType"] = self.validateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["ProductLevel"] as? String {
            self.productLevel = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ValidateType"] as? String {
            self.validateType = value
        }
    }
}

public class EnterpriseAccountUpdateOperateRiskControlResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseAccountUpdateOperateRiskControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseAccountUpdateOperateRiskControlResponseBody?

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
            var model = EnterpriseAccountUpdateOperateRiskControlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseAccountUpdateSecurityMobileLoginStatusRequest : Tea.TeaModel {
    public var appName: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pk: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class EnterpriseAccountUpdateSecurityMobileLoginStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var pass: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pass != nil {
            map["Pass"] = self.pass!
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Pass"] as? Bool {
            self.pass = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseAccountUpdateSecurityMobileLoginStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseAccountUpdateSecurityMobileLoginStatusResponseBody?

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
            var model = EnterpriseAccountUpdateSecurityMobileLoginStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseAccountUpdateSessionExpireTimeRequest : Tea.TeaModel {
    public var appName: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pk: String?

    public var requestId: String?

    public var sessionExpireTime: Int32?

    public override init() {
        super.init()
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
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sessionExpireTime != nil {
            map["SessionExpireTime"] = self.sessionExpireTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SessionExpireTime"] as? Int32 {
            self.sessionExpireTime = value
        }
    }
}

public class EnterpriseAccountUpdateSessionExpireTimeResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseAccountUpdateSessionExpireTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseAccountUpdateSessionExpireTimeResponseBody?

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
            var model = EnterpriseAccountUpdateSessionExpireTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseContactAddRequest : Tea.TeaModel {
    public var appName: String?

    public var asyncEmailVerify: Bool?

    public var asyncMobileVerify: Bool?

    public var contactEmail: String?

    public var contactMobile: String?

    public var contactName: String?

    public var contactPosition: String?

    public var emailCode: String?

    public var mobileCode: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var sharedContact: Bool?

    public override init() {
        super.init()
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
        if self.asyncEmailVerify != nil {
            map["AsyncEmailVerify"] = self.asyncEmailVerify!
        }
        if self.asyncMobileVerify != nil {
            map["AsyncMobileVerify"] = self.asyncMobileVerify!
        }
        if self.contactEmail != nil {
            map["ContactEmail"] = self.contactEmail!
        }
        if self.contactMobile != nil {
            map["ContactMobile"] = self.contactMobile!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.contactPosition != nil {
            map["ContactPosition"] = self.contactPosition!
        }
        if self.emailCode != nil {
            map["EmailCode"] = self.emailCode!
        }
        if self.mobileCode != nil {
            map["MobileCode"] = self.mobileCode!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.sharedContact != nil {
            map["SharedContact"] = self.sharedContact!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AsyncEmailVerify"] as? Bool {
            self.asyncEmailVerify = value
        }
        if let value = dict["AsyncMobileVerify"] as? Bool {
            self.asyncMobileVerify = value
        }
        if let value = dict["ContactEmail"] as? String {
            self.contactEmail = value
        }
        if let value = dict["ContactMobile"] as? String {
            self.contactMobile = value
        }
        if let value = dict["ContactName"] as? String {
            self.contactName = value
        }
        if let value = dict["ContactPosition"] as? String {
            self.contactPosition = value
        }
        if let value = dict["EmailCode"] as? String {
            self.emailCode = value
        }
        if let value = dict["MobileCode"] as? String {
            self.mobileCode = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["SharedContact"] as? Bool {
            self.sharedContact = value
        }
    }
}

public class EnterpriseContactAddResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ErrorList : Tea.TeaModel {
            public var errorCode: String?

            public var errorDesc: String?

            public var item: String?

            public override init() {
                super.init()
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
                if self.errorDesc != nil {
                    map["ErrorDesc"] = self.errorDesc!
                }
                if self.item != nil {
                    map["Item"] = self.item!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ErrorDesc"] as? String {
                    self.errorDesc = value
                }
                if let value = dict["Item"] as? String {
                    self.item = value
                }
            }
        }
        public var contactId: Int64?

        public var errorList: [EnterpriseContactAddResponseBody.Data.ErrorList]?

        public var result: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.errorList != nil {
                var tmp : [Any] = []
                for k in self.errorList! {
                    tmp.append(k.toMap())
                }
                map["ErrorList"] = tmp
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactId"] as? Int64 {
                self.contactId = value
            }
            if let value = dict["ErrorList"] as? [Any?] {
                var tmp : [EnterpriseContactAddResponseBody.Data.ErrorList] = []
                for v in value {
                    if v != nil {
                        var model = EnterpriseContactAddResponseBody.Data.ErrorList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.errorList = tmp
            }
            if let value = dict["Result"] as? Bool {
                self.result = value
            }
        }
    }
    public var code: String?

    public var data: EnterpriseContactAddResponseBody.Data?

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
            var model = EnterpriseContactAddResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseContactAddResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseContactAddResponseBody?

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
            var model = EnterpriseContactAddResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseContactDeleteRequest : Tea.TeaModel {
    public var appName: String?

    public var contactId: Int64?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public override init() {
        super.init()
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
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
    }
}

public class EnterpriseContactDeleteResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseContactDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseContactDeleteResponseBody?

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
            var model = EnterpriseContactDeleteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseContactEditRequest : Tea.TeaModel {
    public var appName: String?

    public var asyncEmailVerify: Bool?

    public var asyncMobileVerify: Bool?

    public var contactEmail: String?

    public var contactId: Int64?

    public var contactMobile: String?

    public var contactName: String?

    public var contactPosition: String?

    public var emailCode: String?

    public var mobileCode: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var sharedContact: Bool?

    public override init() {
        super.init()
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
        if self.asyncEmailVerify != nil {
            map["AsyncEmailVerify"] = self.asyncEmailVerify!
        }
        if self.asyncMobileVerify != nil {
            map["AsyncMobileVerify"] = self.asyncMobileVerify!
        }
        if self.contactEmail != nil {
            map["ContactEmail"] = self.contactEmail!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.contactMobile != nil {
            map["ContactMobile"] = self.contactMobile!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.contactPosition != nil {
            map["ContactPosition"] = self.contactPosition!
        }
        if self.emailCode != nil {
            map["EmailCode"] = self.emailCode!
        }
        if self.mobileCode != nil {
            map["MobileCode"] = self.mobileCode!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.sharedContact != nil {
            map["SharedContact"] = self.sharedContact!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AsyncEmailVerify"] as? Bool {
            self.asyncEmailVerify = value
        }
        if let value = dict["AsyncMobileVerify"] as? Bool {
            self.asyncMobileVerify = value
        }
        if let value = dict["ContactEmail"] as? String {
            self.contactEmail = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["ContactMobile"] as? String {
            self.contactMobile = value
        }
        if let value = dict["ContactName"] as? String {
            self.contactName = value
        }
        if let value = dict["ContactPosition"] as? String {
            self.contactPosition = value
        }
        if let value = dict["EmailCode"] as? String {
            self.emailCode = value
        }
        if let value = dict["MobileCode"] as? String {
            self.mobileCode = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["SharedContact"] as? Bool {
            self.sharedContact = value
        }
    }
}

public class EnterpriseContactEditResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ErrorList : Tea.TeaModel {
            public var errorCode: String?

            public var errorDesc: String?

            public var item: String?

            public override init() {
                super.init()
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
                if self.errorDesc != nil {
                    map["ErrorDesc"] = self.errorDesc!
                }
                if self.item != nil {
                    map["Item"] = self.item!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ErrorDesc"] as? String {
                    self.errorDesc = value
                }
                if let value = dict["Item"] as? String {
                    self.item = value
                }
            }
        }
        public var contactId: Int64?

        public var errorList: [EnterpriseContactEditResponseBody.Data.ErrorList]?

        public var result: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.errorList != nil {
                var tmp : [Any] = []
                for k in self.errorList! {
                    tmp.append(k.toMap())
                }
                map["ErrorList"] = tmp
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactId"] as? Int64 {
                self.contactId = value
            }
            if let value = dict["ErrorList"] as? [Any?] {
                var tmp : [EnterpriseContactEditResponseBody.Data.ErrorList] = []
                for v in value {
                    if v != nil {
                        var model = EnterpriseContactEditResponseBody.Data.ErrorList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.errorList = tmp
            }
            if let value = dict["Result"] as? Bool {
                self.result = value
            }
        }
    }
    public var code: String?

    public var data: EnterpriseContactEditResponseBody.Data?

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
            var model = EnterpriseContactEditResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseContactEditResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseContactEditResponseBody?

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
            var model = EnterpriseContactEditResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseContactQueryDetailRequest : Tea.TeaModel {
    public var appName: String?

    public var contactId: Int64?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public override init() {
        super.init()
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
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
    }
}

public class EnterpriseContactQueryDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var contactEmail: String?

        public var contactId: Int64?

        public var contactMobile: String?

        public var contactName: String?

        public var contactPosition: String?

        public var customerId: String?

        public var emailConfirmed: Bool?

        public var entityId: String?

        public var entityType: String?

        public var hasSubscription: Bool?

        public var mobileConfirmed: Bool?

        public var sharedContact: Bool?

        public var uid: String?

        public var updateDate: Int64?

        public var updateUser: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactEmail != nil {
                map["ContactEmail"] = self.contactEmail!
            }
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.contactMobile != nil {
                map["ContactMobile"] = self.contactMobile!
            }
            if self.contactName != nil {
                map["ContactName"] = self.contactName!
            }
            if self.contactPosition != nil {
                map["ContactPosition"] = self.contactPosition!
            }
            if self.customerId != nil {
                map["CustomerId"] = self.customerId!
            }
            if self.emailConfirmed != nil {
                map["EmailConfirmed"] = self.emailConfirmed!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.hasSubscription != nil {
                map["HasSubscription"] = self.hasSubscription!
            }
            if self.mobileConfirmed != nil {
                map["MobileConfirmed"] = self.mobileConfirmed!
            }
            if self.sharedContact != nil {
                map["SharedContact"] = self.sharedContact!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactEmail"] as? String {
                self.contactEmail = value
            }
            if let value = dict["ContactId"] as? Int64 {
                self.contactId = value
            }
            if let value = dict["ContactMobile"] as? String {
                self.contactMobile = value
            }
            if let value = dict["ContactName"] as? String {
                self.contactName = value
            }
            if let value = dict["ContactPosition"] as? String {
                self.contactPosition = value
            }
            if let value = dict["CustomerId"] as? String {
                self.customerId = value
            }
            if let value = dict["EmailConfirmed"] as? Bool {
                self.emailConfirmed = value
            }
            if let value = dict["EntityId"] as? String {
                self.entityId = value
            }
            if let value = dict["EntityType"] as? String {
                self.entityType = value
            }
            if let value = dict["HasSubscription"] as? Bool {
                self.hasSubscription = value
            }
            if let value = dict["MobileConfirmed"] as? Bool {
                self.mobileConfirmed = value
            }
            if let value = dict["SharedContact"] as? Bool {
                self.sharedContact = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
            }
            if let value = dict["UpdateDate"] as? Int64 {
                self.updateDate = value
            }
            if let value = dict["UpdateUser"] as? String {
                self.updateUser = value
            }
        }
    }
    public var code: String?

    public var data: EnterpriseContactQueryDetailResponseBody.Data?

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
            var model = EnterpriseContactQueryDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseContactQueryDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseContactQueryDetailResponseBody?

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
            var model = EnterpriseContactQueryDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseContactQueryPageListRequest : Tea.TeaModel {
    public var appName: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var privateContact: Bool?

    public var query: String?

    public var sharedContact: Bool?

    public var showCompleteInfo: Bool?

    public override init() {
        super.init()
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
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.privateContact != nil {
            map["PrivateContact"] = self.privateContact!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.sharedContact != nil {
            map["SharedContact"] = self.sharedContact!
        }
        if self.showCompleteInfo != nil {
            map["ShowCompleteInfo"] = self.showCompleteInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrivateContact"] as? Bool {
            self.privateContact = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["SharedContact"] as? Bool {
            self.sharedContact = value
        }
        if let value = dict["ShowCompleteInfo"] as? Bool {
            self.showCompleteInfo = value
        }
    }
}

public class EnterpriseContactQueryPageListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var contactEmail: String?

        public var contactId: Int64?

        public var contactMobile: String?

        public var contactName: String?

        public var contactPosition: String?

        public var customerId: String?

        public var emailConfirmed: Bool?

        public var entityId: String?

        public var entityType: String?

        public var mobileConfirmed: Bool?

        public var sharedContact: Bool?

        public var updateDate: Int64?

        public var updateUser: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactEmail != nil {
                map["ContactEmail"] = self.contactEmail!
            }
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.contactMobile != nil {
                map["ContactMobile"] = self.contactMobile!
            }
            if self.contactName != nil {
                map["ContactName"] = self.contactName!
            }
            if self.contactPosition != nil {
                map["ContactPosition"] = self.contactPosition!
            }
            if self.customerId != nil {
                map["CustomerId"] = self.customerId!
            }
            if self.emailConfirmed != nil {
                map["EmailConfirmed"] = self.emailConfirmed!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.mobileConfirmed != nil {
                map["MobileConfirmed"] = self.mobileConfirmed!
            }
            if self.sharedContact != nil {
                map["SharedContact"] = self.sharedContact!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactEmail"] as? String {
                self.contactEmail = value
            }
            if let value = dict["ContactId"] as? Int64 {
                self.contactId = value
            }
            if let value = dict["ContactMobile"] as? String {
                self.contactMobile = value
            }
            if let value = dict["ContactName"] as? String {
                self.contactName = value
            }
            if let value = dict["ContactPosition"] as? String {
                self.contactPosition = value
            }
            if let value = dict["CustomerId"] as? String {
                self.customerId = value
            }
            if let value = dict["EmailConfirmed"] as? Bool {
                self.emailConfirmed = value
            }
            if let value = dict["EntityId"] as? String {
                self.entityId = value
            }
            if let value = dict["EntityType"] as? String {
                self.entityType = value
            }
            if let value = dict["MobileConfirmed"] as? Bool {
                self.mobileConfirmed = value
            }
            if let value = dict["SharedContact"] as? Bool {
                self.sharedContact = value
            }
            if let value = dict["UpdateDate"] as? Int64 {
                self.updateDate = value
            }
            if let value = dict["UpdateUser"] as? String {
                self.updateUser = value
            }
        }
    }
    public var code: String?

    public var data: [EnterpriseContactQueryPageListResponseBody.Data]?

    public var message: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [EnterpriseContactQueryPageListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = EnterpriseContactQueryPageListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
    }
}

public class EnterpriseContactQueryPageListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseContactQueryPageListResponseBody?

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
            var model = EnterpriseContactQueryPageListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseOrgQueryLoadTreeRequest : Tea.TeaModel {
    public var encryptTicket: String?

    public var loadOrgOnly: Bool?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

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
        if self.encryptTicket != nil {
            map["EncryptTicket"] = self.encryptTicket!
        }
        if self.loadOrgOnly != nil {
            map["LoadOrgOnly"] = self.loadOrgOnly!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncryptTicket"] as? String {
            self.encryptTicket = value
        }
        if let value = dict["LoadOrgOnly"] as? Bool {
            self.loadOrgOnly = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnterpriseOrgQueryLoadTreeResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var treeDto: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.treeDto != nil {
            map["TreeDto"] = self.treeDto!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TreeDto"] as? String {
            self.treeDto = value
        }
    }
}

public class EnterpriseOrgQueryLoadTreeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseOrgQueryLoadTreeResponseBody?

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
            var model = EnterpriseOrgQueryLoadTreeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseRegisterAccountRequest : Tea.TeaModel {
    public var alias: String?

    public var encryptPassword: String?

    public var encryptTicket: String?

    public var loginEmail: String?

    public var organizationId: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var requestId: String?

    public var showCompleteInfo: Bool?

    public var siteNick: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.encryptPassword != nil {
            map["EncryptPassword"] = self.encryptPassword!
        }
        if self.encryptTicket != nil {
            map["EncryptTicket"] = self.encryptTicket!
        }
        if self.loginEmail != nil {
            map["LoginEmail"] = self.loginEmail!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.showCompleteInfo != nil {
            map["ShowCompleteInfo"] = self.showCompleteInfo!
        }
        if self.siteNick != nil {
            map["SiteNick"] = self.siteNick!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["EncryptPassword"] as? String {
            self.encryptPassword = value
        }
        if let value = dict["EncryptTicket"] as? String {
            self.encryptTicket = value
        }
        if let value = dict["LoginEmail"] as? String {
            self.loginEmail = value
        }
        if let value = dict["OrganizationId"] as? String {
            self.organizationId = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShowCompleteInfo"] as? Bool {
            self.showCompleteInfo = value
        }
        if let value = dict["SiteNick"] as? String {
            self.siteNick = value
        }
    }
}

public class EnterpriseRegisterAccountResponseBody : Tea.TeaModel {
    public class AccountInfo : Tea.TeaModel {
        public var enterpriseLicenseNo: String?

        public var enterpriseName: String?

        public var loginId: String?

        public var pk: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enterpriseLicenseNo != nil {
                map["EnterpriseLicenseNo"] = self.enterpriseLicenseNo!
            }
            if self.enterpriseName != nil {
                map["EnterpriseName"] = self.enterpriseName!
            }
            if self.loginId != nil {
                map["LoginId"] = self.loginId!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnterpriseLicenseNo"] as? String {
                self.enterpriseLicenseNo = value
            }
            if let value = dict["EnterpriseName"] as? String {
                self.enterpriseName = value
            }
            if let value = dict["LoginId"] as? String {
                self.loginId = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
        }
    }
    public var accountInfo: EnterpriseRegisterAccountResponseBody.AccountInfo?

    public var code: String?

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
        try self.accountInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountInfo != nil {
            map["AccountInfo"] = self.accountInfo?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["AccountInfo"] as? [String: Any?] {
            var model = EnterpriseRegisterAccountResponseBody.AccountInfo()
            model.fromMap(value)
            self.accountInfo = model
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseRegisterAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseRegisterAccountResponseBody?

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
            var model = EnterpriseRegisterAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseRoleCreateBizRoleRequest : Tea.TeaModel {
    public var bizPermissionCodeListJson: String?

    public var bizRoleDesc: String?

    public var bizRoleName: String?

    public var encryptTicket: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizPermissionCodeListJson != nil {
            map["BizPermissionCodeListJson"] = self.bizPermissionCodeListJson!
        }
        if self.bizRoleDesc != nil {
            map["BizRoleDesc"] = self.bizRoleDesc!
        }
        if self.bizRoleName != nil {
            map["BizRoleName"] = self.bizRoleName!
        }
        if self.encryptTicket != nil {
            map["EncryptTicket"] = self.encryptTicket!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizPermissionCodeListJson"] as? String {
            self.bizPermissionCodeListJson = value
        }
        if let value = dict["BizRoleDesc"] as? String {
            self.bizRoleDesc = value
        }
        if let value = dict["BizRoleName"] as? String {
            self.bizRoleName = value
        }
        if let value = dict["EncryptTicket"] as? String {
            self.encryptTicket = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class EnterpriseRoleCreateBizRoleResponseBody : Tea.TeaModel {
    public var bizRoleCode: String?

    public var code: String?

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
        if self.bizRoleCode != nil {
            map["BizRoleCode"] = self.bizRoleCode!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["BizRoleCode"] as? String {
            self.bizRoleCode = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseRoleCreateBizRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseRoleCreateBizRoleResponseBody?

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
            var model = EnterpriseRoleCreateBizRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseRoleDeleteBizRoleRequest : Tea.TeaModel {
    public var bizRoleCode: String?

    public var encryptTicket: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizRoleCode != nil {
            map["BizRoleCode"] = self.bizRoleCode!
        }
        if self.encryptTicket != nil {
            map["EncryptTicket"] = self.encryptTicket!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizRoleCode"] as? String {
            self.bizRoleCode = value
        }
        if let value = dict["EncryptTicket"] as? String {
            self.encryptTicket = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
    }
}

public class EnterpriseRoleDeleteBizRoleResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseRoleDeleteBizRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseRoleDeleteBizRoleResponseBody?

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
            var model = EnterpriseRoleDeleteBizRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseRoleQueryAccountForRoleGrantByPageRequest : Tea.TeaModel {
    public var bizRoleCode: String?

    public var encryptTicket: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orgId: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var showCompleteInfo: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizRoleCode != nil {
            map["BizRoleCode"] = self.bizRoleCode!
        }
        if self.encryptTicket != nil {
            map["EncryptTicket"] = self.encryptTicket!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.showCompleteInfo != nil {
            map["ShowCompleteInfo"] = self.showCompleteInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizRoleCode"] as? String {
            self.bizRoleCode = value
        }
        if let value = dict["EncryptTicket"] as? String {
            self.encryptTicket = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["ShowCompleteInfo"] as? Bool {
            self.showCompleteInfo = value
        }
    }
}

public class EnterpriseRoleQueryAccountForRoleGrantByPageResponseBody : Tea.TeaModel {
    public class Accounts : Tea.TeaModel {
        public var alias: String?

        public var aliyunId: String?

        public var granted: Bool?

        public var pk: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.aliyunId != nil {
                map["AliyunId"] = self.aliyunId!
            }
            if self.granted != nil {
                map["Granted"] = self.granted!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Alias"] as? String {
                self.alias = value
            }
            if let value = dict["AliyunId"] as? String {
                self.aliyunId = value
            }
            if let value = dict["Granted"] as? Bool {
                self.granted = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
        }
    }
    public var accounts: [EnterpriseRoleQueryAccountForRoleGrantByPageResponseBody.Accounts]?

    public var code: String?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accounts != nil {
            var tmp : [Any] = []
            for k in self.accounts! {
                tmp.append(k.toMap())
            }
            map["Accounts"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accounts"] as? [Any?] {
            var tmp : [EnterpriseRoleQueryAccountForRoleGrantByPageResponseBody.Accounts] = []
            for v in value {
                if v != nil {
                    var model = EnterpriseRoleQueryAccountForRoleGrantByPageResponseBody.Accounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.accounts = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
    }
}

public class EnterpriseRoleQueryAccountForRoleGrantByPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseRoleQueryAccountForRoleGrantByPageResponseBody?

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
            var model = EnterpriseRoleQueryAccountForRoleGrantByPageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseRoleQueryBizRoleByPageRequest : Tea.TeaModel {
    public var encryptTicket: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var resourceType: String?

    public var srcType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encryptTicket != nil {
            map["EncryptTicket"] = self.encryptTicket!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.srcType != nil {
            map["SrcType"] = self.srcType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncryptTicket"] as? String {
            self.encryptTicket = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SrcType"] as? String {
            self.srcType = value
        }
    }
}

public class EnterpriseRoleQueryBizRoleByPageResponseBody : Tea.TeaModel {
    public class BizRoles : Tea.TeaModel {
        public var bizPermissionCount: Int32?

        public var bizPermissionNameList: [String]?

        public var bizRoleCode: String?

        public var bizRoleDesc: String?

        public var bizRoleName: String?

        public var grantedPkCount: Int32?

        public var resourceType: String?

        public var srcType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizPermissionCount != nil {
                map["BizPermissionCount"] = self.bizPermissionCount!
            }
            if self.bizPermissionNameList != nil {
                map["BizPermissionNameList"] = self.bizPermissionNameList!
            }
            if self.bizRoleCode != nil {
                map["BizRoleCode"] = self.bizRoleCode!
            }
            if self.bizRoleDesc != nil {
                map["BizRoleDesc"] = self.bizRoleDesc!
            }
            if self.bizRoleName != nil {
                map["BizRoleName"] = self.bizRoleName!
            }
            if self.grantedPkCount != nil {
                map["GrantedPkCount"] = self.grantedPkCount!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.srcType != nil {
                map["SrcType"] = self.srcType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizPermissionCount"] as? Int32 {
                self.bizPermissionCount = value
            }
            if let value = dict["BizPermissionNameList"] as? [String] {
                self.bizPermissionNameList = value
            }
            if let value = dict["BizRoleCode"] as? String {
                self.bizRoleCode = value
            }
            if let value = dict["BizRoleDesc"] as? String {
                self.bizRoleDesc = value
            }
            if let value = dict["BizRoleName"] as? String {
                self.bizRoleName = value
            }
            if let value = dict["GrantedPkCount"] as? Int32 {
                self.grantedPkCount = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["SrcType"] as? String {
                self.srcType = value
            }
        }
    }
    public var bizRoles: [EnterpriseRoleQueryBizRoleByPageResponseBody.BizRoles]?

    public var code: String?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizRoles != nil {
            var tmp : [Any] = []
            for k in self.bizRoles! {
                tmp.append(k.toMap())
            }
            map["BizRoles"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizRoles"] as? [Any?] {
            var tmp : [EnterpriseRoleQueryBizRoleByPageResponseBody.BizRoles] = []
            for v in value {
                if v != nil {
                    var model = EnterpriseRoleQueryBizRoleByPageResponseBody.BizRoles()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.bizRoles = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
    }
}

public class EnterpriseRoleQueryBizRoleByPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseRoleQueryBizRoleByPageResponseBody?

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
            var model = EnterpriseRoleQueryBizRoleByPageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseRoleQueryBizRoleDetailRequest : Tea.TeaModel {
    public var bizRoleCode: String?

    public var encryptTicket: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizRoleCode != nil {
            map["BizRoleCode"] = self.bizRoleCode!
        }
        if self.encryptTicket != nil {
            map["EncryptTicket"] = self.encryptTicket!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizRoleCode"] as? String {
            self.bizRoleCode = value
        }
        if let value = dict["EncryptTicket"] as? String {
            self.encryptTicket = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
    }
}

public class EnterpriseRoleQueryBizRoleDetailResponseBody : Tea.TeaModel {
    public class BizRoleDetail : Tea.TeaModel {
        public class BizPermissions : Tea.TeaModel {
            public var bizPermissionCode: String?

            public var bizPermissionDesc: String?

            public var bizPermissionName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizPermissionCode != nil {
                    map["BizPermissionCode"] = self.bizPermissionCode!
                }
                if self.bizPermissionDesc != nil {
                    map["BizPermissionDesc"] = self.bizPermissionDesc!
                }
                if self.bizPermissionName != nil {
                    map["BizPermissionName"] = self.bizPermissionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BizPermissionCode"] as? String {
                    self.bizPermissionCode = value
                }
                if let value = dict["BizPermissionDesc"] as? String {
                    self.bizPermissionDesc = value
                }
                if let value = dict["BizPermissionName"] as? String {
                    self.bizPermissionName = value
                }
            }
        }
        public var bizPermissions: [EnterpriseRoleQueryBizRoleDetailResponseBody.BizRoleDetail.BizPermissions]?

        public var bizRoleCode: String?

        public var bizRoleDesc: String?

        public var bizRoleName: String?

        public var resourceType: String?

        public var srcType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizPermissions != nil {
                var tmp : [Any] = []
                for k in self.bizPermissions! {
                    tmp.append(k.toMap())
                }
                map["BizPermissions"] = tmp
            }
            if self.bizRoleCode != nil {
                map["BizRoleCode"] = self.bizRoleCode!
            }
            if self.bizRoleDesc != nil {
                map["BizRoleDesc"] = self.bizRoleDesc!
            }
            if self.bizRoleName != nil {
                map["BizRoleName"] = self.bizRoleName!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.srcType != nil {
                map["SrcType"] = self.srcType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizPermissions"] as? [Any?] {
                var tmp : [EnterpriseRoleQueryBizRoleDetailResponseBody.BizRoleDetail.BizPermissions] = []
                for v in value {
                    if v != nil {
                        var model = EnterpriseRoleQueryBizRoleDetailResponseBody.BizRoleDetail.BizPermissions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bizPermissions = tmp
            }
            if let value = dict["BizRoleCode"] as? String {
                self.bizRoleCode = value
            }
            if let value = dict["BizRoleDesc"] as? String {
                self.bizRoleDesc = value
            }
            if let value = dict["BizRoleName"] as? String {
                self.bizRoleName = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["SrcType"] as? String {
                self.srcType = value
            }
        }
    }
    public var bizRoleDetail: EnterpriseRoleQueryBizRoleDetailResponseBody.BizRoleDetail?

    public var code: String?

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
        try self.bizRoleDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizRoleDetail != nil {
            map["BizRoleDetail"] = self.bizRoleDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["BizRoleDetail"] as? [String: Any?] {
            var model = EnterpriseRoleQueryBizRoleDetailResponseBody.BizRoleDetail()
            model.fromMap(value)
            self.bizRoleDetail = model
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseRoleQueryBizRoleDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseRoleQueryBizRoleDetailResponseBody?

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
            var model = EnterpriseRoleQueryBizRoleDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseRoleUpdateBizRoleRequest : Tea.TeaModel {
    public var bizPermissionCodeListJson: String?

    public var bizRoleCode: String?

    public var bizRoleDesc: String?

    public var bizRoleName: String?

    public var encryptTicket: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizPermissionCodeListJson != nil {
            map["BizPermissionCodeListJson"] = self.bizPermissionCodeListJson!
        }
        if self.bizRoleCode != nil {
            map["BizRoleCode"] = self.bizRoleCode!
        }
        if self.bizRoleDesc != nil {
            map["BizRoleDesc"] = self.bizRoleDesc!
        }
        if self.bizRoleName != nil {
            map["BizRoleName"] = self.bizRoleName!
        }
        if self.encryptTicket != nil {
            map["EncryptTicket"] = self.encryptTicket!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizPermissionCodeListJson"] as? String {
            self.bizPermissionCodeListJson = value
        }
        if let value = dict["BizRoleCode"] as? String {
            self.bizRoleCode = value
        }
        if let value = dict["BizRoleDesc"] as? String {
            self.bizRoleDesc = value
        }
        if let value = dict["BizRoleName"] as? String {
            self.bizRoleName = value
        }
        if let value = dict["EncryptTicket"] as? String {
            self.encryptTicket = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
    }
}

public class EnterpriseRoleUpdateBizRoleResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseRoleUpdateBizRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseRoleUpdateBizRoleResponseBody?

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
            var model = EnterpriseRoleUpdateBizRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseTodoDealAccountTodoRequest : Tea.TeaModel {
    public var appName: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var remark: String?

    public var status: String?

    public var todoId: String?

    public override init() {
        super.init()
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
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.todoId != nil {
            map["TodoId"] = self.todoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TodoId"] as? String {
            self.todoId = value
        }
    }
}

public class EnterpriseTodoDealAccountTodoResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseTodoDealAccountTodoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseTodoDealAccountTodoResponseBody?

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
            var model = EnterpriseTodoDealAccountTodoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseTodoQueryAccountTodoListRequest : Tea.TeaModel {
    public var appName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var operatePk: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var showCompleteInfo: Bool?

    public var status: String?

    public var todoType: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.operatePk != nil {
            map["OperatePk"] = self.operatePk!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.showCompleteInfo != nil {
            map["ShowCompleteInfo"] = self.showCompleteInfo!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.todoType != nil {
            map["TodoType"] = self.todoType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OperatePk"] as? String {
            self.operatePk = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ShowCompleteInfo"] as? Bool {
            self.showCompleteInfo = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TodoType"] as? String {
            self.todoType = value
        }
    }
}

public class EnterpriseTodoQueryAccountTodoListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TodoList : Tea.TeaModel {
            public class FromLe : Tea.TeaModel {
                public class ManagerList : Tea.TeaModel {
                    public var aliyunId: String?

                    public var pk: String?

                    public var pkEncoded: String?

                    public var role: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.aliyunId != nil {
                            map["AliyunId"] = self.aliyunId!
                        }
                        if self.pk != nil {
                            map["Pk"] = self.pk!
                        }
                        if self.pkEncoded != nil {
                            map["PkEncoded"] = self.pkEncoded!
                        }
                        if self.role != nil {
                            map["Role"] = self.role!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AliyunId"] as? String {
                            self.aliyunId = value
                        }
                        if let value = dict["Pk"] as? String {
                            self.pk = value
                        }
                        if let value = dict["PkEncoded"] as? String {
                            self.pkEncoded = value
                        }
                        if let value = dict["Role"] as? String {
                            self.role = value
                        }
                    }
                }
                public var ecId: String?

                public var leId: String?

                public var licenseNumber: String?

                public var manageableAccountCount: Int64?

                public var managedAccountCount: Int64?

                public var managerList: [EnterpriseTodoQueryAccountTodoListResponseBody.Data.TodoList.FromLe.ManagerList]?

                public var nbId: String?

                public var subjectName: String?

                public var subjectType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ecId != nil {
                        map["EcId"] = self.ecId!
                    }
                    if self.leId != nil {
                        map["LeId"] = self.leId!
                    }
                    if self.licenseNumber != nil {
                        map["LicenseNumber"] = self.licenseNumber!
                    }
                    if self.manageableAccountCount != nil {
                        map["ManageableAccountCount"] = self.manageableAccountCount!
                    }
                    if self.managedAccountCount != nil {
                        map["ManagedAccountCount"] = self.managedAccountCount!
                    }
                    if self.managerList != nil {
                        var tmp : [Any] = []
                        for k in self.managerList! {
                            tmp.append(k.toMap())
                        }
                        map["ManagerList"] = tmp
                    }
                    if self.nbId != nil {
                        map["NbId"] = self.nbId!
                    }
                    if self.subjectName != nil {
                        map["SubjectName"] = self.subjectName!
                    }
                    if self.subjectType != nil {
                        map["SubjectType"] = self.subjectType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EcId"] as? String {
                        self.ecId = value
                    }
                    if let value = dict["LeId"] as? String {
                        self.leId = value
                    }
                    if let value = dict["LicenseNumber"] as? String {
                        self.licenseNumber = value
                    }
                    if let value = dict["ManageableAccountCount"] as? Int64 {
                        self.manageableAccountCount = value
                    }
                    if let value = dict["ManagedAccountCount"] as? Int64 {
                        self.managedAccountCount = value
                    }
                    if let value = dict["ManagerList"] as? [Any?] {
                        var tmp : [EnterpriseTodoQueryAccountTodoListResponseBody.Data.TodoList.FromLe.ManagerList] = []
                        for v in value {
                            if v != nil {
                                var model = EnterpriseTodoQueryAccountTodoListResponseBody.Data.TodoList.FromLe.ManagerList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.managerList = tmp
                    }
                    if let value = dict["NbId"] as? String {
                        self.nbId = value
                    }
                    if let value = dict["SubjectName"] as? String {
                        self.subjectName = value
                    }
                    if let value = dict["SubjectType"] as? String {
                        self.subjectType = value
                    }
                }
            }
            public class ProcessList : Tea.TeaModel {
                public var aliyunId: String?

                public var auditTime: Int64?

                public var ecId: String?

                public var leId: String?

                public var nbId: String?

                public var pk: String?

                public var remark: String?

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
                    if self.aliyunId != nil {
                        map["AliyunId"] = self.aliyunId!
                    }
                    if self.auditTime != nil {
                        map["AuditTime"] = self.auditTime!
                    }
                    if self.ecId != nil {
                        map["EcId"] = self.ecId!
                    }
                    if self.leId != nil {
                        map["LeId"] = self.leId!
                    }
                    if self.nbId != nil {
                        map["NbId"] = self.nbId!
                    }
                    if self.pk != nil {
                        map["Pk"] = self.pk!
                    }
                    if self.remark != nil {
                        map["Remark"] = self.remark!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AliyunId"] as? String {
                        self.aliyunId = value
                    }
                    if let value = dict["AuditTime"] as? Int64 {
                        self.auditTime = value
                    }
                    if let value = dict["EcId"] as? String {
                        self.ecId = value
                    }
                    if let value = dict["LeId"] as? String {
                        self.leId = value
                    }
                    if let value = dict["NbId"] as? String {
                        self.nbId = value
                    }
                    if let value = dict["Pk"] as? String {
                        self.pk = value
                    }
                    if let value = dict["Remark"] as? String {
                        self.remark = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                }
            }
            public class ToLe : Tea.TeaModel {
                public class ManagerList : Tea.TeaModel {
                    public var aliyunId: String?

                    public var pk: String?

                    public var pkEncoded: String?

                    public var role: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.aliyunId != nil {
                            map["AliyunId"] = self.aliyunId!
                        }
                        if self.pk != nil {
                            map["Pk"] = self.pk!
                        }
                        if self.pkEncoded != nil {
                            map["PkEncoded"] = self.pkEncoded!
                        }
                        if self.role != nil {
                            map["Role"] = self.role!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AliyunId"] as? String {
                            self.aliyunId = value
                        }
                        if let value = dict["Pk"] as? String {
                            self.pk = value
                        }
                        if let value = dict["PkEncoded"] as? String {
                            self.pkEncoded = value
                        }
                        if let value = dict["Role"] as? String {
                            self.role = value
                        }
                    }
                }
                public var ecId: String?

                public var leId: String?

                public var licenseNumber: String?

                public var manageableAccountCount: Int64?

                public var managedAccountCount: Int64?

                public var managerList: [EnterpriseTodoQueryAccountTodoListResponseBody.Data.TodoList.ToLe.ManagerList]?

                public var nbId: String?

                public var subjectName: String?

                public var subjectType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ecId != nil {
                        map["EcId"] = self.ecId!
                    }
                    if self.leId != nil {
                        map["LeId"] = self.leId!
                    }
                    if self.licenseNumber != nil {
                        map["LicenseNumber"] = self.licenseNumber!
                    }
                    if self.manageableAccountCount != nil {
                        map["ManageableAccountCount"] = self.manageableAccountCount!
                    }
                    if self.managedAccountCount != nil {
                        map["ManagedAccountCount"] = self.managedAccountCount!
                    }
                    if self.managerList != nil {
                        var tmp : [Any] = []
                        for k in self.managerList! {
                            tmp.append(k.toMap())
                        }
                        map["ManagerList"] = tmp
                    }
                    if self.nbId != nil {
                        map["NbId"] = self.nbId!
                    }
                    if self.subjectName != nil {
                        map["SubjectName"] = self.subjectName!
                    }
                    if self.subjectType != nil {
                        map["SubjectType"] = self.subjectType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EcId"] as? String {
                        self.ecId = value
                    }
                    if let value = dict["LeId"] as? String {
                        self.leId = value
                    }
                    if let value = dict["LicenseNumber"] as? String {
                        self.licenseNumber = value
                    }
                    if let value = dict["ManageableAccountCount"] as? Int64 {
                        self.manageableAccountCount = value
                    }
                    if let value = dict["ManagedAccountCount"] as? Int64 {
                        self.managedAccountCount = value
                    }
                    if let value = dict["ManagerList"] as? [Any?] {
                        var tmp : [EnterpriseTodoQueryAccountTodoListResponseBody.Data.TodoList.ToLe.ManagerList] = []
                        for v in value {
                            if v != nil {
                                var model = EnterpriseTodoQueryAccountTodoListResponseBody.Data.TodoList.ToLe.ManagerList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.managerList = tmp
                    }
                    if let value = dict["NbId"] as? String {
                        self.nbId = value
                    }
                    if let value = dict["SubjectName"] as? String {
                        self.subjectName = value
                    }
                    if let value = dict["SubjectType"] as? String {
                        self.subjectType = value
                    }
                }
            }
            public var aliyunId: String?

            public var applicantAliyunId: String?

            public var applicantPk: String?

            public var applyRemark: String?

            public var applyTime: Int64?

            public var auditorAliyunId: String?

            public var auditorPk: String?

            public var auditorStatus: String?

            public var canceledTime: Int64?

            public var closed: Bool?

            public var currAuditor: Bool?

            public var fromLe: EnterpriseTodoQueryAccountTodoListResponseBody.Data.TodoList.FromLe?

            public var pk: String?

            public var processList: [EnterpriseTodoQueryAccountTodoListResponseBody.Data.TodoList.ProcessList]?

            public var status: String?

            public var timeoutTime: Int64?

            public var toLe: EnterpriseTodoQueryAccountTodoListResponseBody.Data.TodoList.ToLe?

            public var toLeAudit: Bool?

            public var todoId: String?

            public var todoType: String?

            public var todoView: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.fromLe?.validate()
                try self.toLe?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliyunId != nil {
                    map["AliyunId"] = self.aliyunId!
                }
                if self.applicantAliyunId != nil {
                    map["ApplicantAliyunId"] = self.applicantAliyunId!
                }
                if self.applicantPk != nil {
                    map["ApplicantPk"] = self.applicantPk!
                }
                if self.applyRemark != nil {
                    map["ApplyRemark"] = self.applyRemark!
                }
                if self.applyTime != nil {
                    map["ApplyTime"] = self.applyTime!
                }
                if self.auditorAliyunId != nil {
                    map["AuditorAliyunId"] = self.auditorAliyunId!
                }
                if self.auditorPk != nil {
                    map["AuditorPk"] = self.auditorPk!
                }
                if self.auditorStatus != nil {
                    map["AuditorStatus"] = self.auditorStatus!
                }
                if self.canceledTime != nil {
                    map["CanceledTime"] = self.canceledTime!
                }
                if self.closed != nil {
                    map["Closed"] = self.closed!
                }
                if self.currAuditor != nil {
                    map["CurrAuditor"] = self.currAuditor!
                }
                if self.fromLe != nil {
                    map["FromLe"] = self.fromLe?.toMap()
                }
                if self.pk != nil {
                    map["Pk"] = self.pk!
                }
                if self.processList != nil {
                    var tmp : [Any] = []
                    for k in self.processList! {
                        tmp.append(k.toMap())
                    }
                    map["ProcessList"] = tmp
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timeoutTime != nil {
                    map["TimeoutTime"] = self.timeoutTime!
                }
                if self.toLe != nil {
                    map["ToLe"] = self.toLe?.toMap()
                }
                if self.toLeAudit != nil {
                    map["ToLeAudit"] = self.toLeAudit!
                }
                if self.todoId != nil {
                    map["TodoId"] = self.todoId!
                }
                if self.todoType != nil {
                    map["TodoType"] = self.todoType!
                }
                if self.todoView != nil {
                    map["TodoView"] = self.todoView!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AliyunId"] as? String {
                    self.aliyunId = value
                }
                if let value = dict["ApplicantAliyunId"] as? String {
                    self.applicantAliyunId = value
                }
                if let value = dict["ApplicantPk"] as? String {
                    self.applicantPk = value
                }
                if let value = dict["ApplyRemark"] as? String {
                    self.applyRemark = value
                }
                if let value = dict["ApplyTime"] as? Int64 {
                    self.applyTime = value
                }
                if let value = dict["AuditorAliyunId"] as? String {
                    self.auditorAliyunId = value
                }
                if let value = dict["AuditorPk"] as? String {
                    self.auditorPk = value
                }
                if let value = dict["AuditorStatus"] as? String {
                    self.auditorStatus = value
                }
                if let value = dict["CanceledTime"] as? Int64 {
                    self.canceledTime = value
                }
                if let value = dict["Closed"] as? Bool {
                    self.closed = value
                }
                if let value = dict["CurrAuditor"] as? Bool {
                    self.currAuditor = value
                }
                if let value = dict["FromLe"] as? [String: Any?] {
                    var model = EnterpriseTodoQueryAccountTodoListResponseBody.Data.TodoList.FromLe()
                    model.fromMap(value)
                    self.fromLe = model
                }
                if let value = dict["Pk"] as? String {
                    self.pk = value
                }
                if let value = dict["ProcessList"] as? [Any?] {
                    var tmp : [EnterpriseTodoQueryAccountTodoListResponseBody.Data.TodoList.ProcessList] = []
                    for v in value {
                        if v != nil {
                            var model = EnterpriseTodoQueryAccountTodoListResponseBody.Data.TodoList.ProcessList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.processList = tmp
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TimeoutTime"] as? Int64 {
                    self.timeoutTime = value
                }
                if let value = dict["ToLe"] as? [String: Any?] {
                    var model = EnterpriseTodoQueryAccountTodoListResponseBody.Data.TodoList.ToLe()
                    model.fromMap(value)
                    self.toLe = model
                }
                if let value = dict["ToLeAudit"] as? Bool {
                    self.toLeAudit = value
                }
                if let value = dict["TodoId"] as? String {
                    self.todoId = value
                }
                if let value = dict["TodoType"] as? String {
                    self.todoType = value
                }
                if let value = dict["TodoView"] as? String {
                    self.todoView = value
                }
            }
        }
        public var count: Int32?

        public var todoList: [EnterpriseTodoQueryAccountTodoListResponseBody.Data.TodoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.todoList != nil {
                var tmp : [Any] = []
                for k in self.todoList! {
                    tmp.append(k.toMap())
                }
                map["TodoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["TodoList"] as? [Any?] {
                var tmp : [EnterpriseTodoQueryAccountTodoListResponseBody.Data.TodoList] = []
                for v in value {
                    if v != nil {
                        var model = EnterpriseTodoQueryAccountTodoListResponseBody.Data.TodoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.todoList = tmp
            }
        }
    }
    public var code: String?

    public var data: EnterpriseTodoQueryAccountTodoListResponseBody.Data?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
            var model = EnterpriseTodoQueryAccountTodoListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseTodoQueryAccountTodoListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseTodoQueryAccountTodoListResponseBody?

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
            var model = EnterpriseTodoQueryAccountTodoListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseTodoQueryAccountTodoListByApplicantRequest : Tea.TeaModel {
    public var appName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var operatePk: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var showCompleteInfo: Bool?

    public var status: String?

    public var todoType: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.operatePk != nil {
            map["OperatePk"] = self.operatePk!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.showCompleteInfo != nil {
            map["ShowCompleteInfo"] = self.showCompleteInfo!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.todoType != nil {
            map["TodoType"] = self.todoType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OperatePk"] as? String {
            self.operatePk = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ShowCompleteInfo"] as? Bool {
            self.showCompleteInfo = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TodoType"] as? String {
            self.todoType = value
        }
    }
}

public class EnterpriseTodoQueryAccountTodoListByApplicantResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TodoList : Tea.TeaModel {
            public class FromLe : Tea.TeaModel {
                public class ManagerList : Tea.TeaModel {
                    public var aliyunId: String?

                    public var pk: String?

                    public var pkEncoded: String?

                    public var role: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.aliyunId != nil {
                            map["AliyunId"] = self.aliyunId!
                        }
                        if self.pk != nil {
                            map["Pk"] = self.pk!
                        }
                        if self.pkEncoded != nil {
                            map["PkEncoded"] = self.pkEncoded!
                        }
                        if self.role != nil {
                            map["Role"] = self.role!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AliyunId"] as? String {
                            self.aliyunId = value
                        }
                        if let value = dict["Pk"] as? String {
                            self.pk = value
                        }
                        if let value = dict["PkEncoded"] as? String {
                            self.pkEncoded = value
                        }
                        if let value = dict["Role"] as? String {
                            self.role = value
                        }
                    }
                }
                public var ecId: String?

                public var leId: String?

                public var licenseNumber: String?

                public var manageableAccountCount: Int64?

                public var managedAccountCount: Int64?

                public var managerList: [EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data.TodoList.FromLe.ManagerList]?

                public var nbId: String?

                public var subjectName: String?

                public var subjectType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ecId != nil {
                        map["EcId"] = self.ecId!
                    }
                    if self.leId != nil {
                        map["LeId"] = self.leId!
                    }
                    if self.licenseNumber != nil {
                        map["LicenseNumber"] = self.licenseNumber!
                    }
                    if self.manageableAccountCount != nil {
                        map["ManageableAccountCount"] = self.manageableAccountCount!
                    }
                    if self.managedAccountCount != nil {
                        map["ManagedAccountCount"] = self.managedAccountCount!
                    }
                    if self.managerList != nil {
                        var tmp : [Any] = []
                        for k in self.managerList! {
                            tmp.append(k.toMap())
                        }
                        map["ManagerList"] = tmp
                    }
                    if self.nbId != nil {
                        map["NbId"] = self.nbId!
                    }
                    if self.subjectName != nil {
                        map["SubjectName"] = self.subjectName!
                    }
                    if self.subjectType != nil {
                        map["SubjectType"] = self.subjectType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EcId"] as? String {
                        self.ecId = value
                    }
                    if let value = dict["LeId"] as? String {
                        self.leId = value
                    }
                    if let value = dict["LicenseNumber"] as? String {
                        self.licenseNumber = value
                    }
                    if let value = dict["ManageableAccountCount"] as? Int64 {
                        self.manageableAccountCount = value
                    }
                    if let value = dict["ManagedAccountCount"] as? Int64 {
                        self.managedAccountCount = value
                    }
                    if let value = dict["ManagerList"] as? [Any?] {
                        var tmp : [EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data.TodoList.FromLe.ManagerList] = []
                        for v in value {
                            if v != nil {
                                var model = EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data.TodoList.FromLe.ManagerList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.managerList = tmp
                    }
                    if let value = dict["NbId"] as? String {
                        self.nbId = value
                    }
                    if let value = dict["SubjectName"] as? String {
                        self.subjectName = value
                    }
                    if let value = dict["SubjectType"] as? String {
                        self.subjectType = value
                    }
                }
            }
            public class ProcessList : Tea.TeaModel {
                public var aliyunId: String?

                public var auditTime: Int64?

                public var ecId: String?

                public var leId: String?

                public var nbId: String?

                public var pk: String?

                public var remark: String?

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
                    if self.aliyunId != nil {
                        map["AliyunId"] = self.aliyunId!
                    }
                    if self.auditTime != nil {
                        map["AuditTime"] = self.auditTime!
                    }
                    if self.ecId != nil {
                        map["EcId"] = self.ecId!
                    }
                    if self.leId != nil {
                        map["LeId"] = self.leId!
                    }
                    if self.nbId != nil {
                        map["NbId"] = self.nbId!
                    }
                    if self.pk != nil {
                        map["Pk"] = self.pk!
                    }
                    if self.remark != nil {
                        map["Remark"] = self.remark!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AliyunId"] as? String {
                        self.aliyunId = value
                    }
                    if let value = dict["AuditTime"] as? Int64 {
                        self.auditTime = value
                    }
                    if let value = dict["EcId"] as? String {
                        self.ecId = value
                    }
                    if let value = dict["LeId"] as? String {
                        self.leId = value
                    }
                    if let value = dict["NbId"] as? String {
                        self.nbId = value
                    }
                    if let value = dict["Pk"] as? String {
                        self.pk = value
                    }
                    if let value = dict["Remark"] as? String {
                        self.remark = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                }
            }
            public class ToLe : Tea.TeaModel {
                public class ManagerList : Tea.TeaModel {
                    public var aliyunId: String?

                    public var pk: String?

                    public var pkEncoded: String?

                    public var role: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.aliyunId != nil {
                            map["AliyunId"] = self.aliyunId!
                        }
                        if self.pk != nil {
                            map["Pk"] = self.pk!
                        }
                        if self.pkEncoded != nil {
                            map["PkEncoded"] = self.pkEncoded!
                        }
                        if self.role != nil {
                            map["Role"] = self.role!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AliyunId"] as? String {
                            self.aliyunId = value
                        }
                        if let value = dict["Pk"] as? String {
                            self.pk = value
                        }
                        if let value = dict["PkEncoded"] as? String {
                            self.pkEncoded = value
                        }
                        if let value = dict["Role"] as? String {
                            self.role = value
                        }
                    }
                }
                public var ecId: String?

                public var leId: String?

                public var licenseNumber: String?

                public var manageableAccountCount: Int64?

                public var managedAccountCount: Int64?

                public var managerList: [EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data.TodoList.ToLe.ManagerList]?

                public var nbId: String?

                public var subjectName: String?

                public var subjectType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ecId != nil {
                        map["EcId"] = self.ecId!
                    }
                    if self.leId != nil {
                        map["LeId"] = self.leId!
                    }
                    if self.licenseNumber != nil {
                        map["LicenseNumber"] = self.licenseNumber!
                    }
                    if self.manageableAccountCount != nil {
                        map["ManageableAccountCount"] = self.manageableAccountCount!
                    }
                    if self.managedAccountCount != nil {
                        map["ManagedAccountCount"] = self.managedAccountCount!
                    }
                    if self.managerList != nil {
                        var tmp : [Any] = []
                        for k in self.managerList! {
                            tmp.append(k.toMap())
                        }
                        map["ManagerList"] = tmp
                    }
                    if self.nbId != nil {
                        map["NbId"] = self.nbId!
                    }
                    if self.subjectName != nil {
                        map["SubjectName"] = self.subjectName!
                    }
                    if self.subjectType != nil {
                        map["SubjectType"] = self.subjectType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EcId"] as? String {
                        self.ecId = value
                    }
                    if let value = dict["LeId"] as? String {
                        self.leId = value
                    }
                    if let value = dict["LicenseNumber"] as? String {
                        self.licenseNumber = value
                    }
                    if let value = dict["ManageableAccountCount"] as? Int64 {
                        self.manageableAccountCount = value
                    }
                    if let value = dict["ManagedAccountCount"] as? Int64 {
                        self.managedAccountCount = value
                    }
                    if let value = dict["ManagerList"] as? [Any?] {
                        var tmp : [EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data.TodoList.ToLe.ManagerList] = []
                        for v in value {
                            if v != nil {
                                var model = EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data.TodoList.ToLe.ManagerList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.managerList = tmp
                    }
                    if let value = dict["NbId"] as? String {
                        self.nbId = value
                    }
                    if let value = dict["SubjectName"] as? String {
                        self.subjectName = value
                    }
                    if let value = dict["SubjectType"] as? String {
                        self.subjectType = value
                    }
                }
            }
            public var aliyunId: String?

            public var applicantAliyunId: String?

            public var applicantPk: String?

            public var applyRemark: String?

            public var applyTime: Int64?

            public var auditorAliyunId: String?

            public var auditorPk: String?

            public var auditorStatus: String?

            public var canceledTime: Int64?

            public var closed: Bool?

            public var currAuditor: Bool?

            public var fromLe: EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data.TodoList.FromLe?

            public var pk: String?

            public var processList: [EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data.TodoList.ProcessList]?

            public var status: String?

            public var timeoutTime: Int64?

            public var toLe: EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data.TodoList.ToLe?

            public var toLeAudit: Bool?

            public var todoId: String?

            public var todoType: String?

            public var todoView: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.fromLe?.validate()
                try self.toLe?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliyunId != nil {
                    map["AliyunId"] = self.aliyunId!
                }
                if self.applicantAliyunId != nil {
                    map["ApplicantAliyunId"] = self.applicantAliyunId!
                }
                if self.applicantPk != nil {
                    map["ApplicantPk"] = self.applicantPk!
                }
                if self.applyRemark != nil {
                    map["ApplyRemark"] = self.applyRemark!
                }
                if self.applyTime != nil {
                    map["ApplyTime"] = self.applyTime!
                }
                if self.auditorAliyunId != nil {
                    map["AuditorAliyunId"] = self.auditorAliyunId!
                }
                if self.auditorPk != nil {
                    map["AuditorPk"] = self.auditorPk!
                }
                if self.auditorStatus != nil {
                    map["AuditorStatus"] = self.auditorStatus!
                }
                if self.canceledTime != nil {
                    map["CanceledTime"] = self.canceledTime!
                }
                if self.closed != nil {
                    map["Closed"] = self.closed!
                }
                if self.currAuditor != nil {
                    map["CurrAuditor"] = self.currAuditor!
                }
                if self.fromLe != nil {
                    map["FromLe"] = self.fromLe?.toMap()
                }
                if self.pk != nil {
                    map["Pk"] = self.pk!
                }
                if self.processList != nil {
                    var tmp : [Any] = []
                    for k in self.processList! {
                        tmp.append(k.toMap())
                    }
                    map["ProcessList"] = tmp
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timeoutTime != nil {
                    map["TimeoutTime"] = self.timeoutTime!
                }
                if self.toLe != nil {
                    map["ToLe"] = self.toLe?.toMap()
                }
                if self.toLeAudit != nil {
                    map["ToLeAudit"] = self.toLeAudit!
                }
                if self.todoId != nil {
                    map["TodoId"] = self.todoId!
                }
                if self.todoType != nil {
                    map["TodoType"] = self.todoType!
                }
                if self.todoView != nil {
                    map["TodoView"] = self.todoView!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AliyunId"] as? String {
                    self.aliyunId = value
                }
                if let value = dict["ApplicantAliyunId"] as? String {
                    self.applicantAliyunId = value
                }
                if let value = dict["ApplicantPk"] as? String {
                    self.applicantPk = value
                }
                if let value = dict["ApplyRemark"] as? String {
                    self.applyRemark = value
                }
                if let value = dict["ApplyTime"] as? Int64 {
                    self.applyTime = value
                }
                if let value = dict["AuditorAliyunId"] as? String {
                    self.auditorAliyunId = value
                }
                if let value = dict["AuditorPk"] as? String {
                    self.auditorPk = value
                }
                if let value = dict["AuditorStatus"] as? String {
                    self.auditorStatus = value
                }
                if let value = dict["CanceledTime"] as? Int64 {
                    self.canceledTime = value
                }
                if let value = dict["Closed"] as? Bool {
                    self.closed = value
                }
                if let value = dict["CurrAuditor"] as? Bool {
                    self.currAuditor = value
                }
                if let value = dict["FromLe"] as? [String: Any?] {
                    var model = EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data.TodoList.FromLe()
                    model.fromMap(value)
                    self.fromLe = model
                }
                if let value = dict["Pk"] as? String {
                    self.pk = value
                }
                if let value = dict["ProcessList"] as? [Any?] {
                    var tmp : [EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data.TodoList.ProcessList] = []
                    for v in value {
                        if v != nil {
                            var model = EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data.TodoList.ProcessList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.processList = tmp
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TimeoutTime"] as? Int64 {
                    self.timeoutTime = value
                }
                if let value = dict["ToLe"] as? [String: Any?] {
                    var model = EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data.TodoList.ToLe()
                    model.fromMap(value)
                    self.toLe = model
                }
                if let value = dict["ToLeAudit"] as? Bool {
                    self.toLeAudit = value
                }
                if let value = dict["TodoId"] as? String {
                    self.todoId = value
                }
                if let value = dict["TodoType"] as? String {
                    self.todoType = value
                }
                if let value = dict["TodoView"] as? String {
                    self.todoView = value
                }
            }
        }
        public var count: Int32?

        public var todoList: [EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data.TodoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.todoList != nil {
                var tmp : [Any] = []
                for k in self.todoList! {
                    tmp.append(k.toMap())
                }
                map["TodoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["TodoList"] as? [Any?] {
                var tmp : [EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data.TodoList] = []
                for v in value {
                    if v != nil {
                        var model = EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data.TodoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.todoList = tmp
            }
        }
    }
    public var code: String?

    public var data: EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
            var model = EnterpriseTodoQueryAccountTodoListByApplicantResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseTodoQueryAccountTodoListByApplicantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseTodoQueryAccountTodoListByApplicantResponseBody?

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
            var model = EnterpriseTodoQueryAccountTodoListByApplicantResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseUninvitedAdminInviteJoinEnterpriseRequest : Tea.TeaModel {
    public var ecId: String?

    public var encryptTicket: String?

    public var inviteePk: String?

    public var leId: String?

    public var nbId: String?

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
        if self.ecId != nil {
            map["EcId"] = self.ecId!
        }
        if self.encryptTicket != nil {
            map["EncryptTicket"] = self.encryptTicket!
        }
        if self.inviteePk != nil {
            map["InviteePk"] = self.inviteePk!
        }
        if self.leId != nil {
            map["LeId"] = self.leId!
        }
        if self.nbId != nil {
            map["NbId"] = self.nbId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EcId"] as? String {
            self.ecId = value
        }
        if let value = dict["EncryptTicket"] as? String {
            self.encryptTicket = value
        }
        if let value = dict["InviteePk"] as? String {
            self.inviteePk = value
        }
        if let value = dict["LeId"] as? String {
            self.leId = value
        }
        if let value = dict["NbId"] as? String {
            self.nbId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
    }
}

public class EnterpriseUninvitedAdminInviteJoinEnterpriseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var applicantAliyunId: String?

        public var applicantPk: String?

        public var applyRemark: String?

        public var applyTime: Int64?

        public var auditorAliyunId: String?

        public var auditorPk: String?

        public var ecId: String?

        public var leId: String?

        public var leLicenseNo: String?

        public var leName: String?

        public var message: String?

        public var nbId: String?

        public var operatedAliyunId: String?

        public var operatedPk: String?

        public var success: String?

        public var timeoutTime: Int64?

        public var todoId: String?

        public var todoType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicantAliyunId != nil {
                map["ApplicantAliyunId"] = self.applicantAliyunId!
            }
            if self.applicantPk != nil {
                map["ApplicantPk"] = self.applicantPk!
            }
            if self.applyRemark != nil {
                map["ApplyRemark"] = self.applyRemark!
            }
            if self.applyTime != nil {
                map["ApplyTime"] = self.applyTime!
            }
            if self.auditorAliyunId != nil {
                map["AuditorAliyunId"] = self.auditorAliyunId!
            }
            if self.auditorPk != nil {
                map["AuditorPk"] = self.auditorPk!
            }
            if self.ecId != nil {
                map["EcId"] = self.ecId!
            }
            if self.leId != nil {
                map["LeId"] = self.leId!
            }
            if self.leLicenseNo != nil {
                map["LeLicenseNo"] = self.leLicenseNo!
            }
            if self.leName != nil {
                map["LeName"] = self.leName!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.nbId != nil {
                map["NbId"] = self.nbId!
            }
            if self.operatedAliyunId != nil {
                map["OperatedAliyunId"] = self.operatedAliyunId!
            }
            if self.operatedPk != nil {
                map["OperatedPk"] = self.operatedPk!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.timeoutTime != nil {
                map["TimeoutTime"] = self.timeoutTime!
            }
            if self.todoId != nil {
                map["TodoId"] = self.todoId!
            }
            if self.todoType != nil {
                map["TodoType"] = self.todoType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicantAliyunId"] as? String {
                self.applicantAliyunId = value
            }
            if let value = dict["ApplicantPk"] as? String {
                self.applicantPk = value
            }
            if let value = dict["ApplyRemark"] as? String {
                self.applyRemark = value
            }
            if let value = dict["ApplyTime"] as? Int64 {
                self.applyTime = value
            }
            if let value = dict["AuditorAliyunId"] as? String {
                self.auditorAliyunId = value
            }
            if let value = dict["AuditorPk"] as? String {
                self.auditorPk = value
            }
            if let value = dict["EcId"] as? String {
                self.ecId = value
            }
            if let value = dict["LeId"] as? String {
                self.leId = value
            }
            if let value = dict["LeLicenseNo"] as? String {
                self.leLicenseNo = value
            }
            if let value = dict["LeName"] as? String {
                self.leName = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["NbId"] as? String {
                self.nbId = value
            }
            if let value = dict["OperatedAliyunId"] as? String {
                self.operatedAliyunId = value
            }
            if let value = dict["OperatedPk"] as? String {
                self.operatedPk = value
            }
            if let value = dict["Success"] as? String {
                self.success = value
            }
            if let value = dict["TimeoutTime"] as? Int64 {
                self.timeoutTime = value
            }
            if let value = dict["TodoId"] as? String {
                self.todoId = value
            }
            if let value = dict["TodoType"] as? String {
                self.todoType = value
            }
        }
    }
    public var code: String?

    public var data: [EnterpriseUninvitedAdminInviteJoinEnterpriseResponseBody.Data]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
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
            var tmp : [EnterpriseUninvitedAdminInviteJoinEnterpriseResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = EnterpriseUninvitedAdminInviteJoinEnterpriseResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnterpriseUninvitedAdminInviteJoinEnterpriseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseUninvitedAdminInviteJoinEnterpriseResponseBody?

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
            var model = EnterpriseUninvitedAdminInviteJoinEnterpriseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendAsyncEmailCaptchaRequest : Tea.TeaModel {
    public var appName: String?

    public var contactInfo: String?

    public var contactorId: String?

    public override init() {
        super.init()
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
        if self.contactInfo != nil {
            map["ContactInfo"] = self.contactInfo!
        }
        if self.contactorId != nil {
            map["ContactorId"] = self.contactorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ContactInfo"] as? String {
            self.contactInfo = value
        }
        if let value = dict["ContactorId"] as? String {
            self.contactorId = value
        }
    }
}

public class SendAsyncEmailCaptchaResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SendAsyncEmailCaptchaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendAsyncEmailCaptchaResponseBody?

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
            var model = SendAsyncEmailCaptchaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendAsyncMobileCaptchaRequest : Tea.TeaModel {
    public var appName: String?

    public var contactInfo: String?

    public var contactorId: String?

    public override init() {
        super.init()
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
        if self.contactInfo != nil {
            map["ContactInfo"] = self.contactInfo!
        }
        if self.contactorId != nil {
            map["ContactorId"] = self.contactorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ContactInfo"] as? String {
            self.contactInfo = value
        }
        if let value = dict["ContactorId"] as? String {
            self.contactorId = value
        }
    }
}

public class SendAsyncMobileCaptchaResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SendAsyncMobileCaptchaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendAsyncMobileCaptchaResponseBody?

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
            var model = SendAsyncMobileCaptchaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
